module hooloveshoo

data people = Maurice | Mary

loves: people -> people
people Maurice = Maurice 
people Mary = Maurice

--pick a simple real world example. Keep it very simple.
--Design and implement an abstract data type to represent it.
-- Your ADT should define both a data type and at least one function.

module sports
--create ADT

data sports = football | basketball
data schools = UVA | VT | Duke 

plays: schools -> sports
plays UVA = basketball
plays VT = football
plays Duke = basketball
--
