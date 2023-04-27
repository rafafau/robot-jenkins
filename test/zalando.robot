*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://www.zalando-lounge.pl/
${URL_ITEM}    https://www.zalando-lounge.pl/campaigns/ZZO23YN/categories/253250191/articles/ZZO1TEY10-Q00#
${SIZE}    M

*** Test Cases ***
Login to zalando
    Open Browser    https://www.zalando-lounge.pl/#/login    safari
    Maximize Browser Window
    Wait Until Page Contains    Zaloguj się
    Click Button    Zaloguj się
    Wait Until Element Is Enabled    name=email    20s
    Input Text    name=email    rafal.sipiatowski@gmail.com
    Sleep    1s
    Input Text    name=password    dihCyd-kikjok-0quzxu
    Click Button    Dalej
    Sleep    10s
    Wait Until Page Contains    Wszystkie promocje    10s
    Go to    ${URL_ITEM}
    Wait Until Page Contains    Do koszyka    10s
    Click Button    ${SIZE}
    Wait Until Page Contains    W porządku    10s
    Click Button    W porządku
    Wait Until Element Is Enabled    id=3val-btn-label    10s
    Click Button    Do koszyka
    Sleep    10s
