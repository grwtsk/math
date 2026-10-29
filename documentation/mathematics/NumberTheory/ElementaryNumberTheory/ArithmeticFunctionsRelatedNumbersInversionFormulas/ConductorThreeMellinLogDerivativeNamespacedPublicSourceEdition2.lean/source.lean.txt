-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.ConductorThreeComplexVonMangoldt.Variant60e726de63a99dec9ac80ada31ddf00edf24a55923a8e6ad6c4691fc7774ea68","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"60e726de63a99dec9ac80ada31ddf00edf24a55923a8e6ad6c4691fc7774ea68","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.LFunctions.SourceCorpus.ConductorThreeComplexVonMangoldt.Variant60e726de63a99dec9ac80ada31ddf00edf24a55923a8e6ad6c4691fc7774ea68","mathematical_subject":"NumberTheory.LFunctions","original_sha256":"60e726de63a99dec9ac80ada31ddf00edf24a55923a8e6ad6c4691fc7774ea68","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:c8286c2359c45d702379bc5b/workspace/lib/Surface/Core/ConductorThreeMellinLogDerivative.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public meta import Surface.Core.Classification
public import Surface.Core.ConductorThreeHalfPlusEpsilon
public import Mathlib.NumberTheory.LSeries.SumCoeff
public import Mathlib.Analysis.MellinTransform
import Mathlib.Tactic

/-!
# Mellin/log-derivative route to conductor-three GRH

The pinned Mathlib API gives the exact twisted von Mangoldt Dirichlet series
and its equality with `-L'/L` on `Re s > 1`.  The continuation below that line
must instead be constructed from the summatory function.  This module fixes
that distinction in the types: `conductorThreeMellinLogDerivative` is the
summatory Mellin candidate, while the checked theorem below concerns only the
absolute-convergence seed half-plane.

The remaining reverse work is split into two named propositions:

* half-plus-epsilon makes the Mellin candidate holomorphic on `Re s > 1/2`;
* the continued ODE plus the primitive functional equation excludes zeros.

They are not installed as axioms.  Supplying proofs composes to GRH by a
checked theorem.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.ConductorThreeComplexVonMangoldt.Variant60e726de63a99dec9ac80ada31ddf00edf24a55923a8e6ad6c4691fc7774ea68

public section

namespace Surface.Core.ConductorThreeMellinLogDerivative

noncomputable section

open scoped BigOperators LSeries.notation
open Filter
open Surface.Core.AnalyticPrimeWalk
open Surface.Core.ConductorThreeCharacterArithmetic
open Surface.Core.ConductorThreeHalfPlusEpsilon
open Surface.Core.ConductorThreeVonMangoldt

/-- Complex coefficient `chi_3(n) Lambda(n)` used by Mathlib's L-series. -/
@[expose]
def conductorThreeComplexVonMangoldt (n : ℕ) : ℂ :=
  conductorThreeCharacter n * ArithmeticFunction.vonMangoldt n

/-- Step-function summatory extension on the positive real axis. -/
@[expose]
def conductorThreePsiStep (t : ℝ) : ℂ :=
  ∑ n ∈ Finset.Icc 1 ⌊t⌋₊, conductorThreeComplexVonMangoldt n

/-- Summatory Mellin candidate for the negative logarithmic derivative. -/
@[expose]
def conductorThreeMellinLogDerivative (s : ℂ) : ℂ :=
  s * ∫ t in Set.Ioi (1 : ℝ),
    conductorThreePsiStep t * (t : ℂ) ^ (-(s + 1))

/-- The complex coefficient is exactly the existing real coefficient after
casting. -/
@[surface_adapter, surface_published]
theorem conductorThreeComplexVonMangoldt_eq_real (n : ℕ) :
    conductorThreeComplexVonMangoldt n = (twistedVonMangoldtThree n : ℂ) := by
  simp [conductorThreeComplexVonMangoldt, twistedVonMangoldtThree,
    conductorThreeCharacter_eq_intCast]

