-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.StabilizedCoordinates.Variantbe8f43301005981bbaebdb31730bd8d9d4c81735ec4657c2708a48911ab37811","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"be8f43301005981bbaebdb31730bd8d9d4c81735ec4657c2708a48911ab37811","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.StabilizedCoordinates.Variantbe8f43301005981bbaebdb31730bd8d9d4c81735ec4657c2708a48911ab37811","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"be8f43301005981bbaebdb31730bd8d9d4c81735ec4657c2708a48911ab37811","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/cache-source-audit/source/be8f43301005981bbaebdb31730bd8d9d4c81735ec4657c2708a48911ab37811.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.JacobianConjecture.FixedPoints

/-!
# Elementary stabilization by identity coordinates

The index type `Fin 3 ⊕ Fin n` has `3 + n` coordinates. The first three
coordinate polynomials are the admitted map, renamed into the left summand;
the remaining coordinates are the identity. The Jacobian is obtained from
these actual polynomials, then proved to be block diagonal. This construction
uses none of the broader geometric claims recorded as successor work.
-/


namespace GRWTSK.Algebra.LinearAlgebra.StabilizedCoordinates.Variantbe8f43301005981bbaebdb31730bd8d9d4c81735ec4657c2708a48911ab37811

namespace FormalResearch.JacobianConjecture

noncomputable section

open MvPolynomial

/-- Coordinates for three original variables and `n` additional variables. -/
abbrev StabilizedCoordinates (n : ℕ) := (Fin 3 ⊕ Fin n) → ℚ

theorem stabilized_coordinate_card (n : ℕ) : Fintype.card (Fin 3 ⊕ Fin n) = 3 + n := by
  simp

/-- The true polynomial padding `F × id`, with the original variables renamed. -/
def stabilizedPoly (n : ℕ) : (Fin 3 ⊕ Fin n) → MvPolynomial (Fin 3 ⊕ Fin n) ℚ :=
  Sum.elim (fun i ↦ rename Sum.inl (alpogeFablePoly i)) (fun j ↦ X (Sum.inr j))

/-- Evaluation of the padded coordinate polynomials. -/
def stabilizedMap (n : ℕ) (x : StabilizedCoordinates n) : StabilizedCoordinates n :=
  fun i ↦ eval x (stabilizedPoly n i)

/-- Formal partial derivatives, with output rows and input columns. -/
def stabilizedJacobian (n : ℕ) (x : StabilizedCoordinates n) :
    Matrix (Fin 3 ⊕ Fin n) (Fin 3 ⊕ Fin n) ℚ :=
  fun i j ↦ eval x (pderiv j (stabilizedPoly n i))

/-- Extend a three-dimensional point with zero additional coordinates. -/
def stabilizePoint (n : ℕ) (x : Fin 3 → ℚ) : StabilizedCoordinates n :=
  Sum.elim x (fun _ ↦ 0)

private theorem pderiv_rename_inl_inr {n : ℕ} (j : Fin n)
    (p : MvPolynomial (Fin 3) ℚ) :
    pderiv (Sum.inr j) (rename (Sum.inl : Fin 3 → Fin 3 ⊕ Fin n) p) = 0 := by
  induction p using MvPolynomial.induction_on with
  | C a => simp
  | add p q hp hq => simp [hp, hq]
  | mul_X p i hp => simp [hp]

/-- Polynomial evaluation identifies the padding as the product with identity. -/
theorem stabilized_map_apply (n : ℕ) (x : StabilizedCoordinates n) :
    stabilizedMap n x = Sum.elim (alpogeFable (x ∘ Sum.inl)) (x ∘ Sum.inr) := by
  ext i
  cases i with
  | inl i =>
    simp only [stabilizedMap, stabilizedPoly, Sum.elim_inl, eval_rename]
    exact (congrFun (alpogeFable_eq_eval (x ∘ Sum.inl)) i).symm
  | inr i => simp [stabilizedMap, stabilizedPoly]

/-- Every off-diagonal block vanishes by formal differentiation. -/
theorem stabilized_jacobian_eq (n : ℕ) (x : StabilizedCoordinates n) :
    stabilizedJacobian n x =
      Matrix.fromBlocks (alpogeFableJacobian (x ∘ Sum.inl)) 0 0 1 := by
  ext i j
  cases i with
  | inl i =>
    cases j with
    | inl j =>
      simp [stabilizedJacobian, stabilizedPoly, alpogeFableJacobian,
        polynomialJacobian, pderiv_rename Sum.inl_injective, eval_rename]
    | inr j => simp [stabilizedJacobian, stabilizedPoly, pderiv_rename_inl_inr]
  | inr i =>
    cases j <;>
      simp [stabilizedJacobian, stabilizedPoly, Pi.single_apply, Matrix.one_apply]

/-- Identity padding retains the exact constant determinant. -/
theorem stabilized_jacobian_det (n : ℕ) (x : StabilizedCoordinates n) :
    Matrix.det (stabilizedJacobian n x) = -2 := by
  rw [stabilized_jacobian_eq, Matrix.det_fromBlocks_zero₂₁]
  simp [alpogeFable_jacobian_det]

theorem stabilized_jacobian_ne_zero (n : ℕ) (x : StabilizedCoordinates n) :
    Matrix.det (stabilizedJacobian n x) ≠ 0 := by
  rw [stabilized_jacobian_det]
  norm_num

