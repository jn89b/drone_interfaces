uint8 IDLE=0
uint8 CONFIGURE=1
uint8 COLLECT=2
uint8 TRACK=3
uint8 STOP=4

std_msgs/Header header
string task_id
string payload_id
uint8 operation

float64 target_latitude_deg
float64 target_longitude_deg
float64 target_altitude_m
uint8 target_altitude_reference

float64 start_radius_m
float64 stop_radius_m
float64 timeout_s
string requested_mode
string notes
