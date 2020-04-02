
def solution_hide_phone_number(s): 
    i = 0
    str_list = []
    for number in s[::-1]:
        print(number)
        if i < 4:
            str_list.append("*")
        else:
            str_list.append(number)
        i = i + 1

    return ''.join(str_list[::-1])

def solution_gcd_lcd(n,m):
    if n > m:
        temp = n
        n = m
        m = temp

    temp_n = n
    temp_m = m
    while m:
        n, m = m, n%m
    gcd = n
    lcm = temp_n * temp_m / gcd
    return [gcd, lcm]


if  __name__ == "__main__":
    print(solution_hide_phone_number("01049489947"))
    print(solution_gcd_lcd(10000,2))