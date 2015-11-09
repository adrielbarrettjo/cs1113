module student
import bool
import list
import pair
import nat

record student where
    constructor Mkstudent
    name : String
    gpa : Nat
    undergrad: bool
    happy: bool
    year: Nat

student0: student
student0 = Mkstudent "Angela" 4 true true 3

student1: student
student1 = Mkstudent "Bailey" 3 true false 4

student2: student
student2 = Mkstudent "Charles" 4 false true 2

student3: student
student3 = Mkstudent "Hannah" 2 true false 1

ss : list student
ss = student0 :: student1 :: student2 :: nil

query: (value -> value -> value) -> value -> (tuple -> value) -> (tuple -> bool) -> (list.list tuple) -> value
query reduce id project select relation =
       list.foldr reduce id (map project (filter select relation))

happyselector: student -> bool
happyselector (Mkstudent _ _ _ a _) = a

blegh: student -> list.list (pair String Nat)
blegh (Mkstudent a b _ _ _) = (mkPair a b)::nil

myquery: list.list (pair String Nat)
myquery = query append nil blegh happyselector ss
