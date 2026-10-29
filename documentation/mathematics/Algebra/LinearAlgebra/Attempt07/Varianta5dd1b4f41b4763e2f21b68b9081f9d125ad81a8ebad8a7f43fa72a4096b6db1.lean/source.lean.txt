-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.CartanMatrix.Variant52817ba3bfc9f7c0a53a93728b2089e3f8941a9dd1f5815fd45b5c1ff3469629","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"52817ba3bfc9f7c0a53a93728b2089e3f8941a9dd1f5815fd45b5c1ff3469629","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.CartanMatrix.Variant52817ba3bfc9f7c0a53a93728b2089e3f8941a9dd1f5815fd45b5c1ff3469629","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"52817ba3bfc9f7c0a53a93728b2089e3f8941a9dd1f5815fd45b5c1ff3469629","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/mutation-d4-e8/author-records/generic-metric/attempt07.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import MatrixCalculus

/-!
Generic metric laws for the existing integer mutation calculus.
Direction: grwtsk contributors. Proof construction: OpenAI Codex.
This additional scratch slice does not modify the frozen seven-module receipt.
-/


namespace GRWTSK.Algebra.LinearAlgebra.CartanMatrix.Variant52817ba3bfc9f7c0a53a93728b2089e3f8941a9dd1f5815fd45b5c1ff3469629

namespace FormalResearch.MutationGame
open scoped BigOperators
open Matrix

/-- The loop-free Cartan form, with incoming-row integer adjacency. -/
def cartanMatrix {n : ℕ} (A : Matrix (Fin n) (Fin n) ℤ) :
    Matrix (Fin n) (Fin n) ℤ := 2 • (1 : Matrix (Fin n) (Fin n) ℤ) - A

theorem mutationMatrix_cartan {n : ℕ} (A : Matrix (Fin n) (Fin n) ℤ)
    (hzero : ∀ i, A i i = 0) (i : Fin n) :
    mutationMatrix A i = 1 - single i i 1 * cartanMatrix A := by
  ext j k
  by_cases hj : j = i
  · subst j
    by_cases hk : k = i
    · subst k
      simp [mutationMatrix, cartanMatrix, hzero, single_mul_eq_updateRow_zero,
        Matrix.ofNat_apply]
    · simp [mutationMatrix, cartanMatrix, hk, single_mul_eq_updateRow_zero,
        Matrix.ofNat_apply, Ne.symm hk]
  · simp [mutationMatrix, cartanMatrix, hj, single_mul_eq_updateRow_zero,
      Matrix.updateRow_apply]

/-- The complete bilinear-form update, without symmetry or positivity assumptions. -/
theorem mutation_form_entry {n : ℕ} (A B : Matrix (Fin n) (Fin n) ℤ)
    (hzero : ∀ i, A i i = 0) (i j k : Fin n) :
    ((mutationMatrix A i)ᵀ * B * mutationMatrix A i) j k =
      B j k - cartanMatrix A i j * B i k - B j i * cartanMatrix A i k +
        cartanMatrix A i j * B i i * cartanMatrix A i k := by
  have heq : (mutationMatrix A i)ᵀ * B * mutationMatrix A i =
      B - (cartanMatrix A)ᵀ * single i i 1 * B - B * single i i 1 * cartanMatrix A +
        (cartanMatrix A)ᵀ * single i i 1 * B * single i i 1 * cartanMatrix A := by
    rw [mutationMatrix_cartan A hzero i]
    simp only [transpose_sub, transpose_one, transpose_mul, transpose_single]
    noncomm_ring
  rw [heq]
  simp [mul_assoc, Matrix.single_mul_eq_updateRow_zero, Matrix.mul_apply,
    Matrix.updateRow_apply]

/-- Detailed balance makes the weighted Cartan form symmetric. Positivity is separate. -/
theorem weightedCartan_symmetric {n : ℕ} (A : Matrix (Fin n) (Fin n) ℤ)
    (d : Fin n → ℤ) (hbalance : ∀ i j, d i * A i j = d j * A j i) :
    (diagonal d * cartanMatrix A)ᵀ = diagonal d * cartanMatrix A := by
  ext i j
  simp only [transpose_apply, diagonal_mul, cartanMatrix, Matrix.sub_apply,
    Matrix.smul_apply, Matrix.one_apply]
  by_cases hij : i = j
  · subst j
    rfl
  · simp only [if_neg hij, if_neg (Ne.symm hij), smul_zero, zero_sub, mul_neg]
    exact congrArg Neg.neg (hbalance i j).symm

