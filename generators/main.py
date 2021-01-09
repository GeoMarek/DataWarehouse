import calendar
import datetime

from dbo_tramways import dboTramways
from dbo_drivers import dboDrivers
from dbo_workingHours import dboWorkingHours, add_months


START_YEAR = 2008
S1_MONTHS = 24
S2_MONTHS = 48
S1_END = add_months(datetime.datetime(START_YEAR, 1, 1), S1_MONTHS)
S2_END = add_months(datetime.datetime(START_YEAR, 1, 1), S2_MONTHS)

COUNT_TRAMS = 300

S1_COUNT_DRIVERS = 100
S2_COUNT_DRIVERS = 50


if __name__ == '__main__':
    tramways = dboTramways()
    tramways.write_csv(COUNT_TRAMS, START_YEAR, S1_END, S1_MONTHS)

    drivers = dboDrivers()
    drivers.write_csv_s1(S1_COUNT_DRIVERS)
    drivers.write_csv_s2(S2_COUNT_DRIVERS)

    workingHours = dboWorkingHours()
    workingHours.write_csv_s1(S1_MONTHS, S1_COUNT_DRIVERS, START_YEAR)
    workingHours.write_csv_s2(S1_MONTHS, S2_MONTHS, S1_COUNT_DRIVERS + S2_COUNT_DRIVERS, START_YEAR)

