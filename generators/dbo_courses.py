import csv
import random
from faker import Faker
from shutil import copy2


class dboCourses:
    def __init__(self):
        self.field_names = ['ID_course',
                            'expected_start',
                            'expected_end',
                            'real_start',
                            'real_end',
                            'tramway',
                            'driver']
        self.fake = Faker()
        self.path_s1 = './courses1.csv'
        self.path_s2 = './courses2.csv'

    def write_csv_s1(self, count, start_date, end_date, tramways, drivers):
        with open(self.path_s1, 'w', newline='') as csv_file:
            writer = csv.DictWriter(csv_file, fieldnames=self.field_names)
            for i in range(count):
                exp_start = self.fake.date_time_between(start_date=start_date, end_date=end_date)
                exp_end = self.fake.date_time_between(start_date=exp_start, end_date=end_date)
                rl_start = exp_start
                add_random_time(rl_start)
                rl_end = exp_end
                add_random_time(rl_end)

                writer.writerow({
                    self.field_names[0]: 10000 + i,
                    self.field_names[1]: exp_start.strftime("%Y-%m-%d %H:%M"),
                    self.field_names[2]: exp_end.strftime("%Y-%m-%d %H:%M"),
                    self.field_names[3]: rl_start.strftime("%Y-%m-%d %H:%M"),
                    self.field_names[4]: rl_end.strftime("%Y-%m-%d %H:%M"),
                    self.field_names[5]: random.randint(300, 300 + tramways - 1),
                    self.field_names[6]: random.randint(4000, 4000 + drivers - 1)
                })

    def write_csv_s2(self, count1, count2, end_date1, end_date2, tramways, drivers):
        copy2(self.path_s1, self.path_s2)
        with open(self.path_s2, 'w', newline='') as csv_file:
            writer = csv.DictWriter(csv_file, fieldnames=self.field_names)
            for i in range(count2):
                exp_start = self.fake.date_time_between(start_date=end_date1, end_date=end_date2)
                exp_end = self.fake.date_time_between(start_date=exp_start, end_date=end_date2)
                rl_start = exp_start
                add_random_time(rl_start)
                rl_end = exp_end
                add_random_time(rl_end)
                writer.writerow({
                    self.field_names[0]: 10000 + i + count1,
                    self.field_names[1]: exp_start.strftime("%Y-%m-%d %H:%M"),
                    self.field_names[2]: exp_end.strftime("%Y-%m-%d %H:%M"),
                    self.field_names[3]: rl_start.strftime("%Y-%m-%d %H:%M"),
                    self.field_names[4]: rl_end.strftime("%Y-%m-%d %H:%M"),
                    self.field_names[5]: random.randint(300, 300 + tramways - 1),
                    self.field_names[6]: random.randint(4000, 4000 + drivers - 1)
                })


def add_random_time(time):
    x = random.random()
    if x < 0.5:
        time = add_minutes(time, 1)
    elif x > 0.8:
        time = add_minutes(time, 2)


def add_minutes(sourcedate, mins):
    import datetime
    return sourcedate + datetime.timedelta(minutes=mins)