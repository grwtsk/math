/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT.
Mathlib results retain upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.PrimeThetaFeatureNormBudget
import GRWTSK.NumberTheory.Zeta.Riemann.PinnedVonMangoldtCoefficientSource
import Mathlib.NumberTheory.Chebyshev
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Pinned dyadic von Mangoldt prime-weight feature

On the literal prime window `(X,2X]`, the repository coefficient is

  coefficient(p) = Lambda(p) / p = log(p) / p.

The pinned Chebyshev upper bound gives the scale-uniform estimate

  sum_{X<p<=2X, p prime} log(p)/p <= 2 log 4.

This supplies an actual source feature and an independently proved `l1` norm
certificate for the feature-norm criterion.  A one-factor stage then has exact
response

  c(v) * (sum_p coefficient(p) * (|thetaError(p)|+1))^2.

The source majorization of the next theta error, the target coefficient
construction, and the descended residual remain open.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
PINNED_PRIME_WEIGHT_L1_BOUND_DEFINED /
CONCRETE_RANK_ONE_FEATURE_DEFINED /
CONCRETE_FEATURE_CERTIFICATE_DEFINED /
SOURCE_MAJORANT_OPEN / NO_RH_CLAIM.
-/

namespace GRWTSK.RiemannHypothesis

open Chebyshev
open GRWTSK.NumberTheory.VonMangoldt.DyadicDiscrepancy

/-- The complete `l1` mass of the literal prime coefficients on `(X,2X]`. -/
def primeCoefficientL1 (X : ℕ) : ℝ :=
  ∑ p ∈ thetaPrimeWindow X, |coefficient p|

/-- Every label in the selected source window is prime. -/
theorem thetaPrimeWindow_prime
    {X p : ℕ} (hp : p ∈ thetaPrimeWindow X) :
    p.Prime := by
  change p ∈ (window X).filter Nat.Prime at hp
  exact (Finset.mem_filter.mp hp).2

/-- The literal prime window is contained in the complete prime set up to
`2X`. -/
theorem thetaPrimeWindow_subset_primesLE_two_mul (X : ℕ) :
    thetaPrimeWindow X ⊆ Nat.primesLE (2 * X) := by
  intro p hp
  change p ∈ (window X).filter Nat.Prime at hp
  rcases Finset.mem_filter.mp hp with ⟨hpWindow, hpPrime⟩
  exact Nat.mem_primesLE.mpr
    ⟨window_upper hpWindow, hpPrime⟩

/-- On a selected prime, the literal repository coefficient is `log(p)/p`. -/
theorem primeCoefficient_eq_log_div
    {X p : ℕ} (hp : p ∈ thetaPrimeWindow X) :
    coefficient p =
      Real.log (p : ℝ) / (p : ℝ) := by
  have hpPrime := thetaPrimeWindow_prime hp
  unfold coefficient mangoldt
  rw [ArithmeticFunction.vonMangoldt_apply_prime hpPrime]

/-- The selected prime coefficients are nonnegative. -/
theorem primeCoefficient_nonnegative
    {X p : ℕ} (hp : p ∈ thetaPrimeWindow X) :
    0 ≤ coefficient p := by
  rw [primeCoefficient_eq_log_div hp]
  have hpPrime := thetaPrimeWindow_prime hp
  exact div_nonneg
    (Real.log_nonneg (by exact_mod_cast hpPrime.one_le))
    (by positivity)

/-- The absolute-value sum is the literal logarithmic prime-weight sum. -/
theorem primeCoefficientL1_eq_log_div_sum (X : ℕ) :
    primeCoefficientL1 X =
      ∑ p ∈ thetaPrimeWindow X,
        Real.log (p : ℝ) / (p : ℝ) := by
  unfold primeCoefficientL1
  apply Finset.sum_congr rfl
  intro p hp
  rw [abs_of_nonneg (primeCoefficient_nonnegative hp),
    primeCoefficient_eq_log_div hp]

