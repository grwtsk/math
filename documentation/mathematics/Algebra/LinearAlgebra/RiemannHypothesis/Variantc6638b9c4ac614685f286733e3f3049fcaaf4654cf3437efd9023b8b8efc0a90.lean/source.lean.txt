-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.PhaseReflection.Variant02ebfe603d43d84e9e7c73a9c8327f302bb1cd95ecaa0b72d18b9a466118650e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"02ebfe603d43d84e9e7c73a9c8327f302bb1cd95ecaa0b72d18b9a466118650e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.PhaseReflection.Variant02ebfe603d43d84e9e7c73a9c8327f302bb1cd95ecaa0b72d18b9a466118650e","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"02ebfe603d43d84e9e7c73a9c8327f302bb1cd95ecaa0b72d18b9a466118650e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/cache-source-audit/source/02ebfe603d43d84e9e7c73a9c8327f302bb1cd95ecaa0b72d18b9a466118650e.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["late_preamble_command","uncompiled_organization"],"structural_qualification":"structural_issues_retained_uncompiled","transform_version":"1"}
import Mathlib.Analysis.Complex.Basic
import Mathlib.LinearAlgebra.Matrix.Hermitian
import Mathlib.LinearAlgebra.Matrix.Notation
import Mathlib.LinearAlgebra.Matrix.Trace
import Mathlib.LinearAlgebra.Matrix.Determinant.Basic
import Mathlib.LinearAlgebra.Matrix.Rank
import Mathlib.Tactic

/-!
# The finite unit-phase reflection dictionary

For a complex phase `χ`, the Hermitian matrix `phaseReflection χ` has off-diagonal
entries `χ` and `conj χ`. Its product with `phaseReflection 1` is exactly the
diagonal matrix with entries `χ` and `conj χ`. When `normSq χ = 1`, each factor is
an involution and its plus projector has range the line spanned by `(χ, 1)`.

The scalar phase defect has exact determinant and trace formulas. These are
finite algebraic identities, with no zeta-zero, simple-zero, Riemann-hypothesis,
or positive-factorization premise. The factors commute exactly when the phase
is real; they must not be inserted into a commuting-involution construction for
a general unit phase.
-/


namespace GRWTSK.Algebra.LinearAlgebra.PhaseReflection.Variant02ebfe603d43d84e9e7c73a9c8327f302bb1cd95ecaa0b72d18b9a466118650e

namespace FormalResearch.RiemannHypothesis

open scoped ComplexConjugate Matrix

/-- The two-dimensional Hermitian reflection associated to a complex phase. -/
def phaseReflection (χ : ℂ) : Matrix (Fin 2) (Fin 2) ℂ :=
  !![0, χ; conj χ, 0]

/-- The ordered product of the phase reflection and the reference reflection. -/
def phaseRotation (χ : ℂ) : Matrix (Fin 2) (Fin 2) ℂ :=
  phaseReflection χ * phaseReflection 1

/-- The plus projector of the phase reflection. -/
noncomputable def phaseProjector (χ : ℂ) : Matrix (Fin 2) (Fin 2) ℂ :=
  (1 / 2 : ℂ) • (1 + phaseReflection χ)

/-- A generator for the plus line of a unit-phase reflection. -/
def phaseLineVector (χ : ℂ) : Fin 2 → ℂ := ![χ, 1]

/-- Hermitian symmetry needs no unit-norm assumption. -/
theorem phase_reflection_is_hermitian (χ : ℂ) :
    (phaseReflection χ).IsHermitian := by
  apply Matrix.IsHermitian.ext
  intro i j
  fin_cases i <;> fin_cases j <;> simp [phaseReflection]

/-- The reflection is self-adjoint in the matrix star algebra. -/
theorem phase_reflection_is_self_adjoint (χ : ℂ) :
    IsSelfAdjoint (phaseReflection χ) :=
  (phase_reflection_is_hermitian χ).isSelfAdjoint

/-- Squaring the phase reflection exposes the scalar norm exactly. -/
theorem phase_reflection_square (χ : ℂ) :
    phaseReflection χ * phaseReflection χ = (Complex.normSq χ : ℂ) • 1 := by
  ext i j
  fin_cases i <;> fin_cases j <;>
    simp [phaseReflection, Matrix.mul_apply, Fin.sum_univ_succ,
      Complex.mul_conj, mul_comm]

/-- A unit phase gives an actual involution. -/
theorem phase_reflection_involution (χ : ℂ) (hχ : Complex.normSq χ = 1) :
    phaseReflection χ * phaseReflection χ = 1 := by
  rw [phase_reflection_square, hχ]
  simp

