# One sensor-derived world-location observation before track fusion.

std_msgs/Header header
string observation_id
string provisional_target_id
string sensor_id

float64 latitude_deg
float64 longitude_deg
float64 altitude_m
uint8 altitude_reference

# Position covariance in ENU order: xx, xy, xz, yx, yy, yz, zx, zy, zz.
float64[9] position_covariance_enu_m2
float64 confidence
builtin_interfaces/Time observation_time

bool bearing_only
float64 bearing_rad
float64 elevation_rad
float64 range_m