/-- The logarithmic mass of the dyadic prime window is bounded by the full
Chebyshev theta value at `2X`. -/
theorem thetaPrimeWindow_sum_log_le_theta_two_mul (X : ℕ) :
    (∑ p ∈ thetaPrimeWindow X, Real.log (p : ℝ)) ≤
      Chebyshev.theta ((2 * X : ℕ) : ℝ) := by
  rw [Chebyshev.theta_eq_sum_primesLE_log]
  exact
    Finset.sum_le_sum_of_subset_of_nonneg
      (thetaPrimeWindow_subset_primesLE_two_mul X)
      (fun p hp _ =>
        Real.log_nonneg (by
          exact_mod_cast (Nat.one_lt_of_mem_primesLE hp).le))

/-- Uniform non-PNT bound for the actual prime coefficient feature. -/
theorem primeCoefficientL1_le_two_log_four
    {X : ℕ} (hX : 0 < X) :
    primeCoefficientL1 X ≤ 2 * Real.log 4 := by
  rw [primeCoefficientL1_eq_log_div_sum]
  have hXr : (0 : ℝ) < (X : ℝ) := by
    exact_mod_cast hX
  calc
    (∑ p ∈ thetaPrimeWindow X,
        Real.log (p : ℝ) / (p : ℝ))
        ≤ ∑ p ∈ thetaPrimeWindow X,
            Real.log (p : ℝ) / (X : ℝ) := by
          apply Finset.sum_le_sum
          intro p hp
          have hpPrime := thetaPrimeWindow_prime hp
          have hpOctave := thetaPrimeWindow_mem_octave hp
          have hlog : 0 ≤ Real.log (p : ℝ) :=
            Real.log_nonneg (by exact_mod_cast hpPrime.one_le)
          have hpPos : (0 : ℝ) < (p : ℝ) := by
            exact_mod_cast hpPrime.pos
          exact div_le_div_of_nonneg_left
            hlog hXr hpOctave.1
    _ = (∑ p ∈ thetaPrimeWindow X,
          Real.log (p : ℝ)) / (X : ℝ) := by
          rw [Finset.sum_div]
    _ ≤ Chebyshev.theta ((2 * X : ℕ) : ℝ) /
          (X : ℝ) :=
      div_le_div_of_nonneg_right
        (thetaPrimeWindow_sum_log_le_theta_two_mul X)
        hXr.le
    _ ≤ (Real.log 4 * (((2 * X : ℕ) : ℝ))) /
          (X : ℝ) :=
      div_le_div_of_nonneg_right
        (Chebyshev.theta_le_log4_mul_x (by positivity))
        hXr.le
    _ = 2 * Real.log 4 := by
      push_cast
      field_simp [hXr.ne']

/-- Canonical constant used for both one-dimensional feature budgets. -/
def primeCoefficientL1Budget : ℝ :=
  2 * Real.log 4

theorem primeCoefficientL1Budget_nonnegative :
    0 ≤ primeCoefficientL1Budget := by
  unfold primeCoefficientL1Budget
  exact mul_nonneg (by norm_num)
    (Real.log_nonneg (by norm_num))

/-- Current-octave statistic associated to the pinned prime coefficient. -/
def pinnedPrimeWeightedAmplitude (X : ℕ) : ℝ :=
  ∑ p ∈ thetaPrimeWindow X,
    coefficient p * (|thetaError (p : ℝ)| + 1)

/-- One concrete rank-one source feature stage.  The target coefficient and
residual remain explicit inputs. -/
def pinnedPrimeWeightStage
    (X : ℕ)
    (targetCoefficient residual : ℝ → ℝ)
    (hresidual : ∀ v, 0 ≤ residual v) :
    PrimeThetaSeparableKernelStage X where
  sourceIdentity :=
    "Mathlib.ArithmeticFunction.vonMangoldt / literal dyadic prime window"
  normalization := "Lambda(p)/p = log(p)/p on primes"
  invalidationKey :=
    "mathlib db584cd6d46c92f209a44c0f1c829460d327499d"
  factorIndex := {0}
  coefficient := fun v _ => targetCoefficient v
  leftFeature := fun _ p =>
    GRWTSK.NumberTheory.VonMangoldt.DyadicDiscrepancy.coefficient p
  rightFeature := fun _ p =>
    GRWTSK.NumberTheory.VonMangoldt.DyadicDiscrepancy.coefficient p
  residual := residual
  residual_nonnegative := hresidual

@[simp]
theorem pinnedPrimeWeightStage_leftFeature
    (X : ℕ) (targetCoefficient residual : ℝ → ℝ)
    (hresidual : ∀ v, 0 ≤ residual v)
    (r p : ℕ) :
    (pinnedPrimeWeightStage X targetCoefficient residual hresidual).leftFeature r p = coefficient p := by
  rfl

@[simp]
theorem pinnedPrimeWeightStage_rightFeature
    (X : ℕ) (targetCoefficient residual : ℝ → ℝ)
    (hresidual : ∀ v, 0 ≤ residual v)
    (r p : ℕ) :
    (pinnedPrimeWeightStage X targetCoefficient residual hresidual).rightFeature r p = coefficient p := by
  rfl

/-- Exact rank-one factorization of the induced response. -/
theorem pinnedPrimeWeightStage_response_eq
    (X : ℕ)
    (targetCoefficient residual : ℝ → ℝ)
    (hresidual : ∀ v, 0 ≤ residual v)
    (v : ℝ) :
    (pinnedPrimeWeightStage X targetCoefficient residual hresidual).toKernelStage.response v =
      targetCoefficient v * (pinnedPrimeWeightedAmplitude X)^2 := by
  unfold PrimeThetaQuadraticKernelStage.response
    PrimeThetaSeparableKernelStage.toKernelStage
    PrimeThetaSeparableKernelStage.inducedKernel
    pinnedPrimeWeightStage pinnedPrimeWeightedAmplitude
  simp only [Finset.sum_singleton]
  calc
    (∑ p ∈ thetaPrimeWindow X,
        ∑ q ∈ thetaPrimeWindow X,
          targetCoefficient v * coefficient p * coefficient q *
            (|thetaError (p : ℝ)| + 1) *
            (|thetaError (q : ℝ)| + 1))
        = ∑ p ∈ thetaPrimeWindow X,
            (targetCoefficient v *
              (coefficient p * (|thetaError (p : ℝ)| + 1))) *
              (∑ q ∈ thetaPrimeWindow X,
                coefficient q * (|thetaError (q : ℝ)| + 1)) := by
          apply Finset.sum_congr rfl
          intro p hp
          rw [Finset.mul_sum]
          apply Finset.sum_congr rfl
          intro q hq
          ring
    _ = (∑ p ∈ thetaPrimeWindow X,
            targetCoefficient v *
              (coefficient p * (|thetaError (p : ℝ)| + 1))) *
          (∑ q ∈ thetaPrimeWindow X,
            coefficient q * (|thetaError (q : ℝ)| + 1)) := by
          rw [Finset.sum_mul]
    _ = targetCoefficient v *
          (∑ p ∈ thetaPrimeWindow X,
            coefficient p * (|thetaError (p : ℝ)| + 1)) *
          (∑ q ∈ thetaPrimeWindow X,
            coefficient q * (|thetaError (q : ℝ)| + 1)) := by
          rw [← Finset.mul_sum]
    _ = targetCoefficient v *
          (∑ p ∈ thetaPrimeWindow X,
            coefficient p * (|thetaError (p : ℝ)| + 1)) ^ 2 := by
          ring

/-- Concrete proof-relevant feature norm certificate. -/
def pinnedPrimeWeightNormCertificate
    {X : ℕ} (hX : 0 < X)
    (targetCoefficient residual : ℝ → ℝ)
    (hresidual : ∀ v, 0 ≤ residual v) :
    PrimeThetaFeatureNormCertificate
      (pinnedPrimeWeightStage X targetCoefficient residual hresidual) where
  leftBudget := fun _ => primeCoefficientL1Budget
  rightBudget := fun _ => primeCoefficientL1Budget
  leftBudget_nonnegative := fun _ =>
    primeCoefficientL1Budget_nonnegative
  rightBudget_nonnegative := fun _ =>
    primeCoefficientL1Budget_nonnegative
  leftL1_le := by
    intro r hr
    simpa [PrimeThetaSeparableKernelStage.leftFeatureL1,
      pinnedPrimeWeightStage, primeCoefficientL1, primeCoefficientL1Budget] using
      (primeCoefficientL1_le_two_log_four hX)
  rightL1_le := by
    intro r hr
    simpa [PrimeThetaSeparableKernelStage.rightFeatureL1,
      pinnedPrimeWeightStage, primeCoefficientL1, primeCoefficientL1Budget] using
      (primeCoefficientL1_le_two_log_four hX)

/-- The certified feature budget has one exact scalar term. -/
theorem pinnedPrimeWeightStage_certifiedFeatureBudget_eq
    {X : ℕ} (hX : 0 < X)
    (targetCoefficient residual : ℝ → ℝ)
    (hresidual : ∀ v, 0 ≤ residual v)
    (v : ℝ) :
    (pinnedPrimeWeightStage X targetCoefficient residual hresidual).certifiedFeatureBudget
          (pinnedPrimeWeightNormCertificate hX
            targetCoefficient residual hresidual) v =
      |targetCoefficient v| * primeCoefficientL1Budget^2 := by
  simp [PrimeThetaSeparableKernelStage.certifiedFeatureBudget,
    pinnedPrimeWeightStage, pinnedPrimeWeightNormCertificate,
    pow_two, mul_assoc]

/-- A uniform target-coefficient bound gives a uniform certified feature
budget for the concrete pinned source family. -/
theorem pinnedPrimeWeightStage_certifiedFeatureBudget_le
    {X : ℕ} (hX : 0 < X)
    (targetCoefficient residual : ℝ → ℝ)
    (hresidual : ∀ v, 0 ≤ residual v)
    {C v : ℝ} (hC : |targetCoefficient v| ≤ C) :
    (pinnedPrimeWeightStage X targetCoefficient residual hresidual).certifiedFeatureBudget
          (pinnedPrimeWeightNormCertificate hX
            targetCoefficient residual hresidual) v ≤
      C * primeCoefficientL1Budget^2 := by
  rw [pinnedPrimeWeightStage_certifiedFeatureBudget_eq hX]
  exact mul_le_mul_of_nonneg_right hC (sq_nonneg _)

/-- Narrow source criterion after fixing the prime features and their uniform
one-dimensional norm certificate. -/
def PinnedPrimeWeightCriterionAt (ρ : ℝ) : Prop :=
  ∀ η : ℝ, 0 < η →
    ∃ C : ℝ, 0 ≤ C ∧
    ∃ R : ℝ, 0 ≤ R ∧
    ∃ j₀ : ℕ,
      ∀ j ≥ j₀,
        ∃ targetCoefficient residual : ℝ → ℝ,
          (∀ v, 0 ≤ residual v) ∧
          (∀ v ∈
              Set.Icc ((dyadicScale (j + 1) : ℕ) : ℝ)
                (((2 * dyadicScale (j + 1) : ℕ) : ℝ)),
            |targetCoefficient v| ≤ C) ∧
          (∀ v ∈
              Set.Icc ((dyadicScale (j + 1) : ℕ) : ℝ)
                (((2 * dyadicScale (j + 1) : ℕ) : ℝ)),
            residual v ≤
              R * Real.rpow (dyadicScale j : ℝ)
                (quadraticThreshold ρ + η / 2)) ∧
          (∀ v ∈
              Set.Icc ((dyadicScale (j + 1) : ℕ) : ℝ)
                (((2 * dyadicScale (j + 1) : ℕ) : ℝ)),
            |thetaError v| + 1 ≤
              |targetCoefficient v *
                (pinnedPrimeWeightedAmplitude (dyadicScale j))^2| /
                  (dyadicScale j : ℝ) +
                residual v)

/-- The concrete pinned prime-weight criterion constructs the generic
feature-norm criterion. -/
theorem pinnedPrimeWeightCriterion_to_featureNormCriterion
    {ρ : ℝ}
    (hcriterion : PinnedPrimeWeightCriterionAt ρ) :
    PrimeThetaFeatureNormCriterionAt ρ := by
  intro η hη
  obtain ⟨C, hC, R, hR, j₀, hstages⟩ :=
    hcriterion η hη
  let K : ℝ := C * primeCoefficientL1Budget^2
  have hK : 0 ≤ K := by
    dsimp [K]
    exact mul_nonneg hC (sq_nonneg _)
  refine ⟨K, hK, R, hR, j₀, ?_⟩
  intro j hj
  obtain ⟨targetCoefficient, residual, hresidual,
      hcoefficient, hresidualBound, hsource⟩ :=
    hstages j hj
  let stage :=
    pinnedPrimeWeightStage (dyadicScale j)
      targetCoefficient residual hresidual
  let certificate :=
    pinnedPrimeWeightNormCertificate
      (GRWTSK.NumberTheory.VonMangoldt.DyadicMellinConvergence.dyadicScale_pos j) targetCoefficient residual hresidual
  refine ⟨stage, certificate, ?_, ?_, ?_⟩
  · intro v hv
    have hcv := hcoefficient v hv
    calc
      stage.certifiedFeatureBudget certificate v
          = |targetCoefficient v| *
              primeCoefficientL1Budget^2 := by
            simpa [stage, certificate] using
              (pinnedPrimeWeightStage_certifiedFeatureBudget_eq
                (GRWTSK.NumberTheory.VonMangoldt.DyadicMellinConvergence.dyadicScale_pos j) targetCoefficient residual
                hresidual v)
      _ ≤ C * primeCoefficientL1Budget^2 :=
        mul_le_mul_of_nonneg_right hcv (sq_nonneg _)
      _ = K := rfl
  · intro v hv
    exact hresidualBound v hv
  · intro v hv
    have h := hsource v hv
    have hresponse :
        stage.toKernelStage.response v =
          targetCoefficient v *
            (pinnedPrimeWeightedAmplitude (dyadicScale j))^2 := by
      simpa [stage] using
        (pinnedPrimeWeightStage_response_eq
          (dyadicScale j) targetCoefficient residual
          hresidual v)
    change |thetaError v| + 1 ≤ |stage.toKernelStage.response v| /
      (dyadicScale j : ℝ) + residual v
    rw [hresponse, abs_mul, abs_of_nonneg
      (sq_nonneg (pinnedPrimeWeightedAmplitude (dyadicScale j)))]
    simpa only [abs_mul, abs_of_nonneg
      (sq_nonneg (pinnedPrimeWeightedAmplitude (dyadicScale j)))] using h

/-- The pinned source criterion supplies the existing nonlinear recurrence. -/
theorem pinnedPrimeWeightCriterion_to_recurrence
    {ρ : ℝ}
    (hcriterion : PinnedPrimeWeightCriterionAt ρ) :
    QuadraticThetaSourceRecurrenceAt ρ :=
  primeThetaFeatureNormCriterion_to_recurrence
    (pinnedPrimeWeightCriterion_to_featureNormCriterion hcriterion)

/-- In the admitted threshold range the same concrete criterion supplies one
quadratic threshold descent. -/
theorem pinnedPrimeWeightCriterion_to_descent
    {ρ : ℝ}
    (hρ : (3 : ℝ) / 4 ≤ ρ)
    (hcriterion : PinnedPrimeWeightCriterionAt ρ) :
    QuadraticThetaDescentAt ρ :=
  primeThetaFeatureNormCriterion_to_descent hρ
    (pinnedPrimeWeightCriterion_to_featureNormCriterion hcriterion)

end GRWTSK.RiemannHypothesis
