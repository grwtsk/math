/-
BinaryTreeAndSizeStatistics — exact source component
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 4a5a71f37b0f76ff04cf0e649caedb9437e6dca293ca6f4445aaf28460db26cc
Organized SHA-256: 235410b2a326405c7b2e6276ee14af1ac66f1bf43103196339ca1f7f21929c0d
PMD: 510.7.010.030.070 trees (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/-
Scope: The complete ordered rooted binary-tree datatype, all three size/depth functions, the leaf/internal identity, and mirror with all three exact involution/size proofs. The finite constructor datatype is preserved whole, including deriving commands. No unrelated historical tree variant is replaced. Original namespace blocks are copied unchanged; the physical subject path does not rename declarations or add a logical wrapper. Only explicit same-source public companion imports are added where listed. Historical imported representations remain distinct and unreplayed.
-/

import Folder.Basic

/-!
# Folder.Catalan.Tree

Radiation role: torsion-action
BinaryMatrix spine: This module records torsion, monodromy, or cohomological actions downstream of shell/phase data.
Ontology: catalan.ctree
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: infrastructure
-/


namespace Folder
namespace Catalan

inductive CTree where
  | leaf : CTree
  | node : CTree → CTree → CTree
deriving DecidableEq, Repr

namespace CTree

def internal : CTree → Nat
  | leaf => 0
  | node l r => internal l + internal r + 1

def leaves : CTree → Nat
  | leaf => 1
  | node l r => leaves l + leaves r

def depth : CTree → Nat
  | leaf => 0
  | node l r => Nat.succ (max (depth l) (depth r))

@[simp]
theorem leaves_eq_internal_add_one :
    ∀ T : CTree, T.leaves = T.internal + 1 := by
  intro T
  induction T with
  | leaf => rfl
  | node l r ihl ihr =>
      simp [leaves, internal, ihl, ihr]
      omega

end CTree
end Catalan
end Folder
