# Monadic Public

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**73 observed declarations and anonymous commands**, 71 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Topology/GeneralTopology/Monadic/Variant6ba9e4977f92ae19fab7f283fc04d7c0071464a8452c528167df52119dcefbf0.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8dd6a2a530c29715a86f97c834c86afac87adf6f`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/GeneralTopology/MonadicPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [mapM'](declarations/mapm.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [mapM'_nil](declarations/mapm-nil.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [mapM'_cons](declarations/mapm-cons.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [mapM'_eq_mapM](declarations/mapm-eq-mapm.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [mapM_nil](declarations/mapm-nil-source-edition-2.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [mapM_cons](declarations/mapm-cons-source-edition-2.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [mapM_pure](declarations/mapm-pure.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [idRun_mapM](declarations/idrun-mapm.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [mapM_map](declarations/mapm-map.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [mapM_append](declarations/mapm-append.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [foldlM_cons_eq_append](declarations/foldlm-cons-eq-append.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [mapM_eq_reverse_foldlM_cons](declarations/mapm-eq-reverse-foldlm-cons.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [filterMapM_nil](declarations/filtermapm-nil.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [filterMapM_loop_eq](declarations/filtermapm-loop-eq.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [filterMapM_cons](declarations/filtermapm-cons.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [zipWithM'](declarations/zipwithm.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [zipWithM'_nil_left](declarations/zipwithm-nil-left.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [zipWithM'_nil_right](declarations/zipwithm-nil-right.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [zipWithM'_cons_cons](declarations/zipwithm-cons-cons.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [zipWithM'_eq_zipWithM](declarations/zipwithm-eq-zipwithm.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [zipWithM_nil_left](declarations/zipwithm-nil-left-source-edition-2.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [zipWithM_nil_right](declarations/zipwithm-nil-right-source-edition-2.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [zipWithM_cons_cons](declarations/zipwithm-cons-cons-source-edition-2.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [zipWithM'_eq_mapM_id_zipWith](declarations/zipwithm-eq-mapm-id-zipwith.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [flatMapM_nil](declarations/flatmapm-nil.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [flatMapM_loop_eq](declarations/flatmapm-loop-eq.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [flatMapM_cons](declarations/flatmapm-cons.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [foldlM_map](declarations/foldlm-map.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [foldrM_map](declarations/foldrm-map.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [foldlM_filterMap](declarations/foldlm-filtermap.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [foldrM_filterMap](declarations/foldrm-filtermap.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [foldlM_filter](declarations/foldlm-filter.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [foldrM_filter](declarations/foldrm-filter.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [foldlM_attachWith](declarations/foldlm-attachwith.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [foldrM_attachWith](declarations/foldrm-attachwith.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [forM_append](declarations/form-append.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [forM_map](declarations/form-map.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [forIn'_loop_congr](declarations/forin-loop-congr.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [forIn'_cons](declarations/forin-cons-source-edition-2.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [forIn_cons](declarations/forin-cons.md) | 301 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [forIn'_congr](declarations/forin-congr.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [forIn'_eq_foldlM](declarations/forin-eq-foldlm-source-edition-2.md) | 337 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [forIn'_yield_eq_foldlM](declarations/forin-yield-eq-foldlm.md) | 367 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [forIn'_pure_yield_eq_foldl](declarations/forin-pure-yield-eq-foldl-source-edition-2.md) | 374 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [idRun_forIn'_yield_eq_foldl](declarations/idrun-forin-yield-eq-foldl.md) | 381 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [forIn'_map](declarations/forin-map.md) | 387 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [forIn_eq_foldlM](declarations/forin-eq-foldlm.md) | 396 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [forIn_yield_eq_foldlM](declarations/forin-yield-eq-foldlm-source-edition-2.md) | 419 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [forIn_pure_yield_eq_foldl](declarations/forin-pure-yield-eq-foldl.md) | 426 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [idRun_forIn_yield_eq_foldl](declarations/idrun-forin-yield-eq-foldl-source-edition-2.md) | 433 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [forIn_map](declarations/forin-map-source-edition-2.md) | 439 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [allM_eq_not_anyM_not](declarations/allm-eq-not-anym-not.md) | 446 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [anyM_pure](declarations/anym-pure.md) | 456 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [anyM_nil](declarations/anym-nil.md) | 464 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [anyM_cons](declarations/anym-cons.md) | 468 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [allM_pure](declarations/allm-pure.md) | 478 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [allM_nil](declarations/allm-nil.md) | 482 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [allM_cons](declarations/allm-cons.md) | 486 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [foldlM_subtype](declarations/foldlm-subtype.md) | 502 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [foldlM_wfParam](declarations/foldlm-wfparam.md) | 510 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [foldlM_unattach](declarations/foldlm-unattach.md) | 514 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [foldrM_subtype](declarations/foldrm-subtype.md) | 524 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [foldrM_wfParam](declarations/foldrm-wfparam.md) | 536 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [foldrM_unattach](declarations/foldrm-unattach.md) | 540 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [mapM_subtype](declarations/mapm-subtype.md) | 550 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [mapM_wfParam](declarations/mapm-wfparam.md) | 558 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [mapM_unattach](declarations/mapm-unattach.md) | 562 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [filterMapM_subtype](declarations/filtermapm-subtype.md) | 567 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [filterMapM_wfParam](declarations/filtermapm-wfparam.md) | 574 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [filterMapM_unattach](declarations/filtermapm-unattach.md) | 579 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [flatMapM_subtype](declarations/flatmapm-subtype.md) | 585 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [flatMapM_wfParam](declarations/flatmapm-wfparam.md) | 592 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [flatMapM_unattach](declarations/flatmapm-unattach.md) | 597 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=42a0d4d1d236bb6789e02cdadb5ee85b8eef61787122b3eaa03542cd43aec7f4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Monadic/Variant6ba9e4977f92ae19fab7f283fc04d7c0071464a8452c528167df52119dcefbf0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
