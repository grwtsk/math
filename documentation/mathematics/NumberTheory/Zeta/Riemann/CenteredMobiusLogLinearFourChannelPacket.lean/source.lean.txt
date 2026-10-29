/-
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Codex relay: d8c86064-847a-43ef-a497-4a8777dfb0ff.
Verified centered packet base: 959672f4b901af109305e72d4399b2f856be0c58.
-/
import GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogAugmentedMap
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis

/-- Genuine linear four-channel packet. No rank-one relation is imposed. -/
structure LinearFourChannelMobiusLogPacket where
  aa : ℝ
  ag : ℕ → ℝ
  ga : ℕ → ℝ
  gg : ℕ → ℕ → ℝ

/-- Literal two-variable divisor-log transform preserving AA/AG/GA/GG. -/
def linearFourChannelMobiusLogTransform
    (P : LinearFourChannelMobiusLogPacket) (n m : ℕ) : ℝ :=
  P.aa +
  mobiusLogDivisorRow P.ag m +
  mobiusLogDivisorRow P.ga n +
  ∑ d ∈ n.divisors, ∑ e ∈ m.divisors,
    P.gg d e * Real.log (n / d : ℕ) * Real.log (m / e : ℕ)

/-- Rank-one augmented product embedded into the genuine linear packet. -/
def augmentedProductFourChannelPacket
    (x y : AugmentedMobiusLogData) : LinearFourChannelMobiusLogPacket where
  aa := x.anchor * y.anchor
  ag := fun e => x.anchor * y.genuine e
  ga := fun d => x.genuine d * y.anchor
  gg := fun d e => x.genuine d * y.genuine e

theorem linearTransform_augmentedProduct_eq_pairMap
    (x y : AugmentedMobiusLogData) (n m : ℕ) :
    linearFourChannelMobiusLogTransform
        (augmentedProductFourChannelPacket x y) n m =
      augmentedMobiusLogPairMap x y n m := by
  unfold linearFourChannelMobiusLogTransform
    augmentedProductFourChannelPacket augmentedMobiusLogPairMap
    mobiusLogDivisorRow
  simp_rw [Finset.mul_sum, Finset.sum_mul]
  ring

/-- Difference of two actual rank-one packets is represented linearly, without
claiming that the difference remains rank one. -/
def linearFourChannelPacketSub
    (P Q : LinearFourChannelMobiusLogPacket) :
    LinearFourChannelMobiusLogPacket where
  aa := P.aa - Q.aa
  ag := fun e => P.ag e - Q.ag e
  ga := fun d => P.ga d - Q.ga d
  gg := fun d e => P.gg d e - Q.gg d e

theorem linearTransform_sub
    (P Q : LinearFourChannelMobiusLogPacket) (n m : ℕ) :
    linearFourChannelMobiusLogTransform (linearFourChannelPacketSub P Q) n m =
      linearFourChannelMobiusLogTransform P n m -
        linearFourChannelMobiusLogTransform Q n m := by
  unfold linearFourChannelMobiusLogTransform linearFourChannelPacketSub
  simp_rw [sub_mul, Finset.sum_sub_distrib]
  ring

/-- Actual centered product packet from the authenticated Möbius data. -/
def actualCenteredFourChannelPacket : LinearFourChannelMobiusLogPacket :=
  augmentedProductFourChannelPacket
    actualCenteredMobiusLogData actualCenteredMobiusLogData

theorem actualCenteredFourChannelPacket_commutes
    (n h : ℕ) :
    linearFourChannelMobiusLogTransform actualCenteredFourChannelPacket n (n + h) =
      centeredMobiusLogDivisorPairBlock n h := by
  rw [actualCenteredFourChannelPacket,
    linearTransform_augmentedProduct_eq_pairMap,
    actual_augmentedMobiusLogPairMap_eq_centeredPairBlock]

/-- Coordinate (1,1) recovers AA. -/
theorem linearFourChannelTransform_one_one
    (P : LinearFourChannelMobiusLogPacket) :
    linearFourChannelMobiusLogTransform P 1 1 = P.aa := by
  unfold linearFourChannelMobiusLogTransform mobiusLogDivisorRow
  simp

/-- With AA removed, the n=1 axis is exactly the AG divisor-log transform. -/
theorem linearFourChannelTransform_one_right
    (P : LinearFourChannelMobiusLogPacket) (m : ℕ) :
    linearFourChannelMobiusLogTransform P 1 m =
      P.aa + mobiusLogDivisorRow P.ag m := by
  unfold linearFourChannelMobiusLogTransform mobiusLogDivisorRow
  simp

/-- With AA removed, the m=1 axis is exactly the GA divisor-log transform. -/
theorem linearFourChannelTransform_left_one
    (P : LinearFourChannelMobiusLogPacket) (n : ℕ) :
    linearFourChannelMobiusLogTransform P n 1 =
      P.aa + mobiusLogDivisorRow P.ga n := by
  unfold linearFourChannelMobiusLogTransform mobiusLogDivisorRow
  simp

