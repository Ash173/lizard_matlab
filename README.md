# lizard_matlab
A keyboard driven stick lizard animation in Matlab

Objective: Make a simple keyboard driven navigation animation for a stick Lizard.

Data:
1. There are 3 body segments (each 1 unit length) and 4 legs (each 0.5 unit length)
2. The base point of one of the body segments is moved around by keyboard input
3. Update the base point
a. an increment of 0.3 unit in X-axis if rightarrow is detected
b. a decrement of 0.3 unit in X-axis if leftarrow is detected
c. an increment of 0.3 unit in Y-axis if uparrow is detected
d. a decrement of 0.3 unit in Y-axis if downarrow is detected
4. Each keypress (even if not arrow buttons) also changes the lizard link
orientation/position to show a walking-like animation.
5. The entire lizard does NOT change orientation, it just walks sideways/front-back
