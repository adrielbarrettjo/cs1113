module nat
import bool
import pair
import serialize
import eq

data nat = O | S nat

||| returns true if the argument is (represents) zero, otherwise false
isZero: nat -> bool
isZero O = true
isZero _ = false

||| returns the successor of any given nat
succ: nat -> nat
succ n = S n

||| returns the predecessor of any given nat
pred: nat -> nat
pred O = O
pred (S n) = n

||| return true if the argument is even otherwise false
evenb: nat -> bool
evenb O = true
evenb (S O) = false
evenb (S (S n)) = evenb n

||| return false if the argument is even otherwise true
||| i.e., return true if it's odd and false if it's even
oddb: nat -> bool
oddb n = not (evenb n)

||| given a pair of natural numbers, return its sum
add: nat -> nat -> nat
add O m = m
add (S n) m = S (add n m)

multp: nat -> nat -> nat
multp O m = O
multp (S n) m =  add m (multp n m)

factp: nat -> nat
factp O = S O
factp (S n) = multp (S n) (factp n)

exp: nat -> nat -> nat
exp O O = O
exp (S _) O = (S O)
exp  O (S _) = O
exp (S n) m = multp m (exp n m)

-- #6: lep -- given a pair of natural numbers, (a, b), return true if a is less than or equal to b,
---otherwise return false
lep: nat -> nat -> bool
lep O (S _ ) = true
lep (S _) O = false
lep (S n) (S m) = lep n m


--#8: gtp -- given a pair of natural numbers, (a, b), return true if a is greater than b,
---otherwise return false
gtp: nat -> nat -> bool
gtp O (S _ ) = false
gtp (S _) O = true
gtp (S n) (S m) = gtp n m

--  #9: gep -- given a pair of natural numbers, (a, b), return true of a is
---greater than or equal to b
gep: nat -> nat -> bool
gep  O O = true
gep O (S _) = false
gep (S _) O = true
gep (S n) (S m) = gep n m

-- #10: ltp -- given a pair of natural numbers, (a, b), return true if
----a is less than b
ltp: nat -> nat -> bool
ltp O O = false
ltp (S _) O = false
ltp O (S _) = true
ltp (S n) (S m) = ltp n m

-- #7: eqp -- given a pair of natural numbers, (a, b), return true if a is equal to be, otherwise return false

---eql_nat: nat -> nat -> bool
---eql_nat O O = true
---eql_nat (S _) O = false
---eql_nat O (S _) = false
---eql_nat (S n) (S m) =  eql_nat n m

instance eq nat where
  eql O O = true
  eql (S _) O = false
  eql O (S _) = false
  eql (S n) (S m) =  eql n m

instance serialize nat where
  toString O = "Z"
  toString (S n) = "S" ++ (toString n)
