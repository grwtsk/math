/-
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Codex relay: dd723854-040c-48a4-9972-20236f6003cf.
-/
import Mathlib.NumberTheory.ArithmeticFunction.VonMangoldt
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis

/-- Actual finite truncation of the Möbius-log Dirichlet convolution on
1 <= n <= N. The input is an arbitrary coefficient packet a(d); specializing
a=μ recovers Λ on the positive truncation. -/
def truncatedMobiusLogConvolution
    (N : ℕ) (a : ℕ → ℝ) (n : ℕ) : ℝ :=
  if 1 ≤ n ∧ n ≤ N then
    ∑ d ∈ n.divisors, a d * Real.log (n / d : ℕ)
  else 0

/-- Basis packet at arithmetic coefficient d. -/
def natBasisPacket (p : ℕ) : ℕ → ℝ :=
  fun d => if d = p then 1 else 0

/-- On positive n, the finite operator is exactly the ordinary divisor
convolution with log. -/
theorem truncatedMobiusLogConvolution_eq_divisorSum
    {N n : ℕ} (hnpos : 1 ≤ n) (hnN : n ≤ N) (a : ℕ → ℝ) :
    truncatedMobiusLogConvolution N a n =
      ∑ d ∈ n.divisors, a d * Real.log (n / d : ℕ) := by
  simp [truncatedMobiusLogConvolution, hnpos, hnN]

/-- Actual μ specialization equals von Mangoldt on 1 <= n <= N. -/
theorem truncatedMobiusLogConvolution_moebius_eq_vonMangoldt
    {N n : ℕ} (hnpos : 1 ≤ n) (hnN : n ≤ N) :
    truncatedMobiusLogConvolution N
        (fun d => (ArithmeticFunction.moebius d : ℝ)) n =
      ArithmeticFunction.vonMangoldt n := by
  rw [truncatedMobiusLogConvolution_eq_divisorSum hnpos hnN]
  have h :=
    congrArg (fun f : ArithmeticFunction ℝ => f n)
      ArithmeticFunction.moebius_mul_log_eq_vonMangoldt
  simp only [ArithmeticFunction.mul_apply, ArithmeticFunction.log_apply,
    ArithmeticFunction.intCoe_apply] at h
  rw [Nat.sum_divisorsAntidiagonal (fun i j =>
    (ArithmeticFunction.moebius i : ℝ) * Real.log (j : ℝ))] at h
  exact h

/-- If p is in the strict upper half of [1,N], any n<=N divisible by p is p
itself. No primality assumption is needed. -/
theorem eq_of_upperHalf_dvd
    {N p n : ℕ}
    (hp : N < 2 * p)
    (hnpos : 1 ≤ n)
    (hnN : n ≤ N)
    (hpdvd : p ∣ n)
    (_ppos : 1 ≤ p) :
    n = p := by
  obtain ⟨k, rfl⟩ := hpdvd
  have hk : 1 ≤ k := by
    by_contra hk0
    have : k = 0 := by omega
    subst k
    simp at hnpos
  by_cases hk1 : k = 1
  · simp [hk1]
  · have hk2 : 2 ≤ k := by omega
    have : 2 * p ≤ p * k := by nlinarith
    nlinarith

/-- Exact information loss: every basis column supported at p>N/2 is zero on
the complete truncated output 1..N. -/
theorem truncatedMobiusLogConvolution_upperHalf_basis_zero
    {N p : ℕ}
    (ppos : 1 ≤ p)
    (_hpN : p ≤ N)
    (hp : N < 2 * p) :
    ∀ n : ℕ,
      truncatedMobiusLogConvolution N (natBasisPacket p) n = 0 := by
  intro n
  by_cases hn : 1 ≤ n ∧ n ≤ N
  · rw [truncatedMobiusLogConvolution_eq_divisorSum hn.1 hn.2]
    apply Finset.sum_eq_zero
    intro d hd
    by_cases hdp : d = p
    · subst d
      have hpdvd : p ∣ n := Nat.dvd_of_mem_divisors hd
      have hnp : n = p :=
        eq_of_upperHalf_dvd hp hn.1 hn.2 hpdvd ppos
      subst n
      simp [natBasisPacket]
    · simp [natBasisPacket, hdp]
  · simp [truncatedMobiusLogConvolution, hn]

/-- The entire upper-half coefficient subspace is invisible to the truncated
operator. -/
theorem truncatedMobiusLogConvolution_upperHalf_supported_zero
    {N : ℕ} (a : ℕ → ℝ)
    (hsupp : ∀ d, a d ≠ 0 → N < 2 * d) :
    ∀ n : ℕ,
      truncatedMobiusLogConvolution N a n = 0 := by
  intro n
  by_cases hn : 1 ≤ n ∧ n ≤ N
  · rw [truncatedMobiusLogConvolution_eq_divisorSum hn.1 hn.2]
    apply Finset.sum_eq_zero
    intro d hd
    by_cases had : a d = 0
    · simp [had]
    · have hdUpper := hsupp d had
      have hddvd : d ∣ n := Nat.dvd_of_mem_divisors hd
      have hdpos : 1 ≤ d := Nat.pos_of_mem_divisors hd
      have hnd : n = d :=
        eq_of_upperHalf_dvd hdUpper hn.1 hn.2 hddvd hdpos
      subst n
      simp
  · simp [truncatedMobiusLogConvolution, hn]

/-- Exact limitation of the obstruction: this kernel theorem concerns arbitrary
coefficient differences a. It becomes an obstruction to an actual constrained
arithmetic packet family only after one proves that a nonzero upper-half
supported difference occurs between two admissible packets. -/
theorem upperHalf_kernel_requires_actual_packet_difference
    {N : ℕ}
    (D : Set (ℕ → ℝ))
    (a : ℕ → ℝ)
    (ha : a ∈ D)
    (hane : a ≠ 0)
    (hsupp : ∀ d, a d ≠ 0 → N < 2 * d) :
    a ∈ D ∧ a ≠ 0 ∧
      (∀ n, truncatedMobiusLogConvolution N a n = 0) := by
  exact ⟨ha, hane,
    truncatedMobiusLogConvolution_upperHalf_supported_zero a hsupp⟩

end GRWTSK.RiemannHypothesis

#print axioms GRWTSK.RiemannHypothesis.truncatedMobiusLogConvolution_upperHalf_basis_zero
#print axioms GRWTSK.RiemannHypothesis.truncatedMobiusLogConvolution_upperHalf_supported_zero
