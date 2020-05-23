# Flickering-Leds
Simple programs that will toggle leds on and off with a random appearance.

First is an arduino nano program that works for up to the 20 or so leds it could drive using the data pins.

Second is a processing program with the mostly same program logic, just many more leds. Given monitor refresh rates, and the sheer number of leds to update, chunks must be processed at a time then drawn at once contrary to the arduino processing a single led and instantly displaying the single new led state. I also slowed down how fast the processing program works through all leds to avoid rapid flickering, favoring an old timey scan line appearance.
