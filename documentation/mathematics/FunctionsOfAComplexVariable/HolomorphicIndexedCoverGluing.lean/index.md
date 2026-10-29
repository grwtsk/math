# Holomorphic Indexed Cover Gluing

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**34 observed declarations and anonymous commands**, 16 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/Complex/HolomorphicIndexedCoverGluing.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ab418e07e82f099d134f5f0608563b29a5aaf78a`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/FunctionsOfAComplexVariable/HolomorphicIndexedCoverGluing.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [IndexedDomainCover](declarations/indexeddomaincover.md) | 21 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [IsOpenCover](declarations/isopencover.md) | 32 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [xTo](declarations/xto.md) | 36 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [overlap](declarations/overlap.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [leftToOverlap](declarations/lefttooverlap.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [rightToOverlap](declarations/righttooverlap.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `abbrev` | [Family](declarations/family.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [Matching](declarations/matching.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [matching_apply](declarations/matching-apply.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [select](declarations/select.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [select_mem](declarations/select-mem.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [glueSection](declarations/gluesection.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [glueSection_apply](declarations/gluesection-apply.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [restrict_glueSection](declarations/restrict-gluesection.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [holomorphic_iff_restrictions](declarations/holomorphic-iff-restrictions.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [glue](declarations/glue.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [glue_coe](declarations/glue-coe.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [restrict_glue](declarations/restrict-glue.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [holomorphic_ext](declarations/holomorphic-ext.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [existsUnique_glue](declarations/existsunique-glue.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [matching_restrictions](declarations/matching-restrictions.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [glue_restrictions](declarations/glue-restrictions.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [reindex](declarations/reindex.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [reindex_isOpen](declarations/reindex-isopen.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [reindex_matching](declarations/reindex-matching.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [glue_reindex](declarations/glue-reindex.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [allPunctures](declarations/allpunctures.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [allPunctures_isOpen](declarations/allpunctures-isopen.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [disagreeingFamily](declarations/disagreeingfamily.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [disagreeingFamily_not_matching](declarations/disagreeingfamily-not-matching.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [empty_index_not_nonempty](declarations/empty-index-not-nonempty.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [emptyCover](declarations/emptycover.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [emptyCover_isOpen](declarations/emptycover-isopen.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [emptyCover_glue_unique](declarations/emptycover-glue-unique.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2cd25d3831425375b994d21a0f47e49b75ffa208e54c2b10752d5c594674c576 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/Complex/HolomorphicIndexedCoverGluing.lean","GRWTSK/Analysis/ComplexAnalysis/HolomorphicIndexedCoverGluing.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
