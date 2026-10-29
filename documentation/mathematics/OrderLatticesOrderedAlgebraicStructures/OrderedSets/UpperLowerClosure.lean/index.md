# Upper Lower Closure

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**90 observed declarations and anonymous commands**, 80 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Closure/Variant10dbeb0acfae3070443fac5e73a65774880f8aa54816553bcef8d89c30824ac3.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `85532be1ed33b58e776dbd16742f17b5ae32c280`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerClosure.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [upperClosure](declarations/upperclosure.md) | 31 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [lowerClosure](declarations/lowerclosure.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [mem_upperClosure](declarations/mem-upperclosure.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [mem_lowerClosure](declarations/mem-lowerclosure.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [coe_upperClosure](declarations/coe-upperclosure.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [coe_lowerClosure](declarations/coe-lowerclosure.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `instance` | [instDecidablePredMemUpperClosure](declarations/instdecidablepredmemupperclosure.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `instance` | [instDecidablePredMemLowerClosure](declarations/instdecidablepredmemlowerclosure.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [subset_upperClosure](declarations/subset-upperclosure.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [subset_lowerClosure](declarations/subset-lowerclosure.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [upperClosure_min](declarations/upperclosure-min.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [lowerClosure_min](declarations/lowerclosure-min.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [IsUpperSet.upperClosure](declarations/isupperset-upperclosure.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [IsLowerSet.lowerClosure](declarations/islowerset-lowerclosure.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [UpperSet.upperClosure](declarations/upperset-upperclosure.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [LowerSet.lowerClosure](declarations/lowerset-lowerclosure.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [upperClosure_image](declarations/upperclosure-image.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [lowerClosure_image](declarations/lowerclosure-image.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [UpperSet.iInf_Ici](declarations/upperset-iinf-ici.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [LowerSet.iSup_Iic](declarations/lowerset-isup-iic.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [lowerClosure_le](declarations/lowerclosure-le.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [le_upperClosure](declarations/le-upperclosure.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [gc_upperClosure_coe](declarations/gc-upperclosure-coe.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [gc_lowerClosure_coe](declarations/gc-lowerclosure-coe.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [giUpperClosureCoe](declarations/giupperclosurecoe.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [giLowerClosureCoe](declarations/gilowerclosurecoe.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [upperClosure_anti](declarations/upperclosure-anti.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [lowerClosure_mono](declarations/lowerclosure-mono.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [upperClosure_empty](declarations/upperclosure-empty.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [lowerClosure_empty](declarations/lowerclosure-empty.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [upperClosure_singleton](declarations/upperclosure-singleton.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [lowerClosure_singleton](declarations/lowerclosure-singleton.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [upperClosure_univ](declarations/upperclosure-univ.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [lowerClosure_univ](declarations/lowerclosure-univ.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [upperClosure_eq_top_iff](declarations/upperclosure-eq-top-iff.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [lowerClosure_eq_bot_iff](declarations/lowerclosure-eq-bot-iff.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [upperClosure_union](declarations/upperclosure-union.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [lowerClosure_union](declarations/lowerclosure-union.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [upperClosure_iUnion](declarations/upperclosure-iunion.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [lowerClosure_iUnion](declarations/lowerclosure-iunion.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [upperClosure_sUnion](declarations/upperclosure-sunion.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [lowerClosure_sUnion](declarations/lowerclosure-sunion.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [Set.OrdConnected.upperClosure_inter_lowerClosure](declarations/set-ordconnected-upperclosure-inter-lowerclosure.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [ordConnected_iff_upperClosure_inter_lowerClosure](declarations/ordconnected-iff-upperclosure-inter-lowerclosure.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [upperBounds_lowerClosure](declarations/upperbounds-lowerclosure.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [lowerBounds_upperClosure](declarations/lowerbounds-upperclosure.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [bddAbove_lowerClosure](declarations/bddabove-lowerclosure.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [bddBelow_upperClosure](declarations/bddbelow-upperclosure.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `lemma` | [IsLowerSet.disjoint_upperClosure_left](declarations/islowerset-disjoint-upperclosure-left.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `lemma` | [IsLowerSet.disjoint_upperClosure_right](declarations/islowerset-disjoint-upperclosure-right.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `lemma` | [IsUpperSet.disjoint_lowerClosure_left](declarations/isupperset-disjoint-lowerclosure-left.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `lemma` | [IsUpperSet.disjoint_lowerClosure_right](declarations/isupperset-disjoint-lowerclosure-right.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `lemma` | [upperClosure_eq](declarations/upperclosure-eq.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `lemma` | [lowerClosure_eq](declarations/lowerclosure-eq.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `lemma` | [IsAntichain.minimal_mem_upperClosure_iff_mem](declarations/isantichain-minimal-mem-upperclosure-iff-mem.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `lemma` | [IsAntichain.maximal_mem_lowerClosure_iff_mem](declarations/isantichain-maximal-mem-lowerclosure-iff-mem.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `def` | [sdiff](declarations/sdiff-source-edition-2.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `def` | [erase](declarations/erase-source-edition-2.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `lemma` | [coe_sdiff](declarations/coe-sdiff.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `lemma` | [coe_erase](declarations/coe-erase-source-edition-2.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `lemma` | [sdiff_singleton](declarations/sdiff-singleton.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `lemma` | [sdiff_le_left](declarations/sdiff-le-left.md) | 307 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `lemma` | [erase_le](declarations/erase-le.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `lemma` | [sdiff_eq_left](declarations/sdiff-eq-left-source-edition-2.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `lemma` | [erase_eq](declarations/erase-eq-source-edition-2.md) | 313 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `lemma` | [sdiff_lt_left](declarations/sdiff-lt-left.md) | 315 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `lemma` | [erase_lt](declarations/erase-lt.md) | 318 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `lemma` | [sdiff_idem](declarations/sdiff-idem-source-edition-2.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `lemma` | [erase_idem](declarations/erase-idem.md) | 323 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `lemma` | [sdiff_sup_lowerClosure](declarations/sdiff-sup-lowerclosure.md) | 326 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `lemma` | [lowerClosure_sup_sdiff](declarations/lowerclosure-sup-sdiff.md) | 335 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `lemma` | [erase_sup_Iic](declarations/erase-sup-iic.md) | 338 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `lemma` | [Iic_sup_erase](declarations/iic-sup-erase.md) | 341 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `def` | [sdiff](declarations/sdiff.md) | 350 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `def` | [erase](declarations/erase.md) | 355 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `lemma` | [coe_sdiff](declarations/coe-sdiff-source-edition-2.md) | 360 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `lemma` | [coe_erase](declarations/coe-erase.md) | 363 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `lemma` | [sdiff_singleton](declarations/sdiff-singleton-source-edition-2.md) | 365 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `lemma` | [le_sdiff_left](declarations/le-sdiff-left.md) | 368 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `lemma` | [le_erase](declarations/le-erase.md) | 369 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `lemma` | [sdiff_eq_left](declarations/sdiff-eq-left.md) | 371 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `lemma` | [erase_eq](declarations/erase-eq.md) | 374 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `lemma` | [lt_sdiff_left](declarations/lt-sdiff-left.md) | 376 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `lemma` | [lt_erase](declarations/lt-erase.md) | 379 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `lemma` | [sdiff_idem](declarations/sdiff-idem.md) | 381 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `lemma` | [erase_idem](declarations/erase-idem-source-edition-2.md) | 384 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `lemma` | [sdiff_inf_upperClosure](declarations/sdiff-inf-upperclosure.md) | 387 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `lemma` | [upperClosure_inf_sdiff](declarations/upperclosure-inf-sdiff.md) | 396 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `lemma` | [erase_inf_Ici](declarations/erase-inf-ici.md) | 399 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `lemma` | [Ici_inf_erase](declarations/ici-inf-erase.md) | 402 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6097eeb05d394a0682ce9cbc4ceaef8c134e07df522fbacd54f1be508a4f4457 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Closure/Variant10dbeb0acfae3070443fac5e73a65774880f8aa54816553bcef8d89c30824ac3.lean","GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderTheory/ClosureOperators/Variant10dbeb0acfae3070443fac5e73a65774880f8aa54816553bcef8d89c30824ac3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
