-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.ThetaSourcePair.Variant16628a25d8de16b0aa0f08dc6e3d5eb8a985c4c0169e6f74cfb4c24ade621b0a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"16628a25d8de16b0aa0f08dc6e3d5eb8a985c4c0169e6f74cfb4c24ade621b0a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.ThetaSourcePair.Variant16628a25d8de16b0aa0f08dc6e3d5eb8a985c4c0169e6f74cfb4c24ade621b0a","mathematical_subject":"Analysis.Integration","original_sha256":"16628a25d8de16b0aa0f08dc6e3d5eb8a985c4c0169e6f74cfb4c24ade621b0a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/cache-source-audit/source/16628a25d8de16b0aa0f08dc6e3d5eb8a985c4c0169e6f74cfb4c24ade621b0a.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.ThetaDifferentialBridge
import Mathlib.MeasureTheory.Integral.IntegralEqImproper
import Mathlib.Analysis.Complex.Trigonometric

/-!
# Centered xi Mellin representation from the actual theta source

This module performs the next source-specific step after
`ThetaDifferentialBridge`.  It folds Mathlib's pole-removed completed-zeta
Mellin source at the self-dual point, changes variables from the multiplicative
coordinate to the logarithmic theta coordinate, and proves the centered
representation

`xi(1/2+u) = 1/2 + (4*u^2-1) * integral_0^infinity A(t) cosh(2*u*t) dt`.

The proof uses the actual `HurwitzZeta.hurwitzEvenFEPair 0` and its modified
strong source.  No integration by parts against `thetaPhi`, coefficient
identity, PF-infinity assertion, or RH conclusion is proved here.
-/


namespace GRWTSK.Analysis.RealAnalysis.Integration.ThetaSourcePair.Variant16628a25d8de16b0aa0f08dc6e3d5eb8a985c4c0169e6f74cfb4c24ade621b0a

namespace FormalResearch.RiemannHypothesis.ThetaPositiveLift

open MeasureTheory Set
open FormalResearch.RiemannHypothesis

noncomputable section

/-- The zero-frequency even Hurwitz pair underlying Mathlib's completed Riemann
zeta source. -/
def thetaSourcePair : WeakFEPair ℂ :=
  HurwitzZeta.hurwitzEvenFEPair 0

/-- The globally Mellin-convergent modified source used by `Λ₀`. -/
def thetaStrongPair : WeakFEPair ℂ :=
  thetaSourcePair.toStrongFEPair

/-- The part of the strong source supported above the self-dual point. -/
def thetaUpperSource (x : ℝ) : ℂ :=
  (Ioi (1 : ℝ)).indicator thetaStrongPair.f x

/-- The reflected lower-half source.  The exponent is the weight `k = 1/2`. -/
def thetaLowerSource (x : ℝ) : ℂ :=
  (x : ℂ) ^ (-(1 / 2 : ℂ)) * thetaUpperSource (1 / x)

/-- The zero-frequency source pair is genuinely self-dual. -/
theorem thetaSourcePair_symm :
    thetaSourcePair.symm = thetaSourcePair := by
  exact HurwitzZeta.hurwitzEvenFEPair_zero_symm

/-- Consequently the two source functions of the modified strong pair coincide. -/
theorem thetaStrongPair_g_eq_f :
    thetaStrongPair.g = thetaStrongPair.f := by
  change thetaSourcePair.symm.f_modif = thetaSourcePair.f_modif
  rw [thetaSourcePair_symm]

/-- The modified source retains the exact weight-one-half inversion law. -/
theorem thetaStrongPair_self_dual (x : ℝ) (hx : 0 < x) :
    thetaStrongPair.f (1 / x) =
      ((x ^ (1 / 2 : ℝ) : ℝ) : ℂ) * thetaStrongPair.f x := by
  have h := thetaStrongPair.h_feq x hx
  rw [thetaStrongPair_g_eq_f] at h
  simpa [thetaStrongPair, thetaSourcePair, WeakFEPair.toStrongFEPair,
    HurwitzZeta.hurwitzEvenFEPair, smul_eq_mul] using h

