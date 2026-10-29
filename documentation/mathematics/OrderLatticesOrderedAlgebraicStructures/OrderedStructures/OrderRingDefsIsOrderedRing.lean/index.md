# Order Ring Defs Is Ordered Ring

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**31 observed declarations and anonymous commands**, 8 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/Defs/Variant9c5acdd2b6c40563b07210b1363090af249baeda0b06a68e1511870fc11631ab.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `238d08f995f77dff263d9e40a55c230ce93cb034`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderRingDefsIsOrderedRing.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `class` | [IsOrderedRing](declarations/isorderedring.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `class` | [IsStrictOrderedRing](declarations/isstrictorderedring.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [IsOrderedRing.of_mul_nonneg](declarations/isorderedring-of-mul-nonneg.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [IsStrictOrderedRing.of_mul_pos](declarations/isstrictorderedring-of-mul-pos.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [IsOrderedRing.toIsStrictOrderedRing](declarations/isorderedring-toisstrictorderedring.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `instance` | [(anonymous)](declarations/instance-source-edition-7.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `instance` | [(anonymous)](declarations/instance.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [AddMonoidWithOne.toCharZero](declarations/addmonoidwithone-tocharzero.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `instance` | [(anonymous)](declarations/instance-source-edition-8.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `instance` | [(anonymous)](declarations/instance-source-edition-9.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `structure` | [OrderedSemiring](declarations/orderedsemiring.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `structure` | [OrderedCommSemiring](declarations/orderedcommsemiring.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `structure` | [OrderedRing](declarations/orderedring.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `structure` | [OrderedCommRing](declarations/orderedcommring.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `structure` | [StrictOrderedSemiring](declarations/strictorderedsemiring.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `structure` | [StrictOrderedCommSemiring](declarations/strictorderedcommsemiring.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `structure` | [StrictOrderedRing](declarations/strictorderedring.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `structure` | [StrictOrderedCommRing](declarations/strictorderedcommring.md) | 317 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `structure` | [LinearOrderedSemiring](declarations/linearorderedsemiring.md) | 327 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `structure` | [LinearOrderedCommSemiring](declarations/linearorderedcommsemiring.md) | 335 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `structure` | [LinearOrderedRing](declarations/linearorderedring.md) | 343 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `structure` | [LinearOrderedCommRing](declarations/linearorderedcommring.md) | 350 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [one_add_le_one_sub_mul_one_add](declarations/one-add-le-one-sub-mul-one-add.md) | 370 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [one_add_le_one_add_mul_one_sub](declarations/one-add-le-one-add-mul-one-sub.md) | 374 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [one_sub_le_one_sub_mul_one_add](declarations/one-sub-le-one-sub-mul-one-add.md) | 378 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [one_sub_le_one_add_mul_one_sub](declarations/one-sub-le-one-add-mul-one-sub.md) | 382 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4838b2dfd08e6fea736fa4a997213b4276a38bfd74e2d1d647f071550a8d916f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Defs/Variant9c5acdd2b6c40563b07210b1363090af249baeda0b06a68e1511870fc11631ab.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
