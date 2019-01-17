*** Settings ***
Library  mylib

*** Test Cases ***
字符串列表字典传参
#    opencalc
#    ${var1}  convert to integer  4
#    ${var2}  convert to integer  5
#    ${var3}=  addtwo  ${var1}  ${var2}
#    log to console  ${var3}

    ${listvar}  returnlist
    printargs  ${listvar}   # scale方式，传什么打印什么。
    printargs  @{listvar}   # list方式，作为多个参数传入。展开所传列表的内容
    printargs  @{listvar}[0]   # list方式，作为多个参数传入。取第一个参数
    printargs  @{listvar}[1]   # list方式，作为多个参数传入。取第二个参数
    ${dictvar}  returndict
    printargs  &{dictvar}       # dictionary方式 如果变量是字典，使用键值对直接取值
    printargs  &{dictvar}[key1]   # dictionary方式 如果变量是字典，使用键值对直接取值
    log to console  ${dictvar}    # 将返回的数据输出到控制台
    log  ${dictvar}               # 将返回的数据输出到log文件中


#   :for 实现循环
FOR循环1
    :for  ${var}  in  衣  食  住  行
    \    log to console  ${var}
    log to console  outsideLoop

FOR循环遍历列表
    ${listvar}  returnlist
    :for  ${var}  in  @{listvar}        # 使用 @ 取列表中的所有数据
    \    log to console  ${var}
    log to console  outsideLoop

FOR循环range使用1
    [Documentation]  循环打印 0-9
    :for  ${index}  in range  10    # 只有上限
    \   log to console  ${index}

FOR循环range使用2
    [Documentation]  循环打印 1-10
    :for  ${index}  in range  1  11    # 有下限，有上限
    \   log to console  ${index}

FOR循环range使用3
    [Documentation]  间隔2，循环打印 1-10中的数字
    :for  ${index}  in range  1  11  2    # 有下限，有上限，有间隔
    \   log to console  ${index}

