/-
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Mathlib and imported GRWTSK sources retain their original authorship/licenses.

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #835. Direct stacked parent: draft PR #828 at exact head
`489e15ad05c23800b447f4149c8f00da57eb5661`.
-/
import GRWTSK.NumberTheory.Moebius.RegularOrbitCenteredWindingModulusAggregate

/-!
# Centered winding as square-modulus residue dispersion

For fixed endpoint `b`, square modulus `d^2`, endpoint parity `r`, and
half-shift family `H`, group each signed binary Möbius pair by the residue of
its center

`2*m+h (mod d^2)`.

If `F(a)` denotes the signed mass in residue class `a`, then the complete
congruence surface is exactly

`4 * sum_a F(a)^2`.

Splitting congruent pairs according to equality or inequality of their integer
centers gives

`4 * sum_a F(a)^2
  = zero-winding fiber energy + nonzero-winding wrap correlation`.

Hence the remaining centered-winding term is the exact residue dispersion

`4 * sum_a F(a)^2 - zero-winding fiber energy`.

This module scripts only that finite identity and names the analytic envelope.
No cancellation estimate is proved.
-/

set_option autoImplicit false
noncomputable section

open scoped BigOperators

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- Signed binary Möbius mass in one center residue class modulo `d^2`. -/
def parityHalfIndexCenteredResidueFiber
    (b d r : ℕ) [NeZero d]
    (H : Finset ℕ)
    (a : ℕ) : ℝ :=
  ∑ h ∈ H,
    ∑ m ∈ zeroWindingHalfIndexBaseSet b r h,
      if halfIndexZeroWindingCoordinate m h % (d * d) = a then
        halfIndexBinaryMobiusCoefficient r m h
      else 0

/-- Sum of squares of the signed center-residue fibers. -/
def parityHalfIndexCenteredResidueSquareMass
    (b d r : ℕ) [NeZero d]
    (H : Finset ℕ) : ℝ :=
  4 * ∑ a ∈ Finset.range (d * d),
    parityHalfIndexCenteredResidueFiber b d r H a ^ 2

/-- Full half-index quartic surface with only square-modulus congruence imposed.

This contains both equal-center and unequal-center pairs. -/
def parityHalfIndexCenteredSignedQuarticCongruence
    (b d r : ℕ) [NeZero d]
    (H : Finset ℕ) : ℝ :=
  4 * ∑ h ∈ H,
    ∑ g ∈ H,
      ∑ m ∈ zeroWindingHalfIndexBaseSet b r h,
        ∑ n ∈ zeroWindingHalfIndexBaseSet b r g,
          if halfIndexZeroWindingCoordinate m h ≡
              halfIndexZeroWindingCoordinate n g [MOD d * d] then
            halfIndexQuarticMobiusCoefficient r m h n g
          else 0

/-- Generic square expansion of the signed residue fibers. -/
theorem centeredResidueFiberSquareExpansion
    (b d r : ℕ) [NeZero d]
    (H : Finset ℕ) :
    (∑ a ∈ Finset.range (d * d),
      parityHalfIndexCenteredResidueFiber b d r H a ^ 2) =
      ∑ h ∈ H,
        ∑ g ∈ H,
          ∑ m ∈ zeroWindingHalfIndexBaseSet b r h,
            ∑ n ∈ zeroWindingHalfIndexBaseSet b r g,
              if halfIndexZeroWindingCoordinate m h ≡
                  halfIndexZeroWindingCoordinate n g [MOD d * d] then
                halfIndexBinaryMobiusCoefficient r m h *
                  halfIndexBinaryMobiusCoefficient r n g
              else 0 := by
  classical
  unfold parityHalfIndexCenteredResidueFiber
  simp only [pow_two, Finset.sum_mul_sum]
  rw [Finset.sum_comm]
  conv_lhs =>
    arg 2
    ext h
    rw [Finset.sum_comm]
    arg 2
    ext g
    rw [Finset.sum_comm]
    arg 2
    ext m
    rw [Finset.sum_comm]
  apply Finset.sum_congr rfl
  intro h hh
  apply Finset.sum_congr rfl
  intro g hg
  apply Finset.sum_congr rfl
  intro m hm
  apply Finset.sum_congr rfl
  intro n hn
  by_cases hmod :
      halfIndexZeroWindingCoordinate m h ≡
        halfIndexZeroWindingCoordinate n g [MOD d * d]
  · have hres :
        halfIndexZeroWindingCoordinate m h % (d * d) =
          halfIndexZeroWindingCoordinate n g % (d * d) := hmod
    rw [hres]
    rw [Finset.sum_eq_single
      (halfIndexZeroWindingCoordinate n g % (d * d))]
    · simp [hmod]
    · intro a ha hane
      have hne :
          halfIndexZeroWindingCoordinate n g % (d * d) ≠ a :=
        Ne.symm hane
      simp [hne]
    · intro hnot
      have hqpos : 0 < d * d :=
        Nat.mul_pos
          (Nat.pos_of_ne_zero (NeZero.ne d))
          (Nat.pos_of_ne_zero (NeZero.ne d))
      exact
        (hnot
          (Finset.mem_range.mpr
            (Nat.mod_lt _ hqpos))).elim
  · have hne : halfIndexZeroWindingCoordinate m h % (d * d) ≠
        halfIndexZeroWindingCoordinate n g % (d * d) := hmod
    simp [hmod, hne]

