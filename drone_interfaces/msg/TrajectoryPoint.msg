# A time-indexed trajectory reference point.
# position/velocity/acceleration use ROS ENU in frame_id "map".

uint8 TRANSIT=0
uint8 LOITER=1
uint8 SEARCH=2
uint8 APPROACH=3

builtin_interfaces/Duration time_from_start
geometry_msgs/Point position_enu_m
geometry_msgs/Vector3 velocity_enu_mps
geometry_msgs/Vector3 acceleration_enu_mps2

float64 desired_course_rad
float64 desired_airspeed_mps
float64 desired_altitude_m
uint8 altitude_reference

uint8 segment_type
float64 loiter_radius_m
uint8 loiter_direction
