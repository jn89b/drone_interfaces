cmake_minimum_required(VERSION 3.5)
project(drone_interfaces)

# Default to C99
if(NOT CMAKE_C_STANDARD)
  set(CMAKE_C_STANDARD 99)
endif()

# Default to C++14
if(NOT CMAKE_CXX_STANDARD)
  set(CMAKE_CXX_STANDARD 14)
endif()

if(CMAKE_COMPILER_IS_GNUCXX OR CMAKE_CXX_COMPILER_ID MATCHES "Clang")
  add_compile_options(-Wall -Wextra -Wpedantic)
endif()

# find dependencies
find_package(ament_cmake REQUIRED)
# uncomment the following section in order to fill in
# further dependencies manually.
# find_package(<dependency> REQUIRED)

if(BUILD_TESTING)
  find_package(ament_lint_auto REQUIRED)
  # the following line skips the linter which checks for copyrights
  # uncomment the line when a copyright and license is not present in all source files
  #set(ament_cmake_copyright_FOUND TRUE)
  # the following line skips cpplint (only works in a git repo)
  # uncomment the line when this package is not in a git repo
  #set(ament_cmake_cpplint_FOUND TRUE)
  ament_lint_auto_find_test_dependencies()
endif()

find_package(rosidl_default_generators REQUIRED)
find_package(ament_cmake REQUIRED)
find_package(builtin_interfaces REQUIRED)
find_package(geometry_msgs REQUIRED)
find_package(std_msgs REQUIRED)

#https://answers.ros.org/question/326008/ros2-run-symbol-not-found-on-custom-msg/
rosidl_generate_interfaces(${PROJECT_NAME}
  "msg/Telem.msg"
  "msg/CtlTraj.msg"
  "msg/Waypoints.msg"
  "msg/RCCmd.msg"
  "msg/ActuatorSetpoint.msg"
  "msg/ApprovedVehicleCommand.msg"
  "msg/AutonomyStatus.msg"
  "msg/BodyRateThrustSetpoint.msg"
  "msg/CommandGatewayStatus.msg"
  "msg/GeoObservation.msg"
  "msg/GuidanceCommand.msg"
  "msg/MissionGoal.msg"
  "msg/MissionRequest.msg"
  "msg/NavigationSetpoint.msg"
  "msg/PayloadCommand.msg"
  "msg/PayloadFeedback.msg"
  "msg/PayloadHealth.msg"
  "msg/PayloadStatus.msg"
  "msg/PayloadTask.msg"
  "msg/SafetyStatus.msg"
  "msg/TargetEstimate.msg"
  "msg/TargetTrack.msg"
  "msg/Trajectory.msg"
  "msg/TrajectoryPoint.msg"
  "msg/VehicleHealth.msg"
  "msg/VehicleState.msg"
  "msg/Waypoint.msg"
  "srv/AbortMission.srv"
  "srv/DisableAutonomy.srv"
  "srv/EnableAutonomy.srv"
  "srv/ResumeAutonomy.srv"
  "action/ExecuteMission.action"
  "action/ExecutePayloadTask.action"
  DEPENDENCIES geometry_msgs 
)

ament_package()