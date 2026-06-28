# User or external-system mission request. This is intent, not a flight-control command.

uint8 GO_TO_POINT=0
uint8 FOLLOW_ROUTE=1
uint8 LOITER_AT_POINT=2
uint8 OBSERVE_TARGET=3
uint8 SEARCH_TARGET=4
uint8 TRACK_TARGET=5
uint8 RETURN_HOME=6
uint8 LAND=7

uint8 END_LOITER=0
uint8 END_RETURN_HOME=1
uint8 END_LAND=2
uint8 END_HOLD=3

std_msgs/Header header
string mission_id
string requested_by
uint8 mission_type

uas_interfaces/Waypoint[] waypoints
uas_interfaces/TargetEstimate target_estimate

float64 desired_airspeed_mps
float64 desired_standoff_distance_m
float64 search_radius_m
float64 mission_timeout_s
uint8 end_behavior
string notes
