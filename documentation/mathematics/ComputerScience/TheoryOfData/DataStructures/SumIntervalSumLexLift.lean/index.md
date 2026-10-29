# Sum Interval Sum Lex Lift

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../../complete-source-index.md) · [Full source](source.md)

**53 observed declarations and anonymous commands**, 48 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/Interval/Variant833ea9e60ac8a4d9cd6392a40e7a0ef63276249a293476c7b3dc90ea211ce62d.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d28712eadd31fccd49e0f2e4234197d6f77afa6f`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/TheoryOfData/DataStructures/SumIntervalSumLexLift.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [sumLift₂](declarations/sumlift.md) | 32 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [mem_sumLift₂](declarations/mem-sumlift.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [inl_mem_sumLift₂](declarations/inl-mem-sumlift.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [inr_mem_sumLift₂](declarations/inr-mem-sumlift.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [sumLift₂_eq_empty](declarations/sumlift-eq-empty.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [sumLift₂_nonempty](declarations/sumlift-nonempty.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [sumLift₂_mono](declarations/sumlift-mono.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [sumLexLift](declarations/sumlexlift.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [sumLexLift_inl_inl](declarations/sumlexlift-inl-inl.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [sumLexLift_inl_inr](declarations/sumlexlift-inl-inr.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [sumLexLift_inr_inl](declarations/sumlexlift-inr-inl.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [sumLexLift_inr_inr](declarations/sumlexlift-inr-inr.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [mem_sumLexLift](declarations/mem-sumlexlift.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [inl_mem_sumLexLift](declarations/inl-mem-sumlexlift.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [inr_mem_sumLexLift](declarations/inr-mem-sumlexlift.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [sumLexLift_mono](declarations/sumlexlift-mono.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [sumLexLift_eq_empty](declarations/sumlexlift-eq-empty.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [sumLexLift_nonempty](declarations/sumlexlift-nonempty.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `instance` | [instLocallyFiniteOrder](declarations/instlocallyfiniteorder.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [Icc_inl_inl](declarations/icc-inl-inl-source-edition-2.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [Ico_inl_inl](declarations/ico-inl-inl.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [Ioc_inl_inl](declarations/ioc-inl-inl.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [Ioo_inl_inl](declarations/ioo-inl-inl.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [Icc_inl_inr](declarations/icc-inl-inr-source-edition-2.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [Ico_inl_inr](declarations/ico-inl-inr.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [Ioc_inl_inr](declarations/ioc-inl-inr.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [Ioo_inl_inr](declarations/ioo-inl-inr-source-edition-2.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [Icc_inr_inl](declarations/icc-inr-inl-source-edition-2.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [Ico_inr_inl](declarations/ico-inr-inl.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [Ioc_inr_inl](declarations/ioc-inr-inl-source-edition-2.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [Ioo_inr_inl](declarations/ioo-inr-inl.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [Icc_inr_inr](declarations/icc-inr-inr.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [Ico_inr_inr](declarations/ico-inr-inr-source-edition-2.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [Ioc_inr_inr](declarations/ioc-inr-inr.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [Ioo_inr_inr](declarations/ioo-inr-inr.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `elab` | [(anonymous)](declarations/elab.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `instance` | [locallyFiniteOrder](declarations/locallyfiniteorder.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `lemma` | [Icc_inl_inl](declarations/icc-inl-inl.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `lemma` | [Ico_inl_inl](declarations/ico-inl-inl-source-edition-2.md) | 314 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `lemma` | [Ioc_inl_inl](declarations/ioc-inl-inl-source-edition-2.md) | 318 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `lemma` | [Ioo_inl_inl](declarations/ioo-inl-inl-source-edition-2.md) | 322 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `lemma` | [Icc_inl_inr](declarations/icc-inl-inr.md) | 327 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `lemma` | [Ico_inl_inr](declarations/ico-inl-inr-source-edition-2.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `lemma` | [Ioc_inl_inr](declarations/ioc-inl-inr-source-edition-2.md) | 333 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `lemma` | [Ioo_inl_inr](declarations/ioo-inl-inr.md) | 336 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `lemma` | [Icc_inr_inl](declarations/icc-inr-inl.md) | 339 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `lemma` | [Ico_inr_inl](declarations/ico-inr-inl-source-edition-2.md) | 342 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `lemma` | [Ioc_inr_inl](declarations/ioc-inr-inl.md) | 345 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `lemma` | [Ioo_inr_inl](declarations/ioo-inr-inl-source-edition-2.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `lemma` | [Icc_inr_inr](declarations/icc-inr-inr-source-edition-2.md) | 350 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `lemma` | [Ico_inr_inr](declarations/ico-inr-inr.md) | 354 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `lemma` | [Ioc_inr_inr](declarations/ioc-inr-inr-source-edition-2.md) | 358 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `lemma` | [Ioo_inr_inr](declarations/ioo-inr-inr-source-edition-2.md) | 362 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=301dbd41764ec4dcd8eb472dff1c460a31ac108aebad3f6258d6120a773a064a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Interval/Variant833ea9e60ac8a4d9cd6392a40e7a0ef63276249a293476c7b3dc90ea211ce62d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
