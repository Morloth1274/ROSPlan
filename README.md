ROSPlan Framework
=================

The ROSPlan framework provides a generic method for task planning in a ROS system. ROSPlan encapsulates both planning and dispatch. It possesses a simple interface, and already includes interfaces to common ROS libraries.

### Installation

Get the prerequisites:

(for Indigo)
```sh
sudo apt-get install flex ros-indigo-mongodb-store ros-indigo-tf2-bullet
```
(for Hydro)
```sh
sudo apt-get install flex ros-hydro-mongodb-store ros-hydro-tf2-bullet
```
Select a catkin workspace or create a new one:
```sh
mkdir -p ROSPlan/src
cd ROSPlan/
```
Get the code:
```sh
cd src/
git clone https://github.com/clearpathrobotics/occupancy_grid_utils
git clone https://github.com/KCL-Planning/rosplan
# optionally get the turtlebot interface
git clone https://github.com/KCL-Planning/rosplan_interface_turtlebot2
```
Compile everything:
```sh
source /opt/ros/hydro/setup.bash
catkin_make
```

### Running a demo with the turtlebot

The turtlebot demo is now a simple exploration mission. The turtlebot will visit randomly generated waypoints around a map.

The domain for this demo is in the `rosplan_planning_system` package, as `common/domain.pddl`.

To run the demo first follow the installation instructions and quick-start guide for the Turtlebot Simulator and Gazebo:

[Turtlebot Gazebo](http://wiki.ros.org/turtlebot_gazebo) 

[Turtlebot Simulator](http://wiki.ros.org/turtlebot_simulator) 

Then source the ROSPlan workspace and run:
```sh
roslaunch rosplan_demos turtlebot.launch
sh src/rosplan_demos/scripts/turtlebot_explore.bash
```

`turtlebot.launch` will start the turtlebot simulation, rviz, and ROSPlan.

`turtlebot_explore.bash` calls a ROSPlan component service to generate a roadmap (you can see in rviz); adds exploration goals; and then calls the planning system service.

The turtlebot will move around the waypoints, exploring the environment. You should see output from the planning system, something like:
```
...
KCL: (PS) Dispatching plan
KCL: (PS) Dispatching action [0, goto_waypoint, 10.024417, 10.000000]
KCL: (MoveBase) action recieved
KCL: (PS) Feedback received [0,action enabled]
KCL: (MoveBase) action finished: SUCCEEDED
KCL: (PS) Feedback received [0,action achieved]
...
```
<img src="http://cdn.makeagif.com/media/5-27-2015/kSJr9g.gif" alt="Turtlebot Demo" width="60%"/>


For more detailed information about this demo, please visit our [ROSPlan Wiki Page](https://github.com/KCL-Planning/ROSPlan/wiki), and follow tutorial pages on the right.
