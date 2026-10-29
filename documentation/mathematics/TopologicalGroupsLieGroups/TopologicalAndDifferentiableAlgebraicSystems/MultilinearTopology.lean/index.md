# Multilinear Topology

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**32 observed declarations and anonymous commands**, 18 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Topology/GeneralTopology/Topology/Variant08fe0193fb40c46f3fb79236f81b61546fa4f7732f88d531a045feffc562c632.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8820927ec8132fc992ac591ea4a05149cd121503`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearTopology.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [toUniformOnFun](declarations/touniformonfun.md) | 32 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `lemma` | [range_toUniformOnFun](declarations/range-touniformonfun.md) | 37 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [toUniformOnFun_toFun](declarations/touniformonfun-tofun.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [instTopologicalSpace](declarations/insttopologicalspace.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `instance` | [instUniformSpace](declarations/instuniformspace.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [isUniformInducing_toUniformOnFun](declarations/isuniforminducing-touniformonfun.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [isUniformEmbedding_toUniformOnFun](declarations/isuniformembedding-touniformonfun.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [isEmbedding_toUniformOnFun](declarations/isembedding-touniformonfun.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [uniformContinuous_coe_fun](declarations/uniformcontinuous-coe-fun.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [uniformContinuous_eval_const](declarations/uniformcontinuous-eval-const.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `instance` | [instIsUniformAddGroup](declarations/instisuniformaddgroup.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `instance` | [instUniformContinuousConstSMul](declarations/instuniformcontinuousconstsmul.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [isUniformInducing_postcomp](declarations/isuniforminducing-postcomp.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [completeSpace](declarations/completespace.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `instance` | [instCompleteSpace](declarations/instcompletespace.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [isUniformEmbedding_restrictScalars](declarations/isuniformembedding-restrictscalars.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [uniformContinuous_restrictScalars](declarations/uniformcontinuous-restrictscalars.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `instance` | [instIsTopologicalAddGroup](declarations/instistopologicaladdgroup.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `instance` | [instContinuousConstSMul](declarations/instcontinuousconstsmul.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `instance` | [instContinuousSMul](declarations/instcontinuoussmul.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [hasBasis_nhds_zero_of_basis](declarations/hasbasis-nhds-zero-of-basis.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [hasBasis_nhds_zero](declarations/hasbasis-nhds-zero.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `instance` | [(anonymous)](declarations/instance.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `instance` | [instT2Space](declarations/instt2space.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `instance` | [instT3Space](declarations/instt3space.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [isEmbedding_restrictScalars](declarations/isembedding-restrictscalars.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [continuous_restrictScalars](declarations/continuous-restrictscalars.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [restrictScalarsLinear](declarations/restrictscalarslinear.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [apply](declarations/apply.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [apply_apply](declarations/apply-apply.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [hasSum_eval](declarations/hassum-eval.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [tsum_eval](declarations/tsum-eval.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=829705adf2405f94cd548d592150c3a9defea37a4d797e2e5f303e3c758cf16f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Topology/Variant08fe0193fb40c46f3fb79236f81b61546fa4f7732f88d531a045feffc562c632.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
