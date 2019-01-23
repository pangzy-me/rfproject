*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
初始化及清除用例21
    [Documentation]  用例robot21初始化及清除
    [setup]  log to console  \n ******* setup 初始化 *******
    log to console  测试用例robot21主体部分
    [teardown]  log to console  \n ******* teardown 清除 *******

初始化及清除用例22
    [Documentation]  用例robot22初始化及清除
    log to console  \n 测试用例robot22主体部分

