# OpenmanipulatorX-Robot
Analysis of Tracking Control of Openmanipulator-X Robot in MATLAB.

ROS-enabled **OpenMANIPULATOR-X** (RM-X52-TNM) is a full open robot platform consisting of OpenSoftware​, OpenHardware and OpenCR(Embedded board)​.

<br />

<br />

<p align="center">

<img src="https://user-images.githubusercontent.com/40741680/130143968-8e1f9801-636c-49b1-94ca-906b396c0eb3.png" width="350" height="350">
<img src="https://user-images.githubusercontent.com/40741680/130144103-5293a84c-6d58-49c2-933e-5206e2bfc069.png" width="350" height="350">

</p>

<br />

* ### OpenSoftware

  OpenMANIPULATOR-X RM-X52-TNM are based on ROS and OpenSource. ROS official hardware platform,TurtleBot series has been supporting ‘TurtleBot Arm’. The OpenMANIPULATOR-X RM-X52-TNM has full hardware compatibility with TurtleBot3. Users can also control it more easily by linking it with the MoveIt! package. Even if you do not have an actual robot, you can control the robot in the Gazebo simulator.
  
* ### OpenHardware

  OpenMANIPULATOR-X RM-X52-TNM is an open-hardware oriented platform. Most of the components are uploaded as STL files so that users can easily 3d print them. It also allows users to modify the length of the links or the design of the robot for their own purposes. OpenMANIPULATOR-X RM-X52-TNM is made of DYNAMIXEL-X Series which is used in TurtleBot 3.

* ### OpenCR (Embedded board)

  OpenMANIPULATOR-X RM-X52-TNM can also be controlled using OpenCR (Open-source Control module for ROS), the control board used in TurtleBot3. The computing power and real-time controllability of OpenCR can support forward and inverse kinematics, and profile control examples.
  
## OpenmanipulatorX Robot Control

**Jacobian matrix**  of the robots which calculated from cinematics equations is:
<p align="center">
<img src="https://user-images.githubusercontent.com/40741680/130146204-761650e8-6685-4f43-83b2-b5e99dd2f56e.png" width="330" height="185">
</p>


**You could find more detailed information in the [*`Report`*](https://github.com/mirhnius/OpenmanipulatorX-Robot/blob/main/Report.pdf) file**
