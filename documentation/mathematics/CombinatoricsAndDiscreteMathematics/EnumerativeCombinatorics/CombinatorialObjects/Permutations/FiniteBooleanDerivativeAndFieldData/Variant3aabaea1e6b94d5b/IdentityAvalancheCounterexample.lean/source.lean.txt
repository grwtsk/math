/-
IdentityAvalancheCounterexample — exact individually reviewed source
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 3aabaea1e6b94d5b07c708e43795b4c39aa5a298bf88964eeb2f1f83ff5ddf0c
Organized SHA-256: 4687f67b690e5415243817699c85526f104c35e7633c77671b6d20a5052ac531
PMD: 510.7.010.030.010 permutations (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Complete identity-permutation counterexample and constant local-quantizer image, all exact positive-width hypotheses and private singleton proof retained. Original containing namespaces remain exact for historical type/method extensions; physical mathematical taxonomy is GRWTSK. No joint admission of duplicate historical declarations or provider replacement is asserted. -/

import BitMatrix.Quantization.Core
import BitMatrix.Reduction.SAT
import Mathlib.Algebra.BigOperators.Ring.Nat
import Mathlib.Algebra.BigOperators.Field
import Mathlib.Algebra.Order.BigOperators.Group.Finset
import Mathlib.Data.Finset.Powerset
import Mathlib.Data.Nat.Choose.Sum
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Positivity
import Mathlib.Tactic.Ring

import GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.MarginalDistributions.FiniteBooleanDerivativeAndFieldData.Variant3aabaea1e6b94d5b.MarginalBalanceScores

/-!
# Exact finite avalanche semantics

This module studies Boolean derivatives of fixed-width transformations using
`BitMatrix.Reduction.SAT.Bits`; no second bit-vector representation is introduced.

For a transformation `H` and input `x`, `localJacobian H x` is one exact
Boolean matrix.  Its `(i,j)` entry records whether output bit `j` changes when
input bit `i` is flipped at that particular input.  SAC entries are different:
they aggregate those local observations over the entire finite input domain.

Derivative values are constant on the two endpoints of every input-difference
edge.  A nonzero difference acts without fixed points, so every differential
fiber, and in particular every one-bit SAC count, is paired and therefore
even.  Injectivity rules out only the zero output difference; it does not force
the remaining differences to be balanced.  The identity permutation below is
the canonical counterexample to any claim that bijectivity alone supplies
avalanche diffusion.

The random-function weight law is binomial.  For a random permutation, the
two distinct endpoints of a fixed input edge must have distinct outputs, so
the corresponding law is the binomial law conditioned on a nonzero output
difference.  These are fixed-edge distributions (equivalently, ensemble
expectations of empirical edge histograms), not independence assertions about
all edges in one sampled function or permutation.

Finally, SAC scores measure marginal balance only.  Even perfect one-bit
marginals need not make different output-flip bits independent; the concrete
three-bit permutation in `BitMatrix.Tests.Avalanche` witnesses this with a
nonzero pair correlation.
-/

namespace BitMatrix.Dynamics.Avalanche

open BitMatrix.Reduction.SAT
open scoped BigOperators

/-! ## Identity-map counterexample -/

/-- The identity transformation is bijective at every width. -/
theorem identity_bijective {n : Nat} :
    Function.Bijective (id : Bits n → Bits n) :=
  Function.bijective_id

/-- The identity derivative in direction `i` is exactly the basis vector `i`. -/
theorem identity_bitDerivative {n : Nat} (i : Fin n) (x : Bits n) :
    bitDerivative (id : Bits n → Bits n) i x = basisBit i := by
  simp only [bitDerivative, derivative, id_eq]
  rw [← xorBits_assoc, xorBits_self, xorBits_zero_left]

/-- The identity flips exactly the corresponding output coordinate. -/
theorem identity_sacCount {n : Nat} (i j : Fin n) :
    sacCount (id : Bits n → Bits n) i j =
      if i = j then 2 ^ n else 0 := by
  classical
  simp only [sacCount, derivativeBit, identity_bitDerivative]
  by_cases hij : i = j
  · subst j
    simp [basisBit]
  · have hji : j ≠ i := Ne.symm hij
    simp [basisBit, hij, hji]

/-- The identity SAC entries are one on the diagonal and zero off it. -/
theorem identity_sacEntry {n : Nat} (i j : Fin n) :
    sacEntry (id : Bits n → Bits n) i j =
      if i = j then 1 else 0 := by
  rw [sacEntry, identity_sacCount]
  split_ifs
  · norm_num
  · simp

/-- Every positive-width identity permutation has zero absolute-bias score. -/
theorem identity_sacScore {n : Nat} (hn : 0 < n) :
    sacScore (id : Bits n → Bits n) = 0 := by
  have hterm (i j : Fin n) :
      |2 * sacEntry (id : Bits n → Bits n) i j - 1| = 1 := by
    rw [identity_sacEntry]
    by_cases hij : i = j
    · rw [if_pos hij]
      norm_num
    · rw [if_neg hij]
      norm_num
  rw [sacScore, if_neg (Nat.ne_of_gt hn)]
  simp [hterm, Nat.ne_of_gt hn]

/-- Every positive-width identity permutation has zero variance score. -/
theorem identity_varianceScore {n : Nat} (hn : 0 < n) :
    varianceScore (id : Bits n → Bits n) = 0 := by
  rw [varianceScore, if_neg (Nat.ne_of_gt hn)]
  simp [identity_sacEntry]

/--
Bijectivity alone gives no positive avalanche guarantee: at every positive
width, the bijective identity has both positivity scores equal to zero.
-/
theorem exists_bijective_with_zero_avalanche_scores {n : Nat} (hn : 0 < n) :
    ∃ H : Bits n → Bits n,
      Function.Bijective H ∧ sacScore H = 0 ∧ varianceScore H = 0 := by
  exact ⟨id, identity_bijective, identity_sacScore hn,
    identity_varianceScore hn⟩

/-- The identity local Jacobian is the Boolean identity matrix. -/
theorem identity_localJacobian {n : Nat} (x : Bits n) :
    localJacobian (id : Bits n → Bits n) x =
      fun i j => basisBit i j := by
  funext i j
  change bitDerivative (id : Bits n → Bits n) i x j = basisBit i j
  rw [identity_bitDerivative]

/-- The identity local Jacobian is independent of the input. -/
theorem identity_localJacobian_const {n : Nat} (x y : Bits n) :
    localJacobian (id : Bits n → Bits n) x =
      localJacobian (id : Bits n → Bits n) y := by
  rw [identity_localJacobian, identity_localJacobian]

private theorem identity_jacobian_effectiveStates_eq_singleton {n : Nat} :
    (jacobianQuantizer (id : Bits n → Bits n)).effectiveStates =
      {localJacobian (id : Bits n → Bits n) (zeroBits n)} := by
  classical
  ext A
  rw [BitMatrix.Quantizer.mem_effectiveStates_iff]
  simp only [Finset.mem_singleton]
  constructor
  · rintro ⟨x, hx⟩
    rw [jacobianQuantizer_encode,
      identity_localJacobian_const x (zeroBits n)] at hx
    exact hx.symm
  · intro hA
    refine ⟨zeroBits n, ?_⟩
    rw [jacobianQuantizer_encode]
    exact hA.symm

/-- The constant identity Jacobian realizes exactly one quantized state. -/
theorem identity_jacobian_effectiveStates_card {n : Nat} :
    (jacobianQuantizer (id : Bits n → Bits n)).effectiveStates.card = 1 := by
  rw [identity_jacobian_effectiveStates_eq_singleton]
  exact Finset.card_singleton _


end BitMatrix.Dynamics.Avalanche
