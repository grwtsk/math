import AnalyticNumber.Mathlib.Certificate

/-!
# Mathlib-backed certificate: geometric series and the resolvent on the disk

For `z : ℂ` with `‖z‖ < 1` this file proves, from Mathlib:

* `Summable (fun n : ℕ => z ^ n)`;
* `Summable (fun n : ℕ => ‖z ^ n‖)`;
* `HasSum (fun n : ℕ => z ^ n) ((1 - z)⁻¹)`;
* `AnalyticAt ℂ (fun w : ℂ => (1 - w)⁻¹) z`,

and packages the conjunction as a `MathlibProofCertificate` whose `proof`
field is built from those four theorems — not from `True`, `trivial`, or an
arbitrary authority field. The claim is then recovered a second time only
through `BoundaryCalculus.analytic_boundary_calculus`, and direct ownership
remains impossible.

This file asserts nothing about ζ, RH, analytic continuation, functional
equations, automorphic L-functions, trace formulas, prismatic comparison,
Fredholm determinants, or global Euler products.
-/

namespace AnalyticNumber
namespace MathlibBridge
namespace GeometricSeries

/-- The complex geometric series is summable for `‖z‖ < 1`. Mathlib proof. -/
theorem complex_geometric_series_summable
    {z : ℂ} (hz : ‖z‖ < 1) :
    Summable (fun n : ℕ => z ^ n) :=
  summable_geometric_of_norm_lt_one hz

/-- The complex geometric series is absolutely summable for `‖z‖ < 1`.
Mathlib proof via `norm_pow` and the real geometric series at `r = ‖z‖`. -/
theorem complex_geometric_series_abs_summable
    {z : ℂ} (hz : ‖z‖ < 1) :
    Summable (fun n : ℕ => ‖z ^ n‖) := by
  simpa [norm_pow] using summable_geometric_of_lt_one (norm_nonneg z) hz

/-- The complex geometric series sums to `(1 - z)⁻¹` for `‖z‖ < 1`.
Mathlib proof. -/
theorem complex_geometric_series_hasSum
    {z : ℂ} (hz : ‖z‖ < 1) :
    HasSum (fun n : ℕ => z ^ n) ((1 - z)⁻¹) :=
  hasSum_geometric_of_norm_lt_one hz

/-- The resolvent `w ↦ (1 - w)⁻¹` is analytic at every point of the open
unit disk. Mathlib proof via `analyticAt_const`, `analyticAt_id`,
`AnalyticAt.sub`, and `AnalyticAt.inv`; the denominator is nonzero because
`1 - z = 0` would force `z = 1`, contradicting `‖z‖ < 1`. -/
theorem one_sub_inv_analyticAt
    {z : ℂ} (hz : ‖z‖ < 1) :
    AnalyticAt ℂ (fun w : ℂ => (1 - w)⁻¹) z := by
  have hne : (1 : ℂ) - z ≠ 0 := by
    intro h
    have hz1 : z = 1 := (sub_eq_zero.mp h).symm
    rw [hz1] at hz
    simp at hz
  have hsub : AnalyticAt ℂ (fun w : ℂ => 1 - w) z :=
    analyticAt_const.sub analyticAt_id
  exact hsub.inv hne

/-- The resolvent `z ↦ (1 - z)⁻¹` is analytic on a neighbourhood of every
point of the open unit ball. Stated with `AnalyticOnNhd`, the modern Mathlib
name for the pointwise-`AnalyticAt` notion previously called `AnalyticOn`. -/
theorem one_sub_inv_analyticOn_unitBall :
    AnalyticOnNhd ℂ
      (fun z : ℂ => (1 - z)⁻¹)
      (Metric.ball (0 : ℂ) 1) := by
  intro z hz
  exact one_sub_inv_analyticAt (mem_ball_zero_iff.mp hz)

/-- Analytic context for the Mathlib geometric-series claim. `finiteHash` is
metadata only. -/
def geometricSeriesContext (_z : ℂ) :
    BoundaryCalculus.AnalyticContext where
  label := "Mathlib complex geometric series on the unit disk"
  finiteHash := 0

