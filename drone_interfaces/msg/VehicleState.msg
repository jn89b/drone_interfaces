# Normalized aircraft state. Local vectors use ROS ENU in frame_id "map".

std_msgs/Header header

bool connected
bool armed
string flight_mode

float64 latitude_deg
float64 longitude_deg
float64 altitude_msl_m
float64 relative_alt_m
float64 hae_m

geometry_msgs/Point position_enu_m
geometry_msgs/Vector3 velocity_enu_mps
geometry_msgs/Quaternion attitude_enu
geometry_msgs/Vector3 body_rates_rad_s

float64 ground_speed_mps
float64 airspeed_mps
float64 climb_rate_mps

bool gps_valid
bool ekf_valid
bool home_position_valid
