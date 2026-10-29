-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.MellinConvergentUnnormalized.Variantf6f28f5aa3f3210be1fea21d68999af36fbeda26649ef3a12f79116484c0bd61","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f6f28f5aa3f3210be1fea21d68999af36fbeda26649ef3a12f79116484c0bd61","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.MellinConvergentUnnormalized.Variantf6f28f5aa3f3210be1fea21d68999af36fbeda26649ef3a12f79116484c0bd61","mathematical_subject":"Analysis.Integration","original_sha256":"f6f28f5aa3f3210be1fea21d68999af36fbeda26649ef3a12f79116484c0bd61","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/continuous-research-01a109fc/pass23/dilation_mellin/ActualMellinDilation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import UnnormalizedDilation
import ActualMuntzMellinDomain

/-! Genuine actual Mellin dilation on positive-axis Lebesgue dx.
Research direction grwtsk contributors; focused scratch proof OpenAI Codex.
No Plancherel convention, closure/density or arithmetic norm identification. -/

namespace GRWTSK.Analysis.RealAnalysis.Integration.MellinConvergentUnnormalized.Variantf6f28f5aa3f3210be1fea21d68999af36fbeda26649ef3a12f79116484c0bd61

set_option autoImplicit false
noncomputable section
namespace ContinuousResearch.ActualMellinDilation
open MeasureTheory Set
open ContinuousResearch.PositiveDilation ContinuousResearch.UnnormalizedDilation
open ContinuousResearch.ActualComplexDilation ContinuousResearch.ActualMuntzMellinDomain

theorem mellinConvergent_unnormalized {f : ℝ → ℂ} {s : ℂ} {a : ℝ}
    (ha : 0 < a) (hf : MellinConvergent f s) :
    MellinConvergent (unnormalizedFunc a f) s := by
  have hc : IntegrableOn (fun t : ℝ => (a : ℂ)^(1-s) •
      ((a*t:ℝ):ℂ)^(s-1) • f (a*t)) (Ioi 0) := by
    have h := (integrableOn_Ioi_comp_mul_left_iff
      (fun u : ℝ => (u : ℂ)^(s-1) • f u) 0 ha).mpr (by simpa [MellinConvergent] using hf)
    have h' := h.const_mul ((a:ℂ)^(1-s))
    change Integrable (fun t : ℝ => (a : ℂ)^(1-s) •
      ((a*t:ℝ):ℂ)^(s-1) • f (a*t)) (volume.restrict (Ioi 0))
    simpa only [smul_eq_mul] using h'
  apply (integrableOn_congr_fun (fun t ht => ?_) measurableSet_Ioi).mpr hc
  dsimp only [unnormalizedFunc]
  rw [Complex.ofReal_mul,Complex.mul_cpow_ofReal_nonneg ha.le (le_of_lt ht),
    ←mul_smul,(by ring : 1-s = -(s-1)),Complex.cpow_neg,inv_mul_cancel_left₀]
  rw [Ne,Complex.cpow_eq_zero_iff,Complex.ofReal_eq_zero,not_and_or]
  exact Or.inl ha.ne'

theorem mellinConvergent_normalized {f : ℝ → ℂ} {s : ℂ} {a : ℝ}
    (ha : 0 < a) (hf : MellinConvergent f s) :
    MellinConvergent (dilateFunc a f) s :=
  (mellinConvergent_unnormalized ha hf).const_smul (Real.sqrt a : ℂ)

theorem sqrt_cpow (a : ℝ) (ha : 0 < a) :
    (Real.sqrt a : ℂ) = (a:ℂ)^((1:ℂ)/2) := by
  rw [Real.sqrt_eq_rpow,Complex.ofReal_cpow ha.le]
  norm_num