/-- The analytic claim: summability, absolute summability, the sum formula,
and analyticity of the resolvent. -/
def geometricSeriesClaim
    (z : ℂ) (_hz : ‖z‖ < 1) :
    BoundaryCalculus.AnalyticClaim
      (geometricSeriesContext z)
      Authority.BoundaryKind.absoluteConvergence where
  label :=
    "Mathlib proof: complex geometric series summability, sum, and analyticity"
  statement :=
    Summable (fun n : ℕ => z ^ n) ∧
      Summable (fun n : ℕ => ‖z ^ n‖) ∧
      HasSum (fun n : ℕ => z ^ n) ((1 - z)⁻¹) ∧
      AnalyticAt ℂ (fun w : ℂ => (1 - w)⁻¹) z

/-- The Mathlib-backed proof certificate for the geometric-series claim. The
`proof` field is assembled from the four Mathlib-backed theorems above. -/
def geometricSeriesMathlibProofCertificate
    (z : ℂ) (hz : ‖z‖ < 1) :
    MathlibProofCertificate
      (geometricSeriesContext z)
      Authority.BoundaryKind.absoluteConvergence
      (geometricSeriesClaim z hz) where
  theoremName :=
    "complex_geometric_series_summable/hasSum/analyticAt"
  moduleName :=
    "AnalyticNumber.Mathlib.GeometricSeries"
  proof := by
    exact
      ⟨complex_geometric_series_summable hz,
        complex_geometric_series_abs_summable hz,
        complex_geometric_series_hasSum hz,
        one_sub_inv_analyticAt hz⟩

/-- The converted analytic certificate. -/
def geometricSeriesAnalyticCertificate
    (z : ℂ) (hz : ‖z‖ < 1) :
    AnalyticCertificate :=
  (geometricSeriesMathlibProofCertificate z hz).toAnalyticCertificate

/-- The converted analytic authority token. -/
def geometricSeriesAnalyticToken
    (z : ℂ) (hz : ‖z‖ < 1) :
    BoundaryCalculus.AnalyticAuthorityToken
      (geometricSeriesContext z)
      Authority.BoundaryKind.absoluteConvergence
      (geometricSeriesClaim z hz) :=
  (geometricSeriesMathlibProofCertificate z hz).toAnalyticAuthorityToken

/-- The Mathlib-backed certificate proves the geometric-series claim. -/
theorem geometric_series_mathlib_certificate_sound
    {z : ℂ} (hz : ‖z‖ < 1) :
    (geometricSeriesClaim z hz).statement :=
  mathlib_proof_certificate_sound
    (geometricSeriesMathlibProofCertificate z hz)

/--
The geometric-series theorem, obtained via the certificate–token–boundary
path. The direct Mathlib proofs live inside
`geometricSeriesMathlibProofCertificate`; this theorem transports them
through `BoundaryCalculus.analytic_boundary_calculus`.
-/
theorem geometric_series_through_boundary_calculus
    {z : ℂ} (hz : ‖z‖ < 1) :
    Summable (fun n : ℕ => z ^ n) ∧
      Summable (fun n : ℕ => ‖z ^ n‖) ∧
      HasSum (fun n : ℕ => z ^ n) ((1 - z)⁻¹) ∧
      AnalyticAt ℂ (fun w : ℂ => (1 - w)⁻¹) z :=
  mathlib_proof_through_boundary_calculus
    (geometricSeriesMathlibProofCertificate z hz)

/-- Direct lower-layer ownership of the geometric-series claim is
impossible. -/
theorem geometric_series_no_direct_crossing
    {z : ℂ} (hz : ‖z‖ < 1) :
    ¬ BoundaryCalculus.DirectOwns
      (geometricSeriesContext z)
      Authority.BoundaryKind.absoluteConvergence
      (geometricSeriesClaim z hz) :=
  BoundaryCalculus.no_direct_analytic_crossing

end GeometricSeries
end MathlibBridge
end AnalyticNumber
