uint8 CLEAR=0
uint8 CAUTION=1
uint8 INHIBIT=2
uint8 FAILSAFE=3

uint8 ACTION_NONE=0
uint8 ACTION_HOLD=1
uint8 ACTION_LOITER=2
uint8 ACTION_RETURN_HOME=3
uint8 ACTION_LAND=4

std_msgs/Header header
uint8 safety_level
bool autonomy_permitted
bool command_output_permitted
uint8 required_action
string[] active_constraints
string summary
