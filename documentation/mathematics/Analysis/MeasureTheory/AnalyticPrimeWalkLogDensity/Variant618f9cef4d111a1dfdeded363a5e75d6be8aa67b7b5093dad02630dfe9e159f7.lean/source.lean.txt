-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.MeasureTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.MeasureTheory.HarmonicWeight.Variant75aab7dbf36f8050b917cbeda1a6a3a2f4f4713ff8595692834e9322eabc5a23","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"75aab7dbf36f8050b917cbeda1a6a3a2f4f4713ff8595692834e9322eabc5a23","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.HarmonicWeight.Variant75aab7dbf36f8050b917cbeda1a6a3a2f4f4713ff8595692834e9322eabc5a23","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"75aab7dbf36f8050b917cbeda1a6a3a2f4f4713ff8595692834e9322eabc5a23","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Surface/Core/AnalyticPrimeWalkLogDensity.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public import Surface.Core.AnalyticPrimeWalkAbstractDensity
public import Mathlib.MeasureTheory.Measure.Count
import Mathlib.Tactic

/-!
# Native harmonic logarithmic density for the residue-six prime walk

This module gives the sign-density layer a literal `Filter.Tendsto`
interpretation.  For a set `S : Set ℕ`, the finite sample through `N` is

```text
  (sum k in [2,N], 1_S(k) / k) / (sum k in [2,N], 1 / k).
```

The lower cutoff `2` agrees with the prime-race convention and avoids the
irrelevant zero index.  The accompanying sigma-additive measure on `ℕ` assigns
mass `1 / k` to `{k}` (and mass zero to `{0}`).  The finite-set theorem below
identifies its measure with the corresponding finite harmonic sum.

No existence or numerical value of a prime-race density is proved here.
`HasHarmonicDensity` is the exact native limit predicate, while a theorem that
establishes it remains analytic input.
-/


namespace GRWTSK.Analysis.MeasureTheory.HarmonicWeight.Variant75aab7dbf36f8050b917cbeda1a6a3a2f4f4713ff8595692834e9322eabc5a23

public section

namespace Surface.Core.AnalyticPrimeWalk

noncomputable section

open scoped BigOperators ENNReal
open Surface.Core.CyclicPrimeWalk

/-! ## Finite harmonic samples and their native limit -/

/-- Harmonic mass assigned to an index.  Lean's inverse convention makes the
weight at zero definitionally zero. -/
@[expose]
def harmonicWeight (k : ℕ) : ℝ :=
  ((k : ℝ))⁻¹

/-- Harmonic normalizer from index two through `N`, inclusive. -/
@[expose]
def harmonicNormalizer (N : ℕ) : ℝ :=
  ∑ k ∈ Finset.Icc 2 N, harmonicWeight k

/-- Finite harmonic mass of a subset of natural-number indices. -/
@[expose]
def harmonicMass (S : Set ℕ) (N : ℕ) : ℝ :=
  by
    classical
    exact ∑ k ∈ Finset.Icc 2 N, if k ∈ S then harmonicWeight k else 0

/-- The normalized finite harmonic-density sample of `S`. -/
@[expose]
def harmonicDensityAt (S : Set ℕ) (N : ℕ) : ℝ :=
  harmonicMass S N / harmonicNormalizer N

/-- Native existence and value of logarithmic density on `ℕ`, expressed as a
limit along the `atTop` filter. -/
@[expose]
def HasHarmonicDensity (S : Set ℕ) (density : ℝ) : Prop :=
  Filter.Tendsto (harmonicDensityAt S) Filter.atTop (nhds density)

/-- A sign event has harmonic logarithmic bias when its native density exists
and is strictly larger than one half. -/
@[expose]
def HasHarmonicNegativeBias (S : Set ℕ) : Prop :=
  ∃ density : ℝ, HasHarmonicDensity S density ∧ (1 / 2 : ℝ) < density

/-! ## The corresponding measure on natural-number indices -/

/-- Sigma-additive harmonic measure on `ℕ`: the atom at `k` has mass `1/k`.
The atom at zero has mass zero. -/
@[expose]
def harmonicMeasure : MeasureTheory.Measure ℕ :=
  MeasureTheory.Measure.sum fun k : ℕ ↦
    ENNReal.ofReal (harmonicWeight k) • MeasureTheory.Measure.dirac k

/-- Every harmonic weight is nonnegative. -/
@[surface_novel, surface_published]
theorem harmonicWeight_nonneg (k : ℕ) : 0 ≤ harmonicWeight k := by
  exact inv_nonneg.mpr (Nat.cast_nonneg k)

