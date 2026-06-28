# Validated, active mission goal produced by mission_manager.

std_msgs/Header header
string mission_id
uint8 mission_type
string mission_state

uas_interfaces/Waypoint[] waypoints
uas_interfaces/TargetEstimate target_estimate

float64 desired_airspeed_mps
float64 desired_standoff_distance_m
float64 search_radius_m
float64 mission_timeout_s
uint8 end_behavior

bool valid
string validation_summary