/-- The usual unit-norm premise gives the same involution. -/
theorem phase_reflection_involution_of_norm (χ : ℂ) (hχ : ‖χ‖ = 1) :
    phaseReflection χ * phaseReflection χ = 1 := by
  apply phase_reflection_involution
  rw [Complex.normSq_eq_norm_sq, hχ]
  norm_num

/-- The ordered product records both conjugate phases on its diagonal. -/
theorem phase_rotation_eq_diagonal (χ : ℂ) :
    phaseRotation χ = Matrix.diagonal ![χ, conj χ] := by
  ext i j
  fin_cases i <;> fin_cases j <;>
    simp [phaseRotation, phaseReflection, Matrix.mul_apply, Fin.sum_univ_succ]

/-- The ordered product of unit-phase reflections is unitary. -/
theorem phase_rotation_unitary (χ : ℂ) (hχ : Complex.normSq χ = 1) :
    (phaseRotation χ)ᴴ * phaseRotation χ = 1 := by
  simp only [phaseRotation, Matrix.conjTranspose_mul,
    (phase_reflection_is_hermitian χ).eq, (phase_reflection_is_hermitian 1).eq]
  calc
    (phaseReflection 1 * phaseReflection χ) *
        (phaseReflection χ * phaseReflection 1) =
      phaseReflection 1 * (phaseReflection χ * phaseReflection χ) * phaseReflection 1 := by
        simp only [Matrix.mul_assoc]
    _ = 1 := by
      rw [phase_reflection_involution χ hχ, Matrix.mul_one]
      exact phase_reflection_involution 1 (by simp)

/-- The factors commute precisely for real phases, including real unit phases. -/
theorem phase_reflections_commute_iff (χ : ℂ) :
    Commute (phaseReflection χ) (phaseReflection 1) ↔ χ.im = 0 := by
  constructor
  · intro h
    have h00 := congrArg (fun M : Matrix (Fin 2) (Fin 2) ℂ => M 0 0) h.eq
    have hc : conj χ = χ := by
      simpa [phaseReflection, Matrix.mul_apply, Fin.sum_univ_succ] using h00.symm
    exact Complex.conj_eq_iff_im.mp hc
  · intro h
    change phaseReflection χ * phaseReflection 1 = phaseReflection 1 * phaseReflection χ
    have hc := Complex.conj_eq_iff_im.mpr h
    ext i j
    fin_cases i <;> fin_cases j <;>
      simp [phaseReflection, Matrix.mul_apply, Fin.sum_univ_succ, hc]

/-- A unit phase can fail the commuting-involution premise. -/
theorem unit_phase_reflections_need_not_commute :
    Complex.normSq Complex.I = 1 ∧
      ¬ Commute (phaseReflection Complex.I) (phaseReflection 1) := by
  simp [phase_reflections_commute_iff]

/-- The determinant formula is valid even without the unit-phase premise. -/
theorem phase_defect_eq_det (χ : ℂ) :
    (Complex.normSq (1 - χ) : ℂ) = Matrix.det (1 - phaseRotation χ) := by
  rw [phase_rotation_eq_diagonal, Matrix.det_fin_two]
  rw [Complex.normSq_eq_conj_mul_self]
  simp [Matrix.sub_apply]
  ring

/-- For a unit phase, the defect is the trace deficit from dimension two. -/
theorem phase_defect_eq_trace_deficit (χ : ℂ) (hχ : Complex.normSq χ = 1) :
    (Complex.normSq (1 - χ) : ℂ) = 2 - Matrix.trace (phaseRotation χ) := by
  rw [phase_rotation_eq_diagonal, Matrix.trace_fin_two]
  simp only [Matrix.diagonal_apply_eq, Matrix.cons_val_zero,
    Matrix.cons_val_one, Matrix.cons_val_fin_one]
  have hmul : conj χ * χ = 1 := by
    rw [← Complex.normSq_eq_conj_mul_self, hχ]
    simp
  rw [Complex.normSq_eq_conj_mul_self]
  simp only [map_sub, map_one]
  linear_combination hmul

/-- The squared reflection difference has twice the scalar phase defect as trace. -/
theorem phase_defect_eq_half_trace_square (χ : ℂ) :
    (Complex.normSq (1 - χ) : ℂ) =
      (1 / 2 : ℂ) * Matrix.trace ((phaseReflection χ - phaseReflection 1) ^ 2) := by
  rw [pow_two, Matrix.trace_fin_two, Complex.normSq_eq_conj_mul_self]
  simp [phaseReflection, Matrix.mul_apply, Fin.sum_univ_succ]
  ring

