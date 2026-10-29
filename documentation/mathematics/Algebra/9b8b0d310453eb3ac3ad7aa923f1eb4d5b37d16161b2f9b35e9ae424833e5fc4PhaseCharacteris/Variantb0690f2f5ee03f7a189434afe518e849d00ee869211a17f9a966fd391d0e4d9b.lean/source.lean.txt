-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.PhaseRotationCharpoly.Variant9b8b0d310453eb3ac3ad7aa923f1eb4d5b37d16161b2f9b35e9ae424833e5fc4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9b8b0d310453eb3ac3ad7aa923f1eb4d5b37d16161b2f9b35e9ae424833e5fc4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.PhaseRotationCharpoly.Variant9b8b0d310453eb3ac3ad7aa923f1eb4d5b37d16161b2f9b35e9ae424833e5fc4","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"9b8b0d310453eb3ac3ad7aa923f1eb4d5b37d16161b2f9b35e9ae424833e5fc4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/ignored-unit/source/other-research/9b/9b8b0d310453eb3ac3ad7aa923f1eb4d5b37d16161b2f9b35e9ae424833e5fc4--PhaseCharacteristicRadical.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.PhaseInvolution
import Mathlib.LinearAlgebra.Matrix.Charpoly.Basic
import Mathlib.RingTheory.AdjoinRoot
import Mathlib.RingTheory.Jacobson.Ideal
import Mathlib.RingTheory.Nilpotent.Lemmas


namespace GRWTSK.Algebra.PhaseRotationCharpoly.Variant9b8b0d310453eb3ac3ad7aa923f1eb4d5b37d16161b2f9b35e9ae424833e5fc4

open Polynomial
open scoped ComplexConjugate Matrix
open FormalResearch.RiemannHypothesis

namespace PhaseCharacteristicRadicalAudit

theorem phase_rotation_charpoly (χ : ℂ) :
    (phaseRotation χ).charpoly = (X - C χ) * (X - C (conj χ)) := by
  rw [phase_rotation_eq_diagonal, Matrix.charpoly_diagonal]
  simp [Fin.prod_univ_two]

theorem phase_rotation_one_charpoly :
    (phaseRotation 1).charpoly = (X - C (1 : ℂ)) ^ 2 := by
  simp [phase_rotation_charpoly, pow_two]

abbrev ThickOne := AdjoinRoot ((X - C (1 : ℂ)) ^ 2)

noncomputable def observeOne : ThickOne →+* ℂ :=
  AdjoinRoot.lift (RingHom.id ℂ) 1 (by simp)

theorem observeOne_surjective : Function.Surjective observeOne := by
  intro z
  exact ⟨AdjoinRoot.of _ z, by simp [observeOne]⟩

theorem observeOne_kernel_elements_square_zero {x : ThickOne}
    (hx : x ∈ RingHom.ker observeOne) : x ^ 2 = 0 := by
  obtain ⟨p, rfl⟩ := AdjoinRoot.mk_surjective x
  have hp : p.eval 1 = 0 := by
    simpa [observeOne] using RingHom.mem_ker.mp hx
  obtain ⟨q, hq⟩ := dvd_iff_isRoot.mpr hp
  rw [hq, map_mul, mul_pow, ← map_pow, AdjoinRoot.mk_self, zero_mul]

theorem observeOne_ker_eq_jacobson :
    RingHom.ker observeOne = Ring.jacobson ThickOne := by
  apply le_antisymm
  · intro x hx
    rw [← Ideal.jacobson_bot]
    exact Ideal.radical_le_jacobson
      (mem_nilradical.mpr ⟨2, observeOne_kernel_elements_square_zero hx⟩)
  · let : (RingHom.ker observeOne).IsMaximal :=
      RingHom.ker_isMaximal_of_surjective observeOne observeOne_surjective
    exact Ring.jacobson_le_of_isMaximal _

noncomputable def observePhaseOne : ThickOne →+* Matrix (Fin 2) (Fin 2) ℂ :=
  (algebraMap ℂ (Matrix (Fin 2) (Fin 2) ℂ)).comp observeOne

theorem observePhaseOne_apply_mk (p : ℂ[X]) :
    observePhaseOne (AdjoinRoot.mk ((X - C (1 : ℂ)) ^ 2) p) =
      aeval (phaseRotation 1) p := by
  have hU : phaseRotation 1 = (1 : Matrix (Fin 2) (Fin 2) ℂ) :=
    phase_reflection_involution 1 (by simp)
  have hscalar : (1 : Matrix (Fin 2) (Fin 2) ℂ) = algebraMap ℂ _ 1 := by simp
  rw [hU, hscalar, aeval_algebraMap_apply_eq_algebraMap_eval]
  simp [observePhaseOne, observeOne]

theorem observePhaseOne_ker_eq_jacobson :
    RingHom.ker observePhaseOne = Ring.jacobson ThickOne := by
  rw [observePhaseOne, RingHom.ker_comp_of_injective observeOne
    (FaithfulSMul.algebraMap_injective ℂ (Matrix (Fin 2) (Fin 2) ℂ))]
  exact observeOne_ker_eq_jacobson

theorem thick_one_coordinate_nonzero :
    AdjoinRoot.mk ((X - C (1 : ℂ)) ^ 2) (X - C 1) ≠ 0 := by
  apply AdjoinRoot.mk_ne_zero_of_natDegree_lt ((monic_X_sub_C 1).pow 2)
  · exact (monic_X_sub_C 1).ne_zero
  · rw [natDegree_pow, natDegree_X_sub_C]
    norm_num

theorem thick_one_coordinate_square_zero :
    (AdjoinRoot.mk ((X - C (1 : ℂ)) ^ 2) (X - C 1)) ^ 2 = 0 := by
  rw [← map_pow, AdjoinRoot.mk_self]

#print axioms phase_rotation_charpoly
#print axioms observeOne_ker_eq_jacobson
#print axioms observePhaseOne_apply_mk
#print axioms observePhaseOne_ker_eq_jacobson
#print axioms thick_one_coordinate_nonzero
#print axioms thick_one_coordinate_square_zero

end PhaseCharacteristicRadicalAudit
