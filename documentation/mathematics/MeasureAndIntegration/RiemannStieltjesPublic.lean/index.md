# Riemann Stieltjes Public

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**62 observed declarations and anonymous commands**, 50 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/RealAnalysis/Integration/RiemannStieltjes/Variant5d0b5345773f43a69d6837612fc79540c182fb5333f5571968e6e85608c9fc84.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b230bb01c114b0b9304b8f63ecb3fa64d9f7ee38`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/MeasureAndIntegration/RiemannStieltjesPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [Box.lower₁](declarations/box-lower.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [Box.upper₁](declarations/box-upper.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [Box.lower_lt_upper₁](declarations/box-lower-lt-upper.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [Box.le_iff₁](declarations/box-le-iff.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [interval](declarations/interval.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [interval_lower](declarations/interval-lower.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [interval_upper](declarations/interval-upper.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [Icc_interval](declarations/icc-interval.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [incrementAux](declarations/incrementaux.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [incrementAux_apply](declarations/incrementaux-apply.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [increment](declarations/increment.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [increment_apply](declarations/increment-apply.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [increment_smul](declarations/increment-smul.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [increment_lsmul_eq_volume](declarations/increment-lsmul-eq-volume.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [HasStieltjesIntegralOrdered](declarations/hasstieltjesintegralordered.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [HasStieltjesIntegral](declarations/hasstieltjesintegral.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [StieltjesIntegrable](declarations/stieltjesintegrable.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [stieltjesIntegral](declarations/stieltjesintegral.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [HasRiemannIntegral](declarations/hasriemannintegral.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [RiemannIntegrable](declarations/riemannintegrable.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [riemannIntegral](declarations/riemannintegral.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [HasStieltjesIntegral.of_eq_iff_zero](declarations/hasstieltjesintegral-of-eq-iff-zero.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [HasStieltjesIntegral.of_lt](declarations/hasstieltjesintegral-of-lt.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [HasStieltjesIntegral.of_gt](declarations/hasstieltjesintegral-of-gt.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [HasStieltjesIntegral.symm_iff](declarations/hasstieltjesintegral-symm-iff.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [HasStieltjesIntegral.symm](declarations/hasstieltjesintegral-symm.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [stieltjesIntegrable_iff_integrable_of_lt](declarations/stieltjesintegrable-iff-integrable-of-lt.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [StieltjesIntegrable.of_eq](declarations/stieltjesintegrable-of-eq.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [StieltjesIntegrable.symm_iff](declarations/stieltjesintegrable-symm-iff.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [StieltjesIntegrable.symm](declarations/stieltjesintegrable-symm.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [stieltjesIntegrable_iff_integrable_of_gt](declarations/stieltjesintegrable-iff-integrable-of-gt.md) | 305 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `lemma` | [StieltjesIntegrable.iff_min_max](declarations/stieltjesintegrable-iff-min-max.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [HasStieltjesIntegral.unique](declarations/hasstieltjesintegral-unique.md) | 316 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [HasStieltjesIntegral.stieltjesIntegrable](declarations/hasstieltjesintegral-stieltjesintegrable.md) | 328 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [StieltjesIntegrable.hasStieltjesIntegral](declarations/stieltjesintegrable-hasstieltjesintegral.md) | 331 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [HasStieltjesIntegral.stieltjesIntegral_eq](declarations/hasstieltjesintegral-stieltjesintegral-eq.md) | 336 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [StieltjesIntegrable.hasStieltjesIntegral_iff](declarations/stieltjesintegrable-hasstieltjesintegral-iff.md) | 342 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [stieltjesIntegral.integral_same](declarations/stieltjesintegral-integral-same.md) | 347 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [stieltjesIntegral.integral_undef](declarations/stieltjesintegral-integral-undef.md) | 351 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [stieltjesIntegral.integral_symm](declarations/stieltjesintegral-integral-symm.md) | 354 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [hasStieltjesIntegral'_congr](declarations/hasstieltjesintegral-congr-source-edition-2.md) | 361 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [hasStieltjesIntegral_congr](declarations/hasstieltjesintegral-congr.md) | 375 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [stieltjesIntegrable_congr](declarations/stieltjesintegrable-congr.md) | 386 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [stieltjesIntegral_congr](declarations/stieltjesintegral-congr.md) | 391 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [HasRiemannIntegral.iff_hasIntegral](declarations/hasriemannintegral-iff-hasintegral.md) | 408 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `lemma` | [RiemannIntegrable_def](declarations/riemannintegrable-def.md) | 413 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `lemma` | [HasRiemannIntegral.symm_iff](declarations/hasriemannintegral-symm-iff.md) | 415 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `lemma` | [HasRiemannIntegral.symm](declarations/hasriemannintegral-symm.md) | 419 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `lemma` | [RiemannIntegrable.symm](declarations/riemannintegrable-symm.md) | 423 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `lemma` | [HasRiemannIntegral.of_eq_iff_zero](declarations/hasriemannintegral-of-eq-iff-zero.md) | 427 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `lemma` | [RiemannIntegrable.of_eq](declarations/riemannintegrable-of-eq.md) | 431 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [riemannIntegral.integral_same](declarations/riemannintegral-integral-same.md) | 434 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [RiemannIntegrable.iff_integrable](declarations/riemannintegrable-iff-integrable.md) | 436 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [HasRiemannIntegral.unique](declarations/hasriemannintegral-unique.md) | 440 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [HasRiemannIntegral.riemannIntegrable](declarations/hasriemannintegral-riemannintegrable.md) | 444 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [RiemannIntegrable.hasRiemannIntegral](declarations/riemannintegrable-hasriemannintegral.md) | 447 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [HasRiemannIntegral.riemannIntegral_eq](declarations/hasriemannintegral-riemannintegral-eq.md) | 451 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [RiemannIntegrable.hasRiemannIntegral_iff](declarations/riemannintegrable-hasriemannintegral-iff.md) | 455 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [hasRiemannIntegral_congr](declarations/hasriemannintegral-congr.md) | 459 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [riemannIntegrable_congr](declarations/riemannintegrable-congr.md) | 463 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [riemannIntegral.integral_undef](declarations/riemannintegral-integral-undef.md) | 468 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [riemannIntegral.integral_symm](declarations/riemannintegral-integral-symm.md) | 471 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=17796cfca798d712f31c0e55d11057550b6ff2b7c2d05b23a1dc5f7966bd53f8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/RiemannStieltjes/Variant5d0b5345773f43a69d6837612fc79540c182fb5333f5571968e6e85608c9fc84.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
