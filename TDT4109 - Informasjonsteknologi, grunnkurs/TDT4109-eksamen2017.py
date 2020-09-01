# 2A
# Linje 5: imid = (imin+imax)/2

# 2B
def myst(A=[1,2,3,5,7,9]):
    L=len(A)-1 #5
    for i in range(len(A)//2):
        t=A[i]
        A[i] = A[L-i]
        A[L-i]=t
    return A
# Reverserer lista: [9,7,5,3,2,1]

# 2C
def myst2(a=345):
    b=''
    while a or b=='':
        b=str(a%2)+b #1-0-1-0-1-1-0-0-1
        a=a//2 #345-172-86-43-21-10-5-2-1
    return b
# Gjøre om bin10 til bin2: '101011001'

# 2D
import random
def myst3(a=[1,2,3,4,5,6,7,8,9,10]):
    b =[0]*len(a) #[0,0,0,0,0,0,0,0,0,0]
    for c in range(len(a)): #len(a)=10
        d = random.randint(0,len(a)-1) #(0,9) - (0,8) - (0,7) ...
        b[c] = a[d]
        del a[d]
    return b
# Returnerer en ny scramblet/shufflet liste av liste a

# 3A
def file_to_table(filename):
    file = open(filename,'r')
    table = []
    for line in file:
        splitted = line.split(',')
        table.append([int(x) if x.isdigit() else x for x in splitted])
    return table
table = file_to_table('box_a.txt')
# print(table)
# [[2017, 11, 17, 6, 21, 12, 'HB69082'], [2017, 11, 17, 6, 21, 53, 'CV86023'],
# [2017, 11, 17, 6, 23, 0, 'HD27560'], [2017, 11, 17, 6, 23, 2, 'UT29891'], [2017,
# 11, 17, 6, 24, 25, 'IS11293'], [2017, 11, 17, 6, 24, 40, 'EL73840'], [2017, 11,
# 17, 6, 24, 41, 'UT55227'], [2017, 11, 17, 6, 26, 55, 'NB59108'], [2017, 11, 17,
# 6, 27, 29, 'UT46408'], [2017, 11, 17, 6, 28, 19, 'LE68228']]

# 3B
def time_diff(start,end):
    date_start,date_end = [start[:3]],[end[:3]]
    day_diff = diff_date(date_start,date_end)
    time_start,time_end = start[3]*3600+start[4]*60+start[5],end[3]*3600+end[4]*60+end[5]
    diff = time_end - (time_start+day_diff*24*3600)
    return diff
# diff = time_diff([2017,11,17,6,24,40],[2017,11,17,6,32,40])
# print(diff)
# 480
# diff = time_diff([2017,11,17,23,59,59],[2017,11,18,0,9,12])
# print(diff)
# 553

# 3C
def check_min_distance(car_table,diff):
    check_in_min = []
    for i in range(1,len(car_table)):
        start = car_table[i-1]
        end = car_table[i]
        # [2017, 11, 17, 6, 23, 0, 'HD27560'], [2017, 11, 17, 6, 23, 2, 'UT29891']
        diff_time_sec = time_diff(start[:-1],end[:-1])
        if diff_time_sec <= diff:
            check_in_min.append(end[-1])
        return check_in_min
# car_table=file_to_table('box_a.txt')
# crazy_drivers=check_min_distance(car_table,3)
# print(crazy_drivers)
# ['UT29891', 'UT55227']

# 3E
import random
def generate_license_numbers(amount):
    letters = ['BS','CV','EL','FY','KU','LE','NB','PC','SY','WC']
    generated = []
    while len(generated) <= amount:
        letter = letters[random.randint(0,len(letters)-1)]
        number = str(random.randint(10000,99999))
        license_number = letter+number
        if license_number not in generated:
            generated.append(license_number)
    return generated
# cars=generate_license_numbers(10)
# print(cars)
# ['CV29728', 'KU73709', 'EL87605', 'NB76581', 'KU65980', 'WC71086', 'PC48338',
# 'KU36868', 'NB44194', 'KU10621']

# 3F
def list_speeders(filename_a,filename_b,speed_limit,distance):
    a = file_to_table(filename_a)
    b = file_to_table(filename_b)
    speeders = []
    for i in range(len(a)):
        license = a[i][-1] #HB69082
        date_time_a = a[i][:-1]
        index_b = 0
        for j in range(len(b)):
            if b[j][-1] == license:
                index_b = j
                break
        date_time_b = b[index_b][:-1]
        diff_time = time_diff(date_time_a,date_time_b)
        speed = distance/(diff_time/3600) #km/t
        if speed > speed_limit: #om fart er høyere enn fartsgrensen
            speeders.append(license)
    return speeders

# speeders = list_speeders('box_a.txt','box_b.txt',60,10)
# print(speeders)
# ['UT29891', 'EL73840', 'LE68228']

# 4A
def formatTime(seconds):
    hh = seconds//3600 #12305->3
    mm = (seconds%3600)//60 #1505->25
    ss = (seconds%3600)%60 #5->5
    return (f'{hh if hh>=10 else '0'+str(hh)}:{mm if mm>=10 else '0'+str(mm)}:{ss if ss>=10 else '0'+str(ss)}')
# >>> time = formatTime(12305)
# >>> print(time)
# 03:25:05

# 4B
def valuesDecember():
    first = 11880 # 03:18
    period = 44712 # 12:25:12
    return first,period
# first, period = valuesDecember()
# print(first)
# 11880
# print(period)
# 44712

# 4C
def genTides():
    first, period = valuesDecember()
    lows,highs = [],[]
    i = 0
    while (first+(period*(i+1))/2) > (30*24*3600): # index starter fra 0, dermed 0-30 = (1-31)
        lows.append(first+period*i)
        highs.append(first+(period*i)/2)
        i+=1
    return lows,highs[:-1]
# lows,highs=genTides()
# print(lows[:8])
# [11880, 56592, 101304, 146016, 190728, 235440, 280152, 324864]
# print(highs[:8])
# [34236, 78948, 123660, 168372, 213084, 257796, 302508, 347220]

# 4D
def genTidesStr(tideList):
    listTides = []
    for tide in tideList:
        string = f'{tide//(24*3600)+1} {formatTime(tide)}'
        listTides.append(string)
    return listTides
# >>> lows, highs = genTides()
# >>> lowStrings = genTidesStr(lows)
# >>> for item in lowStrings[:5]:
# print(item)
# 1 03:18:00
# 1 15:43:12
# 2 04:08:24
# 2 16:33:36
# 3 04:58:48

# 4E
def checkTides(dayInMonth): #desember
     # Tid mellom 09:00 og 13:00
     lows, highs = genTides()
     for tide in lows:
         if tide//(24*3600)+1 == dayInMonth and (9 < int(formatTime(tide)[:2]) < 13):
             return print(f'low tide at {formatTime(tide)}')
     for tide in highs:
        if tide//(24*3600)+1 == dayInMonth and (9 < int(formatTime(tide)[:2]) < 13):
            return print(f'high tide at {formatTime(tide)}')
     return print('no tides')
# checkTides(12)
# no tides
# checkTides(18)
# high tide at 12:12:36
# checkTides(24)
# low tide at 11:02:24

# 4F
def listTides() #lavvann tides only
    lows, highs = genTides()
    print(f"{'Day'.ljust(3)} {'First'.center(8)} {'Second'.center(8)}")
    skipOne = False
    for i in range(len(lows)-1):
        dayInMonth = (lows[i]//(24*3600))+1
        if skipOne:
            skipOne = False
            continue
        if dayInMonth == (lows[i+1]//(24*3600))+1:
            print(f'{dayInMonth.ljust(3)} {formatTime(lows[i]).center(8)} {formatTime(lows[i+1]).center(8)}')
            skipOne = True
        else:
            print(f'{dayInMonth.ljust(3)} {formatTime(lows[i]).center(8)} {''.center(8)}')
# >>> listTides()
