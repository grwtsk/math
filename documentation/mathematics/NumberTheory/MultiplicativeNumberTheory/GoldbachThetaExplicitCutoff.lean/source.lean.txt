/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Primes.GoldbachTwoArcThetaTransfer
import GRWTSK.NumberTheory.Primes.GoldbachDirectionalMinorBoundary
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Explicit prefix cutoff from separately supplied scalar theta estimates

The two numerical distribution estimates below are explicit hypotheses. The
note derives them from a published unconditional theorem; that theorem is NOT
imported, installed as an axiom, replayed, or kernel-audited here.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.NumberTheory.Primes.GoldbachThetaExplicitCutoff

open GRWTSK.NumberTheory.Primes.ConfigurationCounts
open GRWTSK.NumberTheory.Primes.GoldbachProgressionMainModel
open GRWTSK.NumberTheory.Primes.GoldbachProgressionErrorTransfer
open GRWTSK.NumberTheory.Primes.GoldbachProgressionArcBoundary
open GRWTSK.NumberTheory.Primes.GoldbachRationalArcCriterion
open GRWTSK.NumberTheory.Primes.GoldbachPrefixArcTransfer
open GRWTSK.NumberTheory.Primes.GoldbachFrequencyArcBudget
open GRWTSK.NumberTheory.Primes.GoldbachDirectionalMinorBoundary
open GRWTSK.NumberTheory.Primes.GoldbachTwoArcRationalBudget
open GRWTSK.NumberTheory.Primes.GoldbachTwoArcThetaTransfer

noncomputable section

def goldbachThetaConservativeCutoff : ℕ := 400000000

/-- Coarse but sufficient external scalar estimates. This declaration is a
predicate, not a theorem asserting either estimate. -/
def GoldbachThetaCoarseEstimates : Prop :=
  (∀ k : ℕ, goldbachPrimeLogTotal k ≤ 2 * (k : ℝ)) ∧
  (∀ k : ℕ, 4000000 ≤ k →
    |goldbachPrimeLogTotal k - (k : ℝ)| ≤ (k : ℝ) / 500)

/-- A global upper estimate and positivity cover the entire small-prefix
range without enumerating primes or silently skipping k=0. -/
theorem theta_prefix_abs_le_succ_of_global
    (hglobal : ∀ k : ℕ, goldbachPrimeLogTotal k ≤ 2 * (k : ℝ)) (k : ℕ) :
    |goldbachPrimeLogTotal k - (k + 1 : ℝ)| ≤ (k + 1 : ℝ) := by
  have h0 := goldbachPrimeLogTotal_nonneg k
  have hu := hglobal k
  have hk : (0 : ℝ) ≤ k := by positivity
  rw [abs_le]
  constructor <;> linarith

/-- Explicit finite-prefix/tail split. The endpoint correction costs one
even when the supplied distribution estimate is centered at k. -/
theorem theta_all_prefix_one_percent_of_coarse
    (hθ : GoldbachThetaCoarseEstimates)
    {N k : ℕ} (hN : goldbachThetaConservativeCutoff ≤ N) (hk : k ≤ N) :
    |goldbachPrimeLogTotal k - (k + 1 : ℝ)| ≤ (N + 1 : ℝ) / 100 := by
  have hNat : 400000000 ≤ N := hN
  have hNr : (400000000 : ℝ) ≤ N := by exact_mod_cast hNat
  have hkr : (k : ℝ) ≤ N := by exact_mod_cast hk
  by_cases hsmall : k < 4000000
  · have hks : (k : ℝ) + 1 ≤ 4000000 := by
      exact_mod_cast (show k + 1 ≤ 4000000 by omega)
    exact (theta_prefix_abs_le_succ_of_global hθ.1 k).trans (by linarith)
  · have ht := abs_le.mp (hθ.2 k (by omega))
    rw [abs_le]
    constructor <;> linarith [ht.1, ht.2]

theorem goldbachThetaPrefixSupplier_one_percent_of_coarse
    (hθ : GoldbachThetaCoarseEstimates) :
    GoldbachThetaPrefixSupplier goldbachThetaConservativeCutoff (1 / 100) := by
  refine ⟨by norm_num, ?_⟩
  intro N hN htwo heven k hk
  simpa [div_eq_mul_inv, mul_comm] using theta_all_prefix_one_percent_of_coarse hθ hN hk

