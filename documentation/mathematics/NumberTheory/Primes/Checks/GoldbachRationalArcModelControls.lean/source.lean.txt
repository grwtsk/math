/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Primes.GoldbachRationalArcModelBoundary
import Mathlib.Tactic.NormNum

set_option autoImplicit false

/-!
# Controls for Goldbach rational-arc residue models

These source controls retain argument additivity, integral periodicity,
positive-modulus residue fibres, the exact residue-class reconstruction, and
the requirement that every proposed analytic model pay its complete residual.
They have not been executed in Lean.
-/

namespace GRWTSK.NumberTheory.Primes.Checks.GoldbachRationalArcModelControls

open scoped BigOperators Real
open GRWTSK.Analysis.Fourier.UnitIntervalCharacters
open GRWTSK.NumberTheory.Primes.ConfigurationCounts
open GRWTSK.NumberTheory.Primes.GoldbachCircleIntegral
open GRWTSK.NumberTheory.Primes.GoldbachRationalArcs
open GRWTSK.NumberTheory.Primes.GoldbachRationalArcExpansion
open GRWTSK.NumberTheory.Primes.GoldbachRationalArcCoordinates
open GRWTSK.NumberTheory.Primes.GoldbachResidueClassDecomposition
open GRWTSK.NumberTheory.Primes.GoldbachRationalArcModelBoundary

/-- Character multiplication follows addition in the real coordinate. -/
theorem character_argument_add_control (x y : ℝ) :
    unitCharacter 3 (x + y) =
      unitCharacter 3 x * unitCharacter 3 y :=
  unitCharacter_add_argument 3 x y

/-- Integral period shifts are removed exactly. -/
theorem character_integral_period_control (x : ℝ) :
    unitCharacter 7 (x + (2 : ℝ)) = unitCharacter 7 x := by
  simpa using unitCharacter_add_int 7 2 x

/-- The phase at denominator three sees frequency seven as residue one. -/
theorem rational_phase_mod_control :
    goldbachRationalPhase 1 3 7 =
      goldbachRationalPhase 1 3 1 := by
  simpa using
    (goldbachRationalPhase_mod
      (a := 1) (q := 3) (n := 7) (by norm_num))

/-- The source-level centered sum has an exact modulo-three decomposition. -/
theorem residue_kernel_control (β : ℝ) :
    goldbachCenteredExponentialSum 10 1 3 β =
      goldbachResidueClassExponentialKernel 10 1 3 β :=
  goldbachCenteredExponentialSum_eq_residueClassKernel
    10 1 3 (by norm_num) β

/-- Every actual rational-arc index carries a positive denominator. -/
theorem indexed_denominator_positive
    {Q : ℕ} {aq : ℕ × ℕ}
    (haq : aq ∈ goldbachRationalArcIndices Q) :
    0 < aq.2 := by
  rcases aq with ⟨a, q⟩
  exact (mem_goldbachRationalArcIndices.1 haq).2.2.1

/-- The exact residue-class model pays zero residual on the one-half arc. -/
theorem exact_one_half_model_residual_zero :
    goldbachArcModelResidual 2 8 (1, 2)
      (goldbachExactResidueArcModel 8) = 0 := by
  exact goldbachExactResidueArcModel_residual_zero
    (one_two_mem_goldbachRationalArcIndices (by norm_num))

/-- Summing the exact residue-class model leaves no finite major residual. -/
theorem exact_residue_model_residual_sum_zero
    (Q N : ℕ) :
    goldbachArcModelResidualSum Q N
      (goldbachExactResidueArcModel N) = 0 := by
  unfold goldbachArcModelResidualSum
  apply Finset.sum_eq_zero
  intro aq haq
  exact goldbachExactResidueArcModel_residual_zero haq

/-- The zero proposed model does not erase the exact arc contribution; it moves
the whole contribution into the residual. -/
theorem zero_model_requires_full_residual
    (Q N : ℕ) (aq : ℕ × ℕ) :
    goldbachArcModelResidual Q N aq (fun _ _ => 0) =
      goldbachSingleRationalArcContribution Q N aq := by
  simp [goldbachArcModelResidual, goldbachArcModelContribution]

/-- Exact residue reconstruction is still bookkeeping and can coexist with a
zero exact Goldbach count. -/
theorem residue_identity_not_goldbach_witness :
    goldbachCount 2 = 0 ∧
      goldbachCenteredExponentialSum 2 0 1 0 =
        goldbachResidueClassExponentialKernel 2 0 1 0 := by
  exact ⟨by decide,
    goldbachCenteredExponentialSum_eq_residueClassKernel
      2 0 1 (by norm_num) 0⟩

/-- Equality of the accumulated error budget and the model lower bound cannot
pass the strict terminal consumer. -/
theorem zero_aggregate_margin_rejected :
    ¬ ((0 : ℝ) + 0 < 0) := by
  norm_num

end GRWTSK.NumberTheory.Primes.Checks.GoldbachRationalArcModelControls
