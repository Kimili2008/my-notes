---
Date: 2025-01-24T18:11:00
---
## The four most difficult things

- Mechanics, wiring and the use of the embedded arduino chip


- Algorithum of the control of the robotic arm


- Design the 3D-printed chessboard and pieces


- UI with a screen and the player can choose whether it's black or white.


## Total workflow


1. Preparion: The arm puts the pieces into the corresponding positions.
2. The player click the button to select the game mode.
3. The game starts! The player place the piece into the positions.
4. The hall-sensor under the board detects what the player moves and responds.
5. The hall-sensors, altogether, produces a matrix of the whole board.
6. The Arduino receives the message and gives back the best position to play.
7. The robotic arm receives the result, picks up the piece and moves to the right position.
8. The screen detects whether there's restract. If so, the robotic arm stops and places back the two pieces.



## Things needed
1. hall-sensors *8
2. a robotic arm *1*
3. A board *1*
4. pieces white *6* ;black *6*
5. magnets *30*
6. USB2UART
7. Dupont line
8. Breadboard





## Servo control
The servo has four degrees of freedom.


