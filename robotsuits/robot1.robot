*** Settings ***
Library  SeleniumLibrary
Suite Setup  log to console  \n ---- 测试套件Suite 初始化 ----
Suite Teardown  log to console  \n ---- 测试套件Suite 清除 ----
Test Setup  log to console  \n ==== 测试用例Test 默认初始化 ====
Test Teardown  log to console  \n ==== 测试用例Test 默认清除 ====

*** Test Cases ***
初始化及清除用例11
    [Documentation]  用例robot11初始化及清除
    [setup]  log to console  \n ******* setup 初始化 *******
    log to console  测试用例robot11主体部分
    [teardown]  log to console  \n ******* teardown 清除 *******

初始化及清除用例12
    [Documentation]  用例robot12初始化及清除
    log to console  \n 测试用例robot12主体部分
