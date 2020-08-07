***Settings***
Library             SeleniumLibrary
Resource            elements.robot


***Keywords***
Nova sessão
    Open Browser        ${URL}          chrome

Encerra sessão
    Capture Page Screenshot
    Close Browser    