import os


def opencalc():
    os.system('calc')


def addtwo(a, b):
    # print(f'a+b = {a+b}')
    # print("a+b=%s" % (a+b))
    return "a+b=%s" % (a+b)


def lista():
    return [1, 2, 3]


def printlist(*aa):
    print(lista())

