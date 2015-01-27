set auto-load safe-path /
python 
import sys 
sys.path.insert(0, '/home/jinyuqi/.gdb') 

from qt4 import register_qt4_printers
register_qt4_printers (None)
end
set print pretty 1

