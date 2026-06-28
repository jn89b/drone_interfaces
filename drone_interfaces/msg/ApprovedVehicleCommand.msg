# Final vehicle command after authority and safety arbitration.

uint8 SOURCE_AUTONOMY=0
uint8 SOURCE_MANUAL_RECOVERY=1
uint8 SOURCE_SAFETY=2
uint8 SOURCE_TEST=3

std_msgs/Header header
string command_id
uint8 source_type
uint8 priority
builtin_interfaces/Time valid_until

uas_interfaces/GuidanceCommand command
string approval_reason