/-- The determinant and both trace expressions are the same unit-phase scalar. -/
theorem unit_phase_defect_dictionary (χ : ℂ) (hχ : Complex.normSq χ = 1) :
    (Complex.normSq (1 - χ) : ℂ) = Matrix.det (1 - phaseRotation χ) ∧
      Matrix.det (1 - phaseRotation χ) = 2 - Matrix.trace (phaseRotation χ) ∧
      2 - Matrix.trace (phaseRotation χ) =
        (1 / 2 : ℂ) * Matrix.trace ((phaseReflection χ - phaseReflection 1) ^ 2) := by
  refine ⟨phase_defect_eq_det χ, ?_, ?_⟩
  · rw [← phase_defect_eq_det, phase_defect_eq_trace_deficit χ hχ]
  · rw [← phase_defect_eq_trace_deficit χ hχ, phase_defect_eq_half_trace_square]

/-- The scalar phase defect is nonnegative for every complex phase. -/
theorem phase_defect_nonneg (χ : ℂ) : 0 ≤ Complex.normSq (1 - χ) :=
  Complex.normSq_nonneg _

/-- The plus projector is Hermitian, independently of the unit-phase premise. -/
theorem phase_projector_is_hermitian (χ : ℂ) :
    (phaseProjector χ).IsHermitian := by
  apply (Matrix.isHermitian_one.add (phase_reflection_is_hermitian χ)).smul
  simp [IsSelfAdjoint]

/-- The plus projector is idempotent for a unit phase. -/
theorem phase_projector_idempotent (χ : ℂ) (hχ : Complex.normSq χ = 1) :
    phaseProjector χ * phaseProjector χ = phaseProjector χ := by
  simp only [phaseProjector, Matrix.smul_mul, Matrix.mul_smul,
    Matrix.add_mul, Matrix.mul_add, Matrix.one_mul, Matrix.mul_one,
    phase_reflection_involution χ hχ]
  module

/-- The plus projector acts by an explicit two-coordinate formula. -/
theorem phase_projector_mul_vec (χ : ℂ) (x : Fin 2 → ℂ) :
    phaseProjector χ *ᵥ x =
      ![(x 0 + χ * x 1) / 2, (conj χ * x 0 + x 1) / 2] := by
  ext i
  fin_cases i <;>
    simp [phaseProjector, phaseReflection, Matrix.mulVec, dotProduct,
      Fin.sum_univ_succ, Matrix.one_apply, smul_eq_mul] <;> ring

/-- For a unit phase every projected vector lies on the specified line. -/
theorem phase_projector_mul_vec_eq_smul_line (χ : ℂ) (hχ : Complex.normSq χ = 1)
    (x : Fin 2 → ℂ) :
    phaseProjector χ *ᵥ x =
      ((conj χ * x 0 + x 1) / 2) • phaseLineVector χ := by
  have hmul : χ * conj χ = 1 := by rw [Complex.mul_conj, hχ]; simp
  rw [phase_projector_mul_vec]
  ext i
  fin_cases i
  · simp [phaseLineVector, smul_eq_mul]
    linear_combination -(x 0 / 2) * hmul
  · simp [phaseLineVector, smul_eq_mul]

/-- The line generator is fixed by the unit-phase projector. -/
theorem phase_projector_fixes_line (χ : ℂ) (hχ : Complex.normSq χ = 1) :
    phaseProjector χ *ᵥ phaseLineVector χ = phaseLineVector χ := by
  have hmul : conj χ * χ = 1 := by
    rw [← Complex.normSq_eq_conj_mul_self, hχ]
    simp
  rw [phase_projector_mul_vec]
  ext i
  fin_cases i <;> simp [phaseLineVector, hmul]

/-- The range is exactly the complex line generated by `(χ, 1)`. -/
theorem phase_projector_range (χ : ℂ) (hχ : Complex.normSq χ = 1) :
    LinearMap.range (phaseProjector χ).mulVecLin = ℂ ∙ phaseLineVector χ := by
  apply le_antisymm
  · rintro x ⟨y, rfl⟩
    apply Submodule.mem_span_singleton.mpr
    exact ⟨(conj χ * y 0 + y 1) / 2,
      (phase_projector_mul_vec_eq_smul_line χ hχ y).symm⟩
  · rw [Submodule.span_singleton_le_iff_mem]
    exact ⟨phaseLineVector χ, phase_projector_fixes_line χ hχ⟩

/-- The line generator is nonzero, with no phase assumption. -/
theorem phase_line_vector_ne_zero (χ : ℂ) : phaseLineVector χ ≠ 0 := by
  intro h
  have h1 := congrArg (fun x : Fin 2 → ℂ => x 1) h
  simp [phaseLineVector] at h1

/-- The unit-phase plus projector has matrix rank one. -/
theorem phase_projector_rank_one (χ : ℂ) (hχ : Complex.normSq χ = 1) :
    (phaseProjector χ).rank = 1 := by
  rw [Matrix.rank, phase_projector_range χ hχ]
  exact finrank_span_singleton (phase_line_vector_ne_zero χ)

end FormalResearch.RiemannHypothesis
