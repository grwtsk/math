import GRWTSK.Interfaces.GraphHodgePortCore

open GRWTSK.Algebra.KTheory.BoundedKasparovCycle
universe u v
variable {A : Type u} [Semiring A]
variable {H : Type v} [NormedAddCommGroup H] [InnerProductSpace ℂ H] [CompleteSpace H]
-- Exact operator laws supply genuine compact defect proofs.
example (X : ExactCycle A H) : Cycle A H := X.toCycle