private theorem cpow_neg_half_mul_rpow_half {x : ℝ} (hx : 0 < x) :
    (x : ℂ) ^ (-(1 / 2 : ℂ)) * ((x ^ (1 / 2 : ℝ) : ℝ) : ℂ) = 1 := by
  rw [Complex.cpow_neg, Complex.ofReal_cpow hx.le]
  push_cast
  exact inv_mul_cancel₀
    (Complex.cpow_ne_zero_iff.mpr (Or.inl (Complex.ofReal_ne_zero.mpr hx.ne')))

/-- On the upper half, the modified source is exactly twice the positive
one-sided theta sum. -/
theorem thetaStrongPair_f_eq_two_thetaPsi {x : ℝ} (hx : 1 < x) :
    thetaStrongPair.f x = (((2 : ℝ) * thetaPsi x : ℝ) : ℂ) := by
  have hx0 : 0 < x := zero_lt_one.trans hx
  have hpsi := thetaPsi_eq_cosKernel hx0
  have hpsi' :
      (2 : ℝ) * thetaPsi x = HurwitzZeta.cosKernel 0 x - 1 := by
    linarith
  have hk :
      HurwitzZeta.evenKernel 0 x = HurwitzZeta.cosKernel 0 x :=
    congrFun HurwitzZeta.evenKernel_eq_cosKernel_of_zero x
  simp only [thetaStrongPair, thetaSourcePair, WeakFEPair.toStrongFEPair,
    WeakFEPair.f_modif, Pi.add_apply,
    indicator_of_mem (mem_Ioi.mpr hx),
    indicator_of_notMem (notMem_Ioo_of_ge hx.le),
    add_zero, HurwitzZeta.hurwitzEvenFEPair, Function.comp_apply]
  rw [hk]
  simpa using congrArg (fun r : ℝ => (r : ℂ)) hpsi'.symm

@[simp] theorem thetaUpperSource_of_one_lt {x : ℝ} (hx : 1 < x) :
    thetaUpperSource x = thetaStrongPair.f x := by
  simp [thetaUpperSource, hx]

@[simp] theorem thetaUpperSource_of_le_one {x : ℝ} (hx : x ≤ 1) :
    thetaUpperSource x = 0 := by
  simp [thetaUpperSource, not_lt_of_ge hx]

/-- The full modified source is the upper source plus its weight-one-half
reflection on every positive coordinate. -/
theorem thetaStrongPair_source_split {x : ℝ} (hx : 0 < x) :
    thetaStrongPair.f x = thetaUpperSource x + thetaLowerSource x := by
  rcases lt_trichotomy x 1 with hlt | rfl | hgt
  · have hinv : 1 < 1 / x := by
      rwa [lt_one_div one_pos hx, div_one]
    rw [thetaUpperSource_of_le_one hlt.le, zero_add, thetaLowerSource,
      thetaUpperSource_of_one_lt hinv, thetaStrongPair_self_dual x hx]
    rw [← mul_assoc, cpow_neg_half_mul_rpow_half hx, one_mul]
  · simp [thetaStrongPair, thetaSourcePair, thetaUpperSource, thetaLowerSource,
      WeakFEPair.toStrongFEPair, WeakFEPair.f_modif]
  · have hinv : 1 / x < 1 := by
      rwa [one_div_lt (zero_lt_one.trans hgt) one_pos, div_one]
    rw [thetaUpperSource_of_one_lt hgt, thetaLowerSource,
      thetaUpperSource_of_le_one hinv.le, mul_zero, add_zero]

/-- The upper source has a convergent Mellin transform for every complex
parameter, inherited from the actual strong source. -/
theorem thetaUpperSource_mellinConvergent (s : ℂ) :
    MellinConvergent thetaUpperSource s := by
  have hfull : MellinConvergent thetaStrongPair.f s :=
    (thetaSourcePair.isStrongFEPair_toStrongFEPair.hasMellin s).1
  unfold MellinConvergent thetaUpperSource
  simpa only [← indicator_smul] using hfull.indicator measurableSet_Ioi

/-- The reflected lower source also has an everywhere-convergent Mellin
transform. -/
theorem thetaLowerSource_mellinConvergent (s : ℂ) :
    MellinConvergent thetaLowerSource s := by
  have hupper := thetaUpperSource_mellinConvergent ((1 / 2 : ℂ) - s)
  have hinv :
      MellinConvergent (fun x : ℝ => thetaUpperSource (1 / x))
        (s - (1 / 2 : ℂ)) := by
    have h :=
      (MellinConvergent.comp_rpow
        (f := thetaUpperSource) (s := s - (1 / 2 : ℂ))
        (a := (-1 : ℝ)) (by norm_num))
    have harg :
        MellinConvergent thetaUpperSource ((s - (1 / 2 : ℂ)) / (-1 : ℝ)) := by
      convert hupper using 1
      push_cast
      ring
    simpa only [Real.rpow_neg_one, one_div] using h.mpr harg
  have hpow :=
    (MellinConvergent.cpow_smul
      (f := fun x : ℝ => thetaUpperSource (1 / x))
      (s := s) (a := -(1 / 2 : ℂ))).2
      (by simpa [sub_eq_add_neg] using hinv)
  change MellinConvergent
    (fun x : ℝ => (x : ℂ) ^ (-(1 / 2 : ℂ)) * thetaUpperSource (1 / x)) s
  simpa only [smul_eq_mul] using! hpow

/-- Mellin inversion transports the lower source to the complementary
parameter `1/2-s`. -/
theorem mellin_thetaLowerSource (s : ℂ) :
    mellin thetaLowerSource s =
      mellin thetaUpperSource ((1 / 2 : ℂ) - s) := by
  calc
    mellin thetaLowerSource s =
        mellin (fun x : ℝ => thetaUpperSource (1 / x))
          (s - (1 / 2 : ℂ)) := by
      change mellin
        (fun x : ℝ => (x : ℂ) ^ (-(1 / 2 : ℂ)) * thetaUpperSource (1 / x)) s = _
      simpa [thetaLowerSource, smul_eq_mul, sub_eq_add_neg] using
        (mellin_cpow_smul
          (fun x : ℝ => thetaUpperSource (1 / x)) s (-(1 / 2 : ℂ)))
    _ = mellin thetaUpperSource (-(s - (1 / 2 : ℂ))) := by
      simpa [one_div] using
        (mellin_comp_inv thetaUpperSource (s - (1 / 2 : ℂ)))
    _ = mellin thetaUpperSource ((1 / 2 : ℂ) - s) := by
      congr 1
      ring

/-- The actual strong Mellin source splits into two complementary upper-half
Mellin transforms. -/
theorem mellin_thetaStrongPair_split (s : ℂ) :
    mellin thetaStrongPair.f s =
      mellin thetaUpperSource s +
        mellin thetaUpperSource ((1 / 2 : ℂ) - s) := by
  have hupper := thetaUpperSource_mellinConvergent s
  have hlower := thetaLowerSource_mellinConvergent s
  calc
    mellin thetaStrongPair.f s =
        mellin (fun x : ℝ => thetaUpperSource x + thetaLowerSource x) s := by
      unfold mellin
      apply setIntegral_congr_fun measurableSet_Ioi
      intro x hx
      dsimp only
      rw [thetaStrongPair_source_split hx, smul_add]
    _ = mellin thetaUpperSource s + mellin thetaLowerSource s :=
      (hasMellin_add hupper hlower).2
    _ = _ := by rw [mellin_thetaLowerSource]

/-- The same split, stated directly for Mathlib's pole-removed `Λ₀`. -/
theorem thetaSourcePair_Lambda0_split (s : ℂ) :
    thetaSourcePair.Λ₀ s =
      mellin thetaUpperSource s +
        mellin thetaUpperSource ((1 / 2 : ℂ) - s) := by
  change mellin thetaStrongPair.f s =
    mellin thetaUpperSource s +
      mellin thetaUpperSource ((1 / 2 : ℂ) - s)
  exact mellin_thetaStrongPair_split s

private theorem exp_four_cpow_centered (t : ℝ) (u : ℂ) :
    (Real.exp (4 * t) : ℂ) *
        (Real.exp (4 * t) : ℂ) ^ (((1 : ℂ) / 4 + u / 2) - 1) =
      (Real.exp t : ℂ) * Complex.exp (2 * u * t) := by
  have hne : (Real.exp (4 * t) : ℂ) ≠ 0 :=
    Complex.ofReal_ne_zero.mpr (Real.exp_ne_zero _)
  rw [Complex.cpow_def_of_ne_zero hne]
  rw [← Complex.ofReal_log (Real.exp_pos _).le, Real.log_exp]
  simp only [Complex.ofReal_exp]
  rw [← Complex.exp_add, ← Complex.exp_add]
  congr 1
  push_cast
  ring

/-- The upper-half Mellin transform becomes the logarithmic theta transform
under `x = exp(4t)`. -/
theorem mellin_thetaUpperSource_centered (u : ℂ) :
    mellin thetaUpperSource ((1 : ℂ) / 4 + u / 2) =
      8 * ∫ t in Ioi (0 : ℝ),
        (thetaA t : ℂ) * Complex.exp (2 * u * t) := by
  let s : ℂ := (1 : ℂ) / 4 + u / 2
  let g : ℝ → ℂ := fun x =>
    (x : ℂ) ^ (s - 1) * (((2 : ℝ) * thetaPsi x : ℝ) : ℂ)
  have hrestrict :
      mellin thetaUpperSource s = ∫ x in Ioi (1 : ℝ), g x := by
    unfold mellin thetaUpperSource
    simp_rw [← indicator_smul]
    rw [setIntegral_indicator measurableSet_Ioi]
    rw [inter_eq_right.mpr]
    · apply setIntegral_congr_fun measurableSet_Ioi
      intro x hx
      dsimp only
      rw [thetaStrongPair_f_eq_two_thetaPsi hx]
      rfl
    · intro x hx
      exact zero_lt_one.trans (mem_Ioi.mp hx)
  rw [hrestrict]
  rw [← show (∫ r in Ioi (0 : ℝ), Real.exp r • g (Real.exp r)) =
      ∫ x in Ioi (1 : ℝ), g x by
    simpa only [Real.exp_zero] using integral_comp_exp_Ioi g 0]
  rw [← show (4 : ℝ) •
      (∫ t in Ioi (0 : ℝ), Real.exp (4 * t) • g (Real.exp (4 * t))) =
      ∫ r in Ioi (0 : ℝ), Real.exp r • g (Real.exp r) by
    simpa only [mul_zero] using
      integral_comp_mul_left_Ioi' (fun r : ℝ => Real.exp r • g (Real.exp r))
        0 (by norm_num : (0 : ℝ) < 4)]
  have hpoint :
      ∀ t : ℝ, Real.exp (4 * t) • g (Real.exp (4 * t)) =
        (2 : ℂ) * ((thetaA t : ℂ) * Complex.exp (2 * u * t)) := by
    intro t
    unfold g s thetaA
    simp only [Complex.real_smul]
    convert! congrArg
      (fun z : ℂ => z * (((2 : ℝ) * thetaPsi (Real.exp (4 * t)) : ℝ) : ℂ))
      (exp_four_cpow_centered t u) using 1 <;> push_cast <;> ring
  have hint :
      (∫ t in Ioi (0 : ℝ), Real.exp (4 * t) • g (Real.exp (4 * t))) =
        (2 : ℂ) * ∫ t in Ioi (0 : ℝ),
          (thetaA t : ℂ) * Complex.exp (2 * u * t) := by
    rw [show
      (fun t : ℝ => Real.exp (4 * t) • g (Real.exp (4 * t))) =
        fun t : ℝ => (2 : ℂ) *
          ((thetaA t : ℂ) * Complex.exp (2 * u * t)) by
      funext t
      exact hpoint t]
    exact integral_const_mul _ _
  rw [hint, RCLike.real_smul_eq_coe_mul]
  change (4 : ℂ) * ((2 : ℂ) * ∫ t in Ioi (0 : ℝ),
    (thetaA t : ℂ) * Complex.exp (2 * u * t)) =
      8 * ∫ t in Ioi (0 : ℝ),
        (thetaA t : ℂ) * Complex.exp (2 * u * t)
  ring

/-- The logarithmic theta transform is integrable for every complex spectral
parameter.  This is the integrability transport needed to use linearity when
the two exponential halves are recombined as a cosh. -/
theorem thetaA_exp_integrableOn (u : ℂ) :
    IntegrableOn
      (fun t : ℝ => (thetaA t : ℂ) * Complex.exp (2 * u * t))
      (Ioi (0 : ℝ)) := by
  let s : ℂ := (1 : ℂ) / 4 + u / 2
  let g : ℝ → ℂ := fun x =>
    (x : ℂ) ^ (s - 1) * (((2 : ℝ) * thetaPsi x : ℝ) : ℂ)
  have hupper := thetaUpperSource_mellinConvergent s
  have hsubset : Ioi (1 : ℝ) ⊆ Ioi (0 : ℝ) := by
    intro x hx
    exact zero_lt_one.trans (mem_Ioi.mp hx)
  have hg : IntegrableOn g (Ioi (1 : ℝ)) := by
    unfold MellinConvergent at hupper
    have hrest := hupper.mono_set hsubset
    apply hrest.congr_fun
    · intro x hx
      unfold g
      dsimp only
      rw [thetaUpperSource_of_one_lt hx,
        thetaStrongPair_f_eq_two_thetaPsi hx]
      simp only [smul_eq_mul]
    · exact measurableSet_Ioi
  have hexp :
      IntegrableOn
        (fun r : ℝ => Real.exp r • g (Real.exp r))
        (Ioi (0 : ℝ)) := by
    exact (integrableOn_comp_exp_Ioi g 0).2 (by simpa using hg)
  have hscale :
      IntegrableOn
        (fun t : ℝ => Real.exp (4 * t) • g (Real.exp (4 * t)))
        (Ioi (0 : ℝ)) := by
    have h :=
      (integrableOn_Ioi_comp_mul_left_iff
        (fun r : ℝ => Real.exp r • g (Real.exp r))
        0 (by norm_num : (0 : ℝ) < 4)).2
        (by simpa using hexp)
    simpa using h
  have hpoint :
      EqOn
        (fun t : ℝ => Real.exp (4 * t) • g (Real.exp (4 * t)))
        (fun t : ℝ => (2 : ℂ) *
          ((thetaA t : ℂ) * Complex.exp (2 * u * t)))
        (Ioi (0 : ℝ)) := by
    intro t _
    unfold g s thetaA
    simp only [Complex.real_smul]
    convert! congrArg
      (fun z : ℂ => z * (((2 : ℝ) * thetaPsi (Real.exp (4 * t)) : ℝ) : ℂ))
      (exp_four_cpow_centered t u) using 1 <;> push_cast <;> ring
  have htwo :
      IntegrableOn
        (fun t : ℝ => (2 : ℂ) *
          ((thetaA t : ℂ) * Complex.exp (2 * u * t)))
        (Ioi (0 : ℝ)) :=
    hscale.congr_fun hpoint measurableSet_Ioi
  unfold IntegrableOn at htwo ⊢
  exact (integrable_const_mul_iff
    (isUnit_iff_ne_zero.mpr (by norm_num : (2 : ℂ) ≠ 0)) _).mp htwo

/-- Cosh is the integrable recombination of the positive and negative
exponential halves. -/
theorem thetaA_cosh_integral (u : ℂ) :
    (∫ t in Ioi (0 : ℝ),
        (thetaA t : ℂ) * Complex.cosh (2 * u * t)) =
      ((∫ t in Ioi (0 : ℝ),
          (thetaA t : ℂ) * Complex.exp (2 * u * t)) +
       (∫ t in Ioi (0 : ℝ),
          (thetaA t : ℂ) * Complex.exp (2 * (-u) * t))) / 2 := by
  have hp := thetaA_exp_integrableOn u
  have hm := thetaA_exp_integrableOn (-u)
  rw [show
    (fun t : ℝ => (thetaA t : ℂ) * Complex.cosh (2 * u * t)) =
      fun t : ℝ =>
        ((thetaA t : ℂ) * Complex.exp (2 * u * t) +
          (thetaA t : ℂ) * Complex.exp (2 * (-u) * t)) / 2 by
    funext t
    simp only [Complex.cosh]
    rw [show -(2 * u * (t : ℂ)) = 2 * (-u) * (t : ℂ) by ring]
    ring]
  rw [integral_div, integral_add hp hm]

/-- The pole-removed completed Riemann source has the exact centered theta-A
cosh representation. -/
theorem completedRiemannZeta0_centered_thetaA (u : ℂ) :
    completedRiemannZeta₀ ((1 : ℂ) / 2 + u) =
      8 * ∫ t in Ioi (0 : ℝ),
        (thetaA t : ℂ) * Complex.cosh (2 * u * t) := by
  have hsplit :=
    thetaSourcePair_Lambda0_split (((1 : ℂ) / 2 + u) / 2)
  have hplus :
      (((1 : ℂ) / 2 + u) / 2) = (1 : ℂ) / 4 + u / 2 := by ring
  have hminus :
      (1 / 2 : ℂ) - (((1 : ℂ) / 2 + u) / 2) =
        (1 : ℂ) / 4 + (-u) / 2 := by ring
  rw [hminus, hplus, mellin_thetaUpperSource_centered u,
    mellin_thetaUpperSource_centered (-u)] at hsplit
  change thetaSourcePair.Λ₀ (((1 : ℂ) / 2 + u) / 2) / 2 =
    8 * ∫ t in Ioi (0 : ℝ),
      (thetaA t : ℂ) * Complex.cosh (2 * u * t)
  rw [hplus, hsplit, thetaA_cosh_integral]
  ring

/-- Centered xi inherits the source transform with the exact polynomial
prefactor.  This is the promised source-specific Mellin theorem and stops before
the two integrations by parts that introduce `thetaPhi`. -/
theorem xi_centered_thetaA (u : ℂ) :
    XiToeplitz.xi ((1 : ℂ) / 2 + u) =
      1 / 2 + (4 * u ^ 2 - 1) *
        ∫ t in Ioi (0 : ℝ),
          (thetaA t : ℂ) * Complex.cosh (2 * u * t) := by
  rw [XiToeplitz.xi, completedRiemannZeta0_centered_thetaA]
  ring

end

end FormalResearch.RiemannHypothesis.ThetaPositiveLift
