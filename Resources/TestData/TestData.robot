*** Settings ***
Documentation    Test Data
Library          SeleniumLibrary
Library          Collections

*** Variables ***
${purl}                https://app.lovemyskool.com
${surl}                https://staging-app.lovemyskool.com
${AdminTeacher}        uni
${Teacher}             uni.teacher2
${PrAdminTeacherN}     Paras Shah
${prTeacherN}          uni.teacher2
${password}            password
${Oranization}         LoveMySkool
${OrgName}             LMS
${school}              Learn Your Way
${Pschool}             ABC Public School
${Course}              ART
${Course1}             CHEMISTRY
${Course2}             TEST COURSE
${Module}              Module 1
${Module1}             Module 2
${Batch1}              ART BATCH ONE
${Batch2}           ART BATCH THREE
${Batch3}           CHEMISTRY BATCH ONE
${Batch4}           TEST BATCH
${PBatch1}          ART BATCH TWO
${Concept1}         Concept 1
${Date1}            01/01/2021
${Date2}            10/02/2023
${batchgroup}       Batch Group 1
${week}             Week 1
${page}             Fundamental Architecture
${leesonplan}       ART - Module 1- Lesson Plan
${student}              Beta Student
${student3}             badges uni27
${student_username}     badges.uni10
${prodStudent}          Beta uni
${prodStudent1}         badges uni1
${mailid}               rahulsrao15@gmail.com
${Date3}                2022/12/20
${Date4}                2023/01/10
${teacher1}              Guru Dronacharya
${page1}                 Page 3
${page2}                 Test Page
${video}                 Sending materials into space is expensive
${Collection}            Test Collection 2
${Collection2}           Test Collection 4
${Collection1}           Test Collection Title
${PageData}              This is a page details of the Test Section
${CollectionDescription}              This is a details of the Collection
${Assignment}            Assignment 5
${Test}                  Normal Test 8682
${StudentProject}        Test Student Project
${Discussions}           Discussion Forums 1
${LessonPlan}            Lesson Plan 2
${LessonPlan1}           Lesson Plan 3
${JWTToken}              eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJhdWQiOm51bGwsImlzcyI6ImRhdndUaEdkU0VDeFZ6bldxRXpnQlEiLCJleHAiOjE3NjcxMTU4MDAsImlhdCI6MTYyMDE5NTM3MX0.aLEAw70Jg7cxGh8N5Qya427QxSPKBtLB36nNI7gPO00
${CourseDescription}     Test Course Description
${CourseDuration}        1 Month 2 Weeks
${Term}                  SPRING 2020
${level}                 Level 7
${BatchType}             Active
${Program}               Uni
${StudentH}              Red
${BatchGrp}              BATCH GROUP ONE
${BatchGroupN}           TEST ART BATCH GROUP
${BatchGroupN2}          ART GROUP TWO
${status}                Active
${TestStatus}            All
${StudentTest}           Normal Test 8682
${TeacherN}              Guru Dronacharya
${TestType}              NT
${pass%}                 75
${nstudent}              Test Student


#::::::::::::::::::: Student User Details ::::::::::::::::::::::::::::
${StudentUsernameStg}    badges.uni1
${achievement}           Test achievement
${TestDuration}          10
${conceptn}              Concept 1
${SPage}                 Kinetic Energy and Energy Conservation
${CollectionN}           Test Collection 4
${Projects_name}         Test Student Project
${P_Description}         A Student project description
${Project_Section_h}     Test Section One
${Project_Section_description}     A detail of the Section One
${studentUser}              Demo Student


#PreRequisits
#pip install PyAutoGUI