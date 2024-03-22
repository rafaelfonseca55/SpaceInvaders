# Class 24D - Group 8
      Pedro Correia 47264;
      Guilherme Esteves 48313;
      Rafael Fonseca 48354.

# Space Invaders game project

This project was developed as part of the Laboratory of Computers and Informatics course during the summer semester of 2023/24. Using Kotlin and hardware's description language VHDL.

## Hardware modules (SpaceInvaders folder)

- **Keyboard Reader**: Decodes keypresses from a 12-key keyboard matrix.

## Software modules (SpaceInvadersSW folder)

- **HAL (Hardware Abstraction Layer)**: The HAL module offers a virtual interface to interact with hardware components, hiding the underlying hardware intricacies. It provides functions to start the system, read and write bits to hardware ports, and set or clear specific bits. This module acts as a bridge between the software control logic and the hardware peripherals.The HAL module provides a virtualized interface for accessing hardware components, abstracting away the underlying hardware details. It includes functions for initializing the system, reading and writing bits to hardware ports, and setting or clearing specific bits. This module serves as an intermediary between the software control logic and the hardware peripherals.
-  **KBD (Keyboard Interface)**: The KBD module manages keyboard input by initializing the interface and reading keypresses. It provides methods to retrieve the pressed key or wait for a key with a specified timeout period. The module abstracts keyboard hardware and simplifies the interface for game control logic.
-  **LCD (LCD Display Interface)**: The LCD module effectively manages communication with the LCD by providing essential functions for initializing the display, writing characters and strings, positioning the cursor, and clearing the screen. By abstracting the complexities of interfacing with the LCD hardware, this module allows for easy integration into the game control logic.
-  **Receiver**: The receiver module is an essential component that receives data from external peripherals, such as the LCD and score display. It comprises different blocks that are responsible for data reception, conversion from serial to parallel data, bit count tracking, and parity checking. This module is designed to ensure that communication with devices is always reliable, and it processes received data accurately for further use by the game control logic. It is an indispensable part of the system that guarantees the seamless operation of your game.
-  **Serial Emitter**: The Serial Emitter module manages the transmission of serial data to external peripherals, such as the LCD and score display. It includes functions for initializing the serial communication interface and sending data packets to specific destinations. The module abstracts the transmission process, allowing the game control logic to easily communicate with external devices over a serial connection.
