import csv
import random
import datetime
from shutil import copy2
import calendar


class dboWorkingHours:
    def __init__(self):
        self.fieldnames = ['ID_DRIVER', 'DATE', 'DAY', 'NIGHT']
        self.path1 = './working_hours_1.csv'
        self.path2 = './working_hours_2.csv'
        self.total_hours = 160

    def write_csv_s1(self, months, count, start_date):
        start_date = datetime.datetime(start_date, 1, 1)
        with open(self.path1, 'w', newline='') as csvfile:
            writer = csv.DictWriter(csvfile, fieldnames=self.fieldnames)
            writer.writerow(
                {
                    self.fieldnames[0]: "ID_DRIVER",
                    self.fieldnames[1]: 'DATE',
                    self.fieldnames[2]: "DAY",
                    self.fieldnames[3]: "NIGHT"
                }
            )
            for i in range(count):
                current_date = start_date
                for j in range(months):
                    x = random.randrange(20) - 10
                    writer.writerow(
                        {
                            self.fieldnames[0]: 4000 + i,
                            self.fieldnames[1]: current_date.strftime("%m-%d-%Y"),
                            self.fieldnames[2]: int(self.total_hours / 2 - x),
                            self.fieldnames[3]: int(self.total_hours / 2 + x)
                        }
                    )
                    current_date = add_months(current_date, 1)

    def write_csv_s2(self, months1, months2, count, start_date):
        start_date = datetime.datetime(start_date, 1, 1)
        copy2(self.path1, self.path2)
        with open(self.path2, 'a', newline='') as csvfile:
            fieldnames = ['ID_DRIVER', 'DATE', 'DAY', 'NIGHT']
            writer = csv.DictWriter(csvfile, fieldnames=fieldnames)
            for i in range(count):
                current_date = add_months(start_date, months1)
                for j in range(months2):
                    x = random.randrange(20) - 10
                    writer.writerow(
                        {
                            fieldnames[0]: 4000 + i,
                            fieldnames[1]: current_date.strftime("%m-%d-%Y"),
                            fieldnames[2]: int(self.total_hours/2 - x),
                            fieldnames[3]: int(self.total_hours/2 + x)
                        }
                    )
                    current_date = add_months(current_date, 1)


def add_months(sourcedate, months):
    month = sourcedate.month - 1 + months
    year = sourcedate.year + month // 12
    month = month % 12 + 1
    day = min(sourcedate.day, calendar.monthrange(year, month)[1])
    return datetime.date(year, month, day)