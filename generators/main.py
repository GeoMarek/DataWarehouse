import calendar
import datetime

from dbo_tramways import dboTramways


def add_months(start_year, months):
    sourcedate = datetime.datetime(start_year, 1, 1)
    month = sourcedate.month - 1 + months
    year = sourcedate.year + month // 12
    month = month % 12 + 1
    day = min(sourcedate.day, calendar.monthrange(year, month)[1])
    return datetime.date(year, month, day)


START_YEAR = 2008
S1_MONTHS = 24
S2_MONTHS = 48
S1_END = add_months(START_YEAR, S1_MONTHS)
S2_END = add_months(START_YEAR, S1_MONTHS)

COUNT_TRAMS = 300


if __name__ == '__main__':
    tramways = dboTramways()
    tramways.write_csv(COUNT_TRAMS, START_YEAR, S1_END, S1_MONTHS)
