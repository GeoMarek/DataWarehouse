import csv
import random
from faker import Faker
from shutil import copy2


class dboDrivers:
    def __init__(self):
        self.total_hours = 160
        self.fake = Faker()
        self.field_names = ['ID_DRIVER', 'NAME', 'SURNAME', 'SEX', 'BIRTH_DATE', 'PHONE_NUMBER', 'PESEL']
        self.path_s1 = './drivers1.csv'
        self.path_s2 = './drivers2.csv'

    def write_csv_s1(self, count):
        with open(self.path_s1, 'w', newline='') as csvfile:
            writer = csv.DictWriter(csvfile, fieldnames=self.field_names)
            for i in range(count):
                birth_date = self.fake.date_of_birth(minimum_age=25, maximum_age=50)
                pesel = generate_pesel(birth_date)
                x = random.random()
                if x < 0.5:
                    writer.writerow({
                        self.field_names[0]: 4000 + i,
                        self.field_names[1]: self.fake.first_name_female(),
                        self.field_names[2]: self.fake.last_name_female(),
                        self.field_names[3]: "Female",
                        self.field_names[4]: birth_date.strftime("%m-%d-%Y"),
                        self.field_names[5]: self.fake.phone_number(),
                        self.field_names[6]: pesel
                    })
                else:
                    writer.writerow({
                        self.field_names[0]: 4000 + i,
                        self.field_names[1]: self.fake.first_name_male(),
                        self.field_names[2]: self.fake.last_name_male(),
                        self.field_names[3]: "Male",
                        self.field_names[4]: birth_date.strftime("%m-%d-%Y"),
                        self.field_names[5]: self.fake.phone_number(),
                        self.field_names[6]: pesel
                    })

    def write_csv_s2(self, count):
        copy2(self.path_s1, self.path_s2)
        with open(self.path_s2, 'w', newline='') as csvfile:
            writer = csv.DictWriter(csvfile, fieldnames=self.field_names)
            for i in range(count):
                birth_date = self.fake.date_of_birth(minimum_age=25, maximum_age=50)
                pesel = generate_pesel(birth_date)
                x = random.random()
                if x < 0.5:
                    writer.writerow({
                        self.field_names[0]: 4000 + i,
                        self.field_names[1]: self.fake.first_name_female(),
                        self.field_names[2]: self.fake.last_name_female(),
                        self.field_names[3]: "Female",
                        self.field_names[4]: birth_date.strftime("%m-%d-%Y"),
                        self.field_names[5]: self.fake.phone_number(),
                        self.field_names[6]: pesel
                    })
                else:
                    writer.writerow({
                        self.field_names[0]: 4000 + i,
                        self.field_names[1]: self.fake.first_name_male(),
                        self.field_names[2]: self.fake.last_name_male(),
                        self.field_names[3]: "Male",
                        self.field_names[4]: birth_date.strftime("%m-%d-%Y"),
                        self.field_names[5]: self.fake.phone_number(),
                        self.field_names[6]: pesel
                    })


def generate_pesel(birth_date):
    pesel = '{}'.format(birth_date.year - 1900)
    if birth_date.month < 10:
        pesel = pesel + '0{}'.format(birth_date.month)
    else:
        pesel = pesel + '{}'.format(birth_date.month)
    if birth_date.day < 10:
        pesel = pesel + '0{}'.format(birth_date.day)
    else:
        pesel = pesel + '{}'.format(birth_date.day)
    x = random.randrange(10_000)
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
    return pesel