/-- Integer detailed balance preserves the full form. This includes positive integer
diagonal symmetrizers, without assuming nondegeneracy or positive definiteness. -/
theorem mutationMatrix_weighted_metric {n : ℕ} (A : Matrix (Fin n) (Fin n) ℤ)
    (hzero : ∀ i, A i i = 0) (d : Fin n → ℤ)
    (hbalance : ∀ i j, d i * A i j = d j * A j i) (i : Fin n) :
    (mutationMatrix A i)ᵀ * (diagonal d * cartanMatrix A) * mutationMatrix A i =
      diagonal d * cartanMatrix A := by
  ext j k
  rw [mutation_form_entry A _ hzero i j k]
  have hcol : (diagonal d * cartanMatrix A) j i = d i * cartanMatrix A i j := by
    have hsym := congrArg (fun M => M i j) (weightedCartan_symmetric A d hbalance)
    simpa only [transpose_apply, diagonal_mul] using hsym
  rw [hcol]
  simp only [diagonal_mul]
  have hii : cartanMatrix A i i = 2 := by
    simp [cartanMatrix, hzero, Matrix.ofNat_apply]
  rw [hii]
  ring

/-- Symmetric loop-free integer adjacency preserves its Cartan form. -/
theorem mutationMatrix_symmetric_metric {n : ℕ} (A : Matrix (Fin n) (Fin n) ℤ)
    (hzero : ∀ i, A i i = 0) (hsymm : ∀ i j, A i j = A j i) (i : Fin n) :
    (mutationMatrix A i)ᵀ * cartanMatrix A * mutationMatrix A i = cartanMatrix A := by
  have hbalance : ∀ i j, (1 : ℤ) * A i j = 1 * A j i := by
    simpa only [one_mul] using hsymm
  simpa using mutationMatrix_weighted_metric A hzero (fun _ => 1) hbalance i

/-- Detailed-balance metric preservation composes along the existing word interpreter. -/
theorem wordMatrix_weighted_metric {n : ℕ} (A : Matrix (Fin n) (Fin n) ℤ)
    (hzero : ∀ i, A i i = 0) (d : Fin n → ℤ)
    (hbalance : ∀ i j, d i * A i j = d j * A j i) (w : List (Fin n)) :
    (wordMatrix A w)ᵀ * (diagonal d * cartanMatrix A) * wordMatrix A w =
      diagonal d * cartanMatrix A := by
  induction w with
  | nil => simp [wordMatrix]
  | cons i w ih =>
    rw [wordMatrix, transpose_mul]
    calc
      (mutationMatrix A i)ᵀ * (wordMatrix A w)ᵀ *
          (diagonal d * cartanMatrix A) * (wordMatrix A w * mutationMatrix A i) =
        (mutationMatrix A i)ᵀ *
          ((wordMatrix A w)ᵀ * (diagonal d * cartanMatrix A) * wordMatrix A w) *
          mutationMatrix A i := by simp only [Matrix.mul_assoc]
      _ = diagonal d * cartanMatrix A := by
        rw [ih, mutationMatrix_weighted_metric A hzero d hbalance i]

/-- The symmetric Cartan form is preserved by every finite mutation word. -/
theorem wordMatrix_symmetric_metric {n : ℕ} (A : Matrix (Fin n) (Fin n) ℤ)
    (hzero : ∀ i, A i i = 0) (hsymm : ∀ i j, A i j = A j i)
    (w : List (Fin n)) :
    (wordMatrix A w)ᵀ * cartanMatrix A * wordMatrix A w = cartanMatrix A := by
  have hbalance : ∀ i j, (1 : ℤ) * A i j = 1 * A j i := by
    simpa only [one_mul] using hsymm
  simpa using wordMatrix_weighted_metric A hzero (fun _ => 1) hbalance w

