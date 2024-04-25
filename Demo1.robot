*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}  https://robotframework.org/
${browser}      chrome

*** Test Cases ***
Open Google On Chrome and Search
    open browser    ${url}      ${browser}
    maximize browser window
    click element    //a[@class='color-white font-title type-uppercase type-no-underline px-medium']
    wait until element is visible    //h1[@class='type-center mt-large mb-large color-white']
    scroll element into view    //a[normalize-space()='GitHub']
    sleep    2
    click element    //a[normalize-space()='GitHub']
    sleep    2
    go back
    sleep     2
    close browser

*** Keywords ***
