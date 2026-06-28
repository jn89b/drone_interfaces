# uas_interfaces

Shared ROS 2 interfaces for the UAS autonomy workspace.

This package defines the messages, services, and actions exchanged among state ingestion, mission management, planning, guidance, safety, payload, and the PyMAVLink command gateway. It contains no ROS 2 nodes, MAVROS subscriptions, PyMAVLink code, vehicle-control logic, or planners.

## Message hierarchy

```text
MissionRequest / MissionGoal
        ↓
Trajectory
        ↓
GuidanceCommand
        ↓
ApprovedVehicleCommand
        ↓
PyMAVLink command gateway
```

`MissionRequest` expresses what the user wants: route, loiter, target observation, return home, or landing.

`Trajectory` is planner output: a timed path/reference to follow.

`GuidanceCommand` is real-time controller output. It supports exactly one active command level:

- `NAVIGATION_SETPOINT`: course, altitude, airspeed, optional global target/loiter geometry.
- `ATTITUDE_THRUST`: roll, pitch, yaw/yaw rate, throttle.
- `BODY_RATE_THRUST`: roll/pitch/yaw rates and thrust.
- `ACTUATOR_SETPOINT`: aileron, elevator, rudder, throttle.

`ApprovedVehicleCommand` is the only vehicle command that the PyMAVLink gateway should consume.

## Trajectory example

A loiter planner may publish a closed-loop `Trajectory` with a list of `TrajectoryPoint` values:

```text
trajectory_type: LOITER
frame_id: map
closed_loop: true
points:
  - time_from_start: 0 s
    position_enu_m: [120, 0, 150]
    desired_course_rad: 1.57
    desired_airspeed_mps: 25
    segment_type: LOITER
    loiter_radius_m: 120
  - time_from_start: 15 s
    position_enu_m: [0, 120, 150]
    desired_course_rad: 3.14
    desired_airspeed_mps: 25
    segment_type: LOITER
    loiter_radius_m: 120
```

The planner owns trajectory generation. The guidance controller converts the current vehicle state plus trajectory reference into a `GuidanceCommand`.

## Coordinate conventions

- Geographic coordinates: WGS84 latitude/longitude in degrees.
- Internal local Cartesian quantities: ROS ENU in `map` frame.
- Body rates: radians per second in the vehicle body frame.
- Never use a generic altitude field without an altitude reference.
- Use `altitude_msl_m`, `relative_alt_m`, or `hae_m` in state messages.
- Use `altitude_m` + `altitude_reference` in generic command/waypoint messages.

## Build

```bash
cd ~/uas_autonomy_ws
colcon build --packages-select uas_interfaces --symlink-install
source install/setup.bash
```

Inspect an interface:

```bash
ros2 interface show uas_interfaces/msg/Trajectory
ros2 interface show uas_interfaces/msg/GuidanceCommand
ros2 interface show uas_interfaces/action/ExecuteMission
```

## Design rules

1. MAVROS-facing packages publish `VehicleState` and `VehicleHealth`; they do not publish mission-level decisions.
2. Mission managers publish `MissionGoal`; planners consume it.
3. Planners publish `Trajectory`; guidance consumes it.
4. Guidance publishes `GuidanceCommand`; it never speaks MAVLink directly.
5. The command arbiter produces `ApprovedVehicleCommand`.
6. Only the PyMAVLink command gateway transmits vehicle commands to the flight controller.
7. The command gateway re-checks Guided mode, authority, safety, freshness, and command validity before sending.
