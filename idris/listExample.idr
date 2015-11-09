module studentexample
import student
import list

{-
data liststudent  = nil | (::) student (liststudent)
-}

{-
lstudO: liststudent
lstudO = nil

lstud1: liststudent
lstud1 = (::) student lstud1
-}

lstudO: list student
lstudO = nil

lstud1: list student
lstud1 =  studentO :: lstudO

lstud2: list student
lstud2 = student1 :: student2 :: nil
