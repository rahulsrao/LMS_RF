import random
from re import search
from robot.api.deco import library, keyword
from robot.libraries.BuiltIn import BuiltIn


@library
class DashBoard:
    def __init__(self):
        self.setLib=BuiltIn().get_library_instance("SeleniumLibrary")

    @keyword
    def getCoursesCount(self):
        Courses = self.setLib.get_webelements(" css:span[class ='subheading']")
        return len(Courses);

    @keyword
    def ClickOnaCourse(self,No):
        Courses = self.setLib.get_webelements("css:div[class='flex xs12 md4 offset-md-1']")
        self.setLib.click_button(Courses[(int(No))])