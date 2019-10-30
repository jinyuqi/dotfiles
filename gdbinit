# use this can print STL containers's content
python
import sys
sys.path.insert(0, "/home/user/gdb-printers/libstdc++-v3/python")
from libstdcxx.v6.printers import register_libstdcxx_printers
register_libstdcxx_printers (None)
end

set history filename ~/.gdb_history
set history save on

set print array-indexes on

set print pretty on
