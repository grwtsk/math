# Rank Trace Mult

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**40 observed declarations and anonymous commands**, 35 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RankTraceMult/Variantd58c03b0b8701f791fa47adab197382f0d468aaa946a9f37ead56d0193c74d71.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `56727106c5990a07e3f7e29eae3122be737a1cbc`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RankTraceMult.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [gc](declarations/gc.md) | 30 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `lemma` | [gc_of_le](declarations/gc-of-le.md) | 32 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [gc_of_ge](declarations/gc-of-ge.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [gc_zero](declarations/gc-zero.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [gc_ge](declarations/gc-ge.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [affine_le_gc](declarations/affine-le-gc.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [affine_eq_gc](declarations/affine-eq-gc.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [gc_sum_le](declarations/gc-sum-le.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [sq_sub_ge_gc](declarations/sq-sub-ge-gc.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [sum_sq_sub_ge_gc](declarations/sum-sq-sub-ge-gc.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [re_diag_eq_sum_normSq_eigenvalues](declarations/re-diag-eq-sum-normsq-eigenvalues.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [sum_gc_diag_le_sum_gc_eigenvalues](declarations/sum-gc-diag-le-sum-gc-eigenvalues.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [specMap_pow_succ](declarations/specmap-pow-succ.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [rtrace_pow_succ](declarations/rtrace-pow-succ.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [trace_pow_succ_comm](declarations/trace-pow-succ-comm.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [sum_eval_eigenvalues_comm](declarations/sum-eval-eigenvalues-comm.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [sum_eigenvalues_comm](declarations/sum-eigenvalues-comm.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [Wmat](declarations/wmat.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [Pmat](declarations/pmat.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [xsq](declarations/xsq.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [Pmat_apply](declarations/pmat-apply.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [Pmat_posSemidef](declarations/pmat-possemidef.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [re_gram_diag](declarations/re-gram-diag.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [rtrace_Pmat](declarations/rtrace-pmat.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [sum_gc_eigenvalues_ge](declarations/sum-gc-eigenvalues-ge.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [rank_trace_mult](declarations/rank-trace-mult.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [kc](declarations/kc.md) | 351 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [kc_eq](declarations/kc-eq.md) | 353 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [kc_mono](declarations/kc-mono.md) | 359 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [kc_of_le](declarations/kc-of-le.md) | 365 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [kc_of_ge](declarations/kc-of-ge.md) | 366 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [rank_trace_mult_k](declarations/rank-trace-mult-k.md) | 369 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [rank_trace_mult_k_le](declarations/rank-trace-mult-k-le.md) | 380 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `lemma` | [kc_two_one](declarations/kc-two-one.md) | 389 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `lemma` | [kc_two_of_two_le](declarations/kc-two-of-two-le.md) | 390 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `lemma` | [kc_three_one](declarations/kc-three-one.md) | 391 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `lemma` | [kc_three_two](declarations/kc-three-two.md) | 392 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `lemma` | [kc_three_of_three_le](declarations/kc-three-of-three-le.md) | 393 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [sum_kc_two_nat](declarations/sum-kc-two-nat.md) | 403 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [sum_kc_three_nat](declarations/sum-kc-three-nat.md) | 419 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=23a8288155e073b3b0a57bdf491bc70bf7404877e88aa3ae9b5e954afc3e6fde -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RankTraceMult/Variantd58c03b0b8701f791fa47adab197382f0d468aaa946a9f37ead56d0193c74d71.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
