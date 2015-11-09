---- listTest.idr
import nat
import list
import bool

appendTest: list nat
appendTest = append nil l2

lengthTest: nat
lengthTest = length appendTest

mapTest: list bool
mapTest = map evenb (O::(S O)::(S ( S O))::nil)

filterTest: list nat
filterTest = filter evenb (O::(S O)::(S ( S O))::nil)


map name ss