/-- At integral cutoffs the Mellin step function is exactly the previously
checked finite twisted `Psi` sum. -/
@[surface_adapter, surface_published]
theorem conductorThreePsiStep_natCast (x : ℕ) :
    conductorThreePsiStep (x : ℝ) = (conductorThreePsi x : ℂ) := by
  have hset : Finset.range (x + 1) =
      insert 0 (Finset.Icc 1 x) := by
    ext n
    simp
    omega
  unfold conductorThreePsiStep
  rw [Nat.floor_natCast]
  rw [conductorThreePsi, hset, Finset.sum_insert (by simp)]
  simp [conductorThreeComplexVonMangoldt_eq_real]

/-- Checked Mathlib seed identity on the absolute-convergence half-plane. -/
@[surface_adapter, surface_published]
theorem conductorThree_twistedLSeries_eq_neg_logDerivative
    {s : ℂ} (hs : 1 < s.re) :
    L (↗conductorThreeCharacter * ↗ArithmeticFunction.vonMangoldt) s =
      -deriv (L ↗conductorThreeCharacter) s /
        L ↗conductorThreeCharacter s :=
  DirichletCharacter.LSeries_twist_vonMangoldt_eq
    conductorThreeCharacter hs

/-- Mathlib's summatory-coefficient theorem identifies the Mellin candidate
with the twisted L-series whenever a supplied fixed-power partial-sum bound
lies to the left of `s`. -/
@[surface_adapter, surface_published]
theorem conductorThreeMellinLogDerivative_eq_twistedLSeries
    {r : ℝ} (hr : 0 ≤ r) {s : ℂ} (hrs : r < s.re)
    (hSummable : LSeriesSummable conductorThreeComplexVonMangoldt s)
    (hPartial :
      (fun n ↦ ∑ k ∈ Finset.Icc 1 n,
        conductorThreeComplexVonMangoldt k) =O[atTop]
          fun n ↦ (n : ℝ) ^ r) :
    conductorThreeMellinLogDerivative s =
      LSeries conductorThreeComplexVonMangoldt s := by
  symm
  simpa [conductorThreeMellinLogDerivative, conductorThreePsiStep] using
    (LSeries_eq_mul_integral conductorThreeComplexVonMangoldt hr hrs
      hSummable hPartial)

/-- First remaining classical lemma: the half-plus-epsilon bound gives a
holomorphic summatory Mellin function on `Re s > 1/2`, and its value agrees
with the checked seed series where `Re s > 1`. -/
@[expose]
def HalfPlusEpsilonMellinContinuation : Prop :=
  TwistedPsiHalfPlusEpsilon →
    DifferentiableOn ℂ conductorThreeMellinLogDerivative
      {s : ℂ | 1 / 2 < s.re} ∧
    ∀ s : ℂ, 1 < s.re →
      conductorThreeMellinLogDerivative s =
        -deriv (conductorThreeCharacter.LFunction) s /
          conductorThreeCharacter.LFunction s

/-- Second remaining classical lemma: extend
`L' + F L = 0` by the identity theorem, use a local primitive/integrating
factor to exclude right-half-plane zeros, and reflect with the primitive odd
functional equation. -/
@[expose]
def MellinContinuationZeroExclusion : Prop :=
  TwistedPsiHalfPlusEpsilon →
    (DifferentiableOn ℂ conductorThreeMellinLogDerivative
      {s : ℂ | 1 / 2 < s.re} ∧
     ∀ s : ℂ, 1 < s.re →
      conductorThreeMellinLogDerivative s =
        -deriv (conductorThreeCharacter.LFunction) s /
          conductorThreeCharacter.LFunction s) →
    GRHForConductorThreeCharacter

/-- Checked composition of the two explicit reverse obligations. -/
@[surface_novel, surface_published]
theorem halfPlusEpsilon_implies_grh_of_mellin
    (hContinuation : HalfPlusEpsilonMellinContinuation)
    (hZeroExclusion : MellinContinuationZeroExclusion) :
    TwistedPsiHalfPlusEpsilon → GRHForConductorThreeCharacter := by
  intro hHalf
  exact hZeroExclusion hHalf (hContinuation hHalf)

end

end Surface.Core.ConductorThreeMellinLogDerivative
