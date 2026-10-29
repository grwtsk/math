# Sum Interval Namespaced Sum Lex Lift

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../../complete-source-index.md) · [Full source](source.md)

**53 observed declarations and anonymous commands**, 48 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/Interval/Variant04e04860cc518826716ab59906dd188cdd81dd4a0e7a245c5146f94985adeae7.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9e2dcc8878d4887351dca311199f68dcad6708d9`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/TheoryOfData/DataStructures/SumIntervalNamespacedSumLexLift.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [sumLift₂](declarations/sumlift.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [mem_sumLift₂](declarations/mem-sumlift.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [inl_mem_sumLift₂](declarations/inl-mem-sumlift.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [inr_mem_sumLift₂](declarations/inr-mem-sumlift.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [sumLift₂_eq_empty](declarations/sumlift-eq-empty.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [sumLift₂_nonempty](declarations/sumlift-nonempty.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [sumLift₂_mono](declarations/sumlift-mono.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [sumLexLift](declarations/sumlexlift.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [sumLexLift_inl_inl](declarations/sumlexlift-inl-inl.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [sumLexLift_inl_inr](declarations/sumlexlift-inl-inr.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [sumLexLift_inr_inl](declarations/sumlexlift-inr-inl.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [sumLexLift_inr_inr](declarations/sumlexlift-inr-inr.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [mem_sumLexLift](declarations/mem-sumlexlift.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [inl_mem_sumLexLift](declarations/inl-mem-sumlexlift.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [inr_mem_sumLexLift](declarations/inr-mem-sumlexlift.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [sumLexLift_mono](declarations/sumlexlift-mono.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [sumLexLift_eq_empty](declarations/sumlexlift-eq-empty.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [sumLexLift_nonempty](declarations/sumlexlift-nonempty.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `instance` | [instLocallyFiniteOrder](declarations/instlocallyfiniteorder.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [Icc_inl_inl](declarations/icc-inl-inl-source-edition-2.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [Ico_inl_inl](declarations/ico-inl-inl.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [Ioc_inl_inl](declarations/ioc-inl-inl.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [Ioo_inl_inl](declarations/ioo-inl-inl-source-edition-2.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [Icc_inl_inr](declarations/icc-inl-inr.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [Ico_inl_inr](declarations/ico-inl-inr.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [Ioc_inl_inr](declarations/ioc-inl-inr-source-edition-2.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [Ioo_inl_inr](declarations/ioo-inl-inr.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [Icc_inr_inl](declarations/icc-inr-inl.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [Ico_inr_inl](declarations/ico-inr-inl.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [Ioc_inr_inl](declarations/ioc-inr-inl.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [Ioo_inr_inl](declarations/ioo-inr-inl.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [Icc_inr_inr](declarations/icc-inr-inr-source-edition-2.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [Ico_inr_inr](declarations/ico-inr-inr-source-edition-2.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [Ioc_inr_inr](declarations/ioc-inr-inr-source-edition-2.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [Ioo_inr_inr](declarations/ioo-inr-inr.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `elab` | [(anonymous)](declarations/elab.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `instance` | [locallyFiniteOrder](declarations/locallyfiniteorder.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `lemma` | [Icc_inl_inl](declarations/icc-inl-inl.md) | 318 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `lemma` | [Ico_inl_inl](declarations/ico-inl-inl-source-edition-2.md) | 322 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `lemma` | [Ioc_inl_inl](declarations/ioc-inl-inl-source-edition-2.md) | 326 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `lemma` | [Ioo_inl_inl](declarations/ioo-inl-inl.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `lemma` | [Icc_inl_inr](declarations/icc-inl-inr-source-edition-2.md) | 335 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `lemma` | [Ico_inl_inr](declarations/ico-inl-inr-source-edition-2.md) | 338 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `lemma` | [Ioc_inl_inr](declarations/ioc-inl-inr.md) | 341 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `lemma` | [Ioo_inl_inr](declarations/ioo-inl-inr-source-edition-2.md) | 344 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `lemma` | [Icc_inr_inl](declarations/icc-inr-inl-source-edition-2.md) | 347 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `lemma` | [Ico_inr_inl](declarations/ico-inr-inl-source-edition-2.md) | 350 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `lemma` | [Ioc_inr_inl](declarations/ioc-inr-inl-source-edition-2.md) | 353 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `lemma` | [Ioo_inr_inl](declarations/ioo-inr-inl-source-edition-2.md) | 356 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `lemma` | [Icc_inr_inr](declarations/icc-inr-inr.md) | 358 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `lemma` | [Ico_inr_inr](declarations/ico-inr-inr.md) | 362 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `lemma` | [Ioc_inr_inr](declarations/ioc-inr-inr.md) | 366 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `lemma` | [Ioo_inr_inr](declarations/ioo-inr-inr-source-edition-2.md) | 370 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=999be5381727a57b8d41ac43ea33410c203c4a78b474c8d9892f1b8b123d98d5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Interval/Variant04e04860cc518826716ab59906dd188cdd81dd4a0e7a245c5146f94985adeae7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
