import csv
import random
from faker import Faker
from shutil import copy2


class dboJourneys:
    def __init__(self):
        self.field_names = ['ID_journey', 'course',
                            'station_start', 'station_end',
                            'expected_start', 'expected_end',
                            'real_start', 'real_end',
                            'has_failure']
        self.fake = Faker()
        self.path_s1 = './journeys1.csv'
        self.path_s2 = './journeys2.csv'
        self.failure_count1 = 0
        self.failure_list1 = []
        self.failure_count2 = 0
        self.failure_list2 = []
        self.start_id = 100_000

    def write_csv_s1(self, count, stations, start_date, end_date):
        with open(self.path_s1, 'w', newline='') as csv_file:
            writer = csv.DictWriter(csv_file, fieldnames=self.field_names)
            for i in range(count):
                exp_start = self.fake.date_time_between(start_date=start_date, end_date=end_date)
                exp_end = self.fake.date_time_between(start_date=exp_start, end_date=end_date)
                rl_start = get_random_time(exp_start)
                rl_end = get_random_time(exp_end)

                writer.writerow({
                    self.field_names[0]: self.start_id + i,
                    self.field_names[1]: random.randint(self.start_id, self.start_id + count - 1),
                    self.field_names[2]: random.randint(200, 200 + stations - 1),
                    self.field_names[3]: random.randint(200, 200 + stations - 1),
                    self.field_names[4]: exp_start.strftime("%Y-%m-%d %H:%M"),
                    self.field_names[5]: exp_end.strftime("%Y-%m-%d %H:%M"),
                    self.field_names[6]: rl_start.strftime("%Y-%m-%d %H:%M"),
                    self.field_names[7]: rl_end.strftime("%Y-%m-%d %H:%M"),
                    self.field_names[8]: self.set_random_failure1(i)
                })

    def write_csv_s2(self, count1, count2, end1, end2, stations):
        self.failure_count2 = self.failure_count1
        copy2(self.path_s1, self.path_s2)
        with open(self.path_s2, 'w', newline='') as csv_file:
            writer = csv.DictWriter(csv_file, fieldnames=self.field_names)
            for i in range(count2):
                exp_start = self.fake.date_time_between(start_date=end1, end_date=end2)
                exp_end = self.fake.date_time_between(start_date=exp_start, end_date=end2)
                rl_start = get_random_time(exp_start)
                rl_end = get_random_time(exp_end)
                current_id = self.start_id + i + count1
                writer.writerow({
                    self.field_names[0]: current_id,
                    self.field_names[1]: random.randint(current_id, current_id + count2 - 1),
                    self.field_names[2]: random.randint(200, 200 + stations - 1),
                    self.field_names[3]: random.randint(200, 200 + stations - 1),
                    self.field_names[4]: exp_start.strftime("%Y-%m-%d %H:%M"),
                    self.field_names[5]: exp_end.strftime("%Y-%m-%d %H:%M"),
                    self.field_names[6]: rl_start.strftime("%Y-%m-%d %H:%M"),
                    self.field_names[7]: rl_end.strftime("%Y-%m-%d %H:%M"),
                    self.field_names[8]: self.set_random_failure2(i)
                })

    def get_failure_count1(self):
        return self.failure_count1

    def set_random_failure1(self, index):
        x = random.random()
        if x < 0.2:
            self.failure_count1 += 1
            self.failure_list1.append(index)
            return 1
        else:
            return 0

    def get_failure_count2(self):
        return self.failure_count2

    def set_random_failure2(self, index):
        x = random.random()
        if x < 0.2:
            self.failure_count2 += 1
            self.failure_list2.append(index)
            return 1
        else:
            return 0


def get_random_time(time):
    x = random.random()
    delay = time
    if x < 0.5:
        delay = add_minutes(time, 1)
    elif x > 0.8:
        delay = add_minutes(time, 2)
    return delay


def add_minutes(sourcedate, mins):
    import datetime
    return sourcedate + datetime.timedelta(minutes=mins)