import GRWTSK.Analysis.Complex.LogarithmicOrderDetection
import Mathlib.Analysis.Meromorphic.Order

/-! Finite meromorphic order includes genuine poles for B3/E5.
The actual source and its meromorphy/nonzero-germ premises remain explicit. -/
namespace GRWTSK.Analysis.Complex.LogarithmicPrincipalPart
open Filter
open scoped Topology

/-- A supplied analytic-unit factorization constructs meromorphy and its exact signed order. -/
theorem meromorphic_order_of_local_factorization (f u : ℂ → ℂ) (a : ℂ) (k : ℤ)
    (hu : AnalyticAt ℂ u a) (hu0 : u a ≠ 0)
    (hfactor : f =ᶠ[𝓝[≠] a] fun s => (s - a) ^ k * u s) :
    MeromorphicAt f a ∧ meromorphicOrderAt f a = (k : WithTop ℤ) := by
  have hf : MeromorphicAt f a := MeromorphicAt.iff_eventuallyEq_zpow_smul_analyticAt.mpr
    ⟨k, u, hu, by simpa only [Filter.EventuallyEq, smul_eq_mul] using hfactor⟩
  exact ⟨hf, (meromorphicOrderAt_eq_int_iff hf).mpr
    ⟨u, hu, hu0, by simpa only [Filter.EventuallyEq, smul_eq_mul] using hfactor⟩⟩

/-- Finite meromorphic order supplies an analytic unit and signed local factorization. -/
theorem meromorphic_finite_order_factorization (f : ℂ → ℂ) (a : ℂ)
    (hf : MeromorphicAt f a) (hfinite : meromorphicOrderAt f a ≠ ⊤) :
    ∃ u : ℂ → ℂ, AnalyticAt ℂ u a ∧ u a ≠ 0 ∧
      f =ᶠ[𝓝[≠] a] fun s => (s - a) ^ (meromorphicOrderAt f a).untop₀ * u s := by
  simpa only [smul_eq_mul] using (meromorphicOrderAt_ne_top_iff hf).mp hfinite

/-- Signed meromorphic order gives the scaled negative logarithmic coefficient. -/
theorem meromorphic_finite_order_scaled_coefficient (f : ℂ → ℂ) (a : ℂ)
    (hf : MeromorphicAt f a) (hfinite : meromorphicOrderAt f a ≠ ⊤) :
    Tendsto (fun s => (s - a) * (-logDeriv f s)) (𝓝[≠] a)
      (𝓝 (-((meromorphicOrderAt f a).untop₀ : ℂ))) := by
  obtain ⟨u, hu, hu0, hfactor⟩ := meromorphic_finite_order_factorization f a hf hfinite
  exact tendsto_scaled_neg_logDeriv_of_factorization f u a _ hu hu0 hfactor

/-- Any nonzero finite signed order precludes a continuous logDeriv extension. -/
theorem meromorphic_nonzero_order_no_continuous_extension (f : ℂ → ℂ) (a : ℂ)
    (hf : MeromorphicAt f a) (hfinite : meromorphicOrderAt f a ≠ ⊤)
    (horder : (meromorphicOrderAt f a).untop₀ ≠ 0) :
    ¬ ∃ H : ℂ → ℂ, ContinuousAt H a ∧ H =ᶠ[𝓝[≠] a] logDeriv f := by
  obtain ⟨u, hu, hu0, hfactor⟩ := meromorphic_finite_order_factorization f a hf hfinite
  exact no_continuous_extension_of_nonzero_order f u a _ hu hu0 hfactor horder
end GRWTSK.Analysis.Complex.LogarithmicPrincipalPart