/-- After subtracting AA/AG/GA, the remaining rectangle is the literal double
divisor-log transform of GG. -/
def linearFourChannelGGResidual
    (P : LinearFourChannelMobiusLogPacket) (n m : ℕ) : ℝ :=
  linearFourChannelMobiusLogTransform P n m -
    P.aa - mobiusLogDivisorRow P.ag m - mobiusLogDivisorRow P.ga n

theorem linearFourChannelGGResidual_eq
    (P : LinearFourChannelMobiusLogPacket) (n m : ℕ) :
    linearFourChannelGGResidual P n m =
      ∑ d ∈ n.divisors, ∑ e ∈ m.divisors,
        P.gg d e * Real.log (n / d : ℕ) * Real.log (m / e : ℕ) := by
  unfold linearFourChannelGGResidual linearFourChannelMobiusLogTransform
  ring

/-- One-variable view of a GG row after fixing the first divisor coordinate. -/
def ggColumnRow
    (P : LinearFourChannelMobiusLogPacket) (d : ℕ) : ℕ → ℝ :=
  fun e => P.gg d e

/-- Exact genuine diagonal coefficient of the double transform. -/
theorem gg_diagonal_coefficient
    (P : LinearFourChannelMobiusLogPacket) (d e : ℕ) :
    P.gg d e * Real.log 2 * Real.log 2 =
      P.gg d e * (Real.log 2)^2 := by ring

/-- Recovered coefficients through N determine every divisor-log row through 2N:
a divisor r>N occurring in n<=2N must be r=n, and its log(n/r)=log 1 term vanishes. -/
theorem mobiusLogDivisorRow_eq_of_coeff_eq_through_N
    {N n : ℕ} (hn : 1 ≤ n) (hn2N : n ≤ 2 * N)
    (a b : ℕ → ℝ)
    (hab : ∀ d, 1 ≤ d → d ≤ N → a d = b d) :
    mobiusLogDivisorRow a n = mobiusLogDivisorRow b n := by
  unfold mobiusLogDivisorRow
  apply Finset.sum_congr rfl
  intro d hd
  have hdpos : 1 ≤ d := Nat.pos_of_mem_divisors hd
  have hddvd : d ∣ n := Nat.dvd_of_mem_divisors hd
  by_cases hdN : d ≤ N
  · rw [hab d hdpos hdN]
  · have hdn : d = n := by
      have hdle : d ≤ n := Nat.le_of_dvd (by omega) hddvd
      by_contra hne
      have hdlt : d < n := lt_of_le_of_ne hdle hne
      obtain ⟨k, hk⟩ := hddvd
      have hk2 : 2 ≤ k := by
        have hk0 : k ≠ 0 := by
          intro hk0
          subst k
          simp at hk
        have hk1 : k ≠ 1 := by
          intro hk1
          subst k
          simp at hk
          omega
        omega
      have : 2 * d ≤ n := by nlinarith [hk]
      omega
    subst d
    simp

/-- Rectangle injectivity for the full linear four-channel packet, factored
through AA, the two one-variable axes, and the two-stage GG residual theorem. -/
theorem linearFourChannel_twoN_reconstruct_clean
    {N : ℕ} (hN : 1 ≤ N)
    (P Q : LinearFourChannelMobiusLogPacket)
    (hout : ∀ n m, 1 ≤ n → n ≤ 2 * N → 1 ≤ m → m ≤ 2 * N →
      linearFourChannelMobiusLogTransform P n m =
        linearFourChannelMobiusLogTransform Q n m) :
    P.aa = Q.aa ∧
    (∀ e, 1 ≤ e → e ≤ N → P.ag e = Q.ag e) ∧
    (∀ d, 1 ≤ d → d ≤ N → P.ga d = Q.ga d) ∧
    (∀ d e, 1 ≤ d → d ≤ N → 1 ≤ e → e ≤ N →
      P.gg d e = Q.gg d e) := by
  have haa : P.aa = Q.aa := by
    have h := hout 1 1 (by omega) (by omega) (by omega) (by omega)
    simpa [linearFourChannelTransform_one_one] using h
  have hag : ∀ e, 1 ≤ e → e ≤ N → P.ag e = Q.ag e := by
    apply truncatedMobiusLogConvolution_twoN_reconstruct
    intro m hm hm2N
    have h := hout 1 m (by omega) (by omega) hm hm2N
    rw [linearFourChannelTransform_one_right,
      linearFourChannelTransform_one_right, haa] at h
    exact h
  have hga : ∀ d, 1 ≤ d → d ≤ N → P.ga d = Q.ga d := by
    apply truncatedMobiusLogConvolution_twoN_reconstruct
    intro n hn hn2N
    have h := hout n 1 hn hn2N (by omega) (by omega)
    rw [linearFourChannelTransform_left_one,
      linearFourChannelTransform_left_one, haa] at h
    exact h
  have hres : ∀ n m, 1 ≤ n → n ≤ 2 * N → 1 ≤ m → m ≤ 2 * N →
      linearFourChannelGGResidual P n m =
        linearFourChannelGGResidual Q n m := by
    intro n m hn hn2N hm hm2N
    apply ggResidual_eq_of_channels_eq
    · exact hout n m hn hn2N hm hm2N
    · exact haa
    · exact mobiusLogDivisorRow_eq_of_coeff_eq_through_N
        hm hm2N P.ag Q.ag hag
    · exact mobiusLogDivisorRow_eq_of_coeff_eq_through_N
        hn hn2N P.ga Q.ga hga
  refine ⟨haa, hag, hga, ?_⟩
  exact gg_twoN_reconstruct_of_residual_eq P Q hres

