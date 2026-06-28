# Approximate target state from an operator, sensor, or external source.
# Local velocity and covariance use ROS ENU.

uint8 SOURCE_OPERATOR=0
uint8 SOURCE_SENSOR=1
uint8 SOURCE_FUSED=2

std_msgs/Header header
string target_id
uint8 source_type
string source_name

float64 latitude_deg
float64 longitude_deg
float64 altitude_m
uint8 altitude_reference

geometry_msgs/Vector3 velocity_enu_mps
float64 uncertainty_radius_m
float64 confidence
builtin_interfaces/Time observation_time
