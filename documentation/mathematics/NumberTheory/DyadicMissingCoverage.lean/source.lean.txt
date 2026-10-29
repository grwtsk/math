/- Intentional missing-coverage control. Apache-2.0. -/
import GRWTSK.NumberTheory.LSeries.Checks.Positive.GaussianDyadic
open GRWTSK.Analysis.PartitionOfUnity.DyadicAnnulus

-- Intended rejection: positivity does not supply the Nat-dyadic coverage bound.
example : HasSum (fun j : ℕ => dyadicAnnulus ((1/4:ℝ)/(2:ℝ)^j)) 1 :=
  dyadicAnnulus_partition (1/4) (by norm_num : (0:ℝ) < 1/4)