/-- Disconnected vertices commute; both incoming edge multiplicities must vanish. -/
theorem mutationMatrix_nonadjacent_commute {n : ℕ} (A : Matrix (Fin n) (Fin n) ℤ)
    (hzero : ∀ i, A i i = 0) (i j : Fin n) (hij : A i j = 0) (hji : A j i = 0) :
    mutationMatrix A i * mutationMatrix A j = mutationMatrix A j * mutationMatrix A i := by
  by_cases hne : i = j
  · subst j
    rfl
  have hcij : cartanMatrix A i j = 0 := by
    simp [cartanMatrix, Matrix.ofNat_apply, hne, hij]
  have hcji : cartanMatrix A j i = 0 := by
    simp [cartanMatrix, Matrix.ofNat_apply, Ne.symm hne, hji]
  have hcross : (single i i (1 : ℤ) * cartanMatrix A) *
      (single j j 1 * cartanMatrix A) = 0 := by
    rw [← Matrix.mul_assoc, single_mul_mul_single]
    simp [hcij]
  have hcross' : (single j j (1 : ℤ) * cartanMatrix A) *
      (single i i 1 * cartanMatrix A) = 0 := by
    rw [← Matrix.mul_assoc, single_mul_mul_single]
    simp [hcji]
  rw [mutationMatrix_cartan A hzero i, mutationMatrix_cartan A hzero j]
  simp only [sub_mul, mul_sub, one_mul, mul_one, hcross, hcross']
  abel

/-- A loop-free Cartan row has diagonal two; its rank-one operator satisfies X²=2X. -/
theorem cartan_row_square {n : ℕ} (A : Matrix (Fin n) (Fin n) ℤ)
    (hzero : ∀ i, A i i = 0) (i : Fin n) :
    (single i i (1 : ℤ) * cartanMatrix A) * (single i i 1 * cartanMatrix A) =
      single i i 1 * cartanMatrix A + single i i 1 * cartanMatrix A := by
  rw [← Matrix.mul_assoc, single_mul_mul_single]
  have hii : cartanMatrix A i i = 2 := by
    simp [cartanMatrix, hzero, Matrix.ofNat_apply]
  rw [hii]
  norm_num only [one_mul, mul_one]
  rw [← add_mul, ← single_add]
  norm_num

/-- The adjacent rank-one triple contracts because both Cartan entries are minus one. -/
theorem cartan_row_triple {n : ℕ} (A : Matrix (Fin n) (Fin n) ℤ)
    (i j : Fin n) (hne : i ≠ j) (hij : A i j = 1) (hji : A j i = 1) :
    (single i i (1 : ℤ) * cartanMatrix A) * (single j j 1 * cartanMatrix A) *
      (single i i 1 * cartanMatrix A) = single i i 1 * cartanMatrix A := by
  have hcij : cartanMatrix A i j = -1 := by
    simp [cartanMatrix, Matrix.ofNat_apply, hne, hij]
  have hcji : cartanMatrix A j i = -1 := by
    simp [cartanMatrix, Matrix.ofNat_apply, Ne.symm hne, hji]
  simp only [← Matrix.mul_assoc]
  rw [single_mul_mul_single, single_mul_mul_single, hcij, hcji]
  norm_num

/-- Adjacent simply-laced reflections satisfy the Coxeter three-term braid law.
This is a reflection quotient identity, not faithfulness of an Artin representation. -/
theorem mutationMatrix_adjacent_braid {n : ℕ} (A : Matrix (Fin n) (Fin n) ℤ)
    (hzero : ∀ i, A i i = 0) (i j : Fin n) (hne : i ≠ j)
    (hij : A i j = 1) (hji : A j i = 1) :
    mutationMatrix A i * mutationMatrix A j * mutationMatrix A i =
      mutationMatrix A j * mutationMatrix A i * mutationMatrix A j := by
  let X := single i i (1 : ℤ) * cartanMatrix A
  let Y := single j j (1 : ℤ) * cartanMatrix A
  have hx : X * X = X + X := cartan_row_square A hzero i
  have hy : Y * Y = Y + Y := cartan_row_square A hzero j
  have hxyx : X * Y * X = X := cartan_row_triple A i j hne hij hji
  have hyxy : Y * X * Y = Y := cartan_row_triple A j i hne.symm hji hij
  rw [mutationMatrix_cartan A hzero i, mutationMatrix_cartan A hzero j]
  change (1-X)*(1-Y)*(1-X) = (1-Y)*(1-X)*(1-Y)
  have heq : (1-X)*(1-Y)*(1-X) =
      1-X-X-Y+X*X+X*Y+Y*X-X*Y*X := by noncomm_ring
  have heq' : (1-Y)*(1-X)*(1-Y) =
      1-Y-Y-X+Y*Y+Y*X+X*Y-Y*X*Y := by noncomm_ring
  rw [heq, heq', hx, hy, hxyx, hyxy]
  abel

end FormalResearch.MutationGame
