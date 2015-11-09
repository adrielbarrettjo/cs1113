module person
import bool

||| A record type that is equivalent to:
||| (data Person = mkPerson String nat)
||| but where we give names to fields.
||| A person has a name and an age in
||| years.

record Person where
  constructor mkPerson
  name: String
  age: Nat
  height: Nat
  gender: bool


tom: Person
tom = mkPerson "Tom" 19 56 false

mary: Person
mary = mkPerson "Mary" 20 59 true

ge: Person
ge = mkPerson "Ge" 21 64 true

daryl: Person
daryl = mkPerson "Daryl" 19 71 false
{-
people: list Person
people = tom :: mary :: ge :: daryl :: nil
-}
