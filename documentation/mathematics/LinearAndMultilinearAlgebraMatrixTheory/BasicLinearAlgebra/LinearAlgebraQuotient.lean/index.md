# Linear Algebra Quotient

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**91 observed declarations and anonymous commands**, 55 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/Quotient/Variant34a0939c096f1047fbdcd81b2821e07e8282ae5c6f4d946f0a0ad0b78a609435.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c3ec3997f5439a46787d4615bcc3a854676f8525`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraQuotient.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [quotientRel](declarations/quotientrel.md) | 34 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [quotientRel_r_def](declarations/quotientrel-r-def.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `instance` | [hasQuotient](declarations/hasquotient.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [mk](declarations/mk.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [mk'_eq_mk'](declarations/mk-eq-mk.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [mk''_eq_mk](declarations/mk-eq-mk-source-edition-2.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [quot_mk_eq_mk](declarations/quot-mk-eq-mk.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [eq'](declarations/eq.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [eq](declarations/eq-source-edition-2.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `instance` | [(anonymous)](declarations/instance.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [mk_zero](declarations/mk-zero.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [mk_eq_zero](declarations/mk-eq-zero.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `instance` | [addCommGroup](declarations/addcommgroup.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [mk_add](declarations/mk-add.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [mk_neg](declarations/mk-neg.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [mk_sub](declarations/mk-sub.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `instance` | [instSMul'](declarations/instsmul-source-edition-2.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `instance` | [instSMul](declarations/instsmul.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [mk_smul](declarations/mk-smul.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `instance` | [smulCommClass](declarations/smulcommclass.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `instance` | [isScalarTower](declarations/isscalartower.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `instance` | [isCentralScalar](declarations/iscentralscalar.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `instance` | [mulAction'](declarations/mulaction.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `instance` | [mulAction](declarations/mulaction-source-edition-2.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `instance` | [smulZeroClass'](declarations/smulzeroclass-source-edition-2.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `instance` | [smulZeroClass](declarations/smulzeroclass.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `instance` | [distribSMul'](declarations/distribsmul-source-edition-2.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `instance` | [distribSMul](declarations/distribsmul.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `instance` | [distribMulAction'](declarations/distribmulaction.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `instance` | [distribMulAction](declarations/distribmulaction-source-edition-2.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `instance` | [module'](declarations/module.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `instance` | [module](declarations/module-source-edition-2.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [restrictScalarsEquiv](declarations/restrictscalarsequiv.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [restrictScalarsEquiv_mk](declarations/restrictscalarsequiv-mk.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [restrictScalarsEquiv_symm_mk](declarations/restrictscalarsequiv-symm-mk.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [mk_surjective](declarations/mk-surjective.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [nontrivial_of_lt_top](declarations/nontrivial-of-lt-top.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `instance` | [QuotientBot.infinite](declarations/quotientbot-infinite.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `instance` | [QuotientTop.unique](declarations/quotienttop-unique.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `instance` | [QuotientTop.fintype](declarations/quotienttop-fintype.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [subsingleton_quotient_iff_eq_top](declarations/subsingleton-quotient-iff-eq-top.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [unique_quotient_iff_eq_top](declarations/unique-quotient-iff-eq-top.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `instance` | [Quotient.fintype](declarations/quotient-fintype.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [card_eq_card_quotient_mul_card](declarations/card-eq-card-quotient-mul-card.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [quot_hom_ext](declarations/quot-hom-ext.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [mkQ](declarations/mkq.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [mkQ_apply](declarations/mkq-apply.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [mkQ_surjective](declarations/mkq-surjective.md) | 323 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [linearMap_qext](declarations/linearmap-qext.md) | 336 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [liftQ](declarations/liftq.md) | 342 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [liftQ_apply](declarations/liftq-apply.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [liftQ_mkQ](declarations/liftq-mkq.md) | 353 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `def` | [liftQSpanSingleton](declarations/liftqspansingleton.md) | 358 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [liftQSpanSingleton_apply](declarations/liftqspansingleton-apply.md) | 363 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [range_mkQ](declarations/range-mkq.md) | 369 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [ker_mkQ](declarations/ker-mkq.md) | 374 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [le_comap_mkQ](declarations/le-comap-mkq.md) | 377 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [mkQ_map_self](declarations/mkq-map-self.md) | 382 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [comap_map_mkQ](declarations/comap-map-mkq.md) | 387 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [map_mkQ_eq_top](declarations/map-mkq-eq-top.md) | 391 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `def` | [mapQ](declarations/mapq.md) | 401 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [mapQ_apply](declarations/mapq-apply.md) | 406 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [mapQ_mkQ](declarations/mapq-mkq.md) | 411 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [mapQ_zero](declarations/mapq-zero.md) | 416 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [mapQ_comp](declarations/mapq-comp.md) | 425 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [mapQ_id](declarations/mapq-id.md) | 435 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [mapQ_pow](declarations/mapq-pow.md) | 441 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [comap_liftQ](declarations/comap-liftq.md) | 454 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [map_liftQ](declarations/map-liftq.md) | 459 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [ker_liftQ](declarations/ker-liftq.md) | 465 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [range_liftQ](declarations/range-liftq.md) | 469 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [ker_liftQ_eq_bot](declarations/ker-liftq-eq-bot.md) | 473 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `def` | [comapMkQRelIso](declarations/comapmkqreliso.md) | 479 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `def` | [comapMkQOrderEmbedding](declarations/comapmkqorderembedding.md) | 489 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [comapMkQOrderEmbedding_eq](declarations/comapmkqorderembedding-eq.md) | 494 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [span_preimage_eq](declarations/span-preimage-eq.md) | 499 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `def` | [Quotient.equiv](declarations/quotient-equiv.md) | 518 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [Quotient.equiv_symm](declarations/quotient-equiv-symm.md) | 533 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [Quotient.equiv_trans](declarations/quotient-equiv-trans.md) | 542 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [range_mkQ_comp](declarations/range-mkq-comp.md) | 574 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [ker_le_range_iff](declarations/ker-le-range-iff.md) | 578 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [range_eq_top_of_cancel](declarations/range-eq-top-of-cancel.md) | 584 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `def` | [quotEquivOfEqBot](declarations/quotequivofeqbot.md) | 604 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [quotEquivOfEqBot_apply_mk](declarations/quotequivofeqbot-apply-mk.md) | 610 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [quotEquivOfEqBot_symm_apply](declarations/quotequivofeqbot-symm-apply.md) | 616 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [coe_quotEquivOfEqBot_symm](declarations/coe-quotequivofeqbot-symm.md) | 622 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `def` | [quotEquivOfEq](declarations/quotequivofeq.md) | 628 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [quotEquivOfEq_mk](declarations/quotequivofeq-mk.md) | 641 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [Quotient.equiv_refl](declarations/quotient-equiv-refl.md) | 648 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `def` | [mapQLinear](declarations/mapqlinear.md) | 667 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=dac4b30d732c0728dbc92bb54cfa451fd7aea6d58745e7a53589eb808654bd09 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Quotient/Variant34a0939c096f1047fbdcd81b2821e07e8282ae5c6f4d946f0a0ad0b78a609435.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