theorem mellin_normalized_func (a : ℝ) (ha : 0 < a) (f : ℝ → ℂ) (s : ℂ) :
    mellin (dilateFunc a f) s = (a:ℂ)^((1:ℂ)/2-s) * mellin f s := by
  change mellin (fun x => (Real.sqrt a : ℂ) • f (a*x)) s = _
  rw [mellin_const_smul,mellin_comp_mul_left f s ha,smul_smul,smul_eq_mul,
    sqrt_cpow a ha,←Complex.cpow_add _ _ (Complex.ofReal_ne_zero.mpr ha.ne')]
  congr 2

theorem actual_unnormalized_mellinConvergent {A a : ℝ} (hA : 1 ≤ A) (ha : 0 < a)
    {s : ℂ} (hs : 0 < s.re) :
    MellinConvergent (unnormalizedFunc a (actualComplexOperator A)) s :=
  mellinConvergent_unnormalized ha (actual_muntz_mellinConvergent hA hs)

theorem actual_normalized_mellinConvergent {A a : ℝ} (hA : 1 ≤ A) (ha : 0 < a)
    {s : ℂ} (hs : 0 < s.re) :
    MellinConvergent (dilateFunc a (actualComplexOperator A)) s :=
  mellinConvergent_normalized ha (actual_muntz_mellinConvergent hA hs)

theorem actual_unnormalized_mellin (A a : ℝ) (ha : 0 < a) (s : ℂ) :
    mellin (unnormalizedFunc a (actualComplexOperator A)) s =
      (a:ℂ)^(-s) * mellin (actualComplexOperator A) s :=
  mellin_comp_mul_left (actualComplexOperator A) s ha

theorem actual_normalized_mellin (A a : ℝ) (ha : 0 < a) (s : ℂ) :
    mellin (dilateFunc a (actualComplexOperator A)) s =
      (a:ℂ)^((1:ℂ)/2-s) * mellin (actualComplexOperator A) s :=
  mellin_normalized_func a ha (actualComplexOperator A) s

theorem actual_unnormalized_class_mellinConvergent (A : ℝ) (hA : 1 ≤ A)
    (a : ℝ) (ha : 0 < a) {s : ℂ} (hs : 0 < s.re) :
    MellinConvergent (unnormalized a ha (actualComplexL2 A hA)) s := by
  apply (actual_unnormalized_mellinConvergent hA ha hs).congr
  filter_upwards [unnormalized_ae a ha (actualComplexL2 A hA),
    (positive_mul_quasi ha).ae_eq_comp (actualComplexL2_ae A hA)] with x hk hp
  exact congrArg (fun z : ℂ => (x:ℂ)^(s-1) • z) (hk.trans hp).symm

theorem actual_unnormalized_class_mellin (A : ℝ) (hA : 1 ≤ A)
    (a : ℝ) (ha : 0 < a) (s : ℂ) :
    mellin (unnormalized a ha (actualComplexL2 A hA)) s =
      (a:ℂ)^(-s) * mellin (actualComplexOperator A) s := by
  rw [←actual_unnormalized_mellin A a ha s]
  apply integral_congr_ae
  filter_upwards [unnormalized_ae a ha (actualComplexL2 A hA),
    (positive_mul_quasi ha).ae_eq_comp (actualComplexL2_ae A hA)] with x hk hp
  exact congrArg (fun z : ℂ => (x:ℂ)^(s-1) • z) (hk.trans hp)

theorem actual_dilated_class_mellinConvergent (A : ℝ) (hA : 1 ≤ A)
    (a : ℝ) (ha : 0 < a) {s : ℂ} (hs : 0 < s.re) :
    MellinConvergent (dilate a ha (actualComplexL2 A hA)) s := by
  apply (actual_normalized_mellinConvergent hA ha hs).congr
  filter_upwards [dilate_actual_ae A hA a ha] with x hx
  exact congrArg (fun z : ℂ => (x:ℂ)^(s-1) • z) hx.symm

theorem actual_dilated_class_mellin (A : ℝ) (hA : 1 ≤ A)
    (a : ℝ) (ha : 0 < a) (s : ℂ) :
    mellin (dilate a ha (actualComplexL2 A hA)) s =
      (a:ℂ)^((1:ℂ)/2-s) * mellin (actualComplexOperator A) s := by
  rw [←actual_normalized_mellin A a ha s]
  apply integral_congr_ae
  filter_upwards [dilate_actual_ae A hA a ha] with x hx
  exact congrArg (fun z : ℂ => (x:ℂ)^(s-1) • z) hx

theorem actual_integer_class_mellin (A : ℝ) (hA : 1 ≤ A)
    (n : {n : ℕ // 0 < n}) (s : ℂ) :
    mellin (integerOrbit A hA n) s =
      (n.val:ℂ)^((1:ℂ)/2-s) * mellin (actualComplexOperator A) s := by
  simpa only [integerOrbit,Complex.ofReal_natCast] using
    actual_dilated_class_mellin A hA (n.val:ℝ) (by exact_mod_cast n.property) s

end ContinuousResearch.ActualMellinDilation

/- Complete public type, proof and transitive trusted closure audits. -/

#check ContinuousResearch.ActualMellinDilation.mellinConvergent_unnormalized
#print axioms ContinuousResearch.ActualMellinDilation.mellinConvergent_unnormalized
#print ContinuousResearch.ActualMellinDilation.mellinConvergent_unnormalized

#check ContinuousResearch.ActualMellinDilation.mellinConvergent_normalized
#print axioms ContinuousResearch.ActualMellinDilation.mellinConvergent_normalized
#print ContinuousResearch.ActualMellinDilation.mellinConvergent_normalized

#check ContinuousResearch.ActualMellinDilation.sqrt_cpow
#print axioms ContinuousResearch.ActualMellinDilation.sqrt_cpow
#print ContinuousResearch.ActualMellinDilation.sqrt_cpow

#check ContinuousResearch.ActualMellinDilation.mellin_normalized_func
#print axioms ContinuousResearch.ActualMellinDilation.mellin_normalized_func
#print ContinuousResearch.ActualMellinDilation.mellin_normalized_func

#check ContinuousResearch.ActualMellinDilation.actual_unnormalized_mellinConvergent
#print axioms ContinuousResearch.ActualMellinDilation.actual_unnormalized_mellinConvergent
#print ContinuousResearch.ActualMellinDilation.actual_unnormalized_mellinConvergent

#check ContinuousResearch.ActualMellinDilation.actual_normalized_mellinConvergent
#print axioms ContinuousResearch.ActualMellinDilation.actual_normalized_mellinConvergent
#print ContinuousResearch.ActualMellinDilation.actual_normalized_mellinConvergent

#check ContinuousResearch.ActualMellinDilation.actual_unnormalized_mellin
#print axioms ContinuousResearch.ActualMellinDilation.actual_unnormalized_mellin
#print ContinuousResearch.ActualMellinDilation.actual_unnormalized_mellin

#check ContinuousResearch.ActualMellinDilation.actual_normalized_mellin
#print axioms ContinuousResearch.ActualMellinDilation.actual_normalized_mellin
#print ContinuousResearch.ActualMellinDilation.actual_normalized_mellin

#check ContinuousResearch.ActualMellinDilation.actual_unnormalized_class_mellinConvergent
#print axioms ContinuousResearch.ActualMellinDilation.actual_unnormalized_class_mellinConvergent
#print ContinuousResearch.ActualMellinDilation.actual_unnormalized_class_mellinConvergent

#check ContinuousResearch.ActualMellinDilation.actual_unnormalized_class_mellin
#print axioms ContinuousResearch.ActualMellinDilation.actual_unnormalized_class_mellin
#print ContinuousResearch.ActualMellinDilation.actual_unnormalized_class_mellin

#check ContinuousResearch.ActualMellinDilation.actual_dilated_class_mellinConvergent
#print axioms ContinuousResearch.ActualMellinDilation.actual_dilated_class_mellinConvergent
#print ContinuousResearch.ActualMellinDilation.actual_dilated_class_mellinConvergent

#check ContinuousResearch.ActualMellinDilation.actual_dilated_class_mellin
#print axioms ContinuousResearch.ActualMellinDilation.actual_dilated_class_mellin
#print ContinuousResearch.ActualMellinDilation.actual_dilated_class_mellin

#check ContinuousResearch.ActualMellinDilation.actual_integer_class_mellin
#print axioms ContinuousResearch.ActualMellinDilation.actual_integer_class_mellin
#print ContinuousResearch.ActualMellinDilation.actual_integer_class_mellin
