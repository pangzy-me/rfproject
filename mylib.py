import os
import requests


def opencalc():
    os.system('calc')


def addtwo(a, b):
    # print(f'a+b = {a+b}')
    # print("a+b=%s" % (a+b))
    return "a+b=%s" % (a+b)


def printargs(*args,  **kwargs):
    for arg in args:
        print(repr(arg))    # 返回一个对象的string格式
    for k, v in kwargs.items():
        print(repr(k) + ':' + repr(v))


def returnlist():
    return [1, 2, 3]


def returndict():
    return {
        'key1': 'value1',
        'key2': 'value2'
    }


def getWebInfo():
    response = requests.get('http://mirrors.163.com/centos/timestamp.txt')
    return response.text


# getWebInfo()
# printargs('aa', 'bb', key1='value1', key2='value2')



