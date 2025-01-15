# overwrite_string length : 7
# my_string : 9
def solution(my_string, overwrite_string, s):
    answer = ''
    lastValue = len(overwrite_string)+s
    answer = my_string[:s] + overwrite_string + my_string[lastValue:]
    return answer