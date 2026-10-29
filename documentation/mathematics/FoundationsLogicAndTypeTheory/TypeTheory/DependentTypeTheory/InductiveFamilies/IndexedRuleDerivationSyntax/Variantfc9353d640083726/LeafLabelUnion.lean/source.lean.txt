/-
Exact supplied leaf-origin-label finite-set fold
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
  **Architectural problem:** Leaf provenance must survive structural planning.
  **Important data and indices:** Origins are selected by `K` and attached only to leaves.
  **Type-enforced invariant:** Internal rules cannot directly manufacture origins.
  **Layer boundary:** Provenance labels are metadata, not proof authority.
  **Worked example:** The identity body reports `.introducedLocal`.
  **Used by:** Provenance audits and `leafOrigins_comp`.
  **Proof idea:** Union the current rule's leaf set with child origins.
  **Equality notion:** Results use exact finite-set equality.
  **Boundary cases:** Missing leaf provenance contributes `∅`.
  **Validation consequence:** Structural compilation can be checked not to lose origins.
  -/
  def leafOrigins {K : KernelPresentation.{u}} {J : K.Judgment} :
      RawDer K J → Finset K.LeafOrigin
    | .node rule children =>
        letI := K.leafOriginDecidableEq
        K.ruleLeafOrigins rule ∪ leafOriginsAll children

  /--
  **Architectural problem:** Provenance aggregation must traverse all premises.
  **Important data and indices:** `js` fixes each child's scoped judgment.
  **Type-enforced invariant:** The fold accepts only the indexed child sequence.
  **Layer boundary:** This auxiliary union does not validate provenance sources.
  **Worked example:** An empty child list contributes no origins.
  **Used by:** `leafOrigins` and its compilation-preservation proof.
  **Proof idea:** Union head and recursively accumulated tail origins.
  **Equality notion:** Results are exact finite sets.
  **Boundary cases:** `.nil` returns `∅`.
  **Validation consequence:** Every child origin remains represented.
  -/
  def leafOriginsAll
      {K : KernelPresentation.{u}} {js : List K.Judgment} :
      IndexedAll (RawDer K) js → Finset K.LeafOrigin
    | .nil => ∅
    | .cons head tail =>
        letI := K.leafOriginDecidableEq
        leafOrigins head ∪ leafOriginsAll tail
end

end RawDer

end GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.InductiveFamilies.IndexedRuleDerivationSyntax.Variantfc9353d640083726
