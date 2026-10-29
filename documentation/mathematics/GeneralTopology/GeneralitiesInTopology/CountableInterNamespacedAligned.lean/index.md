# Countable Inter Namespaced Aligned

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**30 observed declarations and anonymous commands**, 17 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Topology/GeneralTopology/CountableInter/Variant51fb90d1cd9caf0d3993bd203437daf31b978488676e243a3537e83c2f39cac1.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b8530e54e584f5c61952059ad40825255694ae2c`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/GeneralTopology/GeneralitiesInTopology/CountableInterNamespacedAligned.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `class` | [CountableInterFilter](declarations/countableinterfilter.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [countable_sInter_mem](declarations/countable-sinter-mem.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [countable_iInter_mem](declarations/countable-iinter-mem.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [countable_bInter_mem](declarations/countable-binter-mem.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [eventually_countable_forall](declarations/eventually-countable-forall.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [eventually_countable_ball](declarations/eventually-countable-ball.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [EventuallyLE.countable_iUnion](declarations/eventuallyle-countable-iunion.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [EventuallyEq.countable_iUnion](declarations/eventuallyeq-countable-iunion.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [EventuallyLE.countable_bUnion](declarations/eventuallyle-countable-bunion.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [EventuallyEq.countable_bUnion](declarations/eventuallyeq-countable-bunion.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [EventuallyLE.countable_iInter](declarations/eventuallyle-countable-iinter.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [EventuallyEq.countable_iInter](declarations/eventuallyeq-countable-iinter.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [EventuallyLE.countable_bInter](declarations/eventuallyle-countable-binter.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [EventuallyEq.countable_bInter](declarations/eventuallyeq-countable-binter.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [Filter.ofCountableInter](declarations/filter-ofcountableinter.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `instance` | [Filter.countable_Inter_ofCountableInter](declarations/filter-countable-inter-ofcountableinter.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [Filter.mem_ofCountableInter](declarations/filter-mem-ofcountableinter.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `instance` | [countableInterFilter_principal](declarations/countableinterfilter-principal.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `instance` | [countableInterFilter_bot](declarations/countableinterfilter-bot.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `instance` | [countableInterFilter_top](declarations/countableinterfilter-top.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `instance` | [countableInterFilter_inf](declarations/countableinterfilter-inf.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `instance` | [countableInterFilter_sup](declarations/countableinterfilter-sup.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `inductive` | [CountableGenerateSets](declarations/countablegeneratesets.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [countableGenerate](declarations/countablegenerate.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `instance` | [(anonymous)](declarations/instance.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [mem_countableGenerate_iff](declarations/mem-countablegenerate-iff.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [le_countableGenerate_iff_of_countableInterFilter](declarations/le-countablegenerate-iff-of-countableinterfilter.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [countableGenerate_isGreatest](declarations/countablegenerate-isgreatest.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=dd4440e0059b4a9a83bae55b94a985b26b7121d46e9f23f2bfe383a546b2b69e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/CountableInter/Variant51fb90d1cd9caf0d3993bd203437daf31b978488676e243a3537e83c2f39cac1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
