/-
Exact structural node count and heterogeneous child sum
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: fc9353d640083726b1f5cf0deeec68b19b8b44ea4ef5c34cc2dd50c35605ce0c
Organized SHA-256: bfdca4371836affddd3e299e29c419d9b01fb429f5f5a2fcee1b0a7348c45e56
PMD: 510.0.070.020.060 inductive families (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

import GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.InductiveFamilies.IndexedRuleDerivationSyntax.Variantfc9353d640083726.CompleteFamilyAndRoot

import Atomize.Formal.IndexedAll
import Atomize.Formal.KernelPresentation

/-!
# Raw derivations

**Architectural problem:** A proof-reification layer needs a finite object whose
every child is a genuine rule premise, rather than an untyped syntax tree with
decorative or disconnected nodes.

**Important data and indices:** `RawDer K J` is indexed by presentation `K` and
exact root judgment `J`.  Each node stores a `K.Rule` indexed by its full premise
list and conclusion plus one child derivation at every premise judgment.

**Type-enforced invariant:** A child with the wrong universe context, local
context, claim, or premise position cannot inhabit the required `IndexedAll`.
Rules may retain project-internal constants; raw derivations are intentionally
not boundary-only objects.

**Layer boundary:** This is abstract represented syntax, not a recovered
historical Lean kernel trace.  Completeness and replay acceptance require a
later concrete adapter and validation pipeline.

**Worked example:** The private `derivation` fixture in `Examples.lean` has a
unary rule with one child leaf that references `Project.helper`.  That name remains visible in
`constantReferences` instead of being relabeled as a trusted boundary fact.

**Used by:** `Comp` structurally maps raw derivations to `TreePlan`; `BClosed`
checks whether their constant references fit a fixed boundary.

**Proof idea:** Size, height, and reference accounting recurse over the node and
its heterogeneous child list.

**Equality notion:** Derivation equality is propositional equality of the exact
inductive syntax, including rule payload and children; no normalization or
alpha quotient is hidden here.

**Boundary cases:** A leaf has an empty premise list, size and height one, and
may contribute a leaf origin.  An internal node cannot contribute a leaf origin
through `KernelPresentation.leafOrigin?`.

**Validation consequence:** The finite structural facts can be kernel checked,
but they validate only values already constructed in the supplied abstract
presentation.
-/

open Atomize.Formal

namespace GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.InductiveFamilies.IndexedRuleDerivationSyntax.Variantfc9353d640083726

universe u

namespace RawDer

mutual
  /--
  **Architectural problem:** Structural cost needs an exact node count.
  **Important data and indices:** The input is a `RawDer K J` at arbitrary `J`.
  **Type-enforced invariant:** Every indexed child is counted recursively.
  **Layer boundary:** This is syntax size, not source bytes or build cost.
  **Worked example:** An empty-premise leaf has size one.
  **Used by:** `size_comp` and later cost diagnostics.
  **Proof idea:** Count the root and sum all child sizes.
  **Equality notion:** The result is ordinary natural-number equality.
  **Boundary cases:** A leaf contributes one through the empty auxiliary sum.
  **Validation consequence:** Compilation can be checked for node-count loss.
  -/
  def size {K : KernelPresentation.{u}} {J : K.Judgment} :
      RawDer K J → Nat
    | .node _ children => 1 + sizeAll children

  /--
  **Architectural problem:** Heterogeneous children require a scoped size fold.
  **Important data and indices:** `js` fixes every child's judgment.
  **Type-enforced invariant:** Only children from the indexed premise list enter.
  **Layer boundary:** This is the private recursion shape exposed for proofs.
  **Worked example:** `.nil` sums to zero.
  **Used by:** `size` and simultaneous size-preservation induction.
  **Proof idea:** Add the head size to the recursive tail sum.
  **Equality notion:** Values compare as natural numbers.
  **Boundary cases:** The empty indexed list returns zero.
  **Validation consequence:** Every premise subtree is accounted for once.
  -/
  def sizeAll {K : KernelPresentation.{u}} {js : List K.Judgment} :
      IndexedAll (RawDer K) js → Nat
    | .nil => 0
    | .cons head tail => size head + sizeAll tail
end

end RawDer

end GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.InductiveFamilies.IndexedRuleDerivationSyntax.Variantfc9353d640083726