theorem stabilize_point_injective (n : ℕ) : Function.Injective (stabilizePoint n) := by
  intro x y h
  funext i
  exact congrFun h (Sum.inl i)

/-- A collision extends with zero additional coordinates. -/
theorem stabilized_map_stabilize_point (n : ℕ) (x : Fin 3 → ℚ) :
    stabilizedMap n (stabilizePoint n x) = stabilizePoint n (alpogeFable x) := by
  rw [stabilized_map_apply]
  rfl

/-- The exact three-point collision persists in every dimension `3 + n`. -/
theorem stabilized_three_distinct_fiber_points (n : ℕ) :
    ∃ a b c : StabilizedCoordinates n, a ≠ b ∧ a ≠ c ∧ b ≠ c ∧
      stabilizedMap n a = stabilizePoint n target ∧
      stabilizedMap n b = stabilizePoint n target ∧
      stabilizedMap n c = stabilizePoint n target := by
  refine ⟨stabilizePoint n pZero, stabilizePoint n pPlus, stabilizePoint n pMinus,
    ?_, ?_, ?_, ?_, ?_, ?_⟩
  · exact fun h ↦ p_zero_ne_p_plus (stabilize_point_injective n h)
  · exact fun h ↦ p_zero_ne_p_minus (stabilize_point_injective n h)
  · exact fun h ↦ p_plus_ne_p_minus (stabilize_point_injective n h)
  · rw [stabilized_map_stabilize_point, alpogeFable_p_zero]
  · rw [stabilized_map_stabilize_point, alpogeFable_p_plus]
  · rw [stabilized_map_stabilize_point, alpogeFable_p_minus]

theorem stabilized_map_not_injective (n : ℕ) : ¬ Function.Injective (stabilizedMap n) := by
  obtain ⟨a, b, _, hab, _, _, ha, hb, _⟩ := stabilized_three_distinct_fiber_points n
  exact fun h ↦ hab (h (ha.trans hb.symm))

/-- The identity correction of the padded map at the padded target. -/
def stabilizedTransform (n : ℕ) : StabilizedCoordinates n → StabilizedCoordinates n :=
  fixedPointTransform (R := ℚ) LinearMap.id (stabilizedMap n) (stabilizePoint n target)

/-- Coordinate polynomials of the identity correction on the padded space. -/
def stabilizedTransformPoly (n : ℕ) :
    (Fin 3 ⊕ Fin n) → MvPolynomial (Fin 3 ⊕ Fin n) ℚ :=
  fun i ↦ X i - (stabilizedPoly n i - C (stabilizePoint n target i))

/-- The correction and its polynomial representation are exactly the same map. -/
theorem stabilized_transform_eq_eval (n : ℕ) (x : StabilizedCoordinates n) :
    stabilizedTransform n x = fun i ↦ eval x (stabilizedTransformPoly n i) := by
  ext i
  simp [stabilizedTransform, fixedPointTransform, stabilizedTransformPoly, stabilizedMap]

/-- The Jacobian of the padded correction, obtained from its own polynomials. -/
def stabilizedFixedPointJacobian (n : ℕ) (x : StabilizedCoordinates n) :
    Matrix (Fin 3 ⊕ Fin n) (Fin 3 ⊕ Fin n) ℚ :=
  fun i j ↦ eval x (pderiv j (stabilizedTransformPoly n i))

/-- The derivative relation is checked entry by entry for all `3 + n` variables. -/
theorem stabilized_one_sub_fixed_point_jacobian (n : ℕ) (x : StabilizedCoordinates n) :
    1 - stabilizedFixedPointJacobian n x = stabilizedJacobian n x := by
  ext i j
  simp [stabilizedFixedPointJacobian, stabilizedTransformPoly, stabilizedJacobian,
    Matrix.one_apply, Pi.single_apply]

theorem stabilized_fixed_point_det (n : ℕ) (x : StabilizedCoordinates n) :
    Matrix.det (1 - stabilizedFixedPointJacobian n x) = -2 := by
  rw [stabilized_one_sub_fixed_point_jacobian, stabilized_jacobian_det]

/-- Nondegeneracy holds everywhere, in particular at the three padded fixed points. -/
theorem stabilized_fixed_points_nondegenerate (n : ℕ) (x : StabilizedCoordinates n) :
    Matrix.det (1 - stabilizedFixedPointJacobian n x) ≠ 0 := by
  rw [stabilized_fixed_point_det]
  norm_num

/-- The three padded witnesses are distinct fixed points of the correction. -/
theorem stabilized_three_distinct_fixed_points (n : ℕ) :
    ∃ a b c : StabilizedCoordinates n, a ≠ b ∧ a ≠ c ∧ b ≠ c ∧
      Function.IsFixedPt (stabilizedTransform n) a ∧
      Function.IsFixedPt (stabilizedTransform n) b ∧
      Function.IsFixedPt (stabilizedTransform n) c := by
  obtain ⟨a, b, c, hab, hac, hbc, ha, hb, hc⟩ :=
    stabilized_three_distinct_fiber_points n
  refine ⟨a, b, c, hab, hac, hbc, ?_, ?_, ?_⟩ <;>
    apply (fixed_point_transform_id_fixed_iff (R := ℚ) _ _ _).mpr
  · exact ha
  · exact hb
  · exact hc

end

end FormalResearch.JacobianConjecture
