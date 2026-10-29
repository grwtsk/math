# BDDNamespaced

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**63 observed declarations and anonymous commands**, 22 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BDD/Variant0a985a1ee50ccfca8b6ce7efab317e47f58ce0897f0a6759f6ba73842b4105e4.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `03e3c5c10e83492b7984c8ed34c28a22658db796`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/ComputerScience/AlgorithmsInComputerScience/BDDNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [BDD](declarations/bdd.md) | 16 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [eval](declarations/eval-source-edition-2.md) | 24 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [toFormula](declarations/toformula.md) | 32 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [Equivalent](declarations/equivalent.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [OrderedBelow](declarations/orderedbelow.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [OrderedBy](declarations/orderedby.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [Reduced](declarations/reduced.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [eval_toFormula](declarations/eval-toformula.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [equivalent_refl](declarations/equivalent-refl.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [equivalent_symm](declarations/equivalent-symm.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [equivalent_trans](declarations/equivalent-trans.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [canonical](declarations/canonical.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [ReducedOrdered](declarations/reducedordered.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [ReducedOrderedFor](declarations/reducedorderedfor.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [canonical_ext](declarations/canonical-ext.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [canonical_reduced](declarations/canonical-reduced.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [dependsOn_set_tail](declarations/dependson-set-tail.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [dependsOn_set_eq](declarations/dependson-set-eq.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [eval_canonical](declarations/eval-canonical.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [reducedOrdered_extensional](declarations/reducedordered-extensional.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [reducedOrdered_eq_of_equivalent](declarations/reducedordered-eq-of-equivalent.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [reducedOrdered_unique](declarations/reducedordered-unique.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `structure` | [NodeKey](declarations/nodekey.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `abbrev` | [UniqueTable](declarations/uniquetable.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [NodeKey.matches](declarations/nodekey-matches.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [UniqueTable.contains](declarations/uniquetable-contains.md) | 305 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [mkNode](declarations/mknode.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [eval_mkNode](declarations/eval-mknode.md) | 332 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [reduce](declarations/reduce.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [eval_reduce](declarations/eval-reduce.md) | 355 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [reduced_reduce](declarations/reduced-reduce.md) | 368 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [reduceWithTable](declarations/reducewithtable.md) | 379 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [eval_reduceWithTable](declarations/eval-reducewithtable.md) | 387 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [reduceUnique](declarations/reduceunique.md) | 405 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [eval_reduceUnique](declarations/eval-reduceunique.md) | 408 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `abbrev` | [Pointer](declarations/pointer.md) | 415 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `inductive` | [Ref](declarations/ref.md) | 419 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `structure` | [DagNode](declarations/dagnode.md) | 425 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `structure` | [Dag](declarations/dag.md) | 432 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [getNode?](declarations/getnode.md) | 438 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [fresh](declarations/fresh.md) | 444 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [push](declarations/push.md) | 448 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [get?](declarations/get.md) | 457 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [evalRef](declarations/evalref.md) | 464 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [eval](declarations/eval.md) | 479 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [serializationVersion](declarations/serializationversion.md) | 483 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `inductive` | [SerializedRef](declarations/serializedref.md) | 487 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `structure` | [SerializedNode](declarations/serializednode.md) | 493 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `structure` | [Serialized](declarations/serialized.md) | 505 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `structure` | [Snapshot](declarations/snapshot.md) | 511 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [serializeRef](declarations/serializeref.md) | 518 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `def` | [deserializeRef](declarations/deserializeref.md) | 523 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [deserializeRef_serializeRef](declarations/deserializeref-serializeref.md) | 527 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [serializeRef_deserializeRef](declarations/serializeref-deserializeref.md) | 532 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `def` | [serializeNodeWith](declarations/serializenodewith.md) | 538 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `def` | [deserializeNodeWith](declarations/deserializenodewith.md) | 547 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [deserializeNodeWith_serializeNodeWith](declarations/deserializenodewith-serializenodewith.md) | 555 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `def` | [serializeWith](declarations/serializewith.md) | 565 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `def` | [deserializeWith](declarations/deserializewith.md) | 573 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [deserializeWith_serializeWith](declarations/deserializewith-serializewith.md) | 579 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `def` | [serializeSnapshotWith](declarations/serializesnapshotwith.md) | 597 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `def` | [deserializeSnapshotWith](declarations/deserializesnapshotwith.md) | 607 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [deserializeSnapshotWith_serializeSnapshotWith](declarations/deserializesnapshotwith-serializesnapshotwith.md) | 614 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=88325df33c11a7b62ecbb3f406cb6a1cdf0cd371073cb1ee5ca6ca1d0347eadd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BDD/Variant0a985a1ee50ccfca8b6ce7efab317e47f58ce0897f0a6759f6ba73842b4105e4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
