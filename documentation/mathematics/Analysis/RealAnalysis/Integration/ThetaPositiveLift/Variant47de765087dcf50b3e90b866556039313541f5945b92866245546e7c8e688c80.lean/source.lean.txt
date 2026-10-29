-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.ThetaPhiCosh.Variant208df9890ef3d0bcf8e7bb256abc924068e0bd78c7510fc4c1d6d68b83fec090","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"208df9890ef3d0bcf8e7bb256abc924068e0bd78c7510fc4c1d6d68b83fec090","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.ThetaPhiCosh.Variant208df9890ef3d0bcf8e7bb256abc924068e0bd78c7510fc4c1d6d68b83fec090","mathematical_subject":"Analysis.Integration","original_sha256":"208df9890ef3d0bcf8e7bb256abc924068e0bd78c7510fc4c1d6d68b83fec090","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/cache-source-audit/source/208df9890ef3d0bcf8e7bb256abc924068e0bd78c7510fc4c1d6d68b83fec090.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.ThetaXiBoundaryDecay
import Mathlib.Analysis.SpecialFunctions.ImproperIntegrals

/-!
# Improper theta-Phi transform for the actual centered xi function

The preceding modules established:

* the actual centered xi Mellin representation through `thetaA`;
* the exact finite theta-Phi cosh identity with its endpoint debt retained; and
* vanishing of that retained upper boundary for every fixed `u : ℂ`.

This module proves the remaining analytic passage to the improper integral.  It
first establishes integrability of the literal positive theta source against
the complex cosh kernel, then exhausts `(0, +∞)` by finite intervals and takes
the limit in the exact finite identity.

The terminal theorem is the function-level source formula

`xi(1/2 + u) = 8 * ∫_0^∞ Phi(t) cosh(2ut) dt`.

Coefficient extraction, PF-infinity, Taylor descent, the xi PF criterion, and
the Riemann hypothesis are not proved here.
-/


namespace GRWTSK.Analysis.RealAnalysis.Integration.ThetaPhiCosh.Variant208df9890ef3d0bcf8e7bb256abc924068e0bd78c7510fc4c1d6d68b83fec090

namespace FormalResearch.RiemannHypothesis.ThetaPositiveLift

open Filter MeasureTheory Set
open scoped Topology

noncomputable section

/-- The literal positive theta source paired with the centered cosh kernel. -/
def thetaPhiCosh (u : ℂ) (t : ℝ) : ℂ :=
  (thetaPhi t : ℂ) * Complex.cosh (2 * u * (t : ℂ))

/-- The Mellin-side theta source paired with the same centered cosh kernel. -/
def thetaACosh (u : ℂ) (t : ℝ) : ℂ :=
  (thetaA t : ℂ) * Complex.cosh (2 * u * (t : ℂ))

/-- Elementary norm bound for the complex hyperbolic cosine. -/
theorem complex_cosh_norm_le_exp_norm (z : ℂ) :
    ‖Complex.cosh z‖ ≤ Real.exp ‖z‖ := by
  rw [Complex.cosh]
  calc
    ‖(Complex.exp z + Complex.exp (-z)) / 2‖
        = (‖Complex.exp z + Complex.exp (-z)‖) / 2 := by
          simp
    _ ≤ (‖Complex.exp z‖ + ‖Complex.exp (-z)‖) / 2 := by
          gcongr
          exact norm_add_le _ _
    _ ≤ (Real.exp ‖z‖ + Real.exp ‖-z‖) / 2 := by
          gcongr <;> exact Complex.norm_exp_le_exp_norm _
    _ = Real.exp ‖z‖ := by simp

/-- On the nonnegative half-line the spectral cosh kernel grows at most
exponentially at rate `2 * ‖u‖`. -/
theorem thetaCoshKernel_norm_le (u : ℂ) {t : ℝ} (ht : 0 ≤ t) :
    ‖Complex.cosh (2 * u * (t : ℂ))‖ ≤
      Real.exp (2 * ‖u‖ * t) := by
  refine (complex_cosh_norm_le_exp_norm _).trans_eq ?_
  congr 1
  simp [abs_of_nonneg ht, mul_assoc]