/-- The harmonic measure of one atom is its harmonic weight. -/
@[surface_novel, surface_published]
theorem harmonicMeasure_singleton (k : ℕ) :
    harmonicMeasure {k} = ENNReal.ofReal (harmonicWeight k) := by
  rw [harmonicMeasure, MeasureTheory.Measure.sum_smul_dirac_singleton]

/-- On a finite set, the sigma-additive harmonic measure is exactly the finite
sum of its atomic `1/k` weights. -/
@[surface_novel, surface_published]
theorem harmonicMeasure_finset (s : Finset ℕ) :
    harmonicMeasure (s : Set ℕ) =
      ENNReal.ofReal (∑ k ∈ s, harmonicWeight k) := by
  classical
  rw [← MeasureTheory.Measure.tsum_indicator_apply_singleton harmonicMeasure
    (s : Set ℕ) (by measurability)]
  simp only [Set.indicator_apply, harmonicMeasure_singleton]
  calc
    (∑' k : ℕ, if k ∈ (s : Set ℕ) then
        ENNReal.ofReal (harmonicWeight k) else 0) =
        ∑ k ∈ s, (if k ∈ (s : Set ℕ) then
          ENNReal.ofReal (harmonicWeight k) else 0) := by
      apply tsum_eq_sum
      intro k hk
      simp [hk]
    _ = ∑ k ∈ s, ENNReal.ofReal (harmonicWeight k) := by simp
    _ = ENNReal.ofReal (∑ k ∈ s, harmonicWeight k) := by
      symm
      exact ENNReal.ofReal_sum_of_nonneg fun k _ ↦ harmonicWeight_nonneg k

/-- Finite set of sampled indices in `S` between two and `N`. -/
@[expose]
def harmonicSampleFinset (S : Set ℕ) (N : ℕ) : Finset ℕ := by
  classical
  exact (Finset.Icc 2 N).filter (· ∈ S)

/-- The measure of a finite sign sample is `ofReal` of its finite harmonic
mass. -/
@[surface_novel, surface_published]
theorem harmonicMeasure_filter_Icc (S : Set ℕ) (N : ℕ) :
    harmonicMeasure (harmonicSampleFinset S N : Set ℕ) =
      ENNReal.ofReal (harmonicMass S N) := by
  classical
  rw [harmonicMeasure_finset]
  congr 1
  simp [harmonicSampleFinset, harmonicMass, Finset.sum_filter]

/-! ## The canonical exact `D / 6` sign event

`negativeIndexedObservableEvent`, imported from the abstract companion,
is the one canonical event in both layers.  It evaluates

```text
frobeniusPairing orientedFrobeniusProbe
  (errorOperatorAt model (model.cutoffAtEligibleIndex K)) < 0
```

and includes the conventional lower bound `2 <= K`.
-/

/-- Boolean-valued encoding of membership in the canonical exact
negative-observable event. -/
@[expose]
def negativeObservableBool
    (model : AnalyticBridgeHypotheses) (K : ℕ) : Bool :=
  decide (2 ≤ K ∧ indexedSignedObservable model K < 0)

/-- The Boolean sign decision is true exactly on the canonical event. -/
@[surface_novel, surface_published]
theorem negativeObservableBool_eq_true_iff
    (model : AnalyticBridgeHypotheses) (K : ℕ) :
    negativeObservableBool model K = true ↔
      K ∈ negativeIndexedObservableEvent model := by
  simp [negativeObservableBool, negativeIndexedObservableEvent]

/-- Numeric indicator of the exact negative-observable event. -/
@[expose]
def negativeObservableIndicator
    (model : AnalyticBridgeHypotheses) (K : ℕ) : ℝ :=
  if negativeObservableBool model K then 1 else 0

/-- Finite harmonic mass of negative exact-observable indices. -/
@[expose]
def negativeObservableMass
    (model : AnalyticBridgeHypotheses) (N : ℕ) : ℝ :=
  harmonicMass (negativeIndexedObservableEvent model) N

/-- The actual harmonic measure of the finite exact-observable sign sample is
the `ENNReal.ofReal` image of `negativeObservableMass`. -/
@[surface_novel, surface_published]
theorem harmonicMeasure_negativeObservableSample
    (model : AnalyticBridgeHypotheses) (N : ℕ) :
    harmonicMeasure
        (harmonicSampleFinset (negativeIndexedObservableEvent model) N : Set ℕ) =
      ENNReal.ofReal (negativeObservableMass model N) := by
  exact harmonicMeasure_filter_Icc (negativeIndexedObservableEvent model) N

