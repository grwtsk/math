# Topology Support

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**33 observed declarations and anonymous commands**, 31 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Topology/GeneralTopology/Support/Variantc2c3ac704f0b9a9a0e042e01ad8ee43d197534c0c85ec371bdca9e7491c3b409.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c9c109dd1d67162ad7754b61420507c736439e38`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/GeneralTopology/TopologySupport.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [mulTSupport](declarations/multsupport.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [subset_mulTSupport](declarations/subset-multsupport.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [isClosed_mulTSupport](declarations/isclosed-multsupport.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [mulTSupport_eq_empty_iff](declarations/multsupport-eq-empty-iff.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [image_eq_one_of_nmem_mulTSupport](declarations/image-eq-one-of-nmem-multsupport.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [range_subset_insert_image_mulTSupport](declarations/range-subset-insert-image-multsupport.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [range_eq_image_mulTSupport_or](declarations/range-eq-image-multsupport-or.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [tsupport_mul_subset_left](declarations/tsupport-mul-subset-left.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [tsupport_mul_subset_right](declarations/tsupport-mul-subset-right.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [tsupport_smul_subset_left](declarations/tsupport-smul-subset-left.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [not_mem_mulTSupport_iff_eventuallyEq](declarations/not-mem-multsupport-iff-eventuallyeq.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [continuous_of_mulTSupport](declarations/continuous-of-multsupport.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [HasCompactMulSupport](declarations/hascompactmulsupport.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [hasCompactMulSupport_def](declarations/hascompactmulsupport-def.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [exists_compact_iff_hasCompactMulSupport](declarations/exists-compact-iff-hascompactmulsupport.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [HasCompactMulSupport.intro](declarations/hascompactmulsupport-intro.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [HasCompactMulSupport.of_mulSupport_subset_isCompact](declarations/hascompactmulsupport-of-mulsupport-subset-iscompact.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [HasCompactMulSupport.isCompact](declarations/hascompactmulsupport-iscompact.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [hasCompactMulSupport_iff_eventuallyEq](declarations/hascompactmulsupport-iff-eventuallyeq.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [HasCompactMulSupport.isCompact_range](declarations/hascompactmulsupport-iscompact-range.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [HasCompactMulSupport.mono'](declarations/hascompactmulsupport-mono-source-edition-2.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [HasCompactMulSupport.mono](declarations/hascompactmulsupport-mono.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [HasCompactMulSupport.comp_left](declarations/hascompactmulsupport-comp-left.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [hasCompactMulSupport_comp_left](declarations/hascompactmulsupport-comp-left-source-edition-3.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [HasCompactMulSupport.comp_closedEmbedding](declarations/hascompactmulsupport-comp-closedembedding.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [HasCompactMulSupport.comp₂_left](declarations/hascompactmulsupport-comp-left-source-edition-2.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [HasCompactMulSupport.mul](declarations/hascompactmulsupport-mul.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [HasCompactSupport.smul_left](declarations/hascompactsupport-smul-left-source-edition-2.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [HasCompactSupport.smul_right](declarations/hascompactsupport-smul-right.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [HasCompactSupport.smul_left'](declarations/hascompactsupport-smul-left.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [HasCompactSupport.mul_right](declarations/hascompactsupport-mul-right.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [HasCompactSupport.mul_left](declarations/hascompactsupport-mul-left.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [exists_finset_nhd_mulSupport_subset](declarations/exists-finset-nhd-mulsupport-subset.md) | 313 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c6b8c96dec698569574767289a4f2f684ec5c6b23a3d0017d6f4678ee9317f50 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Support/Variantc2c3ac704f0b9a9a0e042e01ad8ee43d197534c0c85ec371bdca9e7491c3b409.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
