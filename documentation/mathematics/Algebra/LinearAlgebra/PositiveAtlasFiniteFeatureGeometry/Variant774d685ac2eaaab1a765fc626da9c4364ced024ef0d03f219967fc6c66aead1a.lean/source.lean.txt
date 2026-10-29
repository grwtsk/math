import FormalResearch.PositiveAtlas.FiniteFeatureGeometry

/-!
Finite recovery fixtures for real weighted Gram geometry.

Exact rational weights are interpreted in the real field. The equality/sign
fixture compares linear equation kernels only; it makes no claim about radical
polynomial ideals, Feshbach reconstruction, or any terminal research target.
Fixture adapter authored by the Codex AI assistant during source recovery.
-/

namespace FormalResearch.PositiveAtlas.FiniteFeatureGeometry.RecoveryFixtures

noncomputable section

/-- Two measured coordinates retain one direction and protect the other. -/
def twoCoordinateFeature : (ℝ × ℝ) →ₗ[ℝ] (Fin 2 → ℝ) where
  toFun x i := if i = 0 then x.1 else 2 * x.1
  map_add' x y := by
    ext i
    by_cases hi : i = 0 <;> simp [hi, mul_add]
  map_smul' a x := by
    ext i
    by_cases hi : i = 0 <;> simp [hi, mul_left_comm]

/-- Positive rational weights give an exact real Gram certificate. -/
def rationalWeight (i : Fin 2) : ℝ := if i = 0 then 1 / 2 else 3 / 2

theorem rationalWeight_pos (i : Fin 2) : 0 < rationalWeight i := by
  fin_cases i <;> norm_num [rationalWeight]

/-- The retained direction has the claimed exact Gram value. -/
theorem retained_energy :
    (featureForm twoCoordinateFeature rationalWeight
      (fun i => (rationalWeight_pos i).le)).form (1, 7) (1, 7) = 13 / 2 := by
  norm_num [featureForm_apply, twoCoordinateFeature, rationalWeight, Fin.sum_univ_two]

/-- A nonzero protected direction is null; strict feature weights do not make
the original carrier positive definite. -/
theorem protected_null :
    ((0, 1) : ℝ × ℝ) ≠ 0 ∧
      (featureForm twoCoordinateFeature rationalWeight
        (fun i => (rationalWeight_pos i).le)).IsNull (0, 1) := by
  constructor
  · norm_num
  · rw [featureForm_isNull_iff twoCoordinateFeature rationalWeight rationalWeight_pos]
    ext i
    simp [twoCoordinateFeature]

/-- Quotient equality retains the measured coordinate while removing the
declared feature kernel. -/
theorem protected_quotient :
    (Submodule.Quotient.mk (1, 0) : NullQuotient twoCoordinateFeature) =
      Submodule.Quotient.mk (1, 7) ∧
      (Submodule.Quotient.mk (1, 0) : NullQuotient twoCoordinateFeature) ≠ 0 := by
  constructor
  · rw [quotient_mk_eq_iff]
    rfl
  · intro h
    have hfeature := congrArg (quotientFeature twoCoordinateFeature) h
    have hfirst := congrFun hfeature 0
    norm_num [quotientFeature, twoCoordinateFeature] at hfirst

/-- The positive diagonal operator. -/
def positiveOperator : (ℝ × ℝ) →ₗ[ℝ] (ℝ × ℝ) := LinearMap.id

/-- The indefinite diagonal operator with the same linear zero set. -/
def indefiniteOperator : (ℝ × ℝ) →ₗ[ℝ] (ℝ × ℝ) where
  toFun x := (-x.1, x.2)
  map_add' x y := by
    apply Prod.ext
    · exact neg_add x.1 y.1
    · rfl
  map_smul' a x := by ext <;> simp

/-- Both diagonal packets have the same equation kernel, but opposite energy
signs on the first coordinate. Equality closure alone cannot establish sign. -/
theorem same_linear_kernel_different_sign :
    (∀ x : ℝ × ℝ, positiveOperator x = 0 ↔ indefiniteOperator x = 0) ∧
      ((1, 0) : ℝ × ℝ).1 * (positiveOperator (1, 0)).1 +
          ((1, 0) : ℝ × ℝ).2 * (positiveOperator (1, 0)).2 = 1 ∧
      ((1, 0) : ℝ × ℝ).1 * (indefiniteOperator (1, 0)).1 +
          ((1, 0) : ℝ × ℝ).2 * (indefiniteOperator (1, 0)).2 = -1 := by
  constructor
  · intro x
    simp [positiveOperator, indefiniteOperator, Prod.ext_iff]
  · norm_num [positiveOperator, indefiniteOperator]

end

end FormalResearch.PositiveAtlas.FiniteFeatureGeometry.RecoveryFixtures
