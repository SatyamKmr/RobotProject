*** Settings ***
Library    SeleniumLibrary
Suite Setup    OpenBrowserKeyword
Suite Teardown    CloseBrowserKeyword    

Default Tags    Sanity
*** Test Cases ***
MyFirstTest
    [Tags]    smoke
    Log    Hello World1
    
MySecondTest
    
    Log    Hello World2
    Set Tags    regression
    
MyThirdTest
    Log    Hello World3
    
MyFourthTest
    Log    Hello World4
    
MyFifthTest
    Log    Hello World5
    
MySixthTest
    Log    Hello World6
    
MySeventhTest
    Log    Hello World7
    
    

# SampleLoginTest
        # [Documentation]    This is sample of login test
        # Maximize Browser Window
        # LoginKeyword   
        # Set Browser Implicit Wait    3s
       # # Get Element Attribute    id:welcome    attribute
       # Click Element    id:welcome
       # Set Browser Implicit Wait    5s
       # Click Link    xpath://a[contains(text(),'Logout')]  
       # Set Browser Implicit Wait    3s          
       # Log    Test Complete
       # Log    This test was executed by %{username}% on %{os}    
       
*** Variables ***
${URL}    https://opensource-demo.orangehrmlive.com/
@{CREDENTIALS}    Admin    admin123  
&{LOGINDATA}    username=Admin    password=admin123 
*** Keywords ***
LoginKeyword
    Input Text    id:txtUsername    @{CREDENTIALS}[0]    
    Input Text    id:txtPassword    &{LOGINDATA}[password]
    Click Element    id:btnLogin  
 
OpenBrowserKeyword
        Open Browser    ${URL}    chrome
        
CloseBrowserKeyword
    Close Browser
       
