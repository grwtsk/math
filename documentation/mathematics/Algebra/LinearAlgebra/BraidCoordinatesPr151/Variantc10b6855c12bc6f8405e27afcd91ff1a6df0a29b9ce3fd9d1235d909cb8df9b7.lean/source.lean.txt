-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.WeightsPositive.Variant0e5d81da6a9fc8c15c71f915185611b7be892e9d550cd1844df35f2c1a61853c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0e5d81da6a9fc8c15c71f915185611b7be892e9d550cd1844df35f2c1a61853c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.WeightsPositive.Variant0e5d81da6a9fc8c15c71f915185611b7be892e9d550cd1844df35f2c1a61853c","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"0e5d81da6a9fc8c15c71f915185611b7be892e9d550cd1844df35f2c1a61853c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/continuous-research-01a109fc/pass23/braid_quotient/BraidCoordinates-pr151.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.PositiveAtlas.Grassmannian.Plucker24
import Mathlib.Tactic

/-!
# Positive weighted braid-coordinate mutation

This is an identity between two factorizations, not a faithful representation of
the braid group and not an arithmetic identification of zero trajectories.
The positive domain is explicit; totalized division does not extend involutivity
to every nonnegative boundary point.
-/


namespace GRWTSK.Algebra.LinearAlgebra.WeightsPositive.Variant0e5d81da6a9fc8c15c71f915185611b7be892e9d550cd1844df35f2c1a61853c

namespace FormalResearch.PositiveAtlas.Grassmannian.Braid

noncomputable section

/-- Three independent weights in a reduced-word coordinate chart. -/
@[ext] structure Weights where
  /-- First weight. -/
  a : ℝ
  /-- Middle weight. -/
  b : ℝ
  /-- Last weight. -/
  c : ℝ

/-- The open positive domain on which both factorizations are reversible. -/
def Weights.Positive (p : Weights) : Prop := 0 < p.a ∧ 0 < p.b ∧ 0 < p.c

/-- The subtraction-free weighted braid change of coordinates. -/
def mutate (p : Weights) : Weights :=
  ⟨p.b * p.c / (p.a + p.c), p.a + p.c, p.a * p.b / (p.a + p.c)⟩

/-- The transformed endpoint sum is the original middle weight. -/
theorem mutate_endpoint_sum (p : Weights) (h : p.a + p.c ≠ 0) :
    (mutate p).a + (mutate p).c = p.b := by
  dsimp [mutate]
  field_simp [h]
  ring

/-- Every output weight is positive on the stated open domain. -/
theorem mutate_positive (p : Weights) (h : p.Positive) : (mutate p).Positive := by
  rcases h with ⟨ha, hb, hc⟩
  exact ⟨div_pos (mul_pos hb hc) (add_pos ha hc), add_pos ha hc,
    div_pos (mul_pos ha hb) (add_pos ha hc)⟩

/-- The coordinate change is an involution; no inverse is merely postulated. -/
theorem mutate_involutive (p : Weights) (h : p.Positive) : mutate (mutate p) = p := by
  rcases h with ⟨ha, hb, hc⟩
  have hs : p.a + p.c ≠ 0 := ne_of_gt (add_pos ha hc)
  have hb0 : p.b ≠ 0 := ne_of_gt hb
  have he := mutate_endpoint_sum p hs
  apply Weights.ext
  · change (mutate p).b * (mutate p).c / ((mutate p).a + (mutate p).c) = p.a
    rw [he]
    dsimp [mutate]
    field_simp [hs, hb0]
  · exact he
  · change (mutate p).a * (mutate p).b / ((mutate p).a + (mutate p).c) = p.c
    rw [he]
    dsimp [mutate]
    field_simp [hs, hb0]

/-- The first elementary upper-unipotent matrix. -/
def x₁ (a : ℝ) : Matrix (Fin 3) (Fin 3) ℝ := !![1, a, 0; 0, 1, 0; 0, 0, 1]

/-- The adjacent elementary upper-unipotent matrix. -/
def x₂ (b : ℝ) : Matrix (Fin 3) (Fin 3) ℝ := !![1, 0, 0; 0, 1, b; 0, 0, 1]

