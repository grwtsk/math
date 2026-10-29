/-
PrimePowerListProductsAndOrdering - exact source component
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: fddb7254af4db2e0f33b06b6838470675eb77ec424931947f998d68673b6fb32
Organized SHA-256: 43d2362105aa3fc1ac8e921c76035b4aa8e5364e1e6791fe29b6d688f07ef480
PMD: 510.2.010.010.060 prime factorization (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/-
Scope: Whole prime-power factor list, fold-right product, pairwise increasing-prime predicate and canonical flag with both exact empty/cons decoding proofs. PrimePower retains primality and positive-exponent premises. This is a list/product unit; no branching tree, sorting algorithm, unique factorization theorem or canonical reconstruction is invented. All original namespace and control blocks are copied unchanged. Only listed same-source public companion imports are added; original imported providers remain literal and unreplayed.
-/

import Folder.NumberTheory.PrimePower

/-!
# Folder.CellularArithmetic.ArithmeticTree

Radiation role: cellular-arithmetic
BinaryMatrix spine: This module organizes prime-factor cellular arithmetic before data is encoded into BinaryMatrix carriers.
Ontology: ca.cellular_arithmetic_tree
Pivot role: arithmetic
Zero typology: none
Contract boundary: definition
Composite stack role: arithmetic
-/

namespace Folder
namespace CellularArithmetic

structure CellularArithmeticTree where
  factors : List NumberTheory.PrimePower

namespace CellularArithmeticTree

def decode (T : CellularArithmeticTree) : Nat :=
  T.factors.foldr (fun P acc => P.value * acc) 1

def PrimeStrictlyIncreasing
    (xs : List NumberTheory.PrimePower) : Prop :=
  xs.Pairwise (fun a b => a.prime < b.prime)

def Canonical
    (T : CellularArithmeticTree) : Prop :=
  PrimeStrictlyIncreasing T.factors

@[simp]
theorem decode_empty :
    ({ factors := [] } : CellularArithmeticTree).decode = 1 :=
  rfl

theorem decode_cons
    (P : NumberTheory.PrimePower)
    (xs : List NumberTheory.PrimePower) :
    ({ factors := P :: xs } : CellularArithmeticTree).decode =
      P.value * ({ factors := xs } : CellularArithmeticTree).decode := by
  rfl

end CellularArithmeticTree
end CellularArithmetic
end Folder
