# Installation instructions

1. Download [Visual Studio Code](https://code.visualstudio.com/) and once that is done, install [PlatformIO](https://docs.platformio.org/en/latest/integration/ide/vscode.html#installation).
2. Open a terminal window and install *numpy*, a python library, by running the following command in the terminal:
`pip3 install numpy`
3. Clone this repository in a folder that you can remember, by typing the following command into the terminal:
`git clone https://github.com/acastles91/narcise/`
	* Navigate through folders using the command `cd`
4. In **Visual Studio Code** go to *File > Open Folder* and open the folder *narciseFromScratch* inside the *narcise* directory that you just cloned. This is where you will compile the code that will go into the microcontroller.
5. Navigate to the *narcise* folder with the file browser. Inside of it you will find a directory called *scriptGenerator*. Open the file *script* with **TextEdit**.
6. Edit the script. Each line represents a keyframe, which you define by first defining the *Timestamp* with the format *hh:mm:ss:fff*, where fff represents fractions of a second in milliseconds. After that comes the value of opacity of each layer as a percentage, with 100 being transparent and 0 being totally opaque. It is important that you keep this format consistent throughout the whole file. Make sure that you leave **no extra whitespace at the end of the file*
7. After saving the script, go back to *Visual Studio Code*, with the folder *narciseFromScratch* opened. Go to the terminal and type:
`cd ../scriptGenerator`
`python3 scriptGenerator.py 1 200 7`

	The argument `1` means that the script will be looped, `200` is the refresh rate (the bigger the value the slower and more "flickery" the piece will look) and `7` is a parameter that relates to the difference between minimal and maximal value. Play around with this last parameter to see differences in the response time of the dimming.

8. After the script is generated, connect the microcontroller to the computer using a USB cable capable of transfering data and upload the program.