/-- The theta-Phi cosh integrand is continuous. -/
theorem continuous_thetaPhiCosh (u : ℂ) :
    Continuous (thetaPhiCosh u) := by
  unfold thetaPhiCosh
  exact (Complex.continuous_ofReal.comp continuous_thetaPhi).mul
    (Complex.continuous_cosh.comp (by fun_prop))

/-- Explicit threshold after which the superexponential theta debt absorbs the
fixed spectral growth and one additional `e^t` factor. -/
def thetaPhiCoshThreshold (u : ℂ) : ℝ :=
  10 + 2 * ‖u‖

theorem thetaPhiCoshThreshold_positive (u : ℂ) :
    0 < thetaPhiCoshThreshold u := by
  unfold thetaPhiCoshThreshold
  positivity

/-- Beyond the explicit threshold, the Gaussian debt dominates the entire
linear exponent `(10 + 2‖u‖)t`. -/
private theorem thetaPhiCosh_linear_le_debt (u : ℂ) {t : ℝ}
    (ht : thetaPhiCoshThreshold u ≤ t) :
    thetaPhiCoshThreshold u * t ≤
      (Real.pi / 2) * Real.exp (4 * t) := by
  have hT0 : 0 ≤ thetaPhiCoshThreshold u :=
    (thetaPhiCoshThreshold_positive u).le
  have ht0 : 0 ≤ t := hT0.trans ht
  have hmul : thetaPhiCoshThreshold u * t ≤ t ^ 2 := by
    nlinarith [mul_nonneg (sub_nonneg.mpr ht) ht0]
  have he := Real.quadratic_le_exp_of_nonneg
    (show 0 ≤ 4 * t by positivity)
  have hsqexp : t ^ 2 ≤ Real.exp (4 * t) := by
    nlinarith [sq_nonneg t]
  have hpi : 1 ≤ Real.pi / 2 := by
    nlinarith [Real.pi_gt_three]
  exact hmul.trans <| hsqexp.trans (by
    nlinarith [mul_nonneg (sub_nonneg.mpr hpi)
      (Real.exp_pos (4 * t)).le])

/-- The literal theta-Phi cosh integrand has an integrable `e^{-t}` tail. -/
theorem thetaPhiCosh_norm_le_tail (u : ℂ) {t : ℝ}
    (ht : thetaPhiCoshThreshold u ≤ t) :
    ‖thetaPhiCosh u t‖ ≤
      thetaPhiDecayConstant * Real.exp (-t) := by
  have ht0 : 0 ≤ t :=
    (thetaPhiCoshThreshold_positive u).le.trans ht
  have hphi : 0 ≤ thetaPhi t := (thetaPhi_positive t ht0).le
  have hcosh := thetaCoshKernel_norm_le u ht0
  have hsource := thetaPhi_le_superexp ht0
  have hdebt := thetaPhiCosh_linear_le_debt u ht
  unfold thetaPhiCosh
  rw [norm_mul]
  simp only [Complex.norm_real, Real.norm_eq_abs, abs_of_nonneg hphi]
  calc
    thetaPhi t * ‖Complex.cosh (2 * u * (t : ℂ))‖
      ≤ (thetaPhiDecayConstant *
          Real.exp (9 * t - (Real.pi / 2) * Real.exp (4 * t))) *
          Real.exp (2 * ‖u‖ * t) := by
        apply mul_le_mul hsource hcosh (norm_nonneg _)
        exact mul_nonneg thetaPhiDecayConstant_positive.le (Real.exp_pos _).le
    _ = thetaPhiDecayConstant *
        Real.exp ((9 + 2 * ‖u‖) * t -
          (Real.pi / 2) * Real.exp (4 * t)) := by
      rw [mul_assoc, ← Real.exp_add]
      congr 2
      ring
    _ ≤ thetaPhiDecayConstant * Real.exp (-t) := by
      apply mul_le_mul_of_nonneg_left _ thetaPhiDecayConstant_positive.le
      apply Real.exp_le_exp.mpr
      unfold thetaPhiCoshThreshold at hdebt
      linarith

