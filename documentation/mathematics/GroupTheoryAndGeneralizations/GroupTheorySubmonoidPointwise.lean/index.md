# Group Theory Submonoid Pointwise

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**87 observed declarations and anonymous commands**, 76 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/GroupTheory/Pointwise/Variant0727f19a383c2b3a64d660cc0bda5fb9e0dd063ca556de5adddd939a8e17b30e.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `522713d023d0a4509e13a11eb1413cd5f72db447`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/GroupTheoryAndGeneralizations/GroupTheorySubmonoidPointwise.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `theorem` | [mul_subset](declarations/mul-subset.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [mul_subset_closure](declarations/mul-subset-closure.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [coe_mul_self_eq](declarations/coe-mul-self-eq.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [closure_mul_le](declarations/closure-mul-le.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [sup_eq_closure](declarations/sup-eq-closure.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [pow_smul_mem_closure_smul](declarations/pow-smul-mem-closure-smul.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [inv](declarations/inv.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [coe_inv](declarations/coe-inv.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [mem_inv](declarations/mem-inv.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [involutiveInv](declarations/involutiveinv.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [inv_le_inv](declarations/inv-le-inv.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [inv_le](declarations/inv-le.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [invOrderIso](declarations/invorderiso.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [closure_inv](declarations/closure-inv.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [inv_inf](declarations/inv-inf.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [inv_sup](declarations/inv-sup.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [inv_bot](declarations/inv-bot.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [inv_top](declarations/inv-top.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [inv_iInf](declarations/inv-iinf.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [inv_iSup](declarations/inv-isup.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [pointwiseMulAction](declarations/pointwisemulaction.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [coe_pointwise_smul](declarations/coe-pointwise-smul-source-edition-2.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [smul_mem_pointwise_smul](declarations/smul-mem-pointwise-smul-source-edition-2.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [mem_smul_pointwise_iff_exists](declarations/mem-smul-pointwise-iff-exists-source-edition-2.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [smul_bot](declarations/smul-bot.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [smul_sup](declarations/smul-sup-source-edition-2.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [smul_closure](declarations/smul-closure-source-edition-2.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [pointwise_isCentralScalar](declarations/pointwise-iscentralscalar-source-edition-2.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [smul_mem_pointwise_smul_iff](declarations/smul-mem-pointwise-smul-iff-source-edition-3.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [mem_pointwise_smul_iff_inv_smul_mem](declarations/mem-pointwise-smul-iff-inv-smul-mem.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [mem_inv_pointwise_smul_iff](declarations/mem-inv-pointwise-smul-iff.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [pointwise_smul_le_pointwise_smul_iff](declarations/pointwise-smul-le-pointwise-smul-iff-source-edition-2.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [pointwise_smul_subset_iff](declarations/pointwise-smul-subset-iff.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [subset_pointwise_smul_iff](declarations/subset-pointwise-smul-iff.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [smul_mem_pointwise_smul_iff₀](declarations/smul-mem-pointwise-smul-iff-source-edition-2.md) | 309 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [mem_pointwise_smul_iff_inv_smul_mem₀](declarations/mem-pointwise-smul-iff-inv-smul-mem-source-edition-3.md) | 314 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [mem_inv_pointwise_smul_iff₀](declarations/mem-inv-pointwise-smul-iff-source-edition-3.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [pointwise_smul_le_pointwise_smul_iff₀](declarations/pointwise-smul-le-pointwise-smul-iff-source-edition-4.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [pointwise_smul_le_iff₀](declarations/pointwise-smul-le-iff.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [le_pointwise_smul_iff₀](declarations/le-pointwise-smul-iff-source-edition-2.md) | 334 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [mem_closure_inv](declarations/mem-closure-inv.md) | 341 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [pointwiseMulAction](declarations/pointwisemulaction-source-edition-2.md) | 357 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [coe_pointwise_smul](declarations/coe-pointwise-smul.md) | 369 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [smul_mem_pointwise_smul](declarations/smul-mem-pointwise-smul.md) | 373 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [mem_smul_pointwise_iff_exists](declarations/mem-smul-pointwise-iff-exists.md) | 377 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [smul_bot](declarations/smul-bot-source-edition-2.md) | 383 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [smul_sup](declarations/smul-sup.md) | 387 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [smul_closure](declarations/smul-closure.md) | 392 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `lemma` | [pointwise_isCentralScalar](declarations/pointwise-iscentralscalar.md) | 396 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [smul_mem_pointwise_smul_iff](declarations/smul-mem-pointwise-smul-iff-source-edition-4.md) | 411 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [mem_pointwise_smul_iff_inv_smul_mem](declarations/mem-pointwise-smul-iff-inv-smul-mem-source-edition-4.md) | 415 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [mem_inv_pointwise_smul_iff](declarations/mem-inv-pointwise-smul-iff-source-edition-2.md) | 420 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [pointwise_smul_le_pointwise_smul_iff](declarations/pointwise-smul-le-pointwise-smul-iff.md) | 425 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [pointwise_smul_le_iff](declarations/pointwise-smul-le-iff-source-edition-2.md) | 430 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [le_pointwise_smul_iff](declarations/le-pointwise-smul-iff.md) | 434 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [smul_mem_pointwise_smul_iff₀](declarations/smul-mem-pointwise-smul-iff.md) | 445 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [mem_pointwise_smul_iff_inv_smul_mem₀](declarations/mem-pointwise-smul-iff-inv-smul-mem-source-edition-2.md) | 450 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [mem_inv_pointwise_smul_iff₀](declarations/mem-inv-pointwise-smul-iff-source-edition-4.md) | 455 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [pointwise_smul_le_pointwise_smul_iff₀](declarations/pointwise-smul-le-pointwise-smul-iff-source-edition-3.md) | 461 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [pointwise_smul_le_iff₀](declarations/pointwise-smul-le-iff-source-edition-3.md) | 466 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [le_pointwise_smul_iff₀](declarations/le-pointwise-smul-iff-source-edition-3.md) | 471 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `def` | [one](declarations/one.md) | 493 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [one_eq_mrange](declarations/one-eq-mrange.md) | 497 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [natCast_mem_one](declarations/natcast-mem-one.md) | 501 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [mem_one](declarations/mem-one.md) | 506 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [one_eq_closure](declarations/one-eq-closure.md) | 510 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [one_eq_closure_one_set](declarations/one-eq-closure-one-set.md) | 517 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `def` | [mul](declarations/mul.md) | 529 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [mul_mem_mul](declarations/mul-mem-mul.md) | 533 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [mul_le](declarations/mul-le.md) | 537 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [mul_induction_on](declarations/mul-induction-on.md) | 543 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [closure_mul_closure](declarations/closure-mul-closure.md) | 551 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [mul_eq_closure_mul_set](declarations/mul-eq-closure-mul-set.md) | 565 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [mul_bot](declarations/mul-bot.md) | 571 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [bot_mul](declarations/bot-mul.md) | 577 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [mul_le_mul](declarations/mul-le-mul.md) | 583 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [mul_le_mul_left](declarations/mul-le-mul-left.md) | 587 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [mul_le_mul_right](declarations/mul-le-mul-right.md) | 591 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [mul_subset_mul](declarations/mul-subset-mul.md) | 595 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `def` | [hasDistribNeg](declarations/hasdistribneg.md) | 610 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `def` | [mulOneClass](declarations/muloneclass.md) | 638 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `def` | [semigroup](declarations/semigroup.md) | 652 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `def` | [monoid](declarations/monoid.md) | 673 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [closure_pow](declarations/closure-pow.md) | 679 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [pow_eq_closure_pow_set](declarations/pow-eq-closure-pow-set.md) | 684 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [pow_subset_pow](declarations/pow-subset-pow.md) | 688 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [submonoid_closure](declarations/submonoid-closure.md) | 701 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2f1537d73e2a3a7938da91d2ae1c5b5480e38747297522a912b3d916d7950f55 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Pointwise/Variant0727f19a383c2b3a64d660cc0bda5fb9e0dd063ca556de5adddd939a8e17b30e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
