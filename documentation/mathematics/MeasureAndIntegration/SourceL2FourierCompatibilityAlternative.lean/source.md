# Source L2 Fourier Compatibility Alternative — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e3d273968b09681e32df72580d7847c5735d771a` · SHA-256 `6d9e6726945ea5fe3bdf83f5b45dcd3b03fc7d082116951a27d97dad64e7ce7b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Analysis.Fourier.LpSpace
import Mathlib.Analysis.Distribution.AEEqOfIntegralContDiff
import Mathlib.Tactic

/-!
# Agreement of the concrete L² and integrable Fourier transforms

The actual Mathlib L² Fourier equivalence agrees almost everywhere with the
Bochner Fourier transform of an integrable representative. Compact smooth
testing, the tempered-distribution intertwining theorem and Fubini establish
the agreement without a realization premise.

AI attribution: developed with OpenAI Codex; Lean checks the proof terms.
-/

set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceL2FourierCompatibility
open MeasureTheory FourierTransform
open scoped FourierTransform ContDiff ENNReal

/-- The concrete L² Fourier transform agrees with the Bochner transform whenever
its actual representative is integrable. -/
theorem fourier_coe_ae (f : Lp ℂ 2 (volume : Measure ℝ))
    (hf : Integrable (f : ℝ → ℂ)) :
    ((𝓕 f : Lp ℂ 2 (volume : Measure ℝ)) : ℝ → ℂ) =ᵐ[volume]
      𝓕 (f : ℝ → ℂ) := by
  have hc : Continuous (𝓕 (f : ℝ → ℂ)) :=
    VectorFourier.fourierIntegral_continuous Real.continuous_fourierChar
      (innerSL ℝ (E := ℝ)).continuous₂ hf
  apply ae_eq_of_integral_contDiff_smul_eq ((Lp.memLp (𝓕 f)).locallyIntegrable (by norm_num : (1 : ℝ≥0∞) ≤ 2))
    hc.locallyIntegrable
  intro g hg hs
  have hsC : HasCompactSupport (Complex.ofRealCLM ∘ g) := hs.comp_left rfl
  have hgC : ContDiff ℝ ∞ (Complex.ofRealCLM ∘ g) := by fun_prop
  let ψ : SchwartzMap ℝ ℂ := hsC.toSchwartzMap hgC
  have hdist := congrArg (fun d : TemperedDistribution ℝ ℂ => d ψ)
    (Lp.fourier_toTemperedDistribution_eq f)
  have hswap : (∫ x : ℝ, 𝓕 (f : ℝ → ℂ) x * ψ x) =
      ∫ x : ℝ, f x * 𝓕 (ψ : ℝ → ℂ) x := by
    simpa using! VectorFourier.integral_bilin_fourierIntegral_eq_flip
      (ContinuousLinearMap.mul ℂ ℂ) (L := innerₗ ℝ)
      Real.continuous_fourierChar continuous_inner hf ψ.integrable
  simp only [TemperedDistribution.fourier_apply, Lp.toTemperedDistribution_apply,
    SchwartzMap.fourier_coe, smul_eq_mul] at hdist
  calc
    (∫ x : ℝ, g x • (𝓕 f : Lp ℂ 2 (volume : Measure ℝ)) x) =
        ∫ x : ℝ, ψ x * (𝓕 f : Lp ℂ 2 (volume : Measure ℝ)) x := by
      congr 1
    _ = ∫ x : ℝ, 𝓕 (ψ : ℝ → ℂ) x * f x := hdist.symm
    _ = ∫ x : ℝ, 𝓕 (f : ℝ → ℂ) x * ψ x := by
      simpa only [mul_comm] using hswap.symm
    _ = ∫ x : ℝ, g x • 𝓕 (f : ℝ → ℂ) x := by
      apply integral_congr_ae
      exact Filter.Eventually.of_forall (fun x => by simp [ψ, Complex.real_smul, mul_comm])
end FormalResearch.RiemannHypothesis.SourceL2FourierCompatibility
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c29c3558f91104a6bc491e9b8ca352ce1f0ace0aebfae370473b6c6d602e569f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/SourceL2FourierCompatibility/Variant6d9e6726945ea5fe3bdf83f5b45dcd3b03fc7d082116951a27d97dad64e7ce7b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