/-- The residue square mass is exactly the full congruence surface. -/
theorem parityHalfIndexCenteredResidueSquareMass_eq_congruence
    (b d r : ℕ) [NeZero d]
    (H : Finset ℕ) :
    parityHalfIndexCenteredResidueSquareMass b d r H =
      parityHalfIndexCenteredSignedQuarticCongruence b d r H := by
  unfold parityHalfIndexCenteredResidueSquareMass
    parityHalfIndexCenteredSignedQuarticCongruence
  rw [centeredResidueFiberSquareExpansion]
  apply congrArg (fun x : ℝ => 4 * x)
  apply Finset.sum_congr rfl
  intro h hh
  apply Finset.sum_congr rfl
  intro g hg
  apply Finset.sum_congr rfl
  intro m hm
  apply Finset.sum_congr rfl
  intro n hn
  rw [halfIndexQuarticMobiusCoefficient_eq_binary_mul]

/-- Congruent center pairs split exactly into equal-center zero winding and
unequal-center nonzero winding. -/
theorem parityHalfIndexCenteredSignedQuarticCongruence_eq_zero_add_wrap
    (b d r : ℕ) [NeZero d]
    (H : Finset ℕ) :
    parityHalfIndexCenteredSignedQuarticCongruence b d r H =
      parityHalfIndexSignedQuarticZeroWinding b r H +
        parityHalfIndexSignedQuarticWrap b d r H := by
  classical
  unfold parityHalfIndexCenteredSignedQuarticCongruence
    parityHalfIndexSignedQuarticZeroWinding
    parityHalfIndexSignedQuarticWrap
  rw [← mul_add]
  apply congrArg (fun x : ℝ => 4 * x)
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro h hh
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro g hg
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro m hm
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro n hn
  by_cases heq :
      halfIndexZeroWindingCoordinate m h =
        halfIndexZeroWindingCoordinate n g
  · simp [heq, Nat.ModEq.refl]
  · by_cases hmod :
      halfIndexZeroWindingCoordinate m h ≡
        halfIndexZeroWindingCoordinate n g [MOD d * d]
    · simp [hmod, heq]
    · simp [hmod, heq]

/-- Load-bearing residue-dispersion decomposition. -/
theorem parityHalfIndexCenteredResidueSquareMass_eq_zeroEnergy_add_wrap
    (b d r : ℕ) [NeZero d]
    (H : Finset ℕ) :
    parityHalfIndexCenteredResidueSquareMass b d r H =
      parityHalfIndexZeroWindingFiberEnergy b r H +
        parityHalfIndexSignedQuarticWrap b d r H := by
  rw [parityHalfIndexCenteredResidueSquareMass_eq_congruence]
  rw [parityHalfIndexCenteredSignedQuarticCongruence_eq_zero_add_wrap]
  rw [parityHalfIndexSignedQuarticZeroWinding_eq_fiberEnergy]

/-- Exact square-modulus residue dispersion after subtracting the equal-center
fiber energy. -/
def parityCenteredWindingResidueDispersion
    (b d r : ℕ) [NeZero d]
    (H : Finset ℕ) : ℝ :=
  parityHalfIndexCenteredResidueSquareMass b d r H -
    parityHalfIndexZeroWindingFiberEnergy b r H

/-- The residue dispersion is exactly the original nonzero-winding wrap
surface. -/
theorem parityCenteredWindingResidueDispersion_eq_wrap
    (b d r : ℕ) [NeZero d]
    (H : Finset ℕ) :
    parityCenteredWindingResidueDispersion b d r H =
      parityHalfIndexSignedQuarticWrap b d r H := by
  unfold parityCenteredWindingResidueDispersion
  rw [parityHalfIndexCenteredResidueSquareMass_eq_zeroEnergy_add_wrap]
  ring

