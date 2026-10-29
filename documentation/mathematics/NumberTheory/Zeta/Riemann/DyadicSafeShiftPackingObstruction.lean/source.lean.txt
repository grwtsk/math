/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.DyadicChebyshevCumulativeBudget
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# No-go for divergent lower mass in the raw safe dyadic packing

The preceding source proves that the complete positive occupied-volume sequence

  Q_j^D

is summable for every actual nontrivial zero. Therefore, for an off-line zero
where

  c(a,t)=a^4+3a^2 t^2 > 0,

any nonnegative sequence lambda_j satisfying

  lambda_j <= A_j^D,
  lambda_j <= T_j^D

also has bounded partial sums, because

  c(a,t) lambda_j <= Q_j^D

stagewise.

Hence the divergent common lower-mass supplier required by the cumulative
packing endpoint cannot exist for this raw safe-half-plane dyadic geometry.

This is a route refutation at the stated scope, not an RH theorem. A viable
volume route must change the source geometry before the final positive Gram is
formed, for example by a source-derived block normalization or growing-cell
construction whose occupied mass is not already summable.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
RAW_SAFE_DYADIC_CUMULATIVE_PACKING_REFUTED_AT_STATED_SCOPE.
-/

namespace GRWTSK.RiemannHypothesis

open Filter Topology
open CanonicalZeroDivisor

/-- The lower-density portion of the cumulative packing proposal, separated
from the now-proved upper budget. -/
structure OffLineDyadicCommonLowerMassAtZero
    (z : ZeroPoint) (ha : zeroDefect z.1 ≠ 0) where
  lowerWeight : ℕ → ℝ
  lowerWeight_nonnegative : ∀ j, 0 ≤ lowerWeight j
  axial_lower :
    ∀ j, lowerWeight j ≤ safeAxialDyadicQuarticCoefficient z j
  transverse_lower :
    ∀ j, lowerWeight j ≤ safeTransverseDyadicQuarticCoefficient z j
  lowerWeightPartial_tendsto_atTop :
    Tendsto
      (fun N => ∑ j ∈ Finset.range N, lowerWeight j)
      atTop atTop

namespace OffLineDyadicCommonLowerMassAtZero

/-- The unconditional Chebyshev total budget turns any putative divergent lower
mass into the already-typed cumulative contradiction packet. -/
def toCumulativePackingData
    {z : ZeroPoint} {ha : zeroDefect z.1 ≠ 0}
    (data : OffLineDyadicCommonLowerMassAtZero z ha) :
    OffLineDyadicCumulativePackingDataAtZero z ha where
  lowerWeight := data.lowerWeight
  lowerWeight_nonnegative := data.lowerWeight_nonnegative
  axial_lower := data.axial_lower
  transverse_lower := data.transverse_lower
  lowerWeightPartial_tendsto_atTop :=
    data.lowerWeightPartial_tendsto_atTop
  totalBudget := safeQuarticDyadicTotalBudget z
  totalBudget_nonnegative := safeQuarticDyadicTotalBudget_nonnegative z
  occupiedPartial_le := safeQuarticDyadicPartial_le_totalBudget z

/-- Explicit bounded-partial-sum consequence for every common lower sequence. -/
theorem partial_le_budget_div_factor
    {z : ZeroPoint} {ha : zeroDefect z.1 ≠ 0}
    (data : OffLineDyadicCommonLowerMassAtZero z ha)
    (N : ℕ) :
    (∑ j ∈ Finset.range N, data.lowerWeight j) ≤
      safeQuarticDyadicTotalBudget z /
        data.toCumulativePackingData.quarticFactor := by
  let cumulative := data.toCumulativePackingData
  have hfactor : 0 < cumulative.quarticFactor :=
    cumulative.quarticFactor_pos
  have hlower := cumulative.quarticFactor_mul_partial_le N
  have hbudget := cumulative.occupiedPartial_le N
  apply (le_div_iff₀ hfactor).2
  convert! hlower.trans hbudget using 1
  · exact mul_comm _ _

/-- The required divergent common lower mass is impossible for the raw safe
dyadic packing. -/
theorem impossible
    {z : ZeroPoint} {ha : zeroDefect z.1 ≠ 0}
    (data : OffLineDyadicCommonLowerMassAtZero z ha) :
    False :=
  data.toCumulativePackingData.false_of_cumulative_packing

end OffLineDyadicCommonLowerMassAtZero

theorem no_offLineDyadicCommonLowerMassAtZero
    (z : ZeroPoint) (ha : zeroDefect z.1 ≠ 0) :
    ¬ Nonempty (OffLineDyadicCommonLowerMassAtZero z ha) := by
  rintro ⟨data⟩
  exact data.impossible

/-- The exact global lower-density supplier proposed by the current cumulative
raw-safe geometry. -/
def OffLineDyadicCommonLowerMassClaim : Prop :=
  ∀ z : ZeroPoint, ∀ ha : zeroDefect z.1 ≠ 0,
    Nonempty (OffLineDyadicCommonLowerMassAtZero z ha)

/-- For this raw safe dyadic geometry the proposed lower-density supplier is
equivalent to RH: under an off-line witness it is impossible, while under RH
its off-line premise is vacuous. Thus it cannot serve as an independent RH
supplier. -/
theorem offLineDyadicCommonLowerMassClaim_iff_rh :
    OffLineDyadicCommonLowerMassClaim ↔ _root_.RiemannHypothesis := by
  constructor
  · intro supplier s hz htrivial hpole
    let z : ZeroPoint := ⟨s, hz, htrivial, hpole⟩
    by_contra hline
    have ha : zeroDefect z.1 ≠ 0 := by
      intro hzero
      apply hline
      unfold zeroDefect at hzero
      dsimp [z] at hzero
      linarith
    obtain ⟨data⟩ := supplier z ha
    exact (no_offLineDyadicCommonLowerMassAtZero z ha) ⟨data⟩
  · intro hrh z ha
    have hline : z.1.re = 1 / 2 :=
      hrh z.1 z.2.1 z.2.2.1 z.2.2.2
    have hzero : zeroDefect z.1 = 0 := by
      unfold zeroDefect
      linarith
    exact (ha hzero).elim

end GRWTSK.RiemannHypothesis
