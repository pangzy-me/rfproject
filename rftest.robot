*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
百度搜索测试
    Open Browser    http://www.baidu.com    chrome
    set browser implicit wait  2
    maximize browser window
    Input text      id=kw                   robotframework框架
    click button    id=su
    sleep  2
    ${firstele}=     get text               id=1
    should contain   ${firstele}            Robot
    close Browser

比较两个值是否相等
    ${var}          set variable    hello
    log to console  打印日志信息到控制台(功能同print)
    log to console  可用作调试，打印某个变量的值，如变量var的值为：${var}
    log  可用作调试或打印某个变量的值到日志里，如变量var的值为：${var}
    should be equal     ${var}      helle       测试不通过异常信息：期望结果与实际值不相等

字符串转换成整数
    ${num}  convert to integer  11      #rf默认的为字符串格式，转换为整数
    log to console  ${num}
    should be equal  ${num}  11  类型不匹配抛异常，整数不等于字符串

字符串转换成浮点数
    ${num}  convert to number  11      #rf默认的为字符串格式，转换为浮点数
    log to console  ${num}
    should be equal  ${num}  11  类型不匹配抛异常，浮点数不等于字符串

直接传数字作为参数
    # 直接使用数字作为参数，使用 ${} 来传递，如同变量一样
    log to console  ${32}
    log to console  ${32 + 1*8}

检查两个值是否相等
#    should be equal  10  010    # rf默认返回的是字符串格式，两个值不相等
#    should be equal as integers  10  010    # 虽然rf接收的是两个字符串，但是关键字进行了整型转换，结果相等
#    should be equal as numbers  10  010     # 虽然rf接收的是两个字符串，但是关键字进行了浮点型转换，结果相等
    should be equal as strings  10  010      # 关键字进行了字符串转换，结果不相等

使用核心关键字用来比较值
    # 两个整数进行比较，传递给should be true的是一个表达式'11>10'
#    ${num}  convert to integer  11
#    should be true  ${num}>10       # ${num}>10整体作为一个字符串，调用了Python底层的内置函数eval('11>10')

    # 两个字符串进行比较，传递给should be true的是一个表达式'hello==helle'
    ${str1}  set variable  hello
#    should be true  ${str1}==helle  # 字符进行比较，会报错，hello变量未定义，解决方法如下：
#    should be true  '${str1}'=='hello'      # 解决方法一
#    should be true  $str1=='hello'           # 解决方法二

    # 验证字符串由xx开始
    should be true  $str1.startswith('she')  # 可直接使用Python中的内置函数进行判断比较
#    should start with  ${str1}  he     # 也可使用RF的内置函数进行比较
#    should be true  $str1[0]=='hello'   # 如果str1为列表，使用下标取值
#    should be true  $dict1['key']=='value'  # 如果是dict，使用键值对取值






