import csv
import random
from time import time
from decimal import Decimal
from faker import Faker
import xlwt
from xlwt import Workbook
import datetime
from datetime import timedelta
import calendar
from shutil import copy2

def add_months(sourcedate, months):
    month = sourcedate.month - 1 + months
    year = sourcedate.year + month // 12
    month = month % 12 + 1
    day = min(sourcedate.day, calendar.monthrange(year,month)[1])
    return datetime.date(year, month, day)

def add_minutes(sourcedate, mins):
    return sourcedate + datetime.timedelta(minutes=mins)


DRIVERS_COUNT = 100
TRAMS_COUNT = 100
STATIONS_COUNT = 100
COURSES_1_COUNT = 100_000
COURSES_2_COUNT = 50_000#ile ma ich być wiecej od 1
JOURNEYS_1_COUNT = 500_000
JOURNEYS_2_COUNT = 250_000#ile ma ich być wiecej od 1
FAIL_COUNT_1 = 0
FAIL_LIST_1 = []
FAIL_COUNT_2 = 0
FAIL_LIST_2 = []
TOTAL_HOURS = 160
NUMBER_OF_MONTHS_1 = 24
NUMBER_OF_MONTHS_2 = 12
STARTING_YEAR = 2010
STARTING_DATE = datetime.datetime(STARTING_YEAR, 1, 1)
END_DATE1 = add_months(STARTING_DATE,NUMBER_OF_MONTHS_1)
END_DATE2 = add_months(STARTING_DATE,NUMBER_OF_MONTHS_2)
fake = Faker()
wb1 = Workbook()
wb2 = Workbook()

TYP_AWARII = ['wykolejenie','kolizja','problem z silnikiem', 'drobna usterka']




