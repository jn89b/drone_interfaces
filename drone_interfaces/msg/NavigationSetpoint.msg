# High-level setpoint for autopilot-owned inner loops.
# Use desired_course_rad for a commanded course. Target location is optional.

float64 desired_course_rad
float64 desired_altitude_m
uint8 altitude_reference
float64 desired_airspeed_mps
float64 desired_groundspeed_mps

bool use_global_target
float64 target_latitude_deg
float64 target_longitude_deg
float64 target_altitude_m
uint8 target_altitude_reference

float64 loiter_radius_m
uint8 loiter_direction
