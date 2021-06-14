import pyautogui as gui
import time

# When fail-safe mode is True, moving the mouse
# to the upper-left will raise a pyautogui.FailSafeException 
# that can abort the program

gui.FAILSAFE = True

'''
while True:
    print(gui.position())
    '''
gui.PAUSE = 0.25 # pause this amount after every public function call
time.sleep(5) # pause time before program executes
gui.moveTo(315, 103, 1.0)
gui.leftClick()
gui.typewrite("MoP")
gui.press('enter')