/-- The externally supplied theta estimates now feed the actual Q=2
progression supplier, retaining all prefix and target quantifiers. -/
theorem goldbachReducedPrefixSupplier_two_of_coarse
    (hθ : GoldbachThetaCoarseEstimates) :
    GoldbachReducedPrefixSupplier goldbachThetaConservativeCutoff (fun _ => 2)
      (fun N => goldbachTwoArcReducedPrefixBound ((N + 1 : ℝ) / 100)) := by
  simpa [div_eq_mul_inv, mul_comm] using goldbachReducedPrefixSupplier_two_of_theta
    (goldbachThetaPrefixSupplier_one_percent_of_coarse hθ)

/-- This consumer names the remaining analytic bridges explicitly: the
frequency-integral comparison, model lower bound, and complete signed minor
lower bound. None follows from the scalar theta estimate alone. -/
theorem goldbachCount_pos_of_coarse_theta_and_two_arc_bridges
    (hθ : GoldbachThetaCoarseEstimates)
    {N : ℕ} (hN : goldbachThetaConservativeCutoff ≤ N) (heven : Even N)
    (hbudget : goldbachFrequencyMajorErrorBudget 2 N
      (goldbachTwoArcReducedPrefixBound ((N + 1 : ℝ) / 100)) ≤
        goldbachTwoArcRationalBudget (N + 1 : ℝ) ((N + 1 : ℝ) / 100))
    (hmodel : 13 * (N + 1 : ℝ) / 9 ≤ (goldbachProgressionArcModelMajorSum 2 N).re)
    (hminor : -((N + 1 : ℝ) / 2) ≤ (goldbachRationalMinorContribution 2 N).re) :
    0 < goldbachCount N := by
  have hNat : 400000000 ≤ N := hN
  have htwo : 2 < N := by omega
  have hscale : 2 * 2 ^ 2 < N + 1 := by omega
  have hX : (1000 : ℝ) ≤ (N + 1 : ℝ) := by exact_mod_cast (show 1000 ≤ N + 1 by omega)
  have hp := goldbachReducedPrefixSupplier_two_of_coarse hθ N hN htwo heven
  apply goldbachCount_pos_of_frequency_signed_minor_lower hscale
    (goldbachTwoArcReducedPrefixBound ((N + 1 : ℝ) / 100)) hp
    (13 * (N + 1 : ℝ) / 9) ((N + 1 : ℝ) / 2) hmodel hminor
  have hm := goldbachTwoArcRationalBudget_strict_margin hX
    (show 0 ≤ (N + 1 : ℝ) / 100 by positivity) (le_refl ((N + 1 : ℝ) / 100))
  linarith

/-- Explicit universal target, retaining all remaining independent analytic
bridges. Finite Goldbach coverage below the cutoff is not a conclusion. -/
theorem goldbachCount_pos_above_of_coarse_theta_and_two_arc_bridges
    (hθ : GoldbachThetaCoarseEstimates)
    (hbudget : ∀ N, goldbachThetaConservativeCutoff ≤ N → Even N →
      goldbachFrequencyMajorErrorBudget 2 N
        (goldbachTwoArcReducedPrefixBound ((N + 1 : ℝ) / 100)) ≤
          goldbachTwoArcRationalBudget (N + 1 : ℝ) ((N + 1 : ℝ) / 100))
    (hmodel : ∀ N, goldbachThetaConservativeCutoff ≤ N → Even N →
      13 * (N + 1 : ℝ) / 9 ≤ (goldbachProgressionArcModelMajorSum 2 N).re)
    (hminor : ∀ N, goldbachThetaConservativeCutoff ≤ N → Even N →
      -((N + 1 : ℝ) / 2) ≤ (goldbachRationalMinorContribution 2 N).re) :
    ∀ N, goldbachThetaConservativeCutoff ≤ N → Even N → 0 < goldbachCount N := by
  intro N hN heven
  exact goldbachCount_pos_of_coarse_theta_and_two_arc_bridges hθ hN heven
    (hbudget N hN heven) (hmodel N hN heven) (hminor N hN heven)

end
end GRWTSK.NumberTheory.Primes.GoldbachThetaExplicitCutoff
