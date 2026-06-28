uint8 QUEUED=0
uint8 RUNNING=1
uint8 SUCCEEDED=2
uint8 FAILED=3
uint8 CANCELED=4

std_msgs/Header header
string task_id
string payload_id
uint8 state
float32 progress_percent
string message
builtin_interfaces/Time completion_time
