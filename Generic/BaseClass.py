import pyautogui
from robot.api.deco import library, keyword
from robot.libraries.BuiltIn import BuiltIn
from selenium.webdriver.common.action_chains import ActionChains
from selenium import webdriver


@library
class BaseClass:
    def __init__(self):
        self.setLib=BuiltIn().get_library_instance("SeleniumLibrary")

    @keyword
    def Printvalue(self, value):
        print(value)

    @keyword
    def moveandVerifybutton(self,button):
        actions = ActionChains(self)
        actions.move_to_element(button).perform()

    @keyword
    def ZoomOut(self):
        pyautogui.hotkey('ctrl', '-')
        pyautogui.hotkey('ctrl', '-')
