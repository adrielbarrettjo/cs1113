module pair
import eq

data pair a b = mkPair a b

fst: pair a b -> a
fst (mkPair f s) = f

snd: pair a b -> b
snd (mkPair f s) = s

---eql_pair: (eq a, eq b) => pair a b -> pair a b -> bool
---eql_pair (mkPair a1 a2) (mkPair b1 b2) = and (eql a1 b1) (eql a2 b2)

instance (eq a, eq b) => eq (pair a b) where
    eql (mkPair a1 a2) (mkPair b1 b2) = and (eql a1 b1) (eql a2 b2)