def create_csv():

    with open('./tramways.csv', 'w', newline='') as csvfile:
        fieldnames = ['ID_Tram','model','production_year','last_control','line_number','failure_count']
        models = ['sony', 'centurion', 'faster', 'fasterV2', 'FIAT','NotU','BestM','Tramster','LetsGoForRide']
        writer = csv.DictWriter(csvfile, fieldnames=fieldnames)
        for i in range(TRAMS_COUNT):
            year = fake.random_int(min=1900, max=2010)
            cos = '-{}y'.format(STARTING_YEAR+NUMBER_OF_MONTHS_2-year)
            writer.writerow(
                {
                    fieldnames[0]: 300 + i,
                    fieldnames[1]: random.choice(models),
                    fieldnames[2]: year,
                    fieldnames[3]: fake.date_time_between(start_date=cos,end_date=END_DATE1).strftime("%Y-%m-%d"),
                    fieldnames[4]: fake.random_int(min = 2, max = 25),
                    fieldnames[5]: fake.random_int(max = 12)
                }
            )
    with open('./stations.csv', 'w', newline='') as csvfile:
        fieldnames = ['ID_station','name','has_shelter']
        writer = csv.DictWriter(csvfile, fieldnames=fieldnames)
        for i in range(STATIONS_COUNT):
            x = random.random()
            if x < 0.2: shelter = 1
            else: shelter = 0
            writer.writerow(
                {
                    fieldnames[0]: 200 + i,
                    fieldnames[1]: fake.name(),
                    fieldnames[2]: shelter
                }
            )
    with open('./courses1.csv', 'w', newline='') as csvfile:
        fieldnames = ['ID_course','expected_start','expected_end','real_start','real_end','tramway','driver']
        writer = csv.DictWriter(csvfile, fieldnames=fieldnames)
        for i in range(COURSES_1_COUNT):
            exp_start = fake.date_time_between(start_date=STARTING_DATE,end_date=END_DATE1)
            rl_start = exp_start
            x = random.random()
            if x < 0.5: rl_start = add_minutes(rl_start, 1)
            elif x > 0.8: rl_start = add_minutes(rl_start, 2)
            exp_end = fake.date_time_between(start_date=exp_start,end_date=END_DATE1)
            rl_end = exp_end
            x = random.random()
            if x < 0.5: rl_end = add_minutes(rl_end, 1)
            elif x > 0.8: rl_end = add_minutes(rl_end, 2)

            writer.writerow(
                {
                    fieldnames[0]: 10000 + i,
                    fieldnames[1]: exp_start.strftime("%Y-%m-%d %H:%M"),
                    fieldnames[2]: exp_end.strftime("%Y-%m-%d %H:%M"),
                    fieldnames[3]: rl_start.strftime("%Y-%m-%d %H:%M"),
                    fieldnames[4]: rl_end.strftime("%Y-%m-%d %H:%M"),
                    fieldnames[5]: random.randint(300, 300+TRAMS_COUNT - 1),
                    fieldnames[6]: random.randint(4000, 4000+DRIVERS_COUNT - 1)
                }
            )
    with open('./journeys1.csv', 'w', newline='') as csvfile:
        fieldnames = ['ID_journey','course','station_start','station_end','expected_start','expected_end',
                      'real_start','real_end','has_failure']
        writer = csv.DictWriter(csvfile, fieldnames=fieldnames)
        for i in range(JOURNEYS_1_COUNT):
            exp_start = fake.date_time_between(start_date=STARTING_DATE,end_date=END_DATE1)
            rl_start = exp_start
            x = random.random()
            if x < 0.5: rl_start = add_minutes(rl_start, 1)
            elif x > 0.8: rl_start = add_minutes(rl_start, 2)
            exp_end = fake.date_time_between(start_date=exp_start,end_date=END_DATE1)
            rl_end = exp_end
            x = random.random()
            if x < 0.5: rl_end = add_minutes(rl_end, 1)
            elif x > 0.8: rl_end = add_minutes(rl_end, 2)
            x = random.random()
            if x < 0.2:
                bum = 1
                global FAIL_LIST_1
                global FAIL_COUNT_1
                FAIL_COUNT_1 = FAIL_COUNT_1 + 1
                FAIL_LIST_1.append(100000 + i)
            else: bum = 0

            writer.writerow(
                {
                    fieldnames[0]: 100000 + i,
                    fieldnames[1]: random.randint(10000, 10000 + COURSES_1_COUNT - 1),
                    fieldnames[2]: random.randint(200, 200 + STATIONS_COUNT - 1),
                    fieldnames[3]: random.randint(200, 200 + STATIONS_COUNT - 1),
                    fieldnames[4]: exp_start.strftime("%Y-%m-%d %H:%M"),
                    fieldnames[5]: exp_end.strftime("%Y-%m-%d %H:%M"),
                    fieldnames[6]: rl_start.strftime("%Y-%m-%d %H:%M"),
                    fieldnames[7]: rl_end.strftime("%Y-%m-%d %H:%M"),
                    fieldnames[8]: bum
                }
            )
    with open('./failures1.csv', 'w', newline='') as csvfile:
        fieldnames = ['ID_failure','station','journey','description','fixed_on_site','type']
        writer = csv.DictWriter(csvfile, fieldnames=fieldnames)
        for i in range(FAIL_COUNT_1):
            exp_start = fake.date_time_between(start_date=STARTING_DATE,end_date=END_DATE1)
            rl_start = exp_start
            x = random.random()
            if x < 0.5: rl_start = add_minutes(rl_start, 1)
            elif x > 0.8: rl_start = add_minutes(rl_start, 2)
            exp_end = fake.date_time_between(start_date=exp_start,end_date=END_DATE1)
            rl_end = exp_end
            x = random.random()
            if x < 0.5: rl_end = add_minutes(rl_end, 1)
            elif x > 0.8: rl_end = add_minutes(rl_end, 2)
            x = random.random()
            if x < 0.7: fixed = 1
            else: fixed = 0

            writer.writerow(
                {
                    fieldnames[0]: 10000 + i,
                    fieldnames[1]: random.randint(200, 200 + STATIONS_COUNT - 1),
                    fieldnames[2]: FAIL_LIST_1[i],
                    fieldnames[3]: fake.text(max_nb_chars=79),
                    fieldnames[4]: fixed,
                    fieldnames[5]: random.choice(TYP_AWARII)
                }
            )
    copy2('./courses1.csv', './courses2.csv')
    copy2('./journeys1.csv', './journeys2.csv')
    copy2('./failures1.csv', './failures2.csv')
    with open('./courses2.csv', 'a', newline='') as csvfile:
        fieldnames = ['ID_course','expected_start','expected_end','real_start','real_end','tramway','driver']
        writer = csv.DictWriter(csvfile, fieldnames=fieldnames)
        for i in range(COURSES_2_COUNT):
            exp_start = fake.date_time_between(start_date=END_DATE1,end_date=END_DATE2)
            rl_start = exp_start
            x = random.random()
            if x < 0.5: rl_start = add_minutes(rl_start, 1)
            elif x > 0.8: rl_start = add_minutes(rl_start, 2)
            exp_end = fake.date_time_between(start_date=exp_start,end_date=END_DATE2)
            rl_end = exp_end
            x = random.random()
            if x < 0.5: rl_end = add_minutes(rl_end, 1)
            elif x > 0.8: rl_end = add_minutes(rl_end, 2)

            writer.writerow(
                {
                    fieldnames[0]: 10000 + i + COURSES_1_COUNT,
                    fieldnames[1]: exp_start.strftime("%Y-%m-%d %H:%M"),
                    fieldnames[2]: exp_end.strftime("%Y-%m-%d %H:%M"),
                    fieldnames[3]: rl_start.strftime("%Y-%m-%d %H:%M"),
                    fieldnames[4]: rl_end.strftime("%Y-%m-%d %H:%M"),
                    fieldnames[5]: random.randint(300, 300+TRAMS_COUNT - 1),
                    fieldnames[6]: random.randint(4000, 4000+DRIVERS_COUNT - 1)
                }
            )
    with open('./journeys2.csv', 'a', newline='') as csvfile:
        fieldnames = ['ID_journey','course','station_start','station_end','expected_start','expected_end',
                      'real_start','real_end','has_failure']
        writer = csv.DictWriter(csvfile, fieldnames=fieldnames)
        for i in range(JOURNEYS_2_COUNT):
            exp_start = fake.date_time_between(start_date=END_DATE1,end_date=END_DATE2)
            rl_start = exp_start
            x = random.random()
            if x < 0.5: rl_start = add_minutes(rl_start, 1)
            elif x > 0.8: rl_start = add_minutes(rl_start, 2)
            exp_end = fake.date_time_between(start_date=exp_start,end_date=END_DATE2)
            rl_end = exp_end
            x = random.random()
            if x < 0.5: rl_end = add_minutes(rl_end, 1)
            elif x > 0.8: rl_end = add_minutes(rl_end, 2)
            x = random.random()
            if x < 0.2:
                bum = 1
                global FAIL_LIST_2
                global FAIL_COUNT_2
                FAIL_COUNT_2 = FAIL_COUNT_2 + 1
                FAIL_LIST_2.append(100000 + i + JOURNEYS_1_COUNT)
            else: bum = 0

            writer.writerow(
                {
                    fieldnames[0]: 100000 + i + JOURNEYS_1_COUNT,
                    fieldnames[1]: random.randint(10000 + i + COURSES_1_COUNT,
                                                  10000 + i + COURSES_1_COUNT + COURSES_2_COUNT - 1),
                    fieldnames[2]: random.randint(200, 200 + STATIONS_COUNT - 1),
                    fieldnames[3]: random.randint(200, 200 + STATIONS_COUNT - 1),
                    fieldnames[4]: exp_start.strftime("%Y-%m-%d %H:%M"),
                    fieldnames[5]: exp_end.strftime("%Y-%m-%d %H:%M"),
                    fieldnames[6]: rl_start.strftime("%Y-%m-%d %H:%M"),
                    fieldnames[7]: rl_end.strftime("%Y-%m-%d %H:%M"),
                    fieldnames[8]: bum
                }
            )
    with open('./failures2.csv', 'a', newline='') as csvfile:
        fieldnames = ['ID_failure','station','journey','description','fixed_on_site','type']
        writer = csv.DictWriter(csvfile, fieldnames=fieldnames)
        for i in range(FAIL_COUNT_2):
            exp_start = fake.date_time_between(start_date=END_DATE1,end_date=END_DATE2)
            rl_start = exp_start
            x = random.random()
            if x < 0.5: rl_start = add_minutes(rl_start, 1)
            elif x > 0.8: rl_start = add_minutes(rl_start, 2)
            exp_end = fake.date_time_between(start_date=exp_start,end_date=END_DATE2)
            rl_end = exp_end
            x = random.random()
            if x < 0.5: rl_end = add_minutes(rl_end, 1)
            elif x > 0.8: rl_end = add_minutes(rl_end, 2)
            x = random.random()
            if x < 0.7: fixed = 1
            else: fixed = 0

            writer.writerow(
                {
                    fieldnames[0]: 10000 + i + FAIL_COUNT_1,
                    fieldnames[1]: random.randint(200, 200 + STATIONS_COUNT - 1),
                    fieldnames[2]: FAIL_LIST_2[i],
                    fieldnames[3]: fake.text(max_nb_chars=79),
                    fieldnames[4]: fixed,
                    fieldnames[5]: random.choice(TYP_AWARII)
                }
            )

if __name__ == '__main__':
    create_csv()

