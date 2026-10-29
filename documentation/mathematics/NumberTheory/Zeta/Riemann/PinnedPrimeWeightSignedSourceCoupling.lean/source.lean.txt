/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT.
Mathlib results retain upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.PinnedPrimeWeightEnvelopeCollapse
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

/-!
# Immutable signed source coupling for the pinned prime-weight route

The preceding packets isolated the exact required-capacity ratio.  This module
places a strictly stronger source-facing interface in front of that ratio.

One immutable rule carries a signed response, a signed residual, source
metadata, and an exact next-octave identity

  thetaError(v)
    = response(j,v) / dyadicScale(j)
      + signedResidual(j,v).If the response is bounded by a fixed multiple of the actual pinned amplitude
square and the complete signed residual is already at the descended scale, the
rule supplies the guard-free Bertrand ratio condition.  The existing transport
then yields the quadratic recurrence and one threshold descent.

The metadata strings are provenance records only.  The exact identity is a
proof field.  This module does not construct an explicit-formula, detector, or
safe-shift rule and does not prove either analytic bound.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
IMMUTABLE_SIGNED_SOURCE_RULE_DEFINED /
POINTWISE_SIGNED_SUPPLIER_DEFINED /
SIGNED_COUPLING_TO_RATIO_DEFINED /
SIGNED_COUPLING_TO_RECURRENCE_DEFINED /
ACTUAL_ARITHMETIC_SOURCE_RULE_OPEN / NO_RH_CLAIM.
-/

namespace GRWTSK.RiemannHypothesis

open GRWTSK.NumberTheory.VonMangoldt.DyadicDiscrepancy

/-- One immutable signed cross-scale source law.  The strings bind the declared
source and normalization, while `exactIdentity` is the mathematical content. -/
structure PinnedPrimeWeightSignedSourceRule where
  sourceIdentity : String
  normalization : String
  invalidationKey : String
  response : ℕ → ℝ → ℝ
  signedResidual : ℕ → ℝ → ℝ
  exactIdentity :
    ∀ j : ℕ, ∀ v ∈ pinnedPrimeWeightNextOctave j,
      thetaError v =
        response j v / (dyadicScale j : ℝ) +
          signedResidual j v

namespace PinnedPrimeWeightSignedSourceRule

/-- The exact signed identity gives the elementary triangle-inequality target
bound before any response-capacity or residual-decay estimate is inserted. -/
theorem target_le_response_add_residual
    (rule : PinnedPrimeWeightSignedSourceRule)
    {j : ℕ} {v : ℝ}
    (hv : v ∈ pinnedPrimeWeightNextOctave j) :
    |thetaError v| + 1 ≤
      |rule.response j v| / (dyadicScale j : ℝ) +
        (|rule.signedResidual j v| + 1) := by
  have hX : (0 : ℝ) < (dyadicScale j : ℝ) := by
    exact_mod_cast GRWTSK.NumberTheory.VonMangoldt.DyadicMellinConvergence.dyadicScale_pos j
  calc
    |thetaError v| + 1 =
        |rule.response j v / (dyadicScale j : ℝ) +
            rule.signedResidual j v| + 1 := by
      rw [rule.exactIdentity j v hv]
    _ ≤
        (|rule.response j v / (dyadicScale j : ℝ)| +
          |rule.signedResidual j v|) + 1 := by
      exact add_le_add (abs_add_le _ _) le_rfl
    _ =
        |rule.response j v| / (dyadicScale j : ℝ) +
          (|rule.signedResidual j v| + 1) := by
      rw [abs_div, abs_of_pos hX]
      ring

