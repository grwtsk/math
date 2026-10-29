/-
OneHotMatrixAction — exact individually reviewed source
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 3fe87eee19f8fad08167a030e6b55050e3553b8681b2800fe59087ee12f81ef6
Organized SHA-256: 415fc08d98a2c5427ffc04ab3d5352766a3af4b951e6dc87ccdb79b32a53ee56
PMD: 510.1.070 linear algebra (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Separate complete projection/canonical construction/row-column uniqueness and entry formula; one-hot state-vector action and square-identity matrix; complete linear map/equivalence/involution/injectivity/kernel consequences. Every original variable and proof is copied. Original namespaces are retained to preserve exact method/type-extension lookup; physical subject placement is GRWTSK. Distinct historical versions are separate uncompiled files and are not admitted together to an umbrella. -/

import BitMatrix.Geometry.GlobalProjection
import BitMatrix.FiniteField.Galois
import DAF.FiniteDynamics.Involution
import Mathlib.LinearAlgebra.Matrix.ToLin

import GRWTSK.Algebra.LinearAlgebra.FiniteBooleanStructure.Variant3fe87eee19f8fad0.CertifiedPermutationProjection

/-!
# Binary matrix realization of a certified finite involution

The state action is encoded as a Boolean permutation matrix and separately as
a matrix over `ZMod 2`.  The two representations are connected entrywise.
The resulting `ZMod 2` action squares to the identity, but its determinant is
not used to infer integral permutation parity, orientation, or move legality.
-/

open FinitePermutationDynamics

namespace BitMatrix.Algebra.InvolutionProjection

variable {X : Type*} [Fintype X] [DecidableEq X]

variable (P : BitMatrix.Algebra.InvolutionProjection X)

/-- One-hot vector representing a state under the selected encoding. -/
def stateVector (x : X) : Fin P.width → ZMod 2 :=
  fun i => if P.encode x = i then 1 else 0

@[simp]
theorem stateVector_apply (x : X) (i : Fin P.width) :
    P.stateVector x i = if P.encode x = i then 1 else 0 :=
  rfl

/-- Matrix action commutes with the encoded state action. -/
theorem mulVec_stateVector (x : X) :
    P.f2Matrix.mulVec (P.stateVector x) =
      P.stateVector (P.source.act x) := by
  funext i
  classical
  rw [Matrix.mulVec, dotProduct]
  let j := P.encode x
  rw [Finset.sum_eq_single j]
  · simp [P.f2Matrix_eq_ite, stateVector, j]
  · intro b _ hb
    have hne : P.encode x ≠ b := by simpa [j] using hb.symm
    simp [stateVector, hne]
  · simp

/-- The `GF(2)` permutation matrix of the involution squares to identity. -/
theorem f2Matrix_mul_self : P.f2Matrix * P.f2Matrix = 1 := by
  ext i j
  classical
  rw [Matrix.mul_apply]
  let k := P.encode (P.source.act (P.encode.symm j))
  rw [Finset.sum_eq_single k]
  · simp [P.f2Matrix_eq_ite, k, Matrix.one_apply, eq_comm]
  · intro b _ hb
    have hne : P.encode (P.source.act (P.encode.symm j)) ≠ b := by
      simpa [k] using hb.symm
    simp [P.f2Matrix_eq_ite, hne]
  · simp

end BitMatrix.Algebra.InvolutionProjection
