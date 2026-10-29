/-
Whole mutual node-count fold over exact indexed rule trees
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 3796440d528d629e1013fbf23330d16dd11c350a1e7b440a132e2c3ed933c57e
Organized SHA-256: e9a9e7497fb17d71508da508199c2104fb4751b9a26d65e8ad66ec18fb0ed40d
PMD: 510.0.070.020.060 inductive families (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/


/- Entire original mutual size/sizeAll pair, with all indexed constructors and1/sum/zero cases. No sharing compression, build cost or count-preservation theorem is added. -/

import Atomize.Formal.RawDerivation

import GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.InductiveFamilies.ScopedRuleTrees.Variant3796440d528d629e.IndexedTreeAndRoot

/-!
# Local tree plans

**Architectural problem:** Planning needs a representation distinct from the
raw derivation so later releases can attach source links, costs, and sharing
without changing the meaning of `RawDer`.

**Important data and indices:** `TreePlan K J` uses the same exact judgment and
premise indices as `RawDer K J`, but has its own inductive constructors.

**Type-enforced invariant:** Every plan child inhabits the exact judgment named
by the corresponding rule premise.  Binder scope and universe context therefore
remain part of node identity.

**Layer boundary:** This M1a object is a local tree, not the finite shared DAG
required by later M1 work.  It neither hash-conses equal subplans nor claims a
concrete Lean replay trace.

**Worked example:** `Comp Examples.derivation` retains the unary root and its
`Project.helper` leaf.  Two textually similar subplans in different local
contexts remain different because their full judgment indices differ.

**Used by:** `Eval` recovers raw syntax; later DAG compression may use this tree
only after exact scoped equality and structural equality checks.

**Proof idea:** Plan metrics recurse over the same indexed child structure as
raw-derivation metrics, enabling structural preservation proofs.

**Equality notion:** Equality is propositional equality of this inductive tree,
not graph bisimulation, alpha-equivalence, or normalized Lean expression
equality.

**Boundary cases:** A plan can be a one-node leaf.  It may still reference an
internal project constant; only the separate `BTreePlan` subtype is boundary
restricted.

**Validation consequence:** Constructing a `TreePlan` proves only structural
well-indexing relative to `K`; it does not establish that a Lean declaration
was historically elaborated this way.
-/

open Atomize.Formal

namespace GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.InductiveFamilies.ScopedRuleTrees.Variant3796440d528d629e

universe u

namespace TreePlan

mutual
  /--
  **Architectural problem:** Plan cost needs an exact structural node count.
  **Important data and indices:** The input is indexed by presentation and root.
  **Type-enforced invariant:** Every indexed child is counted.
  **Layer boundary:** This is tree size, not shared-DAG or build cost.
  **Worked example:** A plan leaf has size one.
  **Used by:** `size_comp` and structural diagnostics.
  **Proof idea:** Count the root and sum child sizes.
  **Equality notion:** Results compare as natural numbers.
  **Boundary cases:** Empty children contribute zero to the sum.
  **Validation consequence:** M1a compilation can be checked for node loss.
  -/
  def size {K : KernelPresentation.{u}} {J : K.Judgment} :
      TreePlan K J → Nat
    | .node _ children => 1 + sizeAll children

  /--
  **Architectural problem:** Heterogeneous plan children need an indexed size fold.
  **Important data and indices:** `js` fixes every child judgment.
  **Type-enforced invariant:** Only the indexed child list contributes.
  **Layer boundary:** This is an auxiliary tree metric.
  **Worked example:** `.nil` sums to zero.
  **Used by:** `TreePlan.size` and its preservation induction.
  **Proof idea:** Add head size and recursive tail size.
  **Equality notion:** Values use natural-number equality.
  **Boundary cases:** Empty input returns zero.
  **Validation consequence:** Each premise plan is counted once.
  -/
  def sizeAll {K : KernelPresentation.{u}} {js : List K.Judgment} :
      IndexedAll (TreePlan K) js → Nat
    | .nil => 0
    | .cons head tail => size head + sizeAll tail
end

end TreePlan

end GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.InductiveFamilies.ScopedRuleTrees.Variant3796440d528d629e
