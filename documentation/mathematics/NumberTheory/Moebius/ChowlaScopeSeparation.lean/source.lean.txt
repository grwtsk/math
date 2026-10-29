/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Imported project and Mathlib results retain their original credits/licenses.
Status: LITERATURE_REVIEWED / SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Owners: #441 / #439 / #430 / #437 / #410 / #89 / #334.
-/
import GRWTSK.NumberTheory.Moebius.EndpointInformationLossConnections
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.NormNum
import Lean.Elab.Tactic.Omega

/-!
# Chowla scope separation

This module advances one bounded connection from the endpoint-information-loss
atlas.  It distinguishes control at one terminal horizon from control of every
prefix, and pointwise parameter-dependent constants from one uniform constant.

For an arbitrary growing family of finite sequences, the complete all-prefix
bound is proved exactly equivalent to the corresponding prefix-maximum bound.
For the actual two-point Möbius family, a uniform maximal bound is also shown to
pay a complete summed maximal-energy bound with the explicit cardinality cost.

The actual source witness at shift one and horizon two remains a hostile
counterexample to terminal-only recovery.  A separate natural-number fixture
proves that `forall parameter, exists constant` cannot be exchanged with
`exists constant, forall parameter` by logic alone.

No Chowla estimate, growing-shift uniformity theorem, higher-order theorem,
subpolynomial energy estimate, or Riemann-hypothesis premise is proved.  All
proof scripts await exact-head Lean elaboration and transitive trust review.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.CCC.ChowlaScope

open scoped BigOperators
open EndpointConnections

/-- At horizon `T`, every active family member is controlled at every included
prefix `N ≤ T`.  The activity predicate may grow with the horizon. -/
def FamilyAllPrefixBound {ι : Type*}
    (a : ι → ℕ → ℝ) (active : ℕ → ι → Prop)
    (B : ℕ → ℝ) : Prop :=
  ∀ T i N, active T i → N ≤ T → |finitePrefix (a i) N| ≤ B T

/-- At horizon `T`, every active family member has its complete finite prefix
maximum controlled by `B T`. -/
def FamilyPrefixMaxBound {ι : Type*}
    (a : ι → ℕ → ℝ) (active : ℕ → ι → Prop)
    (B : ℕ → ℝ) : Prop :=
  ∀ T i, active T i → finitePrefixMax (a i) T ≤ B T

/-- Complete all-prefix family control supplies the matching family maximal
bound without any limiting argument or monotonicity assumption. -/
theorem familyPrefixMaxBound_of_allPrefixBound
    {ι : Type*} {a : ι → ℕ → ℝ}
    {active : ℕ → ι → Prop} {B : ℕ → ℝ}
    (hbound : FamilyAllPrefixBound a active B) :
    FamilyPrefixMaxBound a active B := by
  intro T i hactive
  unfold finitePrefixMax
  exact (partialSups_le_iff).2
    (fun N hNT => hbound T i N hactive hNT)

/-- A family maximal bound controls every included prefix. -/
theorem familyAllPrefixBound_of_prefixMaxBound
    {ι : Type*} {a : ι → ℕ → ℝ}
    {active : ℕ → ι → Prop} {B : ℕ → ℝ}
    (hmax : FamilyPrefixMaxBound a active B) :
    FamilyAllPrefixBound a active B := by
  intro T i N hactive hNT
  exact
    (abs_finitePrefix_le_max (a := a i) hNT).trans
      (hmax T i hactive)

/-- Exact finite equivalence between complete all-prefix control and a prefix
maximum for the same family, activity predicate, horizon, and budget. -/
theorem familyPrefixMaxBound_iff_allPrefixBound
    {ι : Type*} {a : ι → ℕ → ℝ}
    {active : ℕ → ι → Prop} {B : ℕ → ℝ} :
    FamilyPrefixMaxBound a active B ↔
      FamilyAllPrefixBound a active B :=
  ⟨familyAllPrefixBound_of_prefixMaxBound,
    familyPrefixMaxBound_of_allPrefixBound⟩

/-- Positive shifts active below a scale-dependent range. -/
def growingShiftActive
    (range : ℕ → ℕ) (T h : ℕ) : Prop :=
  1 ≤ h ∧ h ≤ range T

/-- The complete all-prefix version of growing-shift two-point Möbius control. -/
def GrowingShiftTwoPointAllPrefixBound
    (range : ℕ → ℕ) (B : ℕ → ℝ) : Prop :=
  FamilyAllPrefixBound twoPointMobiusSequence
    (growingShiftActive range) B

