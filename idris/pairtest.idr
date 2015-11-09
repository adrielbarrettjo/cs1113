module pairTest

import pair 
import bool
import unit

p1: pair bool bool 
p1 = mkPair true false

ps: pair unit bool
p2 = mkPair mkUnit false