/-- A quadratic response bound and a complete residual allowance imply the
pointwise pinned amplitude requirement. -/
theorem pointwise_to_amplitudeRequirement
    (rule : PinnedPrimeWeightSignedSourceRule)
    {j : ℕ} {C v E : ℝ}
    (hv : v ∈ pinnedPrimeWeightNextOctave j)
    (hresponse :
      |rule.response j v| ≤
        C * (pinnedPrimeWeightedAmplitude (dyadicScale j))^2)
    (hresidual :
      |rule.signedResidual j v| + 1 ≤ E) :
    pinnedPrimeWeightAmplitudeRequirement
      (dyadicScale j) C v E := by
  have hX : (0 : ℝ) < (dyadicScale j : ℝ) := by
    exact_mod_cast GRWTSK.NumberTheory.VonMangoldt.DyadicMellinConvergence.dyadicScale_pos j
  have htarget := rule.target_le_response_add_residual hv
  have hgap :
      (|thetaError v| + 1) - E ≤
        |rule.response j v| / (dyadicScale j : ℝ) := by
    linarith
  unfold pinnedPrimeWeightAmplitudeRequirement
  calc
    (dyadicScale j : ℝ) * ((|thetaError v| + 1) - E)
        ≤ (dyadicScale j : ℝ) *
            (|rule.response j v| / (dyadicScale j : ℝ)) :=
      mul_le_mul_of_nonneg_left hgap hX.le
    _ = |rule.response j v| := by
      field_simp [hX.ne']
    _ ≤ C * (pinnedPrimeWeightedAmplitude (dyadicScale j))^2 :=
      hresponse

/-- With a nonnegative coefficient budget, the same signed source data gives
the exact guard-free ratio condition isolated by the preceding packets. -/
theorem pointwise_to_bertrandRatioRequirement
    (rule : PinnedPrimeWeightSignedSourceRule)
    {j : ℕ} {C v E : ℝ}
    (hC : 0 ≤ C)
    (hv : v ∈ pinnedPrimeWeightNextOctave j)
    (hresponse :
      |rule.response j v| ≤
        C * (pinnedPrimeWeightedAmplitude (dyadicScale j))^2)
    (hresidual :
      |rule.signedResidual j v| + 1 ≤ E) :
    pinnedPrimeWeightBertrandRatioRequirement
      (dyadicScale j) C v E := by
  exact
    (pinnedPrimeWeightAmplitudeRequirement_iff_bertrandRatioRequirement
      (X := dyadicScale j) (C := C) (v := v) (E := E)
      (GRWTSK.NumberTheory.VonMangoldt.DyadicMellinConvergence.dyadicScale_pos j) hC).1
      (rule.pointwise_to_amplitudeRequirement
        hv hresponse hresidual)

end PinnedPrimeWeightSignedSourceRule

/-- Variable-budget signed source criterion.  The rule is fixed before every
quantifier; the response budget may depend on `eta`, exactly as in the existing
variable Bertrand-ratio criterion. -/
def PinnedPrimeWeightSignedSourceCouplingCriterionAt
    (rule : PinnedPrimeWeightSignedSourceRule)
    (ρ : ℝ) : Prop :=
  ∀ η : ℝ, 0 < η →
    ∃ C : ℝ, 0 ≤ C ∧
    ∃ R : ℝ, 0 ≤ R ∧
    ∃ j₀ : ℕ,
      ∀ j ≥ j₀,
        (∀ v ∈ pinnedPrimeWeightNextOctave j,
          |rule.response j v| ≤
            C * (pinnedPrimeWeightedAmplitude (dyadicScale j))^2) ∧
        (∀ v ∈ pinnedPrimeWeightNextOctave j,
          |rule.signedResidual j v| + 1 ≤
            pinnedPrimeWeightStageErrorEnvelope j R ρ η)

/-- Fixed-budget signed source criterion.  The coefficient budget is selected
before the `eta` quantifier, matching the fixed Bertrand-ratio endpoint. -/
def PinnedPrimeWeightFixedSignedSourceCouplingCriterionAt
    (rule : PinnedPrimeWeightSignedSourceRule)
    (C ρ : ℝ) : Prop :=
  0 ≤ C ∧
  ∀ η : ℝ, 0 < η →
    ∃ R : ℝ, 0 ≤ R ∧
    ∃ j₀ : ℕ,
      ∀ j ≥ j₀,
        (∀ v ∈ pinnedPrimeWeightNextOctave j,
          |rule.response j v| ≤
            C * (pinnedPrimeWeightedAmplitude (dyadicScale j))^2) ∧
        (∀ v ∈ pinnedPrimeWeightNextOctave j,
          |rule.signedResidual j v| + 1 ≤
            pinnedPrimeWeightStageErrorEnvelope j R ρ η)

/-- A variable-budget signed source supplier constructs the corresponding
Bertrand-ratio criterion. -/
theorem pinnedPrimeWeightSignedSourceCouplingCriterion_to_bertrandRatioCriterion
    {rule : PinnedPrimeWeightSignedSourceRule} {ρ : ℝ}
    (hcriterion :
      PinnedPrimeWeightSignedSourceCouplingCriterionAt rule ρ) :
    PinnedPrimeWeightBertrandRatioCriterionAt ρ := by
  intro η hη
  obtain ⟨C, hC, R, hR, j₀, hstages⟩ :=
    hcriterion η hη
  refine ⟨C, hC, R, hR, j₀, ?_⟩
  intro j hj v hv
  obtain ⟨hresponse, hresidual⟩ := hstages j hj
  exact
    rule.pointwise_to_bertrandRatioRequirement
      hC hv (hresponse v hv) (hresidual v hv)

/-- A fixed signed source supplier constructs the fixed Bertrand-ratio
criterion with the same coefficient budget. -/
theorem pinnedPrimeWeightFixedSignedSourceCouplingCriterion_to_fixedBertrandRatioCriterion
    {rule : PinnedPrimeWeightSignedSourceRule}
    {C ρ : ℝ}
    (hcriterion :
      PinnedPrimeWeightFixedSignedSourceCouplingCriterionAt
        rule C ρ) :
    PinnedPrimeWeightFixedBertrandRatioCriterionAt C ρ := by
  refine ⟨hcriterion.1, ?_⟩
  intro η hη
  obtain ⟨R, hR, j₀, hstages⟩ :=
    hcriterion.2 η hη
  refine ⟨R, hR, j₀, ?_⟩
  intro j hj v hv
  obtain ⟨hresponse, hresidual⟩ := hstages j hj
  exact
    rule.pointwise_to_bertrandRatioRequirement
      hcriterion.1 hv (hresponse v hv) (hresidual v hv)

/-- The fixed signed source criterion supplies the existing quadratic source
recurrence through the exact ratio interface. -/
theorem pinnedPrimeWeightFixedSignedSourceCouplingCriterion_to_recurrence
    {rule : PinnedPrimeWeightSignedSourceRule}
    {C ρ : ℝ}
    (hcriterion :
      PinnedPrimeWeightFixedSignedSourceCouplingCriterionAt
        rule C ρ) :
    QuadraticThetaSourceRecurrenceAt ρ :=
  pinnedPrimeWeightFixedBertrandRatioCriterion_to_recurrence
    (pinnedPrimeWeightFixedSignedSourceCouplingCriterion_to_fixedBertrandRatioCriterion
      hcriterion)

/-- In the admitted threshold range, the fixed signed source criterion supplies
one quadratic threshold descent. -/
theorem pinnedPrimeWeightFixedSignedSourceCouplingCriterion_to_descent
    {rule : PinnedPrimeWeightSignedSourceRule}
    {C ρ : ℝ}
    (hρ : (3 : ℝ) / 4 ≤ ρ)
    (hcriterion :
      PinnedPrimeWeightFixedSignedSourceCouplingCriterionAt
        rule C ρ) :
    QuadraticThetaDescentAt ρ :=
  pinnedPrimeWeightFixedBertrandRatioCriterion_to_descent hρ
    (pinnedPrimeWeightFixedSignedSourceCouplingCriterion_to_fixedBertrandRatioCriterion
      hcriterion)

end GRWTSK.RiemannHypothesis
