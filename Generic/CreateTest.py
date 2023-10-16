import random
from re import search
from robot.api.deco import library, keyword
from robot.libraries.BuiltIn import BuiltIn


@library
class CreateTest:
    def __init__(self):
        self.setLib=BuiltIn().get_library_instance("SeleniumLibrary")

    @keyword
    def hello_world(self):
        print("hello world")

    @keyword
    def Select_tab(self, tab):
        tablist=self.setLib.get_webelements(" css:.v-tabs__item")
        for tabelement in tablist:
            if tab in tabelement.text:
                print("Inside If condition the list element text :" + tabelement.text)
                self.setLib.click_button(tabelement)

    @keyword
    def Select_Test_Type(self,TestType, Section):
        if Section == "Yes":
            self.setLib.click_element("xpath://input[@aria-label='Sections']")
        if TestType == "Manual":
            self.setLib.click_button("xpath://button[@title='Create test with new questions']")
        elif TestType == "From Question Bank":
            self.setLib.click_button("xpath://button[@title='Create test with existing questions']")
        elif TestType == "Adaptive":
            self.setLib.click_button("xpath://button[@title='Personalised test based on student's response.']")
        elif TestType == "Offline":
            self.setLib.click_button("xpath://button[@title='Create offline test.']")

    @keyword
    def get_test_name(self,name):
        num1 = random.randint(1000, 9999)
        testname = name+str(num1)
        return testname

