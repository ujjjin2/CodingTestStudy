def solution(a, b):
    
    strAB = str(a)+str(b)
    doubleAB = 2*a*b
    return max(int(strAB),doubleAB)