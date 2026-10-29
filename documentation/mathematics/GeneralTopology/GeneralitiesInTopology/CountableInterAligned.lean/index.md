# Countable Inter Aligned

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**30 observed declarations and anonymous commands**, 17 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Topology/GeneralTopology/CountableInter/Variantcd4c5e6429e11262d43054082e4255269df9feb8b64d656acf2d41f82ad31cc1.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1601a0e3596de19745e9424ad0ca967ae7d9c502`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/GeneralTopology/GeneralitiesInTopology/CountableInterAligned.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `class` | [CountableInterFilter](declarations/countableinterfilter.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [countable_sInter_mem](declarations/countable-sinter-mem.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [countable_iInter_mem](declarations/countable-iinter-mem.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [countable_bInter_mem](declarations/countable-binter-mem.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [eventually_countable_forall](declarations/eventually-countable-forall.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [eventually_countable_ball](declarations/eventually-countable-ball.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [EventuallyLE.countable_iUnion](declarations/eventuallyle-countable-iunion.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [EventuallyEq.countable_iUnion](declarations/eventuallyeq-countable-iunion.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [EventuallyLE.countable_bUnion](declarations/eventuallyle-countable-bunion.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [EventuallyEq.countable_bUnion](declarations/eventuallyeq-countable-bunion.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [EventuallyLE.countable_iInter](declarations/eventuallyle-countable-iinter.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [EventuallyEq.countable_iInter](declarations/eventuallyeq-countable-iinter.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [EventuallyLE.countable_bInter](declarations/eventuallyle-countable-binter.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [EventuallyEq.countable_bInter](declarations/eventuallyeq-countable-binter.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [Filter.ofCountableInter](declarations/filter-ofcountableinter.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `instance` | [Filter.countable_Inter_ofCountableInter](declarations/filter-countable-inter-ofcountableinter.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [Filter.mem_ofCountableInter](declarations/filter-mem-ofcountableinter.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `instance` | [countableInterFilter_principal](declarations/countableinterfilter-principal.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `instance` | [countableInterFilter_bot](declarations/countableinterfilter-bot.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `instance` | [countableInterFilter_top](declarations/countableinterfilter-top.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `instance` | [(anonymous)](declarations/instance.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `instance` | [countableInterFilter_inf](declarations/countableinterfilter-inf.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `instance` | [countableInterFilter_sup](declarations/countableinterfilter-sup.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `inductive` | [CountableGenerateSets](declarations/countablegeneratesets.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [countableGenerate](declarations/countablegenerate.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [mem_countableGenerate_iff](declarations/mem-countablegenerate-iff.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [le_countableGenerate_iff_of_countableInterFilter](declarations/le-countablegenerate-iff-of-countableinterfilter.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [countableGenerate_isGreatest](declarations/countablegenerate-isgreatest.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=78fba1c27864450c2d521101e77ae374e5d64b45b087b7b08430afd2c3a6a618 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/CountableInter/Variantcd4c5e6429e11262d43054082e4255269df9feb8b64d656acf2d41f82ad31cc1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
