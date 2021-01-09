import csv
import random
from faker import Faker
from shutil import copy2


class dboFailures:
    def __init__(self):
        self.field_names = ['ID_failure', 'station', 'journey', 'description', 'fixed_on_site', 'type']
        self.types = ['wykolejenie', 'kolizja', 'problem z silnikiem', 'drobna usterka']
        self.fake = Faker()
        self.path_s1 = './failures1.csv'
        self.path_s2 = './failures2.csv'
        self.start_id = 10_000

    def write_csv_s1(self, count, stations, fail_list):
        with open(self.path_s1, 'w', newline='') as csv_file:
            writer = csv.DictWriter(csv_file, fieldnames=self.field_names)
            for i in range(count):
                current_id = self.start_id + i
                writer.writerow({
                    self.field_names[0]: current_id,
                    self.field_names[1]: random.randint(200, 200 + stations - 1),
                    self.field_names[2]: fail_list[i],
                    self.field_names[3]: self.fake.text(max_nb_chars=70),
                    self.field_names[4]: get_random_fixture(),
                    self.field_names[5]: random.choice(self.types)
                })

    def write_csv_s2(self, count1, count2, stations, fail_list):
        copy2(self.path_s1, self.path_s2)
        with open(self.path_s1, 'w', newline='') as csv_file:
            writer = csv.DictWriter(csv_file, fieldnames=self.field_names)
            for i in range(count2-count1):
                current_id = self.start_id + count1 + i
                writer.writerow({
                    self.field_names[0]: current_id,
                    self.field_names[1]: random.randint(200, 200 + stations - 1),
                    self.field_names[2]: fail_list[i-1],
                    self.field_names[3]: self.fake.text(max_nb_chars=70),
                    self.field_names[4]: get_random_fixture(),
                    self.field_names[5]: random.choice(self.types)
                })


def get_random_fixture():
    if random.random() < 0.7:
        return 1
    else:
        return 0
