module setspecTest
import set_spec
import bool
import nat
import list
import option
import serialize
import eq

s0: set nat
s0 = mkSet nil

s1: set nat
s1 = mkSet (O::(S O)::(S (S O))::nil)

s2: nat
s2 = (S O)

 -- tests if the set is empty
 -- expect False

t1: bool
t1 = (isEmpty s1)

-- test set_insert

t2: set nat
t2 = (set_insert s2 s1)

-- test set_remove

t3: set nat
t3 = (set_remove s2 s0)

-- test set cardinality

t4: nat
t4 = set_cardinality s1

--test membership

t5: bool
t5 = set_member s2 s1

-- test union

t6: set nat
t6 = set_union s0 s1


-- test intersection

--t7: list a
--t7 = set_intersection s1 s0
