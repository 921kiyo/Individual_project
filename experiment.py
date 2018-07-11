import subprocess
import re
import json
from lib import helper, py2asp

def check_if_in_answersets(state, states):
    for s in states:
        if(state == s[1]):
            return True
    return False

def get_plan_exclusions(state, states):
    current_time,_,_ = helper.get_T(state)
    exclusion_list = []

    for s in states:
        if current_time == s[0] and state != s[1]:
            x_after, _, _ = helper.get_X(s[1])
            y_after, _, _ = helper.get_Y(s[1])
            state_after = py2asp.state_after(x_after, y_after)
            exclusion_list.append(state_after)

    exclusions = ""
    for exclusion in exclusion_list:
        exclusions += exclusion
        exclusions += ", "
    return exclusions[0:len(exclusions)-2]

def generate_pos(state_at_before, state_at_after, states, action, walls):
    # print(check_if_in_answersets(state_at_before, states))
    # print(check_if_in_answersets(state_at_after, states))
    x_before, _, _ = helper.get_X(state_at_before)
    y_before, _, _ = helper.get_Y(state_at_before)
    x_after, _, _ = helper.get_X(state_at_after)
    y_after, _, _ = helper.get_Y(state_at_after)
    state_before = py2asp.state_before(x_before, y_before)
    state_after = py2asp.state_after(x_after, y_after)
    exclusions = get_plan_exclusions(state_at_before, states)
    return "#pos({"+ state_after + "}, {" + exclusions + "}, {" + state_before + " action({}). ".format(action) + walls

def execute_pseudo_action(current_state, action):
    current_state = helper.update_T(current_state)
    if(action == "up"):
        return helper.update_Y(current_state, -1)
    elif(action == "down"):
        return helper.update_Y(current_state, 1)
    elif(action == "right"):
        return helper.update_X(current_state, 1)
    elif(action == "left"):
        return helper.update_X(current_state, -1)
    elif(action == "non"):
        return current_state

def execute_pseudo_plan(start_state, actions, states, walls):
    current_state = start_state
    for action in actions:
        # print("old ", current_state)
        # print("action ", action[1])
        state_before = current_state
        current_state = execute_pseudo_action(current_state, action[1])
        state_after = current_state
        # print("new ",current_state)

        pos = generate_pos(state_before, state_after, states, action[1], walls)

        print("POS ", pos)

try:
    planning_actions = subprocess.check_output(["clingo", "-n", "0", "clingo.lp", "--opt-mode=opt", "--outf=2"], universal_newlines=True)
except subprocess.CalledProcessError as e:
    planning_actions = e.output
    # When Clingo returns UNSATISFIABLE
    print(e)
    # print(e.output)

json_plan = json.loads(planning_actions)

size_asp = len(json_plan["Call"][0]["Witnesses"])

# Extract only the optimal answer set
state_action_array = json_plan["Call"][0]["Witnesses"][size_asp-1]["Value"]

states, actions = helper.sort_planning(state_action_array)

# print(states)
print(actions)

# If there are more than 1 state at each T

start_state = states[0][1]

# TODO
walls = "wall((1, 5)). wall((0, 4))."

execute_pseudo_plan(start_state, actions, states, walls)

for action in actions:
    key = action[0]
    state_list = []

    # for state in states:
    #     if state[0] == key:
    #         state_list.append(state)

    # if len(state_list) > 1:
    #     get_inc_exc(state_list, action)
