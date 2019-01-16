*** Settings ***
Library  mylib

*** Test Cases ***
使用自定义测试库
#    opencalc
#    ${var1}  convert to integer  4
#    ${var2}  convert to integer  5
#    ${var3}=  addtwo  ${var1}  ${var2}
#    log to console  ${var3}

    ${listvar}  returnlist
    printargs  ${listvar}   # 传什么打印什么
    printargs  @{listvar}   # 展开所传列表的内容
    ${dictvar}  returndict
    printargs  &{dictvar}[key1]   # 如果变量是字典，使用键值对直接取值
    log to console  ${dictvar}    # 将返回的数据输出到控制台
#   :for 实现循环






