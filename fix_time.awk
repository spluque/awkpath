# Small utility function to provide a proper time stamp.
#
# Input:
#
# "YYYY-MM-DD HH:MM:SS"
# -------------------------------------------------------------------------

function fix_time(tstr) {     # tstr=time string field
    if (length(tstr) != 21 || !tstr) {
	return tstr
    } else {
	Y=substr(tstr, 2, 4)
	M=substr(tstr, 7, 2)
	D=substr(tstr, 10, 2)
	h=substr(tstr, 13, 2)
	m=substr(tstr, 16, 2)
	s=substr(tstr, 19, 2)
	t=mktime(sprintf("%s %s %s %s %s %s", Y, M, D, h, m, s))
	return strftime("%Y-%m-%d %H:%M:%S", t)
    }
}
