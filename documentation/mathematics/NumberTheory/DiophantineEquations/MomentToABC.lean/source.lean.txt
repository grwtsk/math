/- Copyright (c) 2026 grwtsk contributors. MIT. Intended type rejection. -/
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.MomentReindexing
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.ABCStatement

open GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples

-- A finite exact moment identity has no radical-height conclusion.
example : ABCConjecture := by
  exact typedPrimitiveWeightedMoment_eq_moebius_sum 4 (fun _ _ _ => (1 : ℤ))
