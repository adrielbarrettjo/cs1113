module listnat
import nat

data listnat = nil | cons nat listnat

lO: listnat
lO = nil

l1: listnat
l1 = cons O lO

l2: listnat
l2 = (cons (S O) (cons (S (S O)) nil))

l3: listnat
l3 = (cons (S O) (cons (S (S O)) (cons (S (S ( S O))) nil)))

{-
length: listnat -> nat
length nil = O
length (cons n l') = S (length l')
-}
--------------------------------------------
--- Monday September 28
{- I don't know how to create the base case I think, because the base case
would have to include the concept of lists with any n>0 elements (as I understand it)
and I can't figure out how to create that.

append: listnat listnat -> listnat
append mkPair(nil cons O) = cons O
append mkPair((cons (S O) cons (S (S O)) nil)(cons (S O) cons ( S (S (S O))))) = ...

-}
