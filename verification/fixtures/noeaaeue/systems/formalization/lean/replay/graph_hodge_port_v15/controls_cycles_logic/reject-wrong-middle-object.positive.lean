import GRWTSK.Interfaces.GraphHodgePortCore

open GRWTSK.Algebra.KTheory.FormalKK
universe v
variable (T : BivariantTheory.{0,v} Nat)
example (α : T.Corr 0 1) (β : T.Corr 1 3) : T.Corr 0 3 :=
  T.product α β
