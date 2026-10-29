# Ring Theory Derivation Basic Namespaced Simps

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**81 observed declarations and anonymous commands**, 54 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/Basic/Variant03cbda535e67e0806033221dd2db597f65eaec84e0e369f6eac775fbe88c44af.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4cef11039c6087e1ae3c40142ce076d17870708c`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/CommutativeAlgebra/RingTheoryDerivationBasicNamespacedSimps.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [Derivation](declarations/derivation.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [(anonymous)](declarations/instance-source-edition-12.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `instance` | [(anonymous)](declarations/instance-source-edition-13.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [toFun_eq_coe](declarations/tofun-eq-coe.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [Simps.apply](declarations/simps-apply.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `instance` | [hasCoeToLinearMap](declarations/hascoetolinearmap.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [mk_coe](declarations/mk-coe.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [coeFn_coe](declarations/coefn-coe.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [coe_injective](declarations/coe-injective.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [ext](declarations/ext.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [congr_fun](declarations/congr-fun.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [map_add](declarations/map-add.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [map_zero](declarations/map-zero.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [map_smul](declarations/map-smul.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [leibniz](declarations/leibniz.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [map_smul_of_tower](declarations/map-smul-of-tower.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [map_one_eq_zero](declarations/map-one-eq-zero.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [map_algebraMap](declarations/map-algebramap.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [map_natCast](declarations/map-natcast.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [leibniz_pow](declarations/leibniz-pow.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [map_aeval](declarations/map-aeval.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [eqOn_adjoin](declarations/eqon-adjoin.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [ext_of_adjoin_eq_top](declarations/ext-of-adjoin-eq-top.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `instance` | [(anonymous)](declarations/instance-source-edition-7.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [coe_zero](declarations/coe-zero.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [coe_zero_linearMap](declarations/coe-zero-linearmap.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [zero_apply](declarations/zero-apply.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `instance` | [(anonymous)](declarations/instance-source-edition-8.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [coe_add](declarations/coe-add.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [coe_add_linearMap](declarations/coe-add-linearmap.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [add_apply](declarations/add-apply.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [coe_smul](declarations/coe-smul.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [coe_smul_linearMap](declarations/coe-smul-linearmap.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [smul_apply](declarations/smul-apply.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `instance` | [(anonymous)](declarations/instance-source-edition-11.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [coeFnAddMonoidHom](declarations/coefnaddmonoidhom.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `lemma` | [coeFnAddMonoidHom_apply](declarations/coefnaddmonoidhom-apply.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `instance` | [(anonymous)](declarations/instance.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `instance` | [(anonymous)](declarations/instance-source-edition-9.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `instance` | [(anonymous)](declarations/instance-source-edition-14.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `instance` | [instModule](declarations/instmodule.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [Ring Theory Derivation Basic Namespaced Simps](declarations/compder-source-line-273-occurrence-2.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [coe_to_linearMap_comp](declarations/coe-to-linearmap-comp.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [coe_comp](declarations/coe-comp.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [llcomp](declarations/llcomp.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [Ring Theory Derivation Basic Namespaced Simps](declarations/compder.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [linearEquiv_coe_to_linearMap_comp](declarations/linearequiv-coe-to-linearmap-comp.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [linearEquiv_coe_comp](declarations/linearequiv-coe-comp.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `def` | [compAlgebraMap](declarations/compalgebramap.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `def` | [restrictScalars](declarations/restrictscalars.md) | 335 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `lemma` | [coe_restrictScalars](declarations/coe-restrictscalars.md) | 340 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `lemma` | [restrictScalars_apply](declarations/restrictscalars-apply.md) | 343 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `def` | [liftOfRightInverse](declarations/liftofrightinverse.md) | 361 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `lemma` | [liftOfRightInverse_apply](declarations/liftofrightinverse-apply.md) | 382 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `lemma` | [liftOfRightInverse_eq](declarations/liftofrightinverse-eq.md) | 389 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `abbrev` | [liftOfSurjective](declarations/liftofsurjective.md) | 399 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `lemma` | [liftOfSurjective_apply](declarations/liftofsurjective-apply.md) | 403 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `def` | [mk'](declarations/mk.md) | 416 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [coe_mk'](declarations/coe-mk.md) | 423 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [coe_mk'_linearMap](declarations/coe-mk-linearmap.md) | 427 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [map_neg](declarations/map-neg.md) | 442 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [map_sub](declarations/map-sub.md) | 445 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [map_intCast](declarations/map-intcast.md) | 449 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [leibniz_of_mul_eq_one](declarations/leibniz-of-mul-eq-one.md) | 452 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [leibniz_invOf](declarations/leibniz-invof.md) | 460 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [leibniz_inv](declarations/leibniz-inv.md) | 467 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [leibniz_div](declarations/leibniz-div.md) | 472 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [leibniz_div_const](declarations/leibniz-div-const.md) | 478 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `lemma` | [leibniz_zpow](declarations/leibniz-zpow.md) | 483 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 506 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [coe_neg](declarations/coe-neg.md) | 512 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [coe_neg_linearMap](declarations/coe-neg-linearmap.md) | 516 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [neg_apply](declarations/neg-apply.md) | 519 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 522 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [coe_sub](declarations/coe-sub.md) | 528 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [coe_sub_linearMap](declarations/coe-sub-linearmap.md) | 532 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [sub_apply](declarations/sub-apply.md) | 535 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `instance` | [(anonymous)](declarations/instance-source-edition-10.md) | 538 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cb15dcc212a87b3ca40c305f130db84f24e905a9bd9226f0739199709cb6c1ce -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Basic/Variant03cbda535e67e0806033221dd2db597f65eaec84e0e369f6eac775fbe88c44af.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
