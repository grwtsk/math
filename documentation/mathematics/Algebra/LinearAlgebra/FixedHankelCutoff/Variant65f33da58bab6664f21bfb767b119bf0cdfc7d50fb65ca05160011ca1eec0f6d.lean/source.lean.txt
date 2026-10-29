-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.FixedHankelCutoff.Variante825bb4e5919d45d8b91e4a15a3807a0032bafa555ec6ae6780b17808276869e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e825bb4e5919d45d8b91e4a15a3807a0032bafa555ec6ae6780b17808276869e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.FixedHankelCutoff.Variante825bb4e5919d45d8b91e4a15a3807a0032bafa555ec6ae6780b17808276869e","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"e825bb4e5919d45d8b91e4a15a3807a0032bafa555ec6ae6780b17808276869e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/continuous-research-01a109fc/pass8/hankel_review/fixed_hankel_cutoff.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.MathematicalTooling.FixedHankelCutoff


namespace GRWTSK.Algebra.LinearAlgebra.FixedHankelCutoff.Variante825bb4e5919d45d8b91e4a15a3807a0032bafa555ec6ae6780b17808276869e

open FormalResearch.MathematicalTooling.FixedHankelCutoff
open Matrix

-- The order-zero boundary includes both s₀ and s₁; the next diagonal uses s₂.
example : Matrix.PosSemidef (Matrix.of (fun i j : Fin 1 ↦ cutoffSequence 0 (i.val + j.val))) ∧
    Matrix.PosSemidef (Matrix.of (fun i j : Fin 1 ↦ cutoffSequence 0 (i.val + j.val + 1))) :=
  both_towers_posSemidef (Nat.le_refl 0)

example : ¬ Matrix.PosSemidef (Matrix.of (fun i j : Fin 2 ↦ cutoffSequence 0 (i.val + j.val))) :=
  next_order_not_posSemidef 0

-- Matrix size three is order two, so both size-three towers can pass.
example : Matrix.PosSemidef (Matrix.of (fun i j : Fin 3 ↦ cutoffSequence 2 (i.val + j.val))) ∧
    Matrix.PosSemidef (Matrix.of (fun i j : Fin 3 ↦ cutoffSequence 2 (i.val + j.val + 1))) :=
  both_towers_posSemidef (Nat.le_refl 2)

example : (Pi.single (Fin.last 3) (1 : ℝ) : Fin 4 → ℝ) ⬝ᵥ
    (Matrix.of (fun i j : Fin 4 ↦ cutoffSequence 2 (i.val + j.val)) *ᵥ
      Pi.single (Fin.last 3) 1) = -1 := next_order_last_basis_quadratic 2

-- Preserve the p↔s shift literally for both towers, with p₀ unused.
example (d r a : ℕ) :
    (fun i j : Fin (r + 1) ↦
      (fun n ↦ cutoffSequence d (n - 1)) (i.val + j.val + a + 1)) =
    (fun i j : Fin (r + 1) ↦ cutoffSequence d (i.val + j.val + a)) := by
  funext i j
  simp

#print unshifted_eq_one
#print axioms unshifted_eq_one
#print shifted_eq_one
#print axioms shifted_eq_one
#print all_ones_posSemidef
#print axioms all_ones_posSemidef
#print both_towers_posSemidef
#print axioms both_towers_posSemidef
#print next_order_last_basis_quadratic
#print axioms next_order_last_basis_quadratic
#print next_order_not_posSemidef
#print axioms next_order_not_posSemidef
#print fixed_cutoff_counterexample
#print axioms fixed_cutoff_counterexample
#print fixed_cutoff_not_sufficient
#print axioms fixed_cutoff_not_sufficient

set_option pp.funBinderTypes true in
#check fixed_cutoff_counterexample
set_option pp.funBinderTypes true in
#check next_order_last_basis_quadratic
