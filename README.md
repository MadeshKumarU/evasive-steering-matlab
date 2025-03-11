**Evasive Steering Simulation using MATLAB**

**Overview**
This MATLAB simulation models an evasive steering scenario using the Driving Scenario Designer toolbox. The ego car overtakes the lead car while ensuring that the passing car does not overtake the ego car. The simulation incorporates lane changes, controlled speeds, and real-time visualization to simulate a safe evasive maneuver.

**Features**
🚗 Ego car performs an evasive steering maneuver.
🏎️ Lead car maintains speed while shifting lanes.
⏩ Speed control applied to ensure smooth overtaking.
🛑 Passing car is restricted from overtaking the ego car.
📊 Real-time visualization of vehicle movements in MATLAB.

**Technologies Used**
Software: MATLAB (Driving Scenario Designer, Vehicle Trajectories)
Concepts: Path Planning, Lane Changing, Speed Control

**Installation & Usage**
1.Clone the repository:
git clone https://github.com/MadeshKumarU/evasive-steering.git
cd evasive-steering

2.Open MATLAB and run the script:
run('evasive_steering.m')

**Code Explanation**
Defines a road with two wide lanes.
Creates three vehicles (Ego, Lead, and Passing Car) with custom sizes.
Ego car follows a trajectory to overtake the lead car safely.
Lead car changes lanes while maintaining speed.
Passing car maintains a lower speed, ensuring it does not overtake the ego car.
Scenario visualization is enabled using plot(dScenario).

**Expected Results**
🚗 The ego car performs an evasive steering maneuver.
⏩ The lead car adjusts its position while maintaining speed.
🛑 The passing car does not overtake the ego car.
📊 The entire driving scenario is visualized dynamicall
