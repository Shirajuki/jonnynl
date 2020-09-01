def is_leap_year(year):
    if year % 400 == 0:
        return True
    elif year % 100 == 0:
        return False
    elif year % 4 == 0:
        return True
    return False
# print(is_leap_year(1904))

# A
def weekday_newyear(year):
    saved_year = year
    divided100 = abs(1900-year)//100 if abs(1900-year) != 0 else 0
    divided400 = abs(year-1-1600)//400
    # print('d1',divided100)
    # print('d2',divided400)
    year = int(str(abs(1900-year))[-2:])
    # print(year)
    if is_leap_year(saved_year):
        weekday = (-divided100 + divided400 + year + (year-1)//4)%7
    else:
        weekday = (-divided100 + divided400 + year + (year)//4)%7
    return weekday
for i in range(1900,1920):
    weekday = ['man','tir','ons','tor','fre','lor','son']
    print(f'{i} {weekday[weekday_newyear(i)]}')
# for i in range(2200,2223):
#     weekday = ['man','tir','ons','tor','fre','lor','son']
#     print(f'{i} {weekday[weekday_newyear(i)]}')

# B
def is_workday(day):
    if day < 5:
        return True
    return False
print(is_workday(2))

# C
def workdays_in_year(year):
    day = weekday_newyear(year)
    days = 0
    n = 365
    if is_leap_year(year):
        n = 366
    for i in range(day,n+day):
        i = i%7
        if is_workday(i):
            days += 1
    return days
for i in range(1900,1920):
    print(f'{i} har {workdays_in_year(i)} arbeidsdager')
