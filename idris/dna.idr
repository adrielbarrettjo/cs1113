module dna
import list
import nat
import bool
import pair

data base = A | T | C | G

{-
----create the base pairs

ahtay: pair base base
ahtay = pair A T

ceegee: pair base base
ceegee = pair C G
-}
----complement_base that takes a base and returns the base that is its complement

complement_base: base -> base
complement_base A = T
complement_base T = A
complement_base C = G
complement_base G = C

----complement_strand that takes a list base (representing a DNA strand) and that
---returns the complementary strand (the strand of bases complementary to those in the given list).
---Your function must work by using map and complement_base.
--- take the list of bases, map to a list of their complements

complement_strand: list base -> list base
complement_strand lbase = map complement_base lbase

---- strand1 that takes a list (pair base base) representing a DNA molecule and that
---returns a value of type list base representing the first strand of the given DNA molecule.
--- Write an analogous strand2 function to return the second strand of a given DNA molecule

strand1: list (pair base base) -> list base
strand1 lststrand1 = map fst lststrand1

strand2: list (pair base base) -> list base
strand2 lststrand2 = map snd lststrand2

---complete that takes a list base representing a strand of DNA and that returns a list (pair base base)
---representing a DNA molecule, such that the first strand of the DNA molecule is the given list of bases
--- and the second strand is its complementary strand. You must use map to implement this function

fdnapair: base -> pair base base
fdnapair A = (mkPair A T)
fdnapair T = (mkPair T A)
fdnapair C = (mkPair C G)
fdnapair G = (mkPair G C)

complete: list base -> list (pair base base)
complete completebase = map fdnapair completebase

---countBase that takes both a list base, representing a strand of DNA, and a particular base, and that
---returns the number of occurrences of that base in the given strand (as a natural number). Your function
---must use map and foldr. Hint, use a function that converts the list of bases into a list of zeros and ones
--- dependending on whether bases in the list match the given base, then use foldr to reduce the resulting list
---by summing up all the ones and zeros

isEqu: base -> base -> nat
isEqu A A = S O
isEqu T T = S O
isEqu C C = S O
isEqu G G = S O
isEqu _ _  = O

countBase: base -> list base -> nat
countBase query lt = list.foldr add O (map (isEqu query) lt)