/-- Backward-compatible theorem name, now delegated to the clean two-stage
proof. -/
theorem linearFourChannel_twoN_reconstruct
    {N : ℕ} (hN : 1 ≤ N)
    (P Q : LinearFourChannelMobiusLogPacket)
    (hout : ∀ n m, 1 ≤ n → n ≤ 2 * N → 1 ≤ m → m ≤ 2 * N →
      linearFourChannelMobiusLogTransform P n m =
        linearFourChannelMobiusLogTransform Q n m) :
    P.aa = Q.aa ∧
    (∀ e, 1 ≤ e → e ≤ N → P.ag e = Q.ag e) ∧
    (∀ d, 1 ≤ d → d ≤ N → P.ga d = Q.ga d) ∧
    (∀ d e, 1 ≤ d → d ≤ N → 1 ≤ e → e ≤ N →
      P.gg d e = Q.gg d e) :=
  linearFourChannel_twoN_reconstruct_clean hN P Q hout

/-- For fixed second output coordinate m, the GG residual is exactly a
one-variable divisor-log transform in n. Its coefficient at d is itself the
m-row transform of the d-th GG row. -/
def ggFirstStageCoefficient
    (P : LinearFourChannelMobiusLogPacket) (m d : ℕ) : ℝ :=
  mobiusLogDivisorRow (fun e => P.gg d e) m

theorem linearFourChannelGGResidual_eq_firstStage
    (P : LinearFourChannelMobiusLogPacket) (n m : ℕ) :
    linearFourChannelGGResidual P n m =
      mobiusLogDivisorRow (ggFirstStageCoefficient P m) n := by
  rw [linearFourChannelGGResidual_eq]
  unfold mobiusLogDivisorRow ggFirstStageCoefficient
  simp_rw [Finset.mul_sum, Finset.sum_mul]
  ring

/-- Equality of full outputs on the rectangle implies equality of GG residuals
once the already-reconstructed AA/AG/GA channels are subtracted. -/
theorem ggResidual_eq_of_channels_eq
    {P Q : LinearFourChannelMobiusLogPacket} {n m : ℕ}
    (hout : linearFourChannelMobiusLogTransform P n m =
      linearFourChannelMobiusLogTransform Q n m)
    (haa : P.aa = Q.aa)
    (hagrow : mobiusLogDivisorRow P.ag m = mobiusLogDivisorRow Q.ag m)
    (hgarow : mobiusLogDivisorRow P.ga n = mobiusLogDivisorRow Q.ga n) :
    linearFourChannelGGResidual P n m =
      linearFourChannelGGResidual Q n m := by
  unfold linearFourChannelGGResidual
  rw [hout, haa, hagrow, hgarow]

/-- Clean two-stage GG rectangle recovery, assuming equality of the already
separated AA/AG/GA row transforms. -/
theorem gg_twoN_reconstruct_of_residual_eq
    {N : ℕ}
    (P Q : LinearFourChannelMobiusLogPacket)
    (hres : ∀ n m, 1 ≤ n → n ≤ 2 * N → 1 ≤ m → m ≤ 2 * N →
      linearFourChannelGGResidual P n m =
        linearFourChannelGGResidual Q n m) :
    ∀ d e, 1 ≤ d → d ≤ N → 1 ≤ e → e ≤ N →
      P.gg d e = Q.gg d e := by
  intro d e hd hdN he heN
  have hfirst : ∀ m, 1 ≤ m → m ≤ 2 * N →
      ggFirstStageCoefficient P m d = ggFirstStageCoefficient Q m d := by
    intro m hm hm2N
    apply truncatedMobiusLogConvolution_twoN_reconstruct
    intro n hn hn2N
    rw [← linearFourChannelGGResidual_eq_firstStage,
      ← linearFourChannelGGResidual_eq_firstStage]
    exact hres n m hn hn2N hm hm2N
  apply truncatedMobiusLogConvolution_twoN_reconstruct
  intro m hm hm2N
  exact hfirst m hm hm2N

end GRWTSK.RiemannHypothesis
