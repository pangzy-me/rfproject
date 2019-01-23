*** Settings ***
Library  mylib
Library  Dialogs
Library  Collections    # 针对list和dictionary的处理

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

条件判断用例
    ${returnHtml}  getwebinfo
    run keyword if  '201a9' in $returnHtml and 'UTaC' in $returnHtml  log to console  是2019年的UTC时间
    # 换行使用三个点 .
    ...  ELSE IF  '201a9' in $returnHtml  log to console  是2019年  # ELSE IF 必须大写
    ...  ELSE IF  'UTaC' in $returnHtml  log to console  是UTC时间
    ...  ELSE  LOG TO CONSOLE  不是2019年的UTC时间     # ELSE 是run keyword if 的分支，必须大写

循环及条件判断混合
    :for  ${value}  in range  10000
    \  ${num}  get value from user  请输入体重数字  60  # 默认值为60
    \  run keyword if  $num=='over'  exit for loop
    \  log to console  体重为${num}
    \  run keyword if   int($num)>60  log to console  体重超过了60,为${num}
#    \  ...  ELSE  log to console  体重太轻

创建列表关键字
    ${list}=  create list  a  b  ${1}   # 表示数字变量
    append to list  ${list}  hello  world
    log to console  ${list}

创建字典关键字
    ${dict}=  create dictionary  a=1  b=2
    set to dictionary  ${dict}  c=3
    log to console  ${dict}

#evaluate关键字可以方便定义列表
evaluate关键字使用
    ${var}=  evaluate  888
    log to console  ${var}
    ${list}=  evaluate  ['hello', 0, 3.14]
    log to console  ${list}
    ${list*N}=  evaluate  ['hello'] * 10
    log to console  ${list*N}
    ${dict}=  evaluate  {'sex':'man', 'age':22}
    log to console  ${dict}

