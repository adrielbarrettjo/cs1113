module colors
import pair

data primary = Red | Blue | Yellow

data mixed = dred | dyelow | dblue | violet | green | orange

f: pair primary primary -> mixed
f(mkPair red blue) = violet



