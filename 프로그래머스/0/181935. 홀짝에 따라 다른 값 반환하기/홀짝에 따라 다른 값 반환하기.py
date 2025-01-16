def solution(n):
    value = 0
    for i in range(n+1):
        if n%2 != 0 and i%2 != 0 : 
            value = value + i
        elif n%2 == 0 and i%2 == 0: 
            value = value + i*i
    return value

            