uint8 SAFE=0
uint8 START=1
uint8 STOP=2
uint8 SET_MODE=3
uint8 POINT_GIMBAL=4
uint8 SET_ZOOM=5
uint8 CAPTURE=6

std_msgs/Header header
string command_id
string payload_id
uint8 command_type
builtin_interfaces/Time valid_until

float64 target_latitude_deg
float64 target_longitude_deg
float64 target_altitude_m
uint8 target_altitude_reference
float64 gimbal_yaw_rad
float64 gimbal_pitch_rad
float64 zoom_level
string requested_mode
string vendor_extension_json
