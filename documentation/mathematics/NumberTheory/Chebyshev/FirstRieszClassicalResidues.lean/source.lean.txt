/- Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Chebyshev.FirstRieszClassicalCoefficients
import GRWTSK.NumberTheory.Chebyshev.TentResidueContributions
import Mathlib.NumberTheory.LSeries.HurwitzZetaValues

/-! # Actual first-Riesz residues at zero and minus one
These are punctured limits of the literal zeta integrand. The global contour
limit and matching to the boundary-normalized primitive remain separate. -/
set_option autoImplicit false
noncomputable section
open Filter
open scoped Topology
namespace GRWTSK.NumberTheory.Chebyshev.FirstRieszClassicalResidues
open FirstRieszClassicalCoefficients TentResidueContributions
open GRWTSK.Analysis.Complex.IntervalMellinKernel

theorem riemannZeta_neg_one : riemannZeta (-1) = -1 / 12 := by
  have h := riemannZeta_neg_nat_eq_bernoulli 1
  norm_num [bernoulli_two] at h ⊢
  exact h

theorem continuousAt_neg_logDeriv_neg_one :
    ContinuousAt (fun s : ℂ => -logDeriv riemannZeta s) (-1) := by
  have ha := analyticOn_riemannZeta (-1) (by norm_num)
  exact (ha.deriv.continuousAt.div ha.continuousAt (by rw [riemannZeta_neg_one]; norm_num)).neg

theorem firstRiesz_residue_zero (x : ℝ) (hx : 0 < x) :
    Tendsto (fun s : ℂ => s * (-logDeriv riemannZeta s * firstRieszKernel x s))
      (𝓝[≠] 0) (𝓝 (-(x : ℂ) * Complex.log (2 * Real.pi))) := by
  have hp : logPower x (1 : ℂ) = (x : ℂ) := by
    simpa [logPower] using exp_real_log hx
  have hc : ContinuousAt (fun s : ℂ => -logDeriv riemannZeta s * logPower x (s + 1) / (s + 1)) 0 :=
    (continuousAt_neg_logDeriv_zero.mul (by unfold logPower; fun_prop)).div
      (by fun_prop) (by norm_num)
  have hl := hc.tendsto.mono_left (show 𝓝[≠] (0 : ℂ) ≤ 𝓝 0 from nhdsWithin_le_nhds)
  have he : (fun s : ℂ => s * (-logDeriv riemannZeta s * firstRieszKernel x s)) =ᶠ[𝓝[≠] 0]
      (fun s : ℂ => -logDeriv riemannZeta s * logPower x (s + 1) / (s + 1)) := by
    filter_upwards [self_mem_nhdsWithin] with s hs
    have hs0 : s ≠ 0 := hs
    dsimp [firstRieszKernel]
    field_simp
  simpa only [zero_add, hp, div_one, logDeriv_riemannZeta_zero, mul_comm, neg_mul, mul_neg] using hl.congr' he.symm

theorem firstRiesz_residue_neg_one (x : ℝ) :
    Tendsto (fun s : ℂ => (s + 1) * (-logDeriv riemannZeta s * firstRieszKernel x s))
      (𝓝[≠] (-1)) (𝓝 (logDeriv riemannZeta (-1))) := by
  have hc : ContinuousAt (fun s : ℂ => -logDeriv riemannZeta s * logPower x (s + 1) / s) (-1) :=
    (continuousAt_neg_logDeriv_neg_one.mul (by unfold logPower; fun_prop)).div
      continuousAt_id (by norm_num)
  have hl := hc.tendsto.mono_left (show 𝓝[≠] (-1 : ℂ) ≤ 𝓝 (-1) from nhdsWithin_le_nhds)
  have he : (fun s : ℂ => (s + 1) * (-logDeriv riemannZeta s * firstRieszKernel x s)) =ᶠ[𝓝[≠] (-1)]
      (fun s : ℂ => -logDeriv riemannZeta s * logPower x (s + 1) / s) := by
    filter_upwards [self_mem_nhdsWithin] with s hs
    have hsne : s ≠ -1 := hs
    have hs1 : s + 1 ≠ 0 := by intro h; apply hsne; linear_combination h
    dsimp [firstRieszKernel]
    field_simp
  simpa [logPower] using hl.congr' he.symm
end GRWTSK.NumberTheory.Chebyshev.FirstRieszClassicalResidues
