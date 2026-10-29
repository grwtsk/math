# Verification target: Order Pi Namespaced Source Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bfe3fc3f0dd1d9f5febbe6f8abd9b5e66d156a68",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Pi/Variant95645c422a53df37b500aa279c4a83f1e4a32bf7373d90eca303fcdd1279e3a1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderPiNamespacedSourceEdition1.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderPiNamespacedSourceEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bfe3fc3f0dd1d9f5febbe6f8abd9b5e66d156a68`.

Source path: `GRWTSK/Algebra/GroupTheory/Pi/Variant95645c422a53df37b500aa279c4a83f1e4a32bf7373d90eca303fcdd1279e3a1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Pi/Variant95645c422a53df37b500aa279c4a83f1e4a32bf7373d90eca303fcdd1279e3a1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Ring.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Pi` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Positivity` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [orderedCommMonoid](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderPiNamespacedSourceEdition1.lean/declarations/orderedcommmonoid.md) | 44 | `declaration-track:254565a374729088850b9eed5dca441207d6df1a98c44e2311d3e8b724f3cd77` |
| 2 | `instance` | [existsMulOfLe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderPiNamespacedSourceEdition1.lean/declarations/existsmulofle.md) | 52 | `declaration-track:d4c90b4689823bd27795363557eda800db10322f945ef6b2dcbd12a4fce5ff5b` |
| 3 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderPiNamespacedSourceEdition1.lean/declarations/instance.md) | 64 | `declaration-track:bb47d951f034564a7ad361dfe074c35165655ed88c8e04228bea5b0fb94fe751` |
| 4 | `instance` | [orderedCancelCommMonoid](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderPiNamespacedSourceEdition1.lean/declarations/orderedcancelcommmonoid.md) | 70 | `declaration-track:6e33a4d0a7abe0ad4161c15c5d3d69d970a4e91f366fde96276941f3f26f9b51` |
| 5 | `instance` | [orderedCommGroup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderPiNamespacedSourceEdition1.lean/declarations/orderedcommgroup.md) | 95 | `declaration-track:809d7edc3edc04db0c938517867f66ca53da652fb5407c4374ee3f918fe701bc` |
| 6 | `instance` | [orderedSemiring](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderPiNamespacedSourceEdition1.lean/declarations/orderedsemiring.md) | 105 | `declaration-track:488834ea43bcb2ac7ca3c316daf6d0e23e375c74a4bf191b0fe6d3ea08574d4c` |
| 7 | `instance` | [orderedCommSemiring](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderPiNamespacedSourceEdition1.lean/declarations/orderedcommsemiring.md) | 114 | `declaration-track:23df46901d51d9559671d8bc5dfd4f2c36078b5ef8b29b15a328c0578c9e54e8` |
| 8 | `instance` | [orderedRing](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderPiNamespacedSourceEdition1.lean/declarations/orderedring.md) | 118 | `declaration-track:084bef1ae0076a4ca110a078bf782d4628026a823f845444c627e8fa6ccbf3c8` |
| 9 | `instance` | [orderedCommRing](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderPiNamespacedSourceEdition1.lean/declarations/orderedcommring.md) | 122 | `declaration-track:43653862ce69eb53022745846410979271ce0e152a3b03180f28ac6410476ef5` |
| 10 | `theorem` | [one_le_const_of_one_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderPiNamespacedSourceEdition1.lean/declarations/one-le-const-of-one-le.md) | 133 | `result-track:166af67bc40e036ec7da05c4c9f21005184c0f1e3545baec4ef3b34c68563023` |
| 11 | `theorem` | [const_le_one_of_le_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderPiNamespacedSourceEdition1.lean/declarations/const-le-one-of-le-one.md) | 138 | `result-track:ba3800c7545ae33d0afb2bb3a53bc648b6e511b1238e9437d720c95ab04e617d` |
| 12 | `theorem` | [one_le_const](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderPiNamespacedSourceEdition1.lean/declarations/one-le-const.md) | 145 | `result-track:6e84d53d90f37433373bc49f8f349e41de5074f056b6f3540568d02cb0781886` |
| 13 | `theorem` | [one_lt_const](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderPiNamespacedSourceEdition1.lean/declarations/one-lt-const.md) | 151 | `result-track:28ef3b51135188d7dcb80079cc9e080ab3caed6211401b0b2f2fe68df40b109e` |
| 14 | `theorem` | [const_le_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderPiNamespacedSourceEdition1.lean/declarations/const-le-one.md) | 157 | `result-track:75926c438ef48835b04d8e567bc3e09cc428176ef8613be6dcf7e07696ee5bfb` |
| 15 | `theorem` | [const_lt_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderPiNamespacedSourceEdition1.lean/declarations/const-lt-one.md) | 163 | `result-track:67428bb6b0d1ff90e1241e04080e492a2683f660be2d9b79186de967442e7377` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d50969d5345569ac0c2147af1abcf9b4648dc64b33b3d2a1269759169a13e8f6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Pi/Variant95645c422a53df37b500aa279c4a83f1e4a32bf7373d90eca303fcdd1279e3a1.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Pi/Variant95645c422a53df37b500aa279c4a83f1e4a32bf7373d90eca303fcdd1279e3a1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
