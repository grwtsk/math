# BDD

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**63 observed declarations and anonymous commands**, 22 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BDD/Variant406b007ec87dc1d5dd69e10e5dddf32975166f185037cb77730e18b20819e3cb.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4713dc0127aaa564352d8f43b33439c7314bd713`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/ComputerScience/AlgorithmsInComputerScience/BDD.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [BDD](declarations/bdd.md) | 8 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [eval](declarations/eval-source-edition-2.md) | 16 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [toFormula](declarations/toformula.md) | 24 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [Equivalent](declarations/equivalent.md) | 32 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [OrderedBelow](declarations/orderedbelow.md) | 36 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [OrderedBy](declarations/orderedby.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [Reduced](declarations/reduced.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [eval_toFormula](declarations/eval-toformula.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [equivalent_refl](declarations/equivalent-refl.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [equivalent_symm](declarations/equivalent-symm.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [equivalent_trans](declarations/equivalent-trans.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [canonical](declarations/canonical.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [ReducedOrdered](declarations/reducedordered.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [ReducedOrderedFor](declarations/reducedorderedfor.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [canonical_ext](declarations/canonical-ext.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [canonical_reduced](declarations/canonical-reduced.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [dependsOn_set_tail](declarations/dependson-set-tail.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [dependsOn_set_eq](declarations/dependson-set-eq.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [eval_canonical](declarations/eval-canonical.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [reducedOrdered_extensional](declarations/reducedordered-extensional.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [reducedOrdered_eq_of_equivalent](declarations/reducedordered-eq-of-equivalent.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [reducedOrdered_unique](declarations/reducedordered-unique.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `structure` | [NodeKey](declarations/nodekey.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `abbrev` | [UniqueTable](declarations/uniquetable.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [NodeKey.matches](declarations/nodekey-matches.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [UniqueTable.contains](declarations/uniquetable-contains.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [mkNode](declarations/mknode.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [eval_mkNode](declarations/eval-mknode.md) | 324 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [reduce](declarations/reduce.md) | 340 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [eval_reduce](declarations/eval-reduce.md) | 347 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [reduced_reduce](declarations/reduced-reduce.md) | 360 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [reduceWithTable](declarations/reducewithtable.md) | 371 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [eval_reduceWithTable](declarations/eval-reducewithtable.md) | 379 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [reduceUnique](declarations/reduceunique.md) | 397 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [eval_reduceUnique](declarations/eval-reduceunique.md) | 400 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `abbrev` | [Pointer](declarations/pointer.md) | 407 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `inductive` | [Ref](declarations/ref.md) | 411 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `structure` | [DagNode](declarations/dagnode.md) | 417 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `structure` | [Dag](declarations/dag.md) | 424 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [getNode?](declarations/getnode.md) | 430 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [fresh](declarations/fresh.md) | 436 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [push](declarations/push.md) | 440 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [get?](declarations/get.md) | 449 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [evalRef](declarations/evalref.md) | 456 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [eval](declarations/eval.md) | 471 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [serializationVersion](declarations/serializationversion.md) | 475 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `inductive` | [SerializedRef](declarations/serializedref.md) | 479 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `structure` | [SerializedNode](declarations/serializednode.md) | 485 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `structure` | [Serialized](declarations/serialized.md) | 497 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `structure` | [Snapshot](declarations/snapshot.md) | 503 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [serializeRef](declarations/serializeref.md) | 510 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `def` | [deserializeRef](declarations/deserializeref.md) | 515 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [deserializeRef_serializeRef](declarations/deserializeref-serializeref.md) | 519 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [serializeRef_deserializeRef](declarations/serializeref-deserializeref.md) | 524 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `def` | [serializeNodeWith](declarations/serializenodewith.md) | 530 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `def` | [deserializeNodeWith](declarations/deserializenodewith.md) | 539 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [deserializeNodeWith_serializeNodeWith](declarations/deserializenodewith-serializenodewith.md) | 547 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `def` | [serializeWith](declarations/serializewith.md) | 557 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `def` | [deserializeWith](declarations/deserializewith.md) | 565 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [deserializeWith_serializeWith](declarations/deserializewith-serializewith.md) | 571 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `def` | [serializeSnapshotWith](declarations/serializesnapshotwith.md) | 589 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `def` | [deserializeSnapshotWith](declarations/deserializesnapshotwith.md) | 599 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [deserializeSnapshotWith_serializeSnapshotWith](declarations/deserializesnapshotwith-serializesnapshotwith.md) | 606 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9e90117362dbe1bcd0fafb4546fc3834804d7aebb441758ffb1cae86b3bc0df1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BDD/Variant406b007ec87dc1d5dd69e10e5dddf32975166f185037cb77730e18b20819e3cb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
