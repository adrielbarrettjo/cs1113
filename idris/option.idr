module iotion
import bool
import nat

data option t = some t | none

o1: option bool
o1 = none

o2: option bool
o2 = some true
