# Tropical Basic

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**102 observed declarations and anonymous commands**, 59 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/UniversalAlgebra/Basic/Variant957b41e58f205ecb1dbc3b6cb97352b973e27eb1d72f6b79862b69476eccdc2a.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `22b8fb97bfc19cccf1ffa3db889e4a47fb9a23a0`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/GeneralAlgebraicSystems/AlgebraicStructures/TropicalBasic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [Tropical](declarations/tropical.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [trop](declarations/trop.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [untrop](declarations/untrop.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [trop_injective](declarations/trop-injective.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [untrop_injective](declarations/untrop-injective.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [trop_inj_iff](declarations/trop-inj-iff.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [untrop_inj_iff](declarations/untrop-inj-iff.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [trop_untrop](declarations/trop-untrop.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [untrop_trop](declarations/untrop-trop.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [leftInverse_trop](declarations/leftinverse-trop.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [rightInverse_trop](declarations/rightinverse-trop.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [tropEquiv](declarations/tropequiv.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [tropEquiv_coe_fn](declarations/tropequiv-coe-fn.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [tropEquiv_symm_coe_fn](declarations/tropequiv-symm-coe-fn.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [trop_eq_iff_eq_untrop](declarations/trop-eq-iff-eq-untrop.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [untrop_eq_iff_eq_trop](declarations/untrop-eq-iff-eq-trop.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [injective_trop](declarations/injective-trop.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [injective_untrop](declarations/injective-untrop.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [surjective_trop](declarations/surjective-trop.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [surjective_untrop](declarations/surjective-untrop.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [tropRec](declarations/troprec.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `instance` | [instLETropical](declarations/instletropical.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [untrop_le_iff](declarations/untrop-le-iff.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `instance` | [decidableLE](declarations/decidablele.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `instance` | [instLTTropical](declarations/instlttropical.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [untrop_lt_iff](declarations/untrop-lt-iff.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `instance` | [decidableLT](declarations/decidablelt.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `instance` | [instPreorderTropical](declarations/instpreordertropical.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [tropOrderIso](declarations/troporderiso.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [tropOrderIso_coe_fn](declarations/troporderiso-coe-fn.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [tropOrderIso_symm_coe_fn](declarations/troporderiso-symm-coe-fn.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [trop_monotone](declarations/trop-monotone.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [untrop_monotone](declarations/untrop-monotone.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `instance` | [instPartialOrderTropical](declarations/instpartialordertropical.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `instance` | [instZeroTropical](declarations/instzerotropical.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `instance` | [instTopTropical](declarations/insttoptropical.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [untrop_zero](declarations/untrop-zero.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [trop_top](declarations/trop-top.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [trop_coe_ne_zero](declarations/trop-coe-ne-zero.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [zero_ne_trop_coe](declarations/zero-ne-trop-coe.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [le_zero](declarations/le-zero.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `instance` | [(anonymous)](declarations/instance-source-edition-7.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `instance` | [instAddCommSemigroupTropical](declarations/instaddcommsemigrouptropical.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [untrop_add](declarations/untrop-add.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [trop_min](declarations/trop-min.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [trop_inf](declarations/trop-inf.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [trop_add_def](declarations/trop-add-def.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `instance` | [instLinearOrderTropical](declarations/instlinearordertropical.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [untrop_sup](declarations/untrop-sup.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [untrop_max](declarations/untrop-max.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [min_eq_add](declarations/min-eq-add.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [inf_eq_add](declarations/inf-eq-add.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [trop_max_def](declarations/trop-max-def.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [trop_sup_def](declarations/trop-sup-def.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [add_eq_left](declarations/add-eq-left.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [add_eq_right](declarations/add-eq-right.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [add_eq_left_iff](declarations/add-eq-left-iff.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [add_eq_right_iff](declarations/add-eq-right-iff.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [add_self](declarations/add-self.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [add_eq_iff](declarations/add-eq-iff.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [add_eq_zero_iff](declarations/add-eq-zero-iff.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `instance` | [instAddCommMonoidTropical](declarations/instaddcommmonoidtropical.md) | 313 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 324 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [trop_add](declarations/trop-add.md) | 328 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [untrop_mul](declarations/untrop-mul.md) | 332 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [trop_mul_def](declarations/trop-mul-def.md) | 335 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `instance` | [instOneTropical](declarations/instonetropical.md) | 338 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [trop_zero](declarations/trop-zero.md) | 342 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [untrop_one](declarations/untrop-one.md) | 346 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `instance` | [instAddMonoidWithOneTropical](declarations/instaddmonoidwithonetropical.md) | 349 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `instance` | [(anonymous)](declarations/instance-source-edition-8.md) | 356 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `instance` | [(anonymous)](declarations/instance-source-edition-11.md) | 359 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [untrop_inv](declarations/untrop-inv.md) | 363 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `instance` | [(anonymous)](declarations/instance-source-edition-12.md) | 366 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [untrop_div](declarations/untrop-div.md) | 370 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `instance` | [instSemigroupTropical](declarations/instsemigrouptropical.md) | 373 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `instance` | [instCommSemigroupTropical](declarations/instcommsemigrouptropical.md) | 377 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 380 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [untrop_pow](declarations/untrop-pow.md) | 383 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [trop_smul](declarations/trop-smul.md) | 388 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `instance` | [instMulOneClassTropical](declarations/instmuloneclasstropical.md) | 391 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `instance` | [instMonoidTropical](declarations/instmonoidtropical.md) | 397 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [trop_nsmul](declarations/trop-nsmul.md) | 404 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `instance` | [instCommMonoidTropical](declarations/instcommmonoidtropical.md) | 407 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `instance` | [instGroupTropical](declarations/instgrouptropical.md) | 410 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `instance` | [(anonymous)](declarations/instance-source-edition-10.md) | 420 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [untrop_zpow](declarations/untrop-zpow.md) | 424 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [trop_zsmul](declarations/trop-zsmul.md) | 428 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `instance` | [mulLeftMono](declarations/mulleftmono.md) | 435 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `instance` | [mulRightMono](declarations/mulrightmono.md) | 439 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `instance` | [addLeftMono](declarations/addleftmono.md) | 443 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `instance` | [mulLeftStrictMono](declarations/mulleftstrictmono.md) | 452 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `instance` | [mulRightStrictMono](declarations/mulrightstrictmono.md) | 456 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `instance` | [instDistribTropical](declarations/instdistribtropical.md) | 460 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [add_pow](declarations/add-pow.md) | 468 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `instance` | [(anonymous)](declarations/instance.md) | 481 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `theorem` | [succ_nsmul](declarations/succ-nsmul.md) | 490 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `theorem` | [mul_eq_zero_iff](declarations/mul-eq-zero-iff.md) | 499 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `instance` | [(anonymous)](declarations/instance-source-edition-9.md) | 503 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2db93b839eb3c8bb4de4d624bb091219315805499f6e3e0d9417b1894b05eba3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/Basic/Variant957b41e58f205ecb1dbc3b6cb97352b973e27eb1d72f6b79862b69476eccdc2a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
