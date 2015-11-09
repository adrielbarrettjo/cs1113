module gunrow
import list
import bool
import nat

{-l2: list nat
l2 = (cons (S O) (cons (S (S O)) nil))

l2' = list' nat
l2' = (S O)::(S (S O))::(S (S (S O)))::nil'
-}
--- make a data type for the countries

data country = USA | Argentina | Australia | Austria | Honduras

data gunrow = mkGunrow country Nat Nat Nat Nat

argen: gunrow
argen = mkGunrow Argentina 190 279 64 362

usa: gunrow
usa = mkGunrow USA 355 670 16 9

austria: gunrow
austria = mkGunrow Austria 18 268 1 8

austral: gunrow
austral = mkGunrow Australia 11 62 65 8

hond: gunrow
hond = mkGunrow Honduras 6480 0 0 0

countryName: gunrow -> country
countryName (mkGunrow c h s u o) = c

homocidePer10M: gunrow -> Nat
homocidePer10M (mkGunrow c h s u o) = h

suicidePer10M: gunrow -> Nat
suicidePer10M (mkGunrow c h s u o) = s

unintentionalPer10M: gunrow -> Nat
unintentionalPer10M (mkGunrow c h s u o) = u

otherPer10M: gunrow -> Nat
otherPer10M (mkGunrow c h s u o) = o

listgunrow: list gunrow
listgunrow = argen :: austral :: austria :: usa :: hond :: nil
