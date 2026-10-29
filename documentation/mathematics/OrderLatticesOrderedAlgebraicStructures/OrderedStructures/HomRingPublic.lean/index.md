# Hom Ring Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**79 observed declarations and anonymous commands**, 51 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Ring/Variante5694b570d7f2717f5cba745344c18bd4b3fe1a0d3e185f97c239083c78d43ef.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `87d238125e20fb9ebd7516e0047cb2affe68e7ed`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [OrderRingHom](declarations/orderringhom.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [OrderRingIso](declarations/orderringiso.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [OrderRingHomClass.toOrderRingHom](declarations/orderringhomclass-toorderringhom.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [OrderRingIsoClass.toOrderRingIso](declarations/orderringisoclass-toorderringiso.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [toOrderAddMonoidHom](declarations/toorderaddmonoidhom.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [toOrderMonoidWithZeroHom](declarations/toordermonoidwithzerohom.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `instance` | [(anonymous)](declarations/instance-source-edition-7.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `instance` | [(anonymous)](declarations/instance.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `instance` | [(anonymous)](declarations/instance-source-edition-11.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [toFun_eq_coe](declarations/tofun-eq-coe.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [ext](declarations/ext-source-edition-2.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [toRingHom_eq_coe](declarations/toringhom-eq-coe.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [toOrderAddMonoidHom_eq_coe](declarations/toorderaddmonoidhom-eq-coe.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [toOrderMonoidWithZeroHom_eq_coe](declarations/toordermonoidwithzerohom-eq-coe.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [coe_coe_ringHom](declarations/coe-coe-ringhom.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [coe_coe_orderAddMonoidHom](declarations/coe-coe-orderaddmonoidhom.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [coe_coe_orderMonoidWithZeroHom](declarations/coe-coe-ordermonoidwithzerohom.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [coe_ringHom_apply](declarations/coe-ringhom-apply.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [coe_orderAddMonoidHom_apply](declarations/coe-orderaddmonoidhom-apply.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [coe_orderMonoidWithZeroHom_apply](declarations/coe-ordermonoidwithzerohom-apply.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [copy](declarations/copy.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [coe_copy](declarations/coe-copy.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [copy_eq](declarations/copy-eq.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [id](declarations/id.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `instance` | [(anonymous)](declarations/instance-source-edition-9.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [coe_id](declarations/coe-id.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [id_apply](declarations/id-apply.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [coe_ringHom_id](declarations/coe-ringhom-id.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [coe_orderAddMonoidHom_id](declarations/coe-orderaddmonoidhom-id.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [coe_orderMonoidWithZeroHom_id](declarations/coe-ordermonoidwithzerohom-id.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [comp](declarations/comp.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [coe_comp](declarations/coe-comp.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [comp_apply](declarations/comp-apply.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [comp_assoc](declarations/comp-assoc.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [comp_id](declarations/comp-id.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [id_comp](declarations/id-comp.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [cancel_right](declarations/cancel-right.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [cancel_left](declarations/cancel-left.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `instance` | [(anonymous)](declarations/instance-source-edition-8.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [toOrderIso](declarations/toorderiso.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 314 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `instance` | [(anonymous)](declarations/instance-source-edition-10.md) | 317 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `instance` | [(anonymous)](declarations/instance-source-edition-12.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [toFun_eq_coe](declarations/tofun-eq-coe-source-edition-2.md) | 323 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [ext](declarations/ext.md) | 327 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [coe_mk](declarations/coe-mk.md) | 331 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [mk_coe](declarations/mk-coe.md) | 335 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [toRingEquiv_eq_coe](declarations/toringequiv-eq-coe.md) | 339 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [toOrderIso_eq_coe](declarations/toorderiso-eq-coe.md) | 343 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [coe_toRingEquiv](declarations/coe-toringequiv.md) | 347 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [coe_toOrderIso](declarations/coe-toorderiso.md) | 351 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `def` | [refl](declarations/refl.md) | 358 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `instance` | [(anonymous)](declarations/instance-source-edition-13.md) | 361 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [refl_apply](declarations/refl-apply.md) | 365 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [coe_ringEquiv_refl](declarations/coe-ringequiv-refl.md) | 369 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [coe_orderIso_refl](declarations/coe-orderiso-refl.md) | 373 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `def` | [symm](declarations/symm.md) | 380 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `def` | [Simps.symm_apply](declarations/simps-symm-apply.md) | 383 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [symm_symm](declarations/symm-symm.md) | 387 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [symm_bijective](declarations/symm-bijective.md) | 389 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [symm_apply_apply](declarations/symm-apply-apply.md) | 393 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [apply_symm_apply](declarations/apply-symm-apply.md) | 397 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `def` | [trans](declarations/trans.md) | 402 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [trans_toRingEquiv](declarations/trans-toringequiv.md) | 407 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [trans_toRingEquiv_aux](declarations/trans-toringequiv-aux.md) | 413 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [trans_apply](declarations/trans-apply.md) | 419 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [self_trans_symm](declarations/self-trans-symm.md) | 423 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [symm_trans_self](declarations/symm-trans-self.md) | 427 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [lt_symm_apply](declarations/lt-symm-apply.md) | 436 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [symm_apply_lt](declarations/symm-apply-lt.md) | 439 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `def` | [toOrderRingHom](declarations/toorderringhom.md) | 449 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [toOrderRingHom_eq_coe](declarations/toorderringhom-eq-coe.md) | 453 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [coe_toOrderRingHom](declarations/coe-toorderringhom.md) | 457 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [coe_toOrderRingHom_refl](declarations/coe-toorderringhom-refl.md) | 461 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [toOrderRingHom_injective](declarations/toorderringhom-injective.md) | 464 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2589e5b33ded232db0a594c120f0a8fed31dad76eab80785a152dcd2111e07d4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Ring/Variante5694b570d7f2717f5cba745344c18bd4b3fe1a0d3e185f97c239083c78d43ef.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
