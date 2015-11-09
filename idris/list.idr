module list
import nat
import person
import bool
import ite
import serialize
import eq

data list a = nil | (::) a (list a)

lO: list nat
lO = nil

l1: list nat
l1 = (::) O lO

l2: list nat
l2 = ((::) (S O) ((::) (S (S O)) nil))

l3: list nat
l3 = ((::) (S O) ((::) (S (S O)) ((::) (S (S ( S O))) nil)))

------------------------
---member tests list membership
member: (eq a) => a -> list a -> bool
member v nil = false
member v (h::t) = ite (eql v h)
                    true
                    (member v t)

--- IF a THEN b ELSE C -> ite a b c
-----------------------------------

length: list a -> nat
length nil = O
length ((::) n l') = S (length l')

append: list a -> list a -> list a
append nil l2 = l2
append ((::) h l1') l2 = (::) h (append l1' l2)

-------------------------------------------
mapAge: list Person -> list Nat
mapAge nil = nil
mapAge (h::t) = (age h) :: (mapAge t)

map: (a -> b) -> list a -> list b
map f nil = nil
map f (h::t) = ( f h )::(map f t)


||| give a list and predicate on elements
||| return the sublist of elements for which the predicate is true
filter: (a -> bool) -> list a -> list a
filter f nil = nil
filter f (h::t) = ite (f h)
                      (h::(filter f t))
                          (filter f t)

---- NOTE a relation is a set of tuples
---- can project out a column of a relation (which is essentially a dataframe)


||| reduce a (list a) to a b by folding
||| with a function f having identity id
foldr: (a -> b -> b) -> b -> list a -> b
foldr f id nil = id
foldr f id (h::t) = f h (list.foldr f id t)

{-
---fancy
fancyplus: list nat -> nat
fancyplus nil = O
fancyplus (h::t) = add h (fancyplus t)

fancymult: list nat -> nat
fancymult nil = O
fancymult (h::t) = add h (fancymult t)
-}

instance (eq a) => eq (list a) where
  eql nil nil = true
  eql (h::t) nil = false
  eql nil (h::t) = false
  eql (h1::t1) (h2::t2) = and (eql h1 h2) (eql t1 t2)

--- all below this isn't used at this point 
---toStringList: (serialize a) -> list a -> string
---toStringList nil = "[]"
---toStringList (h::t) = (toString h) ++ ", " ++ (toStringList t)

---instance serialize (list a) where
  ---toString nil = "[]"
  ---toString l = "[" ++ (toStringList l) ++ "]"
