# Real-time output of guidance/control. Exactly one mode is authoritative.

uint8 NAVIGATION_SETPOINT=0
uint8 ATTITUDE_THRUST=1
uint8 BODY_RATE_THRUST=2
uint8 ACTUATOR_SETPOINT=3

std_msgs/Header header
string command_id
uint8 command_mode

# Required for all modes.
builtin_interfaces/Time valid_until
string source

# Only the matching block for command_mode is authoritative.
uas_interfaces/NavigationSetpoint navigation_setpoint
geometry_msgs/Vector3 attitude_rpy_rad
float64 attitude_yaw_rate_rad_s
float64 attitude_throttle_norm
uas_interfaces/BodyRateThrustSetpoint body_rate_thrust_setpoint
uas_interfaces/ActuatorSetpoint actuator_setpoint
