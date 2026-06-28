# A geographic route point. Coordinates are WGS84 degrees.
# Always make altitude reference explicit.

uint8 ALTITUDE_MSL=0
uint8 ALTITUDE_RELATIVE_HOME=1
uint8 ALTITUDE_HAE=2

uint8 LOITER_NONE=0
uint8 LOITER_CLOCKWISE=1
uint8 LOITER_COUNTERCLOCKWISE=2

std_msgs/Header header
string waypoint_id

float64 latitude_deg
float64 longitude_deg
float64 altitude_m
uint8 altitude_reference

float64 desired_airspeed_mps
float64 acceptance_radius_m
float64 loiter_radius_m
uint8 loiter_direction

bool fly_through
string notes
