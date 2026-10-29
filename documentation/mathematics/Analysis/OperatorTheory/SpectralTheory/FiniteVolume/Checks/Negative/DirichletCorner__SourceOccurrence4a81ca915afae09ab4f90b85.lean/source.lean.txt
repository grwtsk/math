import GRWTSK.Analysis.OperatorTheory.SpectralTheory.SturmianFiniteVolume
open GRWTSK.Spectral.SturmianFiniteVolume

-- Deliberately false: a Dirichlet path is not a cyclic periodic restriction.
example : freeDirichlet 3 0 2 = 1 := by
  norm_num [freeDirichlet]
