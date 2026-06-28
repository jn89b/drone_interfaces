# Planner output. It is a reference path, not a direct actuator command.

uint8 ROUTE=0
uint8 LOITER=1
uint8 SEARCH=2
uint8 INTERCEPT=3
uint8 RETURN_HOME=4

std_msgs/Header header
string trajectory_id
string mission_id
uint8 trajectory_type
string frame_id

uas_interfaces/TrajectoryPoint[] points
bool closed_loop
float64 total_duration_s
builtin_interfaces/Time valid_until
string planner_name
string planner_status
