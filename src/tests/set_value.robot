*** Settings ***
Resource  resource.robot
Suite Setup  Open And Configure Browser
Suite Teardown  Close Browser

*** Test Cases ***
When value set to 10 the counter is 10
    Go To  ${HOME_URL}
    Click Button  Nollaa
    Input Text  value  10
    Click Button  aseta
    Page Should Contain  nappia painettu 10 kertaa

When value set to 0 the counter is 0
    Go To  ${HOME_URL}
    Click Button  Nollaa
    Input Text  value  0
    Click Button  aseta
    Page Should Contain  nappia painettu 0 kertaa

When value set to -5 the counter is -5
    Go To  ${HOME_URL}
    Click Button  Nollaa
    Input Text  value  -5
    Click Button  aseta
    Page Should Contain  nappia painettu -5 kertaa
