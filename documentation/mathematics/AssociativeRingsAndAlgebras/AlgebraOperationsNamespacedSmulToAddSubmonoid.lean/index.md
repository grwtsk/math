# Algebra Operations Namespaced Smul To Add Submonoid

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**125 observed declarations and anonymous commands**, 107 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/Operations/Variant46b3ae87dff4a7ae1ea63458bf2db5e7e6e1f68b37b0ce2b4758b2db37c093b5.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `39fd7763f0b29bfef59dad27092bf5f3538362fa`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/AssociativeRingsAndAlgebras/AlgebraOperationsNamespacedSmulToAddSubmonoid.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `theorem` | [algebraMap_mem](declarations/algebramap-mem-source-edition-2.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [mem_one'](declarations/mem-one-source-edition-2.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `instance` | [one](declarations/one.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [one_eq_span](declarations/one-eq-span.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [le_one_toAddSubmonoid](declarations/le-one-toaddsubmonoid.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [toSubMulAction_one](declarations/tosubmulaction-one.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [one_eq_span_one_set](declarations/one-eq-span-one-set.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [one_le](declarations/one-le.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [smul_toAddSubmonoid](declarations/smul-toaddsubmonoid.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [smul_mem_smul](declarations/smul-mem-smul.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [smul_le](declarations/smul-le.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [coe_set_smul](declarations/coe-set-smul.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [smul_induction_on](declarations/smul-induction-on-source-edition-2.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [smul_induction_on'](declarations/smul-induction-on.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [smul_mono](declarations/smul-mono.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [smul_mono_left](declarations/smul-mono-left.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [smul_bot](declarations/smul-bot.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [bot_smul](declarations/bot-smul.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [smul_sup](declarations/smul-sup.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [sup_smul](declarations/sup-smul.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [smul_assoc](declarations/smul-assoc.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [smul_iSup](declarations/smul-isup.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [iSup_smul](declarations/isup-smul.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [one_smul](declarations/one-smul.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [smul_subset_smul](declarations/smul-subset-smul.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `instance` | [mul](declarations/mul.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [mul_mem_mul](declarations/mul-mem-mul.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [mul_le](declarations/mul-le.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [mul_toAddSubmonoid](declarations/mul-toaddsubmonoid.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [mul_induction_on](declarations/mul-induction-on.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [mul_induction_on'](declarations/mul-induction-on-source-edition-2.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [mul_bot](declarations/mul-bot.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [bot_mul](declarations/bot-mul.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [one_mul](declarations/one-mul.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [mul_le_mul](declarations/mul-le-mul.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [mul_le_mul_left](declarations/mul-le-mul-left.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [mul_le_mul_right](declarations/mul-le-mul-right.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [mul_comm_of_commute](declarations/mul-comm-of-commute.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [mul_sup](declarations/mul-sup.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [sup_mul](declarations/sup-mul.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [mul_subset_mul](declarations/mul-subset-mul.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `lemma` | [restrictScalars_mul](declarations/restrictscalars-mul.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [iSup_mul](declarations/isup-mul.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [mul_iSup](declarations/mul-isup.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `instance` | [(anonymous)](declarations/instance-source-edition-9.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `instance` | [(anonymous)](declarations/instance.md) | 303 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [pow_eq_npowRec](declarations/pow-eq-npowrec.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [pow_zero](declarations/pow-zero.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [pow_succ](declarations/pow-succ-source-edition-2.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [pow_add](declarations/pow-add.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [pow_one](declarations/pow-one.md) | 315 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [pow_succ'](declarations/pow-succ.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [pow_toAddSubmonoid](declarations/pow-toaddsubmonoid.md) | 322 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [le_pow_toAddSubmonoid](declarations/le-pow-toaddsubmonoid.md) | 331 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [pow_subset_pow](declarations/pow-subset-pow.md) | 337 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [pow_mem_pow](declarations/pow-mem-pow.md) | 340 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `lemma` | [restrictScalars_pow](declarations/restrictscalars-pow.md) | 343 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [one_eq_range](declarations/one-eq-range.md) | 362 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [algebraMap_mem](declarations/algebramap-mem.md) | 366 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [mem_one](declarations/mem-one.md) | 370 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [map_one](declarations/map-one.md) | 373 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [map_op_one](declarations/map-op-one.md) | 379 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [comap_op_one](declarations/comap-op-one.md) | 386 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [map_unop_one](declarations/map-unop-one.md) | 392 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [comap_unop_one](declarations/comap-unop-one.md) | 397 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [mul_eq_map₂](declarations/mul-eq-map.md) | 401 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [span_mul_span](declarations/span-mul-span.md) | 407 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `lemma` | [mul_def](declarations/mul-def.md) | 410 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [mul_one](declarations/mul-one.md) | 414 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [map_mul](declarations/map-mul.md) | 419 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [map_op_mul](declarations/map-op-mul.md) | 440 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [comap_unop_mul](declarations/comap-unop-mul.md) | 454 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [map_unop_mul](declarations/map-unop-mul.md) | 460 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [comap_op_mul](declarations/comap-op-mul.md) | 470 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 479 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 484 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `instance` | [(anonymous)](declarations/instance-source-edition-7.md) | 489 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `def` | [hasDistribPointwiseNeg](declarations/hasdistribpointwiseneg.md) | 501 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [mem_span_mul_finite_of_mem_span_mul](declarations/mem-span-mul-finite-of-mem-span-mul.md) | 510 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [mul_eq_span_mul_set](declarations/mul-eq-span-mul-set.md) | 523 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [mem_span_mul_finite_of_mem_mul](declarations/mem-span-mul-finite-of-mem-mul.md) | 526 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [mem_span_singleton_mul](declarations/mem-span-singleton-mul.md) | 533 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [mem_mul_span_singleton](declarations/mem-mul-span-singleton.md) | 536 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `lemma` | [span_singleton_mul](declarations/span-singleton-mul.md) | 540 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `lemma` | [mem_smul_iff_inv_mul_mem](declarations/mem-smul-iff-inv-mul-mem.md) | 543 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `lemma` | [mul_mem_smul_iff](declarations/mul-mem-smul-iff.md) | 549 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [mul_smul_mul_eq_smul_mul_smul](declarations/mul-smul-mul-eq-smul-mul-smul.md) | 555 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `instance` | [idemSemiring](declarations/idemsemiring.md) | 570 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [span_pow](declarations/span-pow.md) | 578 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [pow_eq_span_pow_set](declarations/pow-eq-span-pow-set.md) | 582 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [pow_induction_on_left'](declarations/pow-induction-on-left-source-edition-2.md) | 587 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `theorem` | [pow_induction_on_right'](declarations/pow-induction-on-right.md) | 607 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [pow_induction_on_left](declarations/pow-induction-on-left.md) | 628 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `theorem` | [pow_induction_on_right](declarations/pow-induction-on-right-source-edition-2.md) | 638 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `def` | [mapHom](declarations/maphom.md) | 647 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [mapHom_id](declarations/maphom-id.md) | 655 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `def` | [equivOpposite](declarations/equivopposite.md) | 660 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `theorem` | [map_pow](declarations/map-pow.md) | 668 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `theorem` | [comap_unop_pow](declarations/comap-unop-pow.md) | 672 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `theorem` | [comap_op_pow](declarations/comap-op-pow.md) | 677 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `theorem` | [map_op_pow](declarations/map-op-pow.md) | 682 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `theorem` | [map_unop_pow](declarations/map-unop-pow.md) | 687 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `def` | [span.ringHom](declarations/span-ringhom.md) | 695 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `def` | [pointwiseMulSemiringAction](declarations/pointwisemulsemiringaction.md) | 711 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `theorem` | [mul_mem_mul_rev](declarations/mul-mem-mul-rev.md) | 727 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `theorem` | [mul_comm](declarations/mul-comm.md) | 732 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 737 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `theorem` | [prod_span](declarations/prod-span.md) | 740 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `theorem` | [prod_span_singleton](declarations/prod-span-singleton.md) | 748 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `instance` | [moduleSet](declarations/moduleset.md) | 755 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `theorem` | [setSemiring_smul_def](declarations/setsemiring-smul-def.md) | 770 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `theorem` | [smul_le_smul](declarations/smul-le-smul.md) | 774 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `theorem` | [singleton_smul](declarations/singleton-smul.md) | 779 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `instance` | [(anonymous)](declarations/instance-source-edition-8.md) | 794 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `theorem` | [mem_div_iff_forall_mul_mem](declarations/mem-div-iff-forall-mul-mem.md) | 807 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `theorem` | [mem_div_iff_smul_subset](declarations/mem-div-iff-smul-subset.md) | 810 | `BLOCKED_NATIVE_ADMISSION` |
| 119 | `theorem` | [le_div_iff](declarations/le-div-iff.md) | 814 | `BLOCKED_NATIVE_ADMISSION` |
| 120 | `theorem` | [le_div_iff_mul_le](declarations/le-div-iff-mul-le.md) | 817 | `BLOCKED_NATIVE_ADMISSION` |
| 121 | `theorem` | [one_le_one_div](declarations/one-le-one-div.md) | 820 | `BLOCKED_NATIVE_ADMISSION` |
| 122 | `theorem` | [one_mem_div](declarations/one-mem-div.md) | 824 | `BLOCKED_NATIVE_ADMISSION` |
| 123 | `theorem` | [le_self_mul_one_div](declarations/le-self-mul-one-div.md) | 827 | `BLOCKED_NATIVE_ADMISSION` |
| 124 | `theorem` | [mul_one_div_le_one](declarations/mul-one-div-le-one.md) | 831 | `BLOCKED_NATIVE_ADMISSION` |
| 125 | `theorem` | [map_div](declarations/map-div.md) | 839 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ecd4adccf02da272b3d1994a35b51a89f4af23384112078ce6751133b6f8c8b6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Operations/Variant46b3ae87dff4a7ae1ea63458bf2db5e7e6e1f68b37b0ce2b4758b2db37c093b5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
