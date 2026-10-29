/-
IntegralPermutationLift — exact individually reviewed original source
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 4694af98a3c046e2f1c4ce590f2f80be94d8953d0f884afe0754d58177d5b6ba
Organized SHA-256: 1ad04b3fab4c174ddddf38f02f58a323325838f2cf8a53a31956f009af725377
PMD: 510.1.070.020 matrix theory (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Every finite carrier/Fintype/DecidableEq premise, whole supplied InvolutionProjection provider, encoded equivalence and certified involution identity remain historical. The integral 0/1 lift, entry formula, identity-submatrix equality and exact square identity retain every source proof. The exact original BitMatrix.Algebra.InvolutionProjection extension namespace remains outside any added container to preserve its fully qualified imported carrier identity. Physical maintained paths are under GRWTSK/actual PMD; distinct historical variants must not be jointly imported or substituted. -/

import BitMatrix.Algebra.InvolutionProjection
import Mathlib.GroupTheory.Perm.Sign
import Mathlib.LinearAlgebra.Matrix.Determinant.Basic

/-!
# Integral lift of a binary involution action matrix

The Boolean action matrix has a canonical integral `0/1` lift.  It is the
identity matrix with its columns permuted by the encoded state involution, so
its determinant is exactly the Mathlib permutation sign and hence `+1` or
`-1`.  This is an integral parity statement.  It is deliberately separate
from the `ZMod 2` matrix and from any orientation or move-legality judgment.
-/

open FinitePermutationDynamics

namespace BitMatrix.Algebra.InvolutionProjection

variable {X : Type*} [Fintype X] [DecidableEq X]

variable (P : BitMatrix.Algebra.InvolutionProjection X)

/-- The source involution transported to the encoded finite index type. -/
def encodedPerm : Equiv.Perm (Fin P.width) :=
  FinitePermutationDynamics.transport P.encode P.source.toPerm

theorem encodedPerm_apply (j : Fin P.width) :
    P.encodedPerm j = P.encode (P.source.act (P.encode.symm j)) :=
  rfl

@[simp]
theorem encodedPerm_symm : P.encodedPerm.symm = P.encodedPerm := by
  apply Equiv.ext
  intro j
  apply P.encodedPerm.injective
  rw [Equiv.apply_symm_apply]
  simp only [P.encodedPerm_apply]
  simp

@[simp]
theorem encodedPerm_apply_self (j : Fin P.width) :
    P.encodedPerm (P.encodedPerm j) = j := by
  rw [← P.encodedPerm_symm]
  exact P.encodedPerm.symm_apply_apply j

/-- Integral `0/1` lift of the Boolean action matrix. -/
def integralMatrix : Matrix (Fin P.width) (Fin P.width) ℤ :=
  fun i j => if P.actionMatrix i j then 1 else 0

theorem integralMatrix_eq_ite (i j : Fin P.width) :
    P.integralMatrix i j = if P.encodedPerm j = i then 1 else 0 := by
  unfold integralMatrix
  by_cases h : P.encodedPerm j = i
  · have hb : P.actionMatrix i j = true := (P.action_spec i j).mpr h
    simp [hb, h]
  · have hb : P.actionMatrix i j = false := by
      cases hvalue : P.actionMatrix i j
      · rfl
      · exact False.elim (h ((P.action_spec i j).mp hvalue))
    rw [if_neg h]
    simp [hb]

/-- The integral lift is the identity matrix with columns permuted. -/
theorem integralMatrix_eq_one_submatrix :
    P.integralMatrix =
      (1 : Matrix (Fin P.width) (Fin P.width) ℤ).submatrix id P.encodedPerm := by
  ext i j
  rw [P.integralMatrix_eq_ite]
  simp [Matrix.submatrix, Matrix.one_apply, eq_comm]

/-- The integral action remains an involution. -/
theorem integralMatrix_mul_self :
    P.integralMatrix * P.integralMatrix = 1 := by
  ext i j
  classical
  rw [Matrix.mul_apply]
  let k := P.encodedPerm j
  rw [Finset.sum_eq_single k]
  · have hk : P.encodedPerm k = j := by simp [k]
    simp [P.integralMatrix_eq_ite, k, hk, Matrix.one_apply, eq_comm]
  · intro b _ hb
    have hne : P.encodedPerm j ≠ b := by simpa [k] using hb.symm
    rw [P.integralMatrix_eq_ite, P.integralMatrix_eq_ite, if_neg hne]
    simp
  · simp

end BitMatrix.Algebra.InvolutionProjection
