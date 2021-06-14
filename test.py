import pyautogui as gui
import time

'''
while True:
    print(gui.position())
    '''
gui.PAUSE = 0.25
time.sleep(5)
gui.moveTo(315, 103, 1.0)
gui.leftClick()
gui.typewrite("MoP")
gui.press('enter')
