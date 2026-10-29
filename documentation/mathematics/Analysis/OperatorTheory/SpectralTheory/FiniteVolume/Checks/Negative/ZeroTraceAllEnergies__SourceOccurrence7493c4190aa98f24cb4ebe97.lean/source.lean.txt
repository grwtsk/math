import GRWTSK.Algebra.LinearAlgebra.Sturmian
open GRWTSK.LinearAlgebra.Sturmian

-- The free transfer at energy three remains outside the bounded-trace interval.
example : |Matrix.trace (transfer 3 0 0 0 0)| ≤ 2 := by
  exact (zero_coupling_trace_iff 3 0 0 0).2 (by norm_num)
