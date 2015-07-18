# Small utility function to calculate date from day-of-year
#
# -------------------------------------------------------------------------

function doy2isodate(year, doy) { # doy=day-of-year
    return strftime("%F", mktime(year " 1 " doy " 0 0 0"))
}
