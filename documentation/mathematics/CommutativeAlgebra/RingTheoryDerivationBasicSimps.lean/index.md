# Ring Theory Derivation Basic Simps

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**81 observed declarations and anonymous commands**, 54 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/Basic/Variant11c69302f0c6be44283437e8e2a5e83dd8a0ca30c12f4d6101dd5857af312654.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b896d55d202d85cb94367bb9f81a0f1b13442b4c`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/CommutativeAlgebra/RingTheoryDerivationBasicSimps.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [Derivation](declarations/derivation.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [(anonymous)](declarations/instance.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [toFun_eq_coe](declarations/tofun-eq-coe.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [Simps.apply](declarations/simps-apply.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `instance` | [hasCoeToLinearMap](declarations/hascoetolinearmap.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [mk_coe](declarations/mk-coe.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [coeFn_coe](declarations/coefn-coe.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [coe_injective](declarations/coe-injective.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [ext](declarations/ext.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [congr_fun](declarations/congr-fun.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [map_add](declarations/map-add.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [map_zero](declarations/map-zero.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [map_smul](declarations/map-smul.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [leibniz](declarations/leibniz.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [map_smul_of_tower](declarations/map-smul-of-tower.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [map_one_eq_zero](declarations/map-one-eq-zero.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [map_algebraMap](declarations/map-algebramap.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [map_natCast](declarations/map-natcast.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [leibniz_pow](declarations/leibniz-pow.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [map_aeval](declarations/map-aeval.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [eqOn_adjoin](declarations/eqon-adjoin.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [ext_of_adjoin_eq_top](declarations/ext-of-adjoin-eq-top.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [coe_zero](declarations/coe-zero.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [coe_zero_linearMap](declarations/coe-zero-linearmap.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [zero_apply](declarations/zero-apply.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `instance` | [(anonymous)](declarations/instance-source-edition-8.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [coe_add](declarations/coe-add.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [coe_add_linearMap](declarations/coe-add-linearmap.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [add_apply](declarations/add-apply.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `instance` | [(anonymous)](declarations/instance-source-edition-14.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [coe_smul](declarations/coe-smul.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [coe_smul_linearMap](declarations/coe-smul-linearmap.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [smul_apply](declarations/smul-apply.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `instance` | [(anonymous)](declarations/instance-source-edition-7.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [coeFnAddMonoidHom](declarations/coefnaddmonoidhom.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `lemma` | [coeFnAddMonoidHom_apply](declarations/coefnaddmonoidhom-apply.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `instance` | [(anonymous)](declarations/instance-source-edition-13.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `instance` | [(anonymous)](declarations/instance-source-edition-9.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `instance` | [(anonymous)](declarations/instance-source-edition-11.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `instance` | [instModule](declarations/instmodule.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [_root_.LinearMap.compDer](declarations/root-linearmap-compder.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [coe_to_linearMap_comp](declarations/coe-to-linearmap-comp.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [coe_comp](declarations/coe-comp.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [llcomp](declarations/llcomp.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [_root_.LinearEquiv.compDer](declarations/root-linearequiv-compder.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [linearEquiv_coe_to_linearMap_comp](declarations/linearequiv-coe-to-linearmap-comp.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [linearEquiv_coe_comp](declarations/linearequiv-coe-comp.md) | 303 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `def` | [compAlgebraMap](declarations/compalgebramap.md) | 313 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `def` | [restrictScalars](declarations/restrictscalars.md) | 327 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `lemma` | [coe_restrictScalars](declarations/coe-restrictscalars.md) | 332 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `lemma` | [restrictScalars_apply](declarations/restrictscalars-apply.md) | 335 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `def` | [liftOfRightInverse](declarations/liftofrightinverse.md) | 353 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `lemma` | [liftOfRightInverse_apply](declarations/liftofrightinverse-apply.md) | 374 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `lemma` | [liftOfRightInverse_eq](declarations/liftofrightinverse-eq.md) | 381 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `abbrev` | [liftOfSurjective](declarations/liftofsurjective.md) | 391 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `lemma` | [liftOfSurjective_apply](declarations/liftofsurjective-apply.md) | 395 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `def` | [mk'](declarations/mk.md) | 408 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [coe_mk'](declarations/coe-mk.md) | 415 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [coe_mk'_linearMap](declarations/coe-mk-linearmap.md) | 419 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [map_neg](declarations/map-neg.md) | 434 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [map_sub](declarations/map-sub.md) | 437 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [map_intCast](declarations/map-intcast.md) | 441 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [leibniz_of_mul_eq_one](declarations/leibniz-of-mul-eq-one.md) | 444 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [leibniz_invOf](declarations/leibniz-invof.md) | 452 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [leibniz_inv](declarations/leibniz-inv.md) | 459 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [leibniz_div](declarations/leibniz-div.md) | 464 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [leibniz_div_const](declarations/leibniz-div-const.md) | 470 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `lemma` | [leibniz_zpow](declarations/leibniz-zpow.md) | 475 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 498 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [coe_neg](declarations/coe-neg.md) | 504 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [coe_neg_linearMap](declarations/coe-neg-linearmap.md) | 508 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [neg_apply](declarations/neg-apply.md) | 511 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `instance` | [(anonymous)](declarations/instance-source-edition-10.md) | 514 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [coe_sub](declarations/coe-sub.md) | 520 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [coe_sub_linearMap](declarations/coe-sub-linearmap.md) | 524 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [sub_apply](declarations/sub-apply.md) | 527 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `instance` | [(anonymous)](declarations/instance-source-edition-12.md) | 530 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fed9b15d9dc761fbebe301863da4c3c5f1014cb4a51bbd1007891e450197f61c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Basic/Variant11c69302f0c6be44283437e8e2a5e83dd8a0ca30c12f4d6101dd5857af312654.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
