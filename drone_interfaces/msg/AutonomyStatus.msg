uint8 DISABLED=0
uint8 READY=1
uint8 EXECUTING=2
uint8 PAUSED=3
uint8 FAILSAFE=4

std_msgs/Header header
uint8 state
bool autonomy_enabled
bool guided_mode_active
bool authority_granted
string active_mission_id
string reason