/-- Equality of the represented matrices under the weighted braid move. -/
theorem weighted_braid (p : Weights) (h : p.a + p.c ≠ 0) :
    x₁ p.a * x₂ p.b * x₁ p.c =
      x₂ (mutate p).a * x₁ (mutate p).b * x₂ (mutate p).c := by
  ext i j
  fin_cases i <;> fin_cases j <;>
    norm_num [x₁, x₂, mutate, Matrix.mul_apply, Fin.sum_univ_succ,
      Matrix.cons_val_two, Matrix.vecHead, Matrix.vecTail] <;>
    first | ring1 | field_simp [h]

/-- The normalized relative split; its fixed midpoint is not a zeta theorem. -/
def relativeHalf (p : Weights) : ℝ := p.a / (p.a + p.c)

/-- The relative split stays strictly between zero and one on the positive chart. -/
theorem relativeHalf_bounds (p : Weights) (h : p.Positive) :
    0 < relativeHalf p ∧ relativeHalf p < 1 := by
  rcases h with ⟨ha, _, hc⟩
  have hs := add_pos ha hc
  constructor
  · exact div_pos ha hs
  · change p.a / (p.a + p.c) < 1
    exact (div_lt_one hs).mpr (by linarith)

/-- The split is reflected about one half under the actual mutation. -/
theorem relativeHalf_mutate (p : Weights) (h : p.Positive) :
    relativeHalf (mutate p) = 1 - relativeHalf p := by
  rcases h with ⟨ha, hb, hc⟩
  have hs : p.a + p.c ≠ 0 := ne_of_gt (add_pos ha hc)
  have hb0 : p.b ≠ 0 := ne_of_gt hb
  unfold relativeHalf
  rw [mutate_endpoint_sum p hs]
  dsimp [mutate]
  field_simp [hs, hb0]
  ring

/-- Centering exposes a genuine sign reversal of the local transverse coordinate. -/
theorem centered_relativeHalf_mutate (p : Weights) (h : p.Positive) :
    relativeHalf (mutate p) - 1 / 2 = -(relativeHalf p - 1 / 2) := by
  rw [relativeHalf_mutate p h]
  ring

/-- The midpoint condition is exactly equality of the endpoint weights. -/
theorem relativeHalf_eq_half_iff (p : Weights) (h : p.a + p.c ≠ 0) :
    relativeHalf p = 1 / 2 ↔ p.a = p.c := by
  unfold relativeHalf
  rw [div_eq_div_iff h (by norm_num : (2 : ℝ) ≠ 0)]
  constructor <;> intro he <;> linarith

/-- A boundary point exposes the failure of unguarded involutivity. -/
theorem boundary_not_involutive :
    mutate (mutate (⟨1, 0, 2⟩ : Weights)) ≠ (⟨1, 0, 2⟩ : Weights) := by
  intro h
  have ha := congrArg Weights.a h
  norm_num [mutate] at ha

/-- The midpoint of the split alone does not fix the full three-weight chart. -/
theorem relative_midpoint_not_full_fixed_point :
    relativeHalf (⟨1, 7, 1⟩ : Weights) = 1 / 2 ∧
      mutate (⟨1, 7, 1⟩ : Weights) ≠ (⟨1, 7, 1⟩ : Weights) := by
  constructor
  · norm_num [relativeHalf]
  · intro h
    have hb := congrArg Weights.b h
    norm_num [mutate] at hb

/-- One standard unreduced Burau block, not a positive-unipotent generator. -/
def burauBlock (q : ℝ) : Matrix (Fin 2) (Fin 2) ℝ := !![1 - q, q; 1, 0]

/-- Its determinant obstructs total nonnegativity for a positive specialization. -/
theorem burauBlock_det (q : ℝ) : Matrix.det (burauBlock q) = -q := by
  simp [burauBlock, Matrix.det_fin_two]

/-- Positive values of the Burau parameter give a negative two-by-two minor. -/
theorem burauBlock_det_negative (q : ℝ) (h : 0 < q) : Matrix.det (burauBlock q) < 0 := by
  rw [burauBlock_det]
  linarith

/-- At parameter one the block square is the identity: specialization loses information. -/
theorem burauBlock_one_square : burauBlock 1 * burauBlock 1 = 1 := by
  ext i j
  fin_cases i <;> fin_cases j <;>
    norm_num [burauBlock, Matrix.mul_apply, Fin.sum_univ_succ]

end

end FormalResearch.PositiveAtlas.Grassmannian.Braid
