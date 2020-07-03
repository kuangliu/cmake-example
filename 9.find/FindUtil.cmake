set(Util_ROOT "./util")

find_path(Util_INCLUDE_DIRS NAMES util.h HINTS ${Util_ROOT})
message(${Util_INCLUDE_DIRS})

find_library(Util_LIBRARIES NAMES util HINTS ${Util_ROOT})
message(${Util_LIBRARIES})
