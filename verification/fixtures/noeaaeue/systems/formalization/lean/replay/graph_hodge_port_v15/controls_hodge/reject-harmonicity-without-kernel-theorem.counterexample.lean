import GRWTSK.Interfaces.GraphHodgePortCore

noncomputable section

open GRWTSK.LinearAlgebra.FramedFiberPort
open GRWTSK.Geometry.Hodge.DegreeZeroCohomology
-- Cocycle→harmonic follows algebraically even without positivity; the converse does not.
def degenerateHodge : TwoTermHodgeData ℚ ℚ ℚ where
  delta := LinearMap.id
  deltaStar := 0
example : degenerateHodge.IsHarmonic0 1 ∧ degenerateHodge.delta 1 ≠ 0 := by
  constructor
  · simp [TwoTermHodgeData.IsHarmonic0, TwoTermHodgeData.laplacian0,
      degenerateHodge]
  · norm_num [degenerateHodge]
example : ¬ HarmonicKernelExact degenerateHodge := by
  intro K
  have h : degenerateHodge.IsHarmonic0 1 := by
    simp [TwoTermHodgeData.IsHarmonic0, TwoTermHodgeData.laplacian0,
      degenerateHodge]
  have hc := (K.harmonic_iff_cocycle 1).1 h
  norm_num [degenerateHodge] at hc
example (A : TwoTermHodgeData ℚ ℚ ℚ) (x : ℚ) (hx : A.delta x = 0) :
    A.IsHarmonic0 x := by
  change A.deltaStar (A.delta x) = 0
  rw [hx, map_zero]