/-- The same dispersion identity with each quartic coefficient written as two
symmetric centered Möbius pairs. -/
theorem parityCenteredWindingResidueDispersion_eq_centeredWrap
    (b d r : ℕ) [NeZero d]
    (H : Finset ℕ) :
    parityCenteredWindingResidueDispersion b d r H =
      parityHalfIndexCenteredSignedQuarticWrap b d r H := by
  rw [parityCenteredWindingResidueDispersion_eq_wrap]
  exact parityHalfIndexSignedQuarticWrap_eq_centered b d r H

/-- Absolute four-family residue dispersion at one square modulus. -/
def regularCenteredWindingResidueDispersionAtModulus
    (b d : ℕ) [NeZero d] : ℝ :=
  |parityCenteredWindingResidueDispersion
      b d 0 (positiveEndpointEvenShiftSet b)| +
    |parityCenteredWindingResidueDispersion
      b d 0 (positiveEndpointOddShiftSet b)| +
    |parityCenteredWindingResidueDispersion
      b d 1 (positiveEndpointEvenShiftSet b)| +
    |parityCenteredWindingResidueDispersion
      b d 1 (positiveEndpointOddShiftSet b)|

/-- Exact centered-wrap form of the four-family modulus contribution. -/
theorem regularCenteredWindingResidueDispersionAtModulus_eq_centeredWrap
    (b d : ℕ) [NeZero d] :
    regularCenteredWindingResidueDispersionAtModulus b d =
      |parityHalfIndexCenteredSignedQuarticWrap
        b d 0 (positiveEndpointEvenShiftSet b)| +
      |parityHalfIndexCenteredSignedQuarticWrap
        b d 0 (positiveEndpointOddShiftSet b)| +
      |parityHalfIndexCenteredSignedQuarticWrap
        b d 1 (positiveEndpointEvenShiftSet b)| +
      |parityHalfIndexCenteredSignedQuarticWrap
        b d 1 (positiveEndpointOddShiftSet b)| := by
  unfold regularCenteredWindingResidueDispersionAtModulus
  rw [parityCenteredWindingResidueDispersion_eq_centeredWrap,
    parityCenteredWindingResidueDispersion_eq_centeredWrap,
    parityCenteredWindingResidueDispersion_eq_centeredWrap,
    parityCenteredWindingResidueDispersion_eq_centeredWrap]

/-- Effective-modulus endpoint aggregate of the exact centered residue
dispersions. -/
def regularCenteredWindingResidueDispersionEndpoint
    (b : ℕ) : ℝ :=
  ∑ d ∈ effectiveEndpointSquareModulusSet b,
    if hd : 0 < d then
      letI : NeZero d := ⟨ne_of_gt hd⟩
      regularCenteredWindingResidueDispersionAtModulus b d
    else 0

/-- Parameterized analytic boundary for the centered winding branch. -/
def RegularCenteredWindingResidueDispersionEnvelope
    (E : ℕ → ℝ) : Prop :=
  ∀ b : ℕ,
    regularCenteredWindingResidueDispersionEndpoint b ≤ E b

/-- Conservative source profile for a theorem controlling the exact residue
dispersion after winding multiplicity has been paid. -/
structure RegularCenteredWindingResidueDispersionSourceData where
  theoremStatement : Prop
  exactHalfIndexSupportsMatched : Prop
  squareModulusResidueFibersMatched : Prop
  signedBinaryMobiusPairsMatched : Prop
  residueSquareExpansionMatched : Prop
  zeroWindingFiberEnergyMatched : Prop
  nonzeroWindingWrapMatched : Prop
  centeredMobiusPairFormMatched : Prop
  evenOddHalfShiftFamiliesMatched : Prop
  bothEndpointParitiesMatched : Prop
  effectiveModulusAggregationMatched : Prop
  analyticEnvelopeExplicit : Prop
  naturalScaleNormalizationMatched : Prop

def RegularCenteredWindingResidueDispersionSource
    (d : RegularCenteredWindingResidueDispersionSourceData) : Prop :=
  d.theoremStatement ∧
    d.exactHalfIndexSupportsMatched ∧
    d.squareModulusResidueFibersMatched ∧
    d.signedBinaryMobiusPairsMatched ∧
    d.residueSquareExpansionMatched ∧
    d.zeroWindingFiberEnergyMatched ∧
    d.nonzeroWindingWrapMatched ∧
    d.centeredMobiusPairFormMatched ∧
    d.evenOddHalfShiftFamiliesMatched ∧
    d.bothEndpointParitiesMatched ∧
    d.effectiveModulusAggregationMatched ∧
    d.analyticEnvelopeExplicit ∧
    d.naturalScaleNormalizationMatched

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.centeredResidueFiberSquareExpansion
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.parityHalfIndexCenteredResidueSquareMass_eq_zeroEnergy_add_wrap
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.parityCenteredWindingResidueDispersion_eq_centeredWrap
