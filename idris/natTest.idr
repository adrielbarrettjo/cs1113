
--- #5: exp
exp (mkPair 5 4)
exp (mkPair O O)
exp (mkPair 5 O)
exp (mkPair O 5)

--- #6: lep
lep (mkpair O 4)
lep (mkpair 4 O)
lep (mkPair 5 4)

--- #7: eqp -- given a pair of natural numbers, (a, b), return true if a is equal to be, otherwise return false
eqp (mkpair O O)
eqp (mkpair 5 O)
eqp (mkPair O 5)
eqp (mkPair 4 5)

--- #8: gtp -- given a pair of natural numbers, (a, b), return true if a is greater than b, otherwise return false
gtp (mkPair O 4)
gtp (mkPair 4 O)
gtp (mkPair 4 5)

--- #9: gep -- given a pair of natural numbers, (a, b), return true of a is greater than or equal to b
gep (mkPair O O)
gep (mkPair O 5)
gep (mkPair 5 O)
gep (mkpair 4 5)

--- #10: ltp -- given a pair of natural numbers, (a, b), return true if a is less than b
ltp (mkPair O O)
ltp (mkPair 5 O)
ltp (mkPair O 5)
ltp (mkPair 4 5)
