# Ring Basic Namespaced Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**94 observed declarations and anonymous commands**, 29 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Topology/GeneralTopology/Basic/Variant023d6cbe188efb62938cd6556418b85c7df7cb641249946f8cf750bbc2e178a4.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4803bf4c3e52790abb9d70c86b7f849f41363357`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RingBasicNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `class` | [IsTopologicalSemiring](declarations/istopologicalsemiring.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `class` | [IsTopologicalRing](declarations/istopologicalring.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `class` | [IsSemitopologicalSemiring](declarations/issemitopologicalsemiring.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `class` | [IsSemitopologicalRing](declarations/issemitopologicalring.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [IsSemitopologicalSemiring.continuousNeg_of_mul](declarations/issemitopologicalsemiring-continuousneg-of-mul.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [IsSemitopologicalSemiring.toIsSemitopologicalRing](declarations/issemitopologicalsemiring-toissemitopologicalring.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [IsTopologicalSemiring.toIsTopologicalRing](declarations/istopologicalsemiring-toistopologicalring.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `instance` | [(anonymous)](declarations/instance-source-edition-23.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `instance` | [(anonymous)](declarations/instance-source-edition-14.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `instance` | [(anonymous)](declarations/instance-source-edition-22.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [IsTopologicalRing.isTopologicalAddGroup](declarations/istopologicalring-istopologicaladdgroup.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `instance` | [(anonymous)](declarations/instance-source-edition-15.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `instance` | [instIsSemitopologicalSemiring](declarations/instissemitopologicalsemiring.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `instance` | [instIsTopologicalSemiring](declarations/instistopologicalsemiring.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [topologicalClosure](declarations/topologicalclosure-source-edition-2.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [topologicalClosure_coe](declarations/topologicalclosure-coe.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [le_topologicalClosure](declarations/le-topologicalclosure.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [isClosed_topologicalClosure](declarations/isclosed-topologicalclosure.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [topologicalClosure_minimal](declarations/topologicalclosure-minimal.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [topologicalClosure_mono](declarations/topologicalclosure-mono-source-edition-2.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `instance` | [isMulCommutative_topologicalClosure](declarations/ismulcommutative-topologicalclosure-source-edition-2.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `abbrev` | [nonUnitalCommSemiringTopologicalClosure](declarations/nonunitalcommsemiringtopologicalclosure.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `instance` | [(anonymous)](declarations/instance-source-edition-16.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `instance` | [semitopologicalSemiring](declarations/semitopologicalsemiring.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `instance` | [topologicalSemiring](declarations/topologicalsemiring.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `instance` | [continuousSMul](declarations/continuoussmul.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [Subsemiring.topologicalClosure](declarations/subsemiring-topologicalclosure.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [Subsemiring.topologicalClosure_coe](declarations/subsemiring-topologicalclosure-coe.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [Subsemiring.le_topologicalClosure](declarations/subsemiring-le-topologicalclosure.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [Subsemiring.isClosed_topologicalClosure](declarations/subsemiring-isclosed-topologicalclosure.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [Subsemiring.topologicalClosure_minimal](declarations/subsemiring-topologicalclosure-minimal.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [Subsemiring.topologicalClosure_mono](declarations/subsemiring-topologicalclosure-mono.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `instance` | [Subsemiring.isMulCommutative_topologicalClosure](declarations/subsemiring-ismulcommutative-topologicalclosure.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `abbrev` | [Subsemiring.commSemiringTopologicalClosure](declarations/subsemiring-commsemiringtopologicalclosure.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `instance` | [(anonymous)](declarations/instance-source-edition-17.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `instance` | [(anonymous)](declarations/instance-source-edition-10.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `instance` | [(anonymous)](declarations/instance-source-edition-18.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `instance` | [Pi.instIsTopologicalSemiring](declarations/pi-instistopologicalsemiring.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `instance` | [Pi.instIsTopologicalRing](declarations/pi-instistopologicalring.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `instance` | [Pi.instIsSemitopologicalSemiring](declarations/pi-instissemitopologicalsemiring.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `instance` | [Pi.instIsSemitopologicalRing](declarations/pi-instissemitopologicalring.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `instance` | [(anonymous)](declarations/instance-source-edition-26.md) | 318 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `instance` | [(anonymous)](declarations/instance.md) | 322 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `instance` | [(anonymous)](declarations/instance-source-edition-12.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `instance` | [(anonymous)](declarations/instance-source-edition-11.md) | 328 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `instance` | [(anonymous)](declarations/instance-source-edition-20.md) | 331 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `instance` | [(anonymous)](declarations/instance-source-edition-21.md) | 334 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `instance` | [(anonymous)](declarations/instance-source-edition-8.md) | 343 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 347 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `instance` | [(anonymous)](declarations/instance-source-edition-25.md) | 350 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `instance` | [(anonymous)](declarations/instance-source-edition-7.md) | 353 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `instance` | [(anonymous)](declarations/instance-source-edition-19.md) | 357 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 360 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [IsTopologicalRing.of_addGroup_of_nhds_zero](declarations/istopologicalring-of-addgroup-of-nhds-zero.md) | 369 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [IsTopologicalRing.of_nhds_zero](declarations/istopologicalring-of-nhds-zero.md) | 377 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `instance` | [(anonymous)](declarations/instance-source-edition-9.md) | 395 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [mulLeft_continuous](declarations/mulleft-continuous.md) | 400 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [mulRight_continuous](declarations/mulright-continuous.md) | 404 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `def` | [mulLeft](declarations/mulleft.md) | 416 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `def` | [mulRight](declarations/mulright.md) | 425 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `instance` | [instIsTopologicalRing](declarations/instistopologicalring.md) | 437 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `instance` | [instIsSemitopologicalRing](declarations/instissemitopologicalring.md) | 441 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `def` | [topologicalClosure](declarations/topologicalclosure.md) | 450 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [le_topologicalClosure](declarations/le-topologicalclosure-source-edition-2.md) | 454 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [isClosed_topologicalClosure](declarations/isclosed-topologicalclosure-source-edition-2.md) | 457 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [topologicalClosure_minimal](declarations/topologicalclosure-minimal-source-edition-2.md) | 460 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [topologicalClosure_mono](declarations/topologicalclosure-mono.md) | 465 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `instance` | [isMulCommutative_topologicalClosure](declarations/ismulcommutative-topologicalclosure.md) | 471 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `abbrev` | [nonUnitalCommRingTopologicalClosure](declarations/nonunitalcommringtopologicalclosure.md) | 481 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `instance` | [Subring.instIsTopologicalRing](declarations/subring-instistopologicalring.md) | 490 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `instance` | [Subring.instIsSemitopologicalRing](declarations/subring-instissemitopologicalring.md) | 494 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `instance` | [Subring.continuousSMul](declarations/subring-continuoussmul.md) | 501 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `def` | [Subring.topologicalClosure](declarations/subring-topologicalclosure.md) | 507 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [Subring.le_topologicalClosure](declarations/subring-le-topologicalclosure.md) | 511 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [Subring.isClosed_topologicalClosure](declarations/subring-isclosed-topologicalclosure.md) | 514 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [Subring.topologicalClosure_minimal](declarations/subring-topologicalclosure-minimal.md) | 517 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [Subring.topologicalClosure_mono](declarations/subring-topologicalclosure-mono.md) | 522 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `instance` | [Subring.isMulCommutative_topologicalClosure](declarations/subring-ismulcommutative-topologicalclosure.md) | 527 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `abbrev` | [Subring.commRingTopologicalClosure](declarations/subring-commringtopologicalclosure.md) | 536 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `structure` | [RingTopology](declarations/ringtopology.md) | 558 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `instance` | [inhabited](declarations/inhabited.md) | 565 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [toTopologicalSpace_injective](declarations/totopologicalspace-injective.md) | 571 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [ext](declarations/ext.md) | 576 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `instance` | [(anonymous)](declarations/instance-source-edition-13.md) | 581 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `def` | [def_sInf](declarations/def-sinf.md) | 585 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `instance` | [(anonymous)](declarations/instance-source-edition-24.md) | 604 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 608 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `def` | [coinduced](declarations/coinduced.md) | 613 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [coinduced_continuous](declarations/coinduced-continuous.md) | 616 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `def` | [toAddGroupTopology](declarations/toaddgrouptopology.md) | 621 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `def` | [toAddGroupTopology.orderEmbedding](declarations/toaddgrouptopology-orderembedding.md) | 627 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `def` | [AbsoluteValue.comp](declarations/absolutevalue-comp.md) | 637 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e20c40343e417a287fcf4b26000c206145e28bd0be91c13ba31803101edf3ab9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Basic/Variant023d6cbe188efb62938cd6556418b85c7df7cb641249946f8cf750bbc2e178a4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
