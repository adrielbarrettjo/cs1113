module Box
import eq
import bool

data Box = mkBox bool

unbox: Box -> bool
unbox (mkBox b) = b

---eql_Box: (eq a) => Box a -> Box a -> bool
---eql_Box (mkBox v1) (mkBox v2) = eql v1 v2

instance eq Box where
  eql Box1 Box2 = eql Box1 Box2
