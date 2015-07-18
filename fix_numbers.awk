# Small utility function to provide proper number strings.
#
# -------------------------------------------------------------------------

function fix_integer(str) {
    return(str ~ /[[:digit:]]/ ? sprintf("%i", str) : "")
}

function fix_float1(str) {     # maybe add argument for more control letter
    return(str ~ /[[:digit:]]/ ? sprintf("%.1f", str) : "")
}

function fix_float5(str) {     # maybe add argument for more control letter
    return(str ~ /[[:digit:]]/ ? sprintf("%.5f", str) : "")
}
