/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported OpenAI source retains its Apache-2.0 license and upstream attribution. -/
import OAI.NumberTheory.TwoPointCorrelations.FinalMain
import Mathlib.Tactic

/-!
# Finite-family transport of the actual upstream Liouville theorem

Build separately in openai/math/lean at
7ef5c0cc5ca4b0e072b7a050fca09ab24bc6fa3a (Lean 4.34.1).
Do not import its compiled artifacts into the Lean 4.33.0 GRWTSK project.
The exponent is common; the coefficients C_i retain affine-form dependence.
There is no uniform bound on C_i as the family grows, no Mobius substitution,
and no assertion about the GRWTSK source kernel.
SOURCE_PROOF_CANDIDATE / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false
noncomputable section
namespace GRWTSK.NumberTheory.Moebius.OpenAITwoPointFiniteFamily

open scoped BigOperators
open OAI.TwoPointCorrelations
variable {ι : Type*}

/-- Directly consumes the comparator-designated upstream theorem. The same
exponent works for every finite family and every complex readout K. -/
theorem liouville_finite_family_bound :
    ∃ c : ℝ, 0 < c ∧ ∀ (S : Finset ι) (a₁ a₂ b₁ b₂ : ι → ℕ),
      (∀ i ∈ S, 0 < a₁ i ∧ 0 < a₂ i ∧ a₁ i * b₂ i ≠ a₂ i * b₁ i) →
      ∃ C : ι → ℝ, (∀ i ∈ S, 0 < C i) ∧
        ∀ X : ℝ, 3 ≤ X → ∀ K : ι → ℂ,
          ‖∑ i ∈ S, K i *
            affineSum liouville liouville (a₁ i) (a₂ i) (b₁ i) (b₂ i) ⌊X⌋₊‖ ≤
            (∑ i ∈ S, ‖K i‖ * C i) * (X / Real.rpow (Real.log X) c) := by
  classical
  obtain ⟨c, hc, hsource⟩ := OAI.OrdinaryTwoPointCorrelations.liouville_log_saving
  refine ⟨c, hc, ?_⟩
  intro S a₁ a₂ b₁ b₂ hforms
  have hconst : ∀ i : ι, ∃ C : ℝ, 0 < C ∧ ∀ X : ℝ, 3 ≤ X → i ∈ S →
      ‖affineSum liouville liouville (a₁ i) (a₂ i) (b₁ i) (b₂ i) ⌊X⌋₊‖ ≤
        C * X / Real.rpow (Real.log X) c := by
    intro i
    by_cases hi : i ∈ S
    · obtain ⟨C, hC, hb⟩ := hsource (a₁ i) (a₂ i) (b₁ i) (b₂ i)
        (hforms i hi).1 (hforms i hi).2.1 (hforms i hi).2.2
      exact ⟨C, hC, fun X hX _ => hb X hX⟩
    · exact ⟨1, by norm_num, fun _ _ hi' => (hi hi').elim⟩
  choose C hC hb using hconst
  refine ⟨C, fun i _ => hC i, ?_⟩
  intro X hX K
  calc
    _ ≤ ∑ i ∈ S, ‖K i *
        affineSum liouville liouville (a₁ i) (a₂ i) (b₁ i) (b₂ i) ⌊X⌋₊‖ :=
      norm_sum_le _ _
    _ ≤ ∑ i ∈ S, ‖K i‖ * (C i * X / Real.rpow (Real.log X) c) := by
      apply Finset.sum_le_sum
      intro i hi
      rw [norm_mul]
      exact mul_le_mul_of_nonneg_left (hb i X hX hi) (norm_nonneg _)
    _ = _ := by
      rw [Finset.sum_mul]
      apply Finset.sum_congr rfl
      intro i _
      ring

/-- A bounded finite-prime modification feeds the exact upstream Elliott consumer.
P is fixed before the limiting cutoff. Multiplicativity of the modified input
b is an explicit separate hypothesis, not inferred from prime-value agreement. -/
theorem elliott_after_fixed_prime_change
    (f b g : ℕ → ℂ) (P : Finset ℕ)
    (hf : OneBounded f) (hb : OneBounded b) (hg : OneBounded g)
    (hbmul : Multiplicative b) (hgmul : Multiplicative g)
    (hfnp : UniformlyNonpretentious f)
    (heq : ∀ p, Nat.Prime p → p ∉ P → b p = f p)
    (h₁ h₂ : ℕ) (hne : h₁ ≠ h₂) :
    Filter.Tendsto (fun N : ℕ => correlationSum b g h₁ h₂ N / (N : ℂ))
      Filter.atTop (nhds 0) := by
  have hbnp : UniformlyNonpretentious b :=
    hfnp.finite_prime_change P hf hb heq
  exact OAI.OrdinaryTwoPointCorrelations.binary_corrected_elliott
    b g hbmul hgmul hb hg (Or.inl hbnp) h₁ h₂ hne

/-- Arithmetic specialization: only the primes dividing the fixed q are changed.
No estimate uniform in a growing q is asserted. -/
theorem elliott_after_fixed_prime_divisor_change
    (q : ℕ) (f b g : ℕ → ℂ)
    (hf : OneBounded f) (hb : OneBounded b) (hg : OneBounded g)
    (hbmul : Multiplicative b) (hgmul : Multiplicative g)
    (hfnp : UniformlyNonpretentious f)
    (heq : ∀ p, Nat.Prime p → p ∉ q.primeFactors → b p = f p)
    (h₁ h₂ : ℕ) (hne : h₁ ≠ h₂) :
    Filter.Tendsto (fun N : ℕ => correlationSum b g h₁ h₂ N / (N : ℂ))
      Filter.atTop (nhds 0) :=
  elliott_after_fixed_prime_change f b g q.primeFactors hf hb hg
    hbmul hgmul hfnp heq h₁ h₂ hne

end GRWTSK.NumberTheory.Moebius.OpenAITwoPointFiniteFamily
