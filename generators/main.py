import datetime

from dbo_tramways import dboTramways
from dbo_drivers import dboDrivers
from dbo_workingHours import dboWorkingHours, add_months
from dbo_stations import dboStations
from dbo_courses import dboCourses
from dbo_journeys import dboJourneys

START_YEAR = 2009
S1_MONTHS = 24
S2_MONTHS = 36
S1_END = add_months(datetime.datetime(START_YEAR, 1, 1), S1_MONTHS)
S2_END = add_months(datetime.datetime(START_YEAR, 1, 1), S2_MONTHS)

S0_COUNT_TRAMS = 300
S0_COUNT_STATIONS = 300

S1_COUNT_COURSES = 20_000
S1_COUNT_DRIVERS = 100
S1_COUNT_JOURNEYS = 100_000

S2_COUNT_COURSES = 20_000
S2_COUNT_DRIVERS = 50
S2_COUNT_JOURNEYS = 100_000

if __name__ == '__main__':

    # generate tramways
    tramways = dboTramways()
    tramways.write_csv(S0_COUNT_TRAMS, START_YEAR, S1_END, S1_MONTHS)
    # generate stations
    stations = dboStations()
    stations.write_csv(S0_COUNT_STATIONS)
    # generate drivers (two snapshots)
    drivers = dboDrivers()
    drivers.write_csv_s1(S1_COUNT_DRIVERS)
    drivers.write_csv_s2(S2_COUNT_DRIVERS)
    # generate working hours (two snapshots)
    workingHours = dboWorkingHours()
    workingHours.write_csv_s1(S1_MONTHS, S1_COUNT_DRIVERS, START_YEAR)
    workingHours.write_csv_s2(S1_MONTHS, S2_MONTHS, S1_COUNT_DRIVERS + S2_COUNT_DRIVERS, START_YEAR)
    # generate first course snapshot
    courses = dboCourses()
    courses.write_csv_s1(S1_COUNT_COURSES, START_YEAR, S1_END, S0_COUNT_TRAMS, S1_COUNT_DRIVERS)
    # generate first journey snapshot
    journeys = dboJourneys()
    journeys.write_csv_s1(S1_COUNT_JOURNEYS, S0_COUNT_STATIONS, START_YEAR, S1_END)

    # generate first failure snapshot

    # generate second course snapshot
    courses.write_csv_s2(S1_COUNT_COURSES, S2_COUNT_COURSES, S1_END, S2_END, S0_COUNT_TRAMS, S2_COUNT_DRIVERS)
    # generate second journey snapshot
    journeys.write_csv_s2(S1_COUNT_DRIVERS, S2_COUNT_JOURNEYS, S1_END, S2_END, S0_COUNT_STATIONS)