/-- Native finite harmonic-density sample of the exact sign event. -/
@[expose]
def negativeObservableDensityAt
    (model : AnalyticBridgeHypotheses) (N : ℕ) : ℝ :=
  harmonicDensityAt (negativeIndexedObservableEvent model) N

/-- A fully native Rubinstein--Sarnak-style sign-bias predicate for this exact
matrix observable.  This declaration encodes the limit; it does not prove that
the prime data satisfy it. -/
@[expose]
def HasNativeNegativeObservableBias
    (model : AnalyticBridgeHypotheses) : Prop :=
  HasHarmonicNegativeBias (negativeIndexedObservableEvent model)

/-- Expanding the finite mass exposes the requested indicator-weighted sum. -/
@[surface_novel, surface_published]
theorem negativeObservableMass_eq_indicator_sum
    (model : AnalyticBridgeHypotheses) (N : ℕ) :
    negativeObservableMass model N =
      ∑ K ∈ Finset.Icc 2 N,
        negativeObservableIndicator model K * harmonicWeight K := by
  simp only [negativeObservableMass, harmonicMass,
    negativeObservableIndicator]
  apply Finset.sum_congr rfl
  intro K hK
  have htwo : 2 ≤ K := (Finset.mem_Icc.mp hK).1
  by_cases h : indexedSignedObservable model K < 0
  · simp [negativeObservableBool, negativeIndexedObservableEvent, htwo, h]
  · simp [negativeObservableBool, negativeIndexedObservableEvent, htwo, h]

/-! ## Calibration of the abstract partial functional by the native limit -/

/-- Canonical abstract functional induced by the native harmonic-density
limit.  It returns `none` exactly when no native limit exists.  If a limit
exists, Hausdorff uniqueness makes the chosen real value canonical. -/
@[expose]
def nativeLogDensityFunctional : AbstractLogDensityFunctional where
  evaluate S := by
    classical
    exact if h : ∃ density : ℝ, HasHarmonicDensity S density then
      some (Classical.choose h)
    else
      none

/-- The induced abstract functional returns `density` exactly when the native
`Filter.Tendsto` definition has that value. -/
@[surface_novel, surface_published]
theorem nativeLogDensityFunctional_eq_some_iff
    (S : Set ℕ) (density : ℝ) :
    HasAbstractLogDensity nativeLogDensityFunctional S density ↔
      HasHarmonicDensity S density := by
  classical
  change (if h : ∃ value : ℝ, HasHarmonicDensity S value then
      some (Classical.choose h) else none) = some density ↔
    HasHarmonicDensity S density
  split_ifs with h
  · constructor
    · intro heq
      have hchosen : Classical.choose h = density := Option.some.inj heq
      rw [← hchosen]
      exact Classical.choose_spec h
    · intro hdensity
      have hchosen : Classical.choose h = density :=
        tendsto_nhds_unique (Classical.choose_spec h) hdensity
      simp [hchosen]
  · constructor
    · simp
    · intro hdensity
      exact False.elim (h ⟨density, hdensity⟩)

/-- Abstract bias under the native functional is equivalent to the concrete
harmonic-limit bias; no analytic existence claim is added by the bridge. -/
@[surface_novel, surface_published]
theorem abstractNegativeBias_native_iff (S : Set ℕ) :
    HasAbstractNegativeBias nativeLogDensityFunctional S ↔
      HasHarmonicNegativeBias S := by
  simp only [HasAbstractNegativeBias, HasHarmonicNegativeBias]
  constructor
  · rintro ⟨density, hdensity, hbias⟩
    exact ⟨density,
      (nativeLogDensityFunctional_eq_some_iff S density).mp hdensity,
      hbias⟩
  · rintro ⟨density, hdensity, hbias⟩
    exact ⟨density,
      (nativeLogDensityFunctional_eq_some_iff S density).mpr hdensity,
      hbias⟩

/-- Specialization of the abstract/native calibration to the exact `D / 6`
matrix sign event. -/
@[surface_novel, surface_published]
theorem abstractNegativeObservableBias_native_iff
    (model : AnalyticBridgeHypotheses) :
    HasAbstractNegativeBias nativeLogDensityFunctional
        (negativeIndexedObservableEvent model) ↔
      HasNativeNegativeObservableBias model := by
  exact abstractNegativeBias_native_iff (negativeIndexedObservableEvent model)

end

end Surface.Core.AnalyticPrimeWalk
