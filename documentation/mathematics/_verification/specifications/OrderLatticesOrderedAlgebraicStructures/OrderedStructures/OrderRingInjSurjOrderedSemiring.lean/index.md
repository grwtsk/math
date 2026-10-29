# Verification target: Order Ring Inj Surj Ordered Semiring

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c7fd6f3cdbedb2b99450165051f03e68e7816024",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/InjSurj/Variant27258bbba91443c9f0a73c6cc6043808b7e54e24ec4d1a7a5a6bb08cf3a4296f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderRingInjSurjOrderedSemiring.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderRingInjSurjOrderedSemiring.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c7fd6f3cdbedb2b99450165051f03e68e7816024`.

Source path: `GRWTSK/Algebra/InjSurj/Variant27258bbba91443c9f0a73c6cc6043808b7e54e24ec4d1a7a5a6bb08cf3a4296f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/InjSurj/Variant27258bbba91443c9f0a73c6cc6043808b7e54e24ec4d1a7a5a6bb08cf3a4296f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Ring.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.Cancel.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.InjSurj` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [orderedSemiring](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderRingInjSurjOrderedSemiring.lean/declarations/orderedsemiring.md) | 29 | `declaration-track:9d5f2d74505326ca5bed279c95de2ffb5dfda41d1071c371722133d2650431dd` |
| 2 | `def` | [orderedCommSemiring](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderRingInjSurjOrderedSemiring.lean/declarations/orderedcommsemiring.md) | 52 | `declaration-track:30fc5f34d81a8325a2ed4812c241dfcd321c2e8db0b42670e25d62d951dbb43e` |
| 3 | `def` | [orderedRing](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderRingInjSurjOrderedSemiring.lean/declarations/orderedring.md) | 64 | `declaration-track:44f851ef6fede97b74f607cc47f109d60c2d7540ef963d3ec381dbfa12fe3dca` |
| 4 | `def` | [orderedCommRing](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderRingInjSurjOrderedSemiring.lean/declarations/orderedcommring.md) | 82 | `declaration-track:b4e430bf5ba8644864700c3e70aadd847075a293a4cac6c8495e96b15cbedcf7` |
| 5 | `def` | [strictOrderedSemiring](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderRingInjSurjOrderedSemiring.lean/declarations/strictorderedsemiring.md) | 96 | `declaration-track:e3beb0e6ea2438ac51d96221442947f7a5289f70105b45f9fdd7b927cf05451b` |
| 6 | `def` | [strictOrderedCommSemiring](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderRingInjSurjOrderedSemiring.lean/declarations/strictorderedcommsemiring.md) | 114 | `declaration-track:347b966c89f2516c30d683e2ec84bc5623343a4991074812bd2956b4fa9c0701` |
| 7 | `def` | [strictOrderedRing](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderRingInjSurjOrderedSemiring.lean/declarations/strictorderedring.md) | 126 | `declaration-track:84f3696bba13ba8f1e9efb5e1858cf14a62701006292889bf4d2874bf8481862` |
| 8 | `def` | [strictOrderedCommRing](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderRingInjSurjOrderedSemiring.lean/declarations/strictorderedcommring.md) | 144 | `declaration-track:3f1144fb610dd9aa72d323491f2735f84f1475fc1d49c4f95d1d289853ca6037` |
| 9 | `def` | [linearOrderedSemiring](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderRingInjSurjOrderedSemiring.lean/declarations/linearorderedsemiring.md) | 158 | `declaration-track:59cbb7cd8e44fce7d450e8bf6ffddef83c054296946690317cae425964f4dac8` |
| 10 | `def` | [linearOrderedCommSemiring](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderRingInjSurjOrderedSemiring.lean/declarations/linearorderedcommsemiring.md) | 172 | `declaration-track:70f8958fa36243f729759e8e2934726544074950b9ec6548e08c23b2c8a82b1e` |
| 11 | `def` | [linearOrderedRing](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderRingInjSurjOrderedSemiring.lean/declarations/linearorderedring.md) | 186 | `declaration-track:e97049fd8ae39721e7d5b5c416352e77c9adffd7f70519c43eb35cf1d07b2be3` |
| 12 | `def` | [linearOrderedCommRing](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderRingInjSurjOrderedSemiring.lean/declarations/linearorderedcommring.md) | 202 | `declaration-track:414142a0b3e28f38dfaf103c648829a0ec22efe78385425f7f259dee1e926fb1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d064f504c8b8906fc388eb1436c7bf40eb81c0299b39d1ea9fe511b08c6985f1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/InjSurj/Variant27258bbba91443c9f0a73c6cc6043808b7e54e24ec4d1a7a5a6bb08cf3a4296f.lean","GRWTSK/_verification/specifications/Algebra/InjSurj/Variant27258bbba91443c9f0a73c6cc6043808b7e54e24ec4d1a7a5a6bb08cf3a4296f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
