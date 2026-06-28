# Filtered persistent target track for planning.

uint8 TENTATIVE=0
uint8 CONFIRMED=1
uint8 STALE=2
uint8 LOST=3

std_msgs/Header header
string track_id
uint8 state

float64 latitude_deg
float64 longitude_deg
float64 altitude_m
uint8 altitude_reference

geometry_msgs/Vector3 velocity_enu_mps
float64[9] position_covariance_enu_m2
float64 uncertainty_radius_m
float64 confidence
builtin_interfaces/Time last_update_time
string[] contributing_sources