/-- Growing-shift maximal control is exactly complete all-prefix control for the
same range and budget.  This does not construct either arithmetic bound. -/
theorem growingShiftTwoPointMaximalBound_iff_allPrefixBound
    (range : ℕ → ℕ) (B : ℕ → ℝ) :
    GrowingShiftTwoPointMaximalBound range B ↔
      GrowingShiftTwoPointAllPrefixBound range B := by
  constructor
  · intro hmax T h N hactive hNT
    exact
      (abs_finitePrefix_le_max
        (a := twoPointMobiusSequence h) hNT).trans
        (hmax T h hactive.1 hactive.2)
  · intro hall
    have hfamily :
        FamilyPrefixMaxBound twoPointMobiusSequence
          (growingShiftActive range) B :=
      familyPrefixMaxBound_of_allPrefixBound hall
    intro T h hh hrange
    exact hfamily T h ⟨hh, hrange⟩

/-- Explicit cardinality budget produced by one uniform maximal bound. -/
def shiftCardinalitySquareBudget
    (range : ℕ → ℕ) (B : ℕ → ℝ) (T : ℕ) : ℝ :=
  ((Finset.Icc 1 (range T)).card : ℝ) * B T ^ 2

/-- Uniform maximal control pays the complete summed shift energy with the
literal number of active shifts.  No subpolynomial estimate is inferred. -/
theorem summedShiftMaximalEnergyBound_of_uniformMaximal
    {range : ℕ → ℕ} {B : ℕ → ℝ}
    (hB : ∀ T, 0 ≤ B T)
    (hmax : GrowingShiftTwoPointMaximalBound range B) :
    SummedShiftMaximalEnergyBound range
      (shiftCardinalitySquareBudget range B) := by
  intro T
  calc
    (∑ h ∈ Finset.Icc 1 (range T),
        finitePrefixMax (twoPointMobiusSequence h) T ^ 2) ≤
      ∑ _h ∈ Finset.Icc 1 (range T), B T ^ 2 := by
        apply Finset.sum_le_sum
        intro h hh
        have hmem := Finset.mem_Icc.mp hh
        have hle := hmax T h hmem.1 hmem.2
        have hnonneg :=
          finitePrefixMax_nonneg (twoPointMobiusSequence h) T
        exact (sq_le_sq₀ hnonneg (hB T)).2 hle
    _ = shiftCardinalitySquareBudget range B T := by
      simp only [Finset.sum_const, nsmul_eq_mul,
        shiftCardinalitySquareBudget]

/-- Complete all-prefix control pays the same explicit summed budget by first
using the exact family maximal equivalence. -/
theorem summedShiftMaximalEnergyBound_of_allPrefix
    {range : ℕ → ℕ} {B : ℕ → ℝ}
    (hB : ∀ T, 0 ≤ B T)
    (hall : GrowingShiftTwoPointAllPrefixBound range B) :
    SummedShiftMaximalEnergyBound range
      (shiftCardinalitySquareBudget range B) :=
  summedShiftMaximalEnergyBound_of_uniformMaximal hB
    ((growingShiftTwoPointMaximalBound_iff_allPrefixBound range B).2 hall)

/-- Terminal control for one finite family at one horizon. -/
def TerminalFamilyBoundAt {ι : Type*}
    (a : ι → ℕ → ℝ) (active : ι → Prop)
    (T : ℕ) (B : ℝ) : Prop :=
  ∀ i, active i → |finitePrefix (a i) T| ≤ B

/-- Prefix-maximal control for the same finite family and horizon. -/
def MaximalFamilyBoundAt {ι : Type*}
    (a : ι → ℕ → ℝ) (active : ι → Prop)
    (T : ℕ) (B : ℝ) : Prop :=
  ∀ i, active i → finitePrefixMax (a i) T ≤ B

/-- At horizon two, the active singleton shift has terminal value zero. -/
theorem actualShiftOneTerminalBoundAtTwo :
    TerminalFamilyBoundAt twoPointMobiusSequence
      (fun h => h = 1) 2 0 := by
  intro h hh
  subst h
  rw [finitePrefix_twoPointMobiusSequence_eq,
    LogarithmicSampling.mertensTwoPointPrefix_one_two_eq_zero, abs_zero]

/-- The same singleton family does not have zero maximal-prefix budget. -/
theorem actualShiftOneNoZeroMaximalBoundAtTwo :
    ¬ MaximalFamilyBoundAt twoPointMobiusSequence
      (fun h => h = 1) 2 0 := by
  intro hmax
  apply endpointInformationLossWitness
  refine ⟨0, by norm_num, ?_⟩
  simpa using hmax 1 rfl