/-- The positive theta source is integrable against the complex centered cosh
kernel for every fixed spectral parameter. -/
theorem thetaPhiCosh_integrableOn (u : ℂ) :
    IntegrableOn (thetaPhiCosh u) (Ioi (0 : ℝ)) := by
  let T : ℝ := thetaPhiCoshThreshold u
  have hTpos : 0 < T := thetaPhiCoshThreshold_positive u
  have hinitial : IntegrableOn (thetaPhiCosh u) (Ioc (0 : ℝ) T) := by
    rw [← intervalIntegrable_iff_integrableOn_Ioc_of_le hTpos.le]
    exact Continuous.intervalIntegrable (continuous_thetaPhiCosh u) _ _
  have hbase :
      IntegrableOn (fun t : ℝ => Real.exp ((-1 : ℝ) * t))
        (Ioi T) :=
    integrableOn_exp_mul_Ioi (by norm_num) T
  have hmajor :
      IntegrableOn
        (fun t : ℝ => thetaPhiDecayConstant * Real.exp (-t))
        (Ioi T) := by
    unfold IntegrableOn at hbase ⊢
    have h := hbase.const_mul thetaPhiDecayConstant
    simpa using h
  have htail : IntegrableOn (thetaPhiCosh u) (Ioi T) := by
    unfold IntegrableOn at hmajor ⊢
    refine Integrable.mono' hmajor
      (continuous_thetaPhiCosh u).aestronglyMeasurable ?_
    filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
    exact thetaPhiCosh_norm_le_tail u (le_of_lt ht)
  have hunion :
      IntegrableOn (thetaPhiCosh u) (Ioc (0 : ℝ) T ∪ Ioi T) :=
    hinitial.union htail
  have hsets : Ioc (0 : ℝ) T ∪ Ioi T = Ioi (0 : ℝ) := by
    ext t
    simp only [mem_union, mem_Ioc, mem_Ioi]
    constructor
    · rintro (⟨ht0, _⟩ | htT)
      · exact ht0
      · exact hTpos.trans htT
    · intro ht0
      by_cases htT : t ≤ T
      · exact Or.inl ⟨ht0, htT⟩
      · exact Or.inr (lt_of_not_ge htT)
  rw [hsets] at hunion
  exact hunion

/-- The Mellin-side `A cosh` integrand is integrable; this is the packaged
integrability statement implicit in the earlier exponential recombination. -/
theorem thetaACosh_integrableOn (u : ℂ) :
    IntegrableOn (thetaACosh u) (Ioi (0 : ℝ)) := by
  have hp := thetaA_exp_integrableOn u
  have hm := thetaA_exp_integrableOn (-u)
  rw [show
    thetaACosh u =
      fun t : ℝ =>
        (((thetaA t : ℂ) * Complex.exp (2 * u * t)) +
          ((thetaA t : ℂ) * Complex.exp (2 * (-u) * t))) / 2 by
    funext t
    unfold thetaACosh
    simp only [Complex.cosh]
    rw [show -(2 * u * (t : ℂ)) = 2 * (-u) * (t : ℂ) by ring]
    ring]
  unfold IntegrableOn at hp hm ⊢
  simpa only [Pi.add_apply] using (hp.add hm).div_const 2

/-- Finite interval theta-Phi transforms exhaust the improper half-line
integral. -/
theorem thetaPhiCosh_interval_tendsto (u : ℂ) :
    Tendsto
      (fun b : ℝ => ∫ t in (0 : ℝ)..b, thetaPhiCosh u t)
      atTop
      (𝓝 (∫ t in Ioi (0 : ℝ), thetaPhiCosh u t)) :=
  intervalIntegral_tendsto_integral_Ioi 0
    (thetaPhiCosh_integrableOn u) tendsto_id

