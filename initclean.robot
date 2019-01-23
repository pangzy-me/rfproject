*** Settings ***
Library  SeleniumLibrary
Library  mylib  # 用户自定义库使用时要导入到前面
Suite Setup  log to console  \n ---- 测试套件Suite 初始化 ----
Suite Teardown  log to console  \n ---- 测试套件Suite 清除 ----
Test Setup  log to console  \n ==== 测试用例Test 默认初始化 ====
Test Teardown  log to console  \n ==== 测试用例Test 默认清除 ====

*** Test Cases ***
初始化及清除用例1
    [Documentation]  用例1初始化及清除
#    [setup]  log to console  \n ******* setup 初始化 *******
    [setup]  opencalc
    log to console  测试用例1主体部分
    [teardown]  log to console  \n ******* teardown 清除 *******

初始化及清除用例2
    [Documentation]  用例2初始化及清除
    log to console  \n 测试用例2主体部分

初始化及清除用例3
    [Documentation]  用例3初始化及清除
    log to console  \n 测试用例3主体部分




