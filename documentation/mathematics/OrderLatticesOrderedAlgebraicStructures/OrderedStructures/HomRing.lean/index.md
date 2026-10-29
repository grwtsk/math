# Hom Ring

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**74 observed declarations and anonymous commands**, 47 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Ring/Variant0467f671d8ac5985623d652bee22267e882afc3cf0becf8ee6ea20effdbc167a.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fb554df85979767d3a88b49903e38953d2a547c2`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRing.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [OrderRingHom](declarations/orderringhom.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [OrderRingIso](declarations/orderringiso.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [OrderRingHomClass.toOrderRingHom](declarations/orderringhomclass-toorderringhom.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [OrderRingIsoClass.toOrderRingIso](declarations/orderringisoclass-toorderringiso.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `instance` | [(anonymous)](declarations/instance-source-edition-8.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [toOrderAddMonoidHom](declarations/toorderaddmonoidhom.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [toOrderMonoidWithZeroHom](declarations/toordermonoidwithzerohom.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `instance` | [(anonymous)](declarations/instance-source-edition-12.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `instance` | [(anonymous)](declarations/instance-source-edition-10.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [toFun_eq_coe](declarations/tofun-eq-coe-source-edition-2.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [ext](declarations/ext.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [toRingHom_eq_coe](declarations/toringhom-eq-coe.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [toOrderAddMonoidHom_eq_coe](declarations/toorderaddmonoidhom-eq-coe.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [toOrderMonoidWithZeroHom_eq_coe](declarations/toordermonoidwithzerohom-eq-coe.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [coe_coe_ringHom](declarations/coe-coe-ringhom.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [coe_coe_orderAddMonoidHom](declarations/coe-coe-orderaddmonoidhom.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [coe_coe_orderMonoidWithZeroHom](declarations/coe-coe-ordermonoidwithzerohom.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [coe_ringHom_apply](declarations/coe-ringhom-apply.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [coe_orderAddMonoidHom_apply](declarations/coe-orderaddmonoidhom-apply.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [coe_orderMonoidWithZeroHom_apply](declarations/coe-ordermonoidwithzerohom-apply.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [copy](declarations/copy.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [coe_copy](declarations/coe-copy.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [copy_eq](declarations/copy-eq.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [id](declarations/id.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [coe_id](declarations/coe-id.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [id_apply](declarations/id-apply.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [coe_ringHom_id](declarations/coe-ringhom-id.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [coe_orderAddMonoidHom_id](declarations/coe-orderaddmonoidhom-id.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [coe_orderMonoidWithZeroHom_id](declarations/coe-ordermonoidwithzerohom-id.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [comp](declarations/comp.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [coe_comp](declarations/coe-comp.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [comp_apply](declarations/comp-apply.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [comp_assoc](declarations/comp-assoc.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [comp_id](declarations/comp-id.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [id_comp](declarations/id-comp.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [cancel_right](declarations/cancel-right.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [cancel_left](declarations/cancel-left.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `instance` | [(anonymous)](declarations/instance-source-edition-7.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [toOrderIso](declarations/toorderiso.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `instance` | [(anonymous)](declarations/instance-source-edition-11.md) | 305 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `instance` | [(anonymous)](declarations/instance.md) | 315 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 318 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [toFun_eq_coe](declarations/tofun-eq-coe.md) | 322 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [ext](declarations/ext-source-edition-2.md) | 326 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [coe_mk](declarations/coe-mk.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [mk_coe](declarations/mk-coe.md) | 334 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [toRingEquiv_eq_coe](declarations/toringequiv-eq-coe.md) | 338 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [toOrderIso_eq_coe](declarations/toorderiso-eq-coe.md) | 342 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [coe_toRingEquiv](declarations/coe-toringequiv.md) | 346 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [coe_toOrderIso](declarations/coe-toorderiso.md) | 351 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `def` | [refl](declarations/refl.md) | 358 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `instance` | [(anonymous)](declarations/instance-source-edition-9.md) | 361 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [refl_apply](declarations/refl-apply.md) | 365 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [coe_ringEquiv_refl](declarations/coe-ringequiv-refl.md) | 369 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [coe_orderIso_refl](declarations/coe-orderiso-refl.md) | 373 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `def` | [symm](declarations/symm.md) | 380 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `def` | [Simps.symm_apply](declarations/simps-symm-apply.md) | 386 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [symm_symm](declarations/symm-symm.md) | 390 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [symm_bijective](declarations/symm-bijective.md) | 392 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `def` | [trans](declarations/trans.md) | 397 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [trans_toRingEquiv](declarations/trans-toringequiv.md) | 402 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [trans_toRingEquiv_aux](declarations/trans-toringequiv-aux.md) | 408 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [trans_apply](declarations/trans-apply.md) | 414 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [self_trans_symm](declarations/self-trans-symm.md) | 418 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [symm_trans_self](declarations/symm-trans-self.md) | 422 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `def` | [toOrderRingHom](declarations/toorderringhom.md) | 432 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [toOrderRingHom_eq_coe](declarations/toorderringhom-eq-coe.md) | 436 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [coe_toOrderRingHom](declarations/coe-toorderringhom.md) | 440 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [coe_toOrderRingHom_refl](declarations/coe-toorderringhom-refl.md) | 444 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [toOrderRingHom_injective](declarations/toorderringhom-injective.md) | 447 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=200da39b5cd8e9350bd7a1d7b34ee086efc87c9bb53ec437efeecd3feb6f02e6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Ring/Variant0467f671d8ac5985623d652bee22267e882afc3cf0becf8ee6ea20effdbc167a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