/-- The corresponding `A cosh` finite transforms exhaust their improper
integral. -/
theorem thetaACosh_interval_tendsto (u : ℂ) :
    Tendsto
      (fun b : ℝ => ∫ t in (0 : ℝ)..b, thetaACosh u t)
      atTop
      (𝓝 (∫ t in Ioi (0 : ℝ), thetaACosh u t)) :=
  intervalIntegral_tendsto_integral_Ioi 0
    (thetaACosh_integrableOn u) tendsto_id

/-- The exact finite identity passes to the improper half-line after the
retained upper boundary is proved to vanish. -/
theorem thetaPhi_cosh_integral_identity (u : ℂ) :
    (8 : ℂ) * ∫ t in Ioi (0 : ℝ), thetaPhiCosh u t =
      (1 / 2 : ℂ) +
        (4 * u ^ 2 - 1) *
          ∫ t in Ioi (0 : ℝ), thetaACosh u t := by
  have hPhi := thetaPhiCosh_interval_tendsto u
  have hA := thetaACosh_interval_tendsto u
  have hleft :
      Tendsto
        (fun b : ℝ =>
          (8 : ℂ) * ∫ t in (0 : ℝ)..b, thetaPhiCosh u t)
        atTop
        (𝓝 ((8 : ℂ) * ∫ t in Ioi (0 : ℝ), thetaPhiCosh u t)) :=
    tendsto_const_nhds.mul hPhi
  have hscaledA :
      Tendsto
        (fun b : ℝ =>
          (4 * u ^ 2 - 1) *
            ∫ t in (0 : ℝ)..b, thetaACosh u t)
        atTop
        (𝓝 ((4 * u ^ 2 - 1) *
          ∫ t in Ioi (0 : ℝ), thetaACosh u t)) :=
    tendsto_const_nhds.mul hA
  have hright :
      Tendsto
        (fun b : ℝ =>
          (1 / 2 : ℂ) +
            (4 * u ^ 2 - 1) *
              (∫ t in (0 : ℝ)..b, thetaACosh u t) +
            thetaCoshBoundary u b)
        atTop
        (𝓝 ((1 / 2 : ℂ) +
          (4 * u ^ 2 - 1) *
            ∫ t in Ioi (0 : ℝ), thetaACosh u t)) := by
    simpa using
      (tendsto_const_nhds.add hscaledA).add
        (thetaCoshBoundary_tendsto_atTop u)
  have hright' :
      Tendsto
        (fun b : ℝ =>
          (8 : ℂ) * ∫ t in (0 : ℝ)..b, thetaPhiCosh u t)
        atTop
        (𝓝 ((1 / 2 : ℂ) +
          (4 * u ^ 2 - 1) *
            ∫ t in Ioi (0 : ℝ), thetaACosh u t)) := by
    apply Tendsto.congr'
      (Eventually.of_forall fun b => ?_) hright
    simpa [thetaPhiCosh, thetaACosh] using
      (thetaPhi_cosh_interval_identity u b).symm
  exact tendsto_nhds_unique hleft hright'

/-- Function-level positive theta representation of the repository's actual
centered xi function.  Every source transform and endpoint term is explicit. -/
theorem xi_centered_thetaPhi (u : ℂ) :
    XiToeplitz.xi ((1 : ℂ) / 2 + u) =
      (8 : ℂ) *
        ∫ t in Ioi (0 : ℝ),
          (thetaPhi t : ℂ) * Complex.cosh (2 * u * (t : ℂ)) := by
  calc
    XiToeplitz.xi ((1 : ℂ) / 2 + u) =
        (1 / 2 : ℂ) +
          (4 * u ^ 2 - 1) *
            ∫ t in Ioi (0 : ℝ), thetaACosh u t := by
      simpa [thetaACosh] using xi_centered_thetaA u
    _ = (8 : ℂ) * ∫ t in Ioi (0 : ℝ), thetaPhiCosh u t :=
      (thetaPhi_cosh_integral_identity u).symm
    _ = (8 : ℂ) *
        ∫ t in Ioi (0 : ℝ),
          (thetaPhi t : ℂ) * Complex.cosh (2 * u * (t : ℂ)) := by
      rfl

end

end FormalResearch.RiemannHypothesis.ThetaPositiveLift
