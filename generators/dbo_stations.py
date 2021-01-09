import csv
import random
from faker import Faker


class dboStations:
    def __init__(self):
        self.field_names = ['ID_station', 'name', 'has_shelter']
        self.models = ['sony', 'centurion', 'faster', 'fasterV2', 'FIAT', 'NotU', 'BestM', 'Tramster', 'LetsGoForRide']
        self.start_id = 200
        self.fake = Faker()

    def write_csv(self, count):
        with open('./stations.csv', 'w', newline='') as csv_file:
            writer = csv.DictWriter(csv_file, fieldnames=self.field_names)
            for i in range(count):
                writer.writerow(
                    {
                        self.field_names[0]: self.start_id + i,
                        self.field_names[1]: self.fake.name(),
                        self.field_names[2]: get_random_bit()
                    }
                )


def get_random_bit():
    x = random.random()
    if x < 0.2:
        return 1
    else:
        return 0
