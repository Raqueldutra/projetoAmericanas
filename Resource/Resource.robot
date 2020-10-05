*** Settings ***

Library             SeleniumLibrary

*** Variables ***

***Keywords***

Nova sessão
    Open Browser      about:blank        Chrome


Encerra sessão
    Capture Page Screenshot         
    Close Browser




