import csv
import random
from faker import Faker


class dboTramways:
    def __init__(self):
        self.field_names = ['ID_Tram', 'model', 'production_year', 'last_control', 'line_number', 'failure_count']
        self.models = ['sony', 'centurion', 'faster', 'fasterV2', 'FIAT', 'NotU', 'BestM', 'Tramster', 'LetsGoForRide']
        self.start_id = 300
        self.fake = Faker()

    def write_csv(self, count, start_year, end_year, months):
        with open('./tramways.csv', 'w', newline='') as csv_file:
            writer = csv.DictWriter(csv_file, fieldnames=self.field_names)
            for i in range(count):
                year = self.fake.random_int(min=1980, max=2010)
                cos = '-{}y'.format(start_year + months - year)
                writer.writerow(
                    {
                        self.field_names[0]: self.start_id + i,
                        self.field_names[1]: random.choice(self.models),
                        self.field_names[2]: year,
                        self.field_names[3]: self.fake.date_time_between(
                            start_date=cos,
                            end_date=end_year).strftime("%Y-%m-%d"),
                        self.field_names[4]: self.fake.random_int(min=2, max=25),
                        self.field_names[5]: self.fake.random_int(max=12)
                    }
                )