/-- The actual source refutes terminal-to-maximal transport at one horizon. -/
theorem actualTerminalFamilyBound_doesNotImplyMaximal :
    ¬ (TerminalFamilyBoundAt twoPointMobiusSequence
        (fun h => h = 1) 2 0 →
      MaximalFamilyBoundAt twoPointMobiusSequence
        (fun h => h = 1) 2 0) := by
  intro htransport
  exact actualShiftOneNoZeroMaximalBoundAtTwo
    (htransport actualShiftOneTerminalBoundAtTwo)

/-- A minimal logical model of parameter-dependent constants. -/
def ParameterDependentNaturalBound : Prop :=
  ∀ h : ℕ, ∃ C : ℕ, h ≤ C

/-- One natural constant required to dominate every parameter. -/
def UniformParameterNaturalBound : Prop :=
  ∃ C : ℕ, ∀ h : ℕ, h ≤ C

/-- Every individual natural parameter admits a parameter-dependent bound. -/
theorem parameterDependentNaturalBound :
    ParameterDependentNaturalBound := by
  intro h
  exact ⟨h, le_rfl⟩

/-- No single natural number dominates every natural parameter. -/
theorem not_uniformParameterNaturalBound :
    ¬ UniformParameterNaturalBound := by
  rintro ⟨C, hC⟩
  have hbad := hC (C + 1)
  omega

/-- The quantifier exchange `∀h, ∃C_h` to `∃C, ∀h` is invalid without a
uniformity theorem. -/
theorem parameterDependent_doesNotImply_uniform :
    ¬ (ParameterDependentNaturalBound →
      UniformParameterNaturalBound) := by
  intro htransport
  exact not_uniformParameterNaturalBound
    (htransport parameterDependentNaturalBound)

/-- The missing quantifier exchange is represented as a required bridge, not as
an implication. -/
def pointwiseToUniformRequiresBridge :
    TypedConnection ParameterDependentNaturalBound
      UniformParameterNaturalBound :=
  .requires
    (ParameterDependentNaturalBound → UniformParameterNaturalBound)
    (fun h bridge => bridge h)

/-- The actual terminal counterexample is a scoped refutation edge. -/
def actualTerminalRefutesMaximalRecovery :
    TypedConnection
      (TerminalFamilyBoundAt twoPointMobiusSequence
        (fun h => h = 1) 2 0)
      (MaximalFamilyBoundAt twoPointMobiusSequence
        (fun h => h = 1) 2 0) :=
  .refutesAtScope (fun _ => actualShiftOneNoZeroMaximalBoundAtTwo)

/-- Complete growing-shift all-prefix data supplies maximal data. -/
def growingShiftAllPrefixImpliesMaximal
    (range : ℕ → ℕ) (B : ℕ → ℝ) :
    TypedConnection
      (GrowingShiftTwoPointAllPrefixBound range B)
      (GrowingShiftTwoPointMaximalBound range B) :=
  .implies
    ((growingShiftTwoPointMaximalBound_iff_allPrefixBound range B).2)

/-- A nonnegative uniform maximal budget supplies the explicit summed budget. -/
def growingShiftMaximalImpliesCardinalityEnergy
    (range : ℕ → ℕ) (B : ℕ → ℝ)
    (hB : ∀ T, 0 ≤ B T) :
    TypedConnection
      (GrowingShiftTwoPointMaximalBound range B)
      (SummedShiftMaximalEnergyBound range
        (shiftCardinalitySquareBudget range B)) :=
  .implies (summedShiftMaximalEnergyBound_of_uniformMaximal hB)

end GRWTSK.RiemannHypothesis.CCC.ChowlaScope

#print axioms GRWTSK.RiemannHypothesis.CCC.ChowlaScope.familyPrefixMaxBound_iff_allPrefixBound
#print axioms GRWTSK.RiemannHypothesis.CCC.ChowlaScope.growingShiftTwoPointMaximalBound_iff_allPrefixBound
#print axioms GRWTSK.RiemannHypothesis.CCC.ChowlaScope.summedShiftMaximalEnergyBound_of_uniformMaximal
#print axioms GRWTSK.RiemannHypothesis.CCC.ChowlaScope.actualTerminalFamilyBound_doesNotImplyMaximal
#print axioms GRWTSK.RiemannHypothesis.CCC.ChowlaScope.parameterDependent_doesNotImply_uniform
