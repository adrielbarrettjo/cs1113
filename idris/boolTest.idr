---{test cases}
import bool

{-
---andp
andp (mkPair false true)

---orp
orp (mkPair false true)

---nand
nand(mkPair false true)

---xor
xor (mkPair true true)
xor (mkPair false false)
-}

---pand
pand_t_t: bool
pand_t_t = pand true true
pand_f_t: bool
pand_f_t = pand false true
pand_t_f: bool
pand_t_f = pand true false
pand_f_f: bool
pand_f_f = pand false false

---por
por_t_t: bool
por_t_t = por true true
por_t_f: bool
por_t_f = por true false
por_f_t: bool
por_f_t = por false true
por_f_f: bool
por_f_f = por false false

---pnand
pnand_t_t: bool
pnand_t_t = pnand true true
pnand_t_f: bool
pnand_t_f = pnand true false
pnand_f_t: bool
pnand_f_t = pnand false true
pnand_f_f: bool
pnand_f_f = pnand false false

---pxor
pxor_t_t: bool
pxor_t_t = pxor true true
pxor_t_f:bool
pxor_t_f = pxor true false
pxor_f_t: bool
pxor_f_t = pxor false true
pxor_f_f: bool
pxor_f_f = pxor false false
