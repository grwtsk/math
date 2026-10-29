-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ZeroConjugateInvolutive.Variant311c7595ac486ecd94c09fe0c0a1e1a674772e728eb95517f33bb3817500668c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"311c7595ac486ecd94c09fe0c0a1e1a674772e728eb95517f33bb3817500668c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ZeroConjugateInvolutive.Variant311c7595ac486ecd94c09fe0c0a1e1a674772e728eb95517f33bb3817500668c","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"311c7595ac486ecd94c09fe0c0a1e1a674772e728eb95517f33bb3817500668c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-signed-cycle-20261006/rational/preserved-inputs/FormalResearch/RiemannHypothesis/ZeroSymmetry.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.Definitions
import Mathlib.NumberTheory.Harmonic.ZetaAsymp
import Mathlib.NumberTheory.LSeries.Nonvanishing

/-!
# Exact symmetries of nontrivial zeta zeros

Conjugation and functional-equation reflection are commuting involutions. Their
composite is critical-line reflection, itself an involution, rather than an
order-four rotation. Zero transport uses the completed functional equation and
nonvanishing in `re s ≥ 1`; it does not assume RH or a zero-strip hypothesis.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ZeroConjugateInvolutive.Variant311c7595ac486ecd94c09fe0c0a1e1a674772e728eb95517f33bb3817500668c

namespace FormalResearch.RiemannHypothesis

open Complex
open scoped ComplexConjugate

@[simp]
theorem zero_conjugate_involutive (s : ℂ) : zeroConjugate (zeroConjugate s) = s := by
  simp [zeroConjugate]

@[simp]
theorem zero_reflect_involutive (s : ℂ) : zeroReflect (zeroReflect s) = s := by
  simp [zeroReflect]

theorem zero_conjugate_reflect_commute (s : ℂ) :
    zeroConjugate (zeroReflect s) = zeroReflect (zeroConjugate s) := by
  simp [zeroConjugate, zeroReflect]

theorem critical_reflection_eq_composite (s : ℂ) :
    criticalReflection s = zeroReflect (zeroConjugate s) := rfl

@[simp]
theorem critical_reflection_involutive (s : ℂ) :
    criticalReflection (criticalReflection s) = s := by
  simp [criticalReflection]

/-- The special value at zero cannot satisfy the nontrivial-zero predicate. -/
theorem NontrivialZetaZero.ne_zero {s : ℂ} (hs : NontrivialZetaZero s) : s ≠ 0 := by
  intro h
  have hz := hs.1
  rw [h, riemannZeta_zero] at hz
  norm_num at hz

/-- The Gamma factor is nonzero after excluding zero and the negative even integers. -/
theorem NontrivialZetaZero.gamma_real_ne_zero {s : ℂ} (hs : NontrivialZetaZero s) :
    Gammaℝ s ≠ 0 := by
  intro h
  obtain ⟨n, hn⟩ := Gammaℝ_eq_zero_iff.mp h
  cases n with
  | zero => exact hs.ne_zero (by simpa using hn)
  | succ n =>
      apply hs.2.1
      refine ⟨n, ?_⟩
      push_cast at hn
      linear_combination hn

/-- Conjugation transports the zero and both of the exact domain exclusions. -/
theorem NontrivialZetaZero.conjugate {s : ℂ} (hs : NontrivialZetaZero s) :
    NontrivialZetaZero (zeroConjugate s) := by
  refine ⟨?_, ?_, ?_⟩
  · change riemannZeta (conj s) = 0
    rw [riemannZeta_conj, hs.1, map_zero]
  · rintro ⟨n, hn⟩
    apply hs.2.1
    refine ⟨n, ?_⟩
    have h := congrArg star hn
    simpa [zeroConjugate] using h
  · intro h
    apply hs.2.2
    have h' := congrArg star h
    simpa [zeroConjugate] using h'

/-- Reflection transports nontrivial zeros without dividing by a vanishing Gamma factor. -/
theorem NontrivialZetaZero.reflect {s : ℂ} (hs : NontrivialZetaZero s) :
    NontrivialZetaZero (zeroReflect s) := by
  have hcompleted : completedRiemannZeta s = 0 := by
    have h := hs.1
    rw [riemannZeta_def_of_ne_zero hs.ne_zero] at h
    exact (div_eq_zero_iff.mp h).resolve_right hs.gamma_real_ne_zero
  have hreflect_ne_zero : 1 - s ≠ 0 := sub_ne_zero.mpr (Ne.symm hs.2.2)
  refine ⟨?_, ?_, ?_⟩
  · change riemannZeta (1 - s) = 0
    rw [riemannZeta_def_of_ne_zero hreflect_ne_zero,
      completedRiemannZeta_one_sub, hcompleted, zero_div]
  · rintro ⟨n, hn⟩
    have hlarge : 1 ≤ s.re := by
      have hreal := congrArg Complex.re hn
      simp [zeroReflect] at hreal
      have hn_nonneg : (0 : ℝ) ≤ n := Nat.cast_nonneg n
      linarith
    exact riemannZeta_ne_zero_of_one_le_re hlarge hs.1
  · intro h
    apply hs.ne_zero
    change 1 - s = 1 at h
    linear_combination -h

/-- The composite symmetry retains exactly the same nontrivial-zero domain. -/
theorem NontrivialZetaZero.critical_reflection {s : ℂ} (hs : NontrivialZetaZero s) :
    NontrivialZetaZero (criticalReflection s) := by
  exact hs.conjugate.reflect

/-- The standard open critical-strip restriction follows from exact zero transport. -/
theorem NontrivialZetaZero.mem_critical_strip {s : ℂ} (hs : NontrivialZetaZero s) :
    0 < s.re ∧ s.re < 1 := by
  have hright : s.re < 1 := lt_of_not_ge fun h ↦
    riemannZeta_ne_zero_of_one_le_re h hs.1
  have hleft : (zeroReflect s).re < 1 := lt_of_not_ge fun h ↦
    riemannZeta_ne_zero_of_one_le_re h hs.reflect.1
  simp only [zeroReflect, sub_re, one_re] at hleft
  exact ⟨by linarith, hright⟩

@[simp]
theorem nontrivial_zero_conjugate_iff (s : ℂ) :
    NontrivialZetaZero (zeroConjugate s) ↔ NontrivialZetaZero s := by
  constructor
  · intro hs
    simpa using hs.conjugate
  · exact NontrivialZetaZero.conjugate

@[simp]
theorem nontrivial_zero_reflect_iff (s : ℂ) :
    NontrivialZetaZero (zeroReflect s) ↔ NontrivialZetaZero s := by
  constructor
  · intro hs
    simpa using hs.reflect
  · exact NontrivialZetaZero.reflect

@[simp]
theorem nontrivial_zero_critical_reflection_iff (s : ℂ) :
    NontrivialZetaZero (criticalReflection s) ↔ NontrivialZetaZero s := by
  constructor
  · intro hs
    simpa using hs.critical_reflection
  · exact NontrivialZetaZero.critical_reflection

end FormalResearch.RiemannHypothesis
