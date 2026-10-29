/-
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Imported sources retain their original credits/licenses.

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #583. Parent: draft PR #582 at
`670524ca83c26b4ac0c24cecfea305c5ec5d9c2b`.
-/
import GRWTSK.NumberTheory.Moebius.CoreShortIntervalOneDepthTranspose

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- Exposing the dyadic block scale in the transposed packet recovers exactly
the fixed-length incompatible L1 sum. -/
theorem sum_incompatibleBlockLengthL1_eq_incompatibleDyadicStartBlockL1
    (j n : ℕ) :
    (∑ r ∈ Finset.range (j + 1),
      incompatibleBlockLengthL1 j r n) =
      incompatibleDyadicStartBlockL1 j n := by
  unfold incompatibleBlockLengthL1 incompatibleDyadicStartBlockL1
  rw [← Finset.sum_filter]
  apply Finset.sum_congr
  · ext r
    simp only [Finset.mem_filter, Finset.mem_range]
    constructor
    · intro hr
      exact ⟨hr.1, ⟨hr.1, hr.2⟩⟩
    · intro hr
      exact ⟨hr.1, hr.2.2⟩
  · intro r hr
    simp only [Finset.mem_filter, Finset.mem_range] at hr
    simp [hr.1, hr.2]

/-- The transposed packet can be written directly using the fixed-length
incompatible first moment and the depth-aggregated coefficient mass. -/
theorem transposedIncompatibleDyadicL1Packet_eq_lengthMass
    (j : ℕ) :
    transposedIncompatibleDyadicL1Packet j =
      2 * ∑ n ∈ Finset.Ico (logarithmicShiftThreshold j)
          (2 ^ (j + 1) + 1),
        coreLengthCoefficientMass j n *
          incompatibleDyadicStartBlockL1 j n := by
  unfold transposedIncompatibleDyadicL1Packet
  apply congrArg (fun x : ℝ => 2 * x)
  apply Finset.sum_congr rfl
  intro n _hn
  rw [sum_incompatibleBlockLengthL1_eq_incompatibleDyadicStartBlockL1]

/-- Exact outer finite Fubini: the original depth-indexed incompatible packet
equals the length-transposed packet. -/
theorem coreLongIncompatibleDyadicL1Packet_eq_transposed
    (j : ℕ) :
    coreLongIncompatibleDyadicL1Packet j =
      transposedIncompatibleDyadicL1Packet j := by
  unfold coreLongIncompatibleDyadicL1Packet
  rw [transposedIncompatibleDyadicL1Packet_eq_lengthMass]
  have hdepth :
      (∑ t ∈ coreLongDeepDepths j,
        coreLongDepthIncompatibleDyadicL1 j t) =
      ∑ t ∈ coreLongDeepDepths j,
        2 * ∑ n ∈ Finset.Ico (logarithmicShiftThreshold j)
            (2 ^ (j + 1) + 1),
          incompatibleDyadicStartBlockL1 j n *
            (coreTerminalLengthCoefficient j t n +
              coreInteriorLengthCoefficient j t n) := by
    apply Finset.sum_congr rfl
    intro t ht
    rw [coreLongDepthIncompatibleDyadicL1_eq_lengthwise ht]
  rw [hdepth]
  rw [← Finset.mul_sum]
  rw [Finset.sum_comm]
  apply congrArg (fun x : ℝ => 2 * x)
  apply Finset.sum_congr rfl
  intro n _hn
  unfold coreLengthCoefficientMass
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro t _ht
  ring

/-- The finite transpose adapter is now constructed unconditionally at source
level. -/
def incompatibleDepthTransposeAdapter :
    IncompatibleDepthTransposeAdapter where
  packetComparison := by
    intro j
    rw [coreLongIncompatibleDyadicL1Packet_eq_transposed]

/-- The transposed supplier now directly supplies the original incompatible
packet with no remaining finite adapter premise. -/
theorem subpolynomialIncompatibleDyadicPacket_of_transposed_exact
    (hTransposed : SubpolynomialTransposedIncompatibleDyadicL1Packet) :
    ∀ δ : ℝ, 0 < δ → ∃ C : ℝ, 0 ≤ C ∧
      ∀ j : ℕ,
        coreLongIncompatibleDyadicL1Packet j ≤
          C * (((2 ^ j : ℕ) : ℝ) ^ δ) :=
  subpolynomialIncompatibleDyadicPacket_of_transposed
    incompatibleDepthTransposeAdapter hTransposed

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.coreLongIncompatibleDyadicL1Packet_eq_transposed
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.subpolynomialIncompatibleDyadicPacket_of_transposed_exact
