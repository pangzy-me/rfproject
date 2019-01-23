*** Settings ***
Suite Setup  log to console  \n ---- 测试套件目录 __init__.robot Suite 初始化 ----
Suite Teardown  log to console  \n ---- 测试套件目录 __init__.robot Suite  清除 ----
Test Setup  log to console  \n ==== 测试用例目录 __init__.robot Test 默认初始化 ====
Test Teardown  log to console  \n ==== 测试用例目录 __init__.robot Test 默认清除 ====
