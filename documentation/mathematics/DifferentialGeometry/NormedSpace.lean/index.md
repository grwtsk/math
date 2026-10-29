# Normed Space

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**43 observed declarations and anonymous commands**, 43 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Geometry/DifferentialGeometry/NormedSpace/Variant1b0c8a5adf4aabcf76783f4ac1a63caa6a3c8674de4a4ba8bed9e57ed4ca9a1d.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3636c81b5541dc170f09795b708c2bc85b0b7293`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/DifferentialGeometry/NormedSpace.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `theorem` | [contMDiffWithinAt_iff_contDiffWithinAt](declarations/contmdiffwithinat-iff-contdiffwithinat.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [contMDiffAt_iff_contDiffAt](declarations/contmdiffat-iff-contdiffat.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [contMDiffOn_iff_contDiffOn](declarations/contmdiffon-iff-contdiffon.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [contMDiff_iff_contDiff](declarations/contmdiff-iff-contdiff.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [ContDiffWithinAt.comp_contMDiffWithinAt](declarations/contdiffwithinat-comp-contmdiffwithinat.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [ContDiffAt.comp_contMDiffWithinAt](declarations/contdiffat-comp-contmdiffwithinat.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [ContDiffAt.comp_contMDiffAt](declarations/contdiffat-comp-contmdiffat.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [ContDiff.comp_contMDiffWithinAt](declarations/contdiff-comp-contmdiffwithinat.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [ContDiff.comp_contMDiffAt](declarations/contdiff-comp-contmdiffat.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [ContDiff.comp_contMDiff](declarations/contdiff-comp-contmdiff.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [ContinuousLinearMap.contMDiff](declarations/continuouslinearmap-contmdiff.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [ContinuousLinearMap.contMDiffAt](declarations/continuouslinearmap-contmdiffat.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [ContinuousLinearMap.contMDiffWithinAt](declarations/continuouslinearmap-contmdiffwithinat.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [ContinuousLinearMap.contMDiffOn](declarations/continuouslinearmap-contmdiffon.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [ContMDiffWithinAt.clm_precomp](declarations/contmdiffwithinat-clm-precomp.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [ContMDiffAt.clm_precomp](declarations/contmdiffat-clm-precomp.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [ContMDiffOn.clm_precomp](declarations/contmdiffon-clm-precomp.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [ContMDiff.clm_precomp](declarations/contmdiff-clm-precomp.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [ContMDiffWithinAt.clm_postcomp](declarations/contmdiffwithinat-clm-postcomp.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [ContMDiffAt.clm_postcomp](declarations/contmdiffat-clm-postcomp.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [ContMDiffOn.clm_postcomp](declarations/contmdiffon-clm-postcomp.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [ContMDiff.clm_postcomp](declarations/contmdiff-clm-postcomp.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [ContMDiffWithinAt.clm_comp](declarations/contmdiffwithinat-clm-comp.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [ContMDiffAt.clm_comp](declarations/contmdiffat-clm-comp.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [ContMDiffOn.clm_comp](declarations/contmdiffon-clm-comp.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [ContMDiff.clm_comp](declarations/contmdiff-clm-comp.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [ContMDiffWithinAt.clm_apply](declarations/contmdiffwithinat-clm-apply.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [ContMDiffAt.clm_apply](declarations/contmdiffat-clm-apply.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [ContMDiffOn.clm_apply](declarations/contmdiffon-clm-apply.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [ContMDiff.clm_apply](declarations/contmdiff-clm-apply.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [ContMDiffWithinAt.cle_arrowCongr](declarations/contmdiffwithinat-cle-arrowcongr.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [ContMDiffAt.cle_arrowCongr](declarations/contmdiffat-cle-arrowcongr.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [ContMDiffOn.cle_arrowCongr](declarations/contmdiffon-cle-arrowcongr.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [ContMDiff.cle_arrowCongr](declarations/contmdiff-cle-arrowcongr.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [ContMDiffWithinAt.clm_prodMap](declarations/contmdiffwithinat-clm-prodmap.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [ContMDiffAt.clm_prodMap](declarations/contmdiffat-clm-prodmap.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [ContMDiffOn.clm_prodMap](declarations/contmdiffon-clm-prodmap.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [ContMDiff.clm_prodMap](declarations/contmdiff-clm-prodmap.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [contMDiff_smul](declarations/contmdiff-smul-source-edition-2.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [ContMDiffWithinAt.smul](declarations/contmdiffwithinat-smul.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [ContMDiffAt.smul](declarations/contmdiffat-smul.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [ContMDiffOn.smul](declarations/contmdiffon-smul.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [ContMDiff.smul](declarations/contmdiff-smul.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ba282ee7f5c35819c0a35b6e89ec8503413eae1346a9034fac43e3450733e000 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/DifferentialGeometry/NormedSpace/Variant1b0c8a5adf4aabcf76783f4ac1a63caa6a3c8674de4a4ba8bed9e57ed4ca9a1d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
