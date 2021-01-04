import csv
import random
from faker import Faker
from shutil import copy2
import datetime
import calendar


def add_months(sourcedate, months):
    month = sourcedate.month - 1 + months
    year = sourcedate.year + month // 12
    month = month % 12 + 1
    day = min(sourcedate.day, calendar.monthrange(year,month)[1])
    return datetime.date(year, month, day)


DRIVERS_COUNT_1 = 100
DRIVERS_COUNT_2 = 50 #ilu wiecej

TOTAL_HOURS = 160
NUMBER_OF_MONTHS_1 = 21
NUMBER_OF_MONTHS_2 = 13 #ile wiecej

STARTING_DATE = datetime.datetime(2008, 1, 1)

fake = Faker()

def create_drivers():
    with open('./drivers1.csv', 'w', newline='') as csvfile:
        fieldnames = ['ID_DRIVER', 'NAME', 'SURNAME', 'SEX', 'BIRTH_DATE', 'PHONE_NUMBER', 'PESEL']
        writer = csv.DictWriter(csvfile, fieldnames=fieldnames)
        for i in range(DRIVERS_COUNT_1):
            birth_date = fake.date_of_birth(minimum_age=25, maximum_age=50)
            pesel = '{}'.format(birth_date.year - 1900)
            if birth_date.month < 10:
                pesel = pesel + '0{}'.format(birth_date.month)
            else:
                pesel = pesel + '{}'.format(birth_date.month)
            if birth_date.day < 10:
                pesel = pesel + '0{}'.format(birth_date.day)
            else:
                pesel = pesel + '{}'.format(birth_date.day)
            x = random.randrange(1e5)
            if x < 10:
                pesel = pesel + '0000{}'.format(x)
            elif x < 100:
                pesel = pesel + '000{}'.format(x)
            elif x < 1000:
                pesel = pesel + '00{}'.format(x)
            elif x < 10000:
                pesel = pesel + '0{}'.format(x)
            else:
                pesel = pesel + '{}'.format(x)
            x = random.random()
            if x < 0.5:
                writer.writerow(
                    {
                        fieldnames[0]: 4000 + i,
                        fieldnames[1]: fake.first_name_female(),
                        fieldnames[2]: fake.last_name_female(),
                        fieldnames[3]: "Female",
                        fieldnames[4]: birth_date.strftime("%m-%d-%Y"),
                        fieldnames[5]: fake.phone_number(),
                        fieldnames[6]: pesel
                    }
                )
            else:
                writer.writerow(
                    {
                        fieldnames[0]: 4000 + i,
                        fieldnames[1]: fake.first_name_male(),
                        fieldnames[2]: fake.last_name_male(),
                        fieldnames[3]: "Male",
                        fieldnames[4]: birth_date.strftime("%m-%d-%Y"),
                        fieldnames[5]: fake.phone_number(),
                        fieldnames[6]: pesel
                    }
                )

    copy2('./drivers1.csv', './drivers2.csv')

    with open('./drivers2.csv', 'a', newline='') as csvfile:
        fieldnames = ['ID_DRIVER', 'NAME', 'SURNAME', 'SEX', 'BIRTH_DATE', 'PHONE_NUMBER', 'PESEL']
        writer = csv.DictWriter(csvfile, fieldnames=fieldnames)
        for i in range(DRIVERS_COUNT_2):
            birth_date = fake.date_of_birth(minimum_age=25, maximum_age=50)
            pesel = '{}'.format(birth_date.year - 1900)
            if birth_date.month < 10:
                pesel = pesel + '0{}'.format(birth_date.month)
            else:
                pesel = pesel + '{}'.format(birth_date.month)
            if birth_date.day < 10:
                pesel = pesel + '0{}'.format(birth_date.day)
            else:
                pesel = pesel + '{}'.format(birth_date.day)
            x = random.randrange(1e5)
            if x < 10:
                pesel = pesel + '0000{}'.format(x)
            elif x < 100:
                pesel = pesel + '000{}'.format(x)
            elif x < 1000:
                pesel = pesel + '00{}'.format(x)
            elif x < 10000:
                pesel = pesel + '0{}'.format(x)
            else:
                pesel = pesel + '{}'.format(x)
            x = random.random()
            if x < 0.5:
                writer.writerow(
                    {
                        fieldnames[0]: 4000 + i + DRIVERS_COUNT_1,
                        fieldnames[1]: fake.first_name_female(),
                        fieldnames[2]: fake.last_name_female(),
                        fieldnames[3]: "Female",
                        fieldnames[4]: birth_date.strftime("%m-%d-%Y"),
                        fieldnames[5]: fake.phone_number(),
                        fieldnames[6]: pesel
                    }
                )
            else:
                writer.writerow(
                    {
                        fieldnames[0]: 4000 + i + DRIVERS_COUNT_1,
                        fieldnames[1]: fake.first_name_male(),
                        fieldnames[2]: fake.last_name_male(),
                        fieldnames[3]: "Male",
                        fieldnames[4]: birth_date.strftime("%m-%d-%Y"),
                        fieldnames[5]: fake.phone_number(),
                        fieldnames[6]: pesel
                    }
                )

def create_working_hours():
    with open('./working_hours_1.csv', 'w', newline='') as csvfile:
        fieldnames = ['ID_DRIVER', 'DATE', 'DAY', 'NIGHT']
        writer = csv.DictWriter(csvfile, fieldnames=fieldnames)
        writer.writerow(
            {
                fieldnames[0]: "ID_DRIVER",
                fieldnames[1]: 'DATE',
                fieldnames[2]: "DAY",
                fieldnames[3]: "NIGHT"
            }
        )
        for i in range(DRIVERS_COUNT_1):
            current_date = STARTING_DATE
            for j in range(NUMBER_OF_MONTHS_1):
                x = random.randrange(20) - 10
                writer.writerow(
                    {
                        fieldnames[0]: 4000 + i,
                        fieldnames[1]: current_date.strftime("%m-%d-%Y"),
                        fieldnames[2]: int(TOTAL_HOURS/2 - x),
                        fieldnames[3]: int(TOTAL_HOURS/2 + x)
                    }
                )
                current_date = add_months(current_date, 1)

    copy2('./working_hours_1.csv', './working_hours_2.csv')

    with open('./working_hours_2.csv', 'a', newline='') as csvfile:
        fieldnames = ['ID_DRIVER', 'DATE', 'DAY', 'NIGHT']
        writer = csv.DictWriter(csvfile, fieldnames=fieldnames)
        for i in range(DRIVERS_COUNT_1 + DRIVERS_COUNT_2):
            current_date = add_months(STARTING_DATE, NUMBER_OF_MONTHS_1)
            for j in range(NUMBER_OF_MONTHS_2):
                x = random.randrange(20) - 10
                writer.writerow(
                    {
                        fieldnames[0]: 4000 + i,
                        fieldnames[1]: current_date.strftime("%m-%d-%Y"),
                        fieldnames[2]: int(TOTAL_HOURS/2 - x),
                        fieldnames[3]: int(TOTAL_HOURS/2 + x)
                    }
                )
                current_date = add_months(current_date, 1)

if __name__ == '__main__':
    create_working_hours()

