# Candidate Controller Laplace Fragment — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f522086f1b9fb2b602bd8f1ca8263b24029f532f` · SHA-256 `00264ee18f3211433710b3939fe51c81e51e4cc18c07eff43813a472cd9b4a38`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-! Actual half-line-vector admission and exact full-line Fourier identification. -/
set_option autoImplicit false
namespace CandidateControllerLaplaceScratch
open MeasureTheory FourierTransform Filter Complex Set
open scoped Topology
open FormalResearch.RiemannHypothesis.SourceComparison
open CorrectedControllerAnalytic CandidateCausality HalfLineExponential
open CandidateRealizationScratch CandidateInverseAdmissionScratch CandidateLaplaceScratch
noncomputable section

/-- The actual half-line Hilbert controller has a genuinely integrable Laplace integrand. -/
theorem controller_laplace_integrable (X : ℕ) (hX : 1 ≤ X) (ε h : ℝ)
    (hε : 0 < ε) (hh : 0 < h) (hh1 : h ≤ 1) (z : ℂ) (hz : 0 ≤ z.re) :
    IntegrableOn (fun x : ℝ => Complex.exp (-z * (x : ℂ)) *
      controller X hX ε h hε hh hh1 x) (Ioi 0) := by
  apply (candidate_boundaryInverse_laplace_integrable X hX ε h hε hh hh1 z hz).congr
  filter_upwards [controller_ae X hX ε h hε hh hh1] with x hx
  rw [hx]

/-- The actual controller's genuine Laplace transform is exactly its prescribed source candidate. -/
theorem controller_laplace (X : ℕ) (hX : 1 ≤ X) (ε h : ℝ)
    (hε : 0 < ε) (hh : 0 < h) (hh1 : h ≤ 1) (z : ℂ) (hz : 0 ≤ z.re) :
    (∫ x : ℝ in Ioi 0, Complex.exp (-z * (x : ℂ)) *
      controller X hX ε h hε hh hh1 x) = candidate X ε h z := by
  rw [← candidate_boundaryInverse_laplace X hX ε h hε hh hh1 z hz]
  apply integral_congr_ae
  filter_upwards [controller_ae X hX ε h hε hh hh1] with x hx
  rw [hx]

/-- The admitted full-line inverse vector also has a genuine L1 representative. -/
theorem fullBoundaryVector_integrable (X : ℕ) (hX : 1 ≤ X) (ε h : ℝ)
    (hε : 0 < ε) (hh : 0 < h) (hh1 : h ≤ 1) :
    Integrable (fun x : ℝ => fullBoundaryVector X hX ε h hε hh hh1 x) :=
  (candidate_boundaryInverse_integrable X hX ε h hε hh hh1).congr
    (fullBoundaryVector_ae X hX ε h hε hh hh1).symm

/-- The actual full-line vector has the exact angular candidate as its pointwise Fourier transform. -/
theorem fullBoundaryVector_fourier (X : ℕ) (hX : 1 ≤ X) (ε h : ℝ)
    (hε : 0 < ε) (hh : 0 < h) (hh1 : h ≤ 1) (ξ : ℝ) :
    (𝓕 (fun x : ℝ => fullBoundaryVector X hX ε h hε hh hh1 x)) ξ =
      candidate X ε h (((2 * Real.pi * ξ : ℝ) : ℂ) * I) := by
  rw [Real.fourier_congr_ae (fullBoundaryVector_ae X hX ε h hε hh hh1)]
  have he := candidate_boundaryInverse_fourier X hX ε h hε hh hh1 (2 * Real.pi * ξ)
  rw [Real.fourier_real_eq_integral_exp_smul]
  rw [← he]
  apply integral_congr_ae
  filter_upwards [] with x
  simp only [smul_eq_mul]
  congr 2
  push_cast
  ring

end
end CandidateControllerLaplaceScratch
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7462adfd324970923cf4f581e7b1eeb41baa9c336e5211f68913235684b594e0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/CandidateControllerLaplaceFragment/Variant00264ee18f3211433710b3939fe51c81e51e4cc18c07eff43813a472cd9b4a38.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
