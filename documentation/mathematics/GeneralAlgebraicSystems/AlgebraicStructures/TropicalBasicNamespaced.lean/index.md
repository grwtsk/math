# Tropical Basic Namespaced

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**102 observed declarations and anonymous commands**, 59 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/UniversalAlgebra/Basic/Variant7327d520bd5133b81208ebdabd90bfb581cffc504cc26785f3899627b1bef4f8.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1386359e2fe4862f9c3c1d387c88736da20345a6`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/GeneralAlgebraicSystems/AlgebraicStructures/TropicalBasicNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [Tropical](declarations/tropical.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [trop](declarations/trop.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [untrop](declarations/untrop.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [trop_injective](declarations/trop-injective.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [untrop_injective](declarations/untrop-injective.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [trop_inj_iff](declarations/trop-inj-iff.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [untrop_inj_iff](declarations/untrop-inj-iff.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [trop_untrop](declarations/trop-untrop.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [untrop_trop](declarations/untrop-trop.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [leftInverse_trop](declarations/leftinverse-trop.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [rightInverse_trop](declarations/rightinverse-trop.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [tropEquiv](declarations/tropequiv.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [tropEquiv_coe_fn](declarations/tropequiv-coe-fn.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [tropEquiv_symm_coe_fn](declarations/tropequiv-symm-coe-fn.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [trop_eq_iff_eq_untrop](declarations/trop-eq-iff-eq-untrop.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [untrop_eq_iff_eq_trop](declarations/untrop-eq-iff-eq-trop.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [injective_trop](declarations/injective-trop.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [injective_untrop](declarations/injective-untrop.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [surjective_trop](declarations/surjective-trop.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [surjective_untrop](declarations/surjective-untrop.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [tropRec](declarations/troprec.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `instance` | [(anonymous)](declarations/instance-source-edition-10.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `instance` | [instLETropical](declarations/instletropical.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [untrop_le_iff](declarations/untrop-le-iff.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `instance` | [decidableLE](declarations/decidablele.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `instance` | [instLTTropical](declarations/instlttropical.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [untrop_lt_iff](declarations/untrop-lt-iff.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `instance` | [decidableLT](declarations/decidablelt.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `instance` | [instPreorderTropical](declarations/instpreordertropical.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [tropOrderIso](declarations/troporderiso.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [tropOrderIso_coe_fn](declarations/troporderiso-coe-fn.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [tropOrderIso_symm_coe_fn](declarations/troporderiso-symm-coe-fn.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [trop_monotone](declarations/trop-monotone.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [untrop_monotone](declarations/untrop-monotone.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `instance` | [instPartialOrderTropical](declarations/instpartialordertropical.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `instance` | [instZeroTropical](declarations/instzerotropical.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `instance` | [instTopTropical](declarations/insttoptropical.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [untrop_zero](declarations/untrop-zero.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [trop_top](declarations/trop-top.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [trop_coe_ne_zero](declarations/trop-coe-ne-zero.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [zero_ne_trop_coe](declarations/zero-ne-trop-coe.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [le_zero](declarations/le-zero.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `instance` | [(anonymous)](declarations/instance-source-edition-9.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `instance` | [instAddCommSemigroupTropical](declarations/instaddcommsemigrouptropical.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [untrop_add](declarations/untrop-add.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [trop_min](declarations/trop-min.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [trop_inf](declarations/trop-inf.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [trop_add_def](declarations/trop-add-def.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `instance` | [instLinearOrderTropical](declarations/instlinearordertropical.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [untrop_sup](declarations/untrop-sup.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [untrop_max](declarations/untrop-max.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [min_eq_add](declarations/min-eq-add.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [inf_eq_add](declarations/inf-eq-add.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [trop_max_def](declarations/trop-max-def.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [trop_sup_def](declarations/trop-sup-def.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [add_eq_left](declarations/add-eq-left.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [add_eq_right](declarations/add-eq-right.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [add_eq_left_iff](declarations/add-eq-left-iff.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [add_eq_right_iff](declarations/add-eq-right-iff.md) | 301 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [add_self](declarations/add-self.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [add_eq_iff](declarations/add-eq-iff.md) | 307 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [add_eq_zero_iff](declarations/add-eq-zero-iff.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `instance` | [instAddCommMonoidTropical](declarations/instaddcommmonoidtropical.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `instance` | [(anonymous)](declarations/instance-source-edition-8.md) | 332 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [trop_add](declarations/trop-add.md) | 336 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [untrop_mul](declarations/untrop-mul.md) | 340 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [trop_mul_def](declarations/trop-mul-def.md) | 343 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `instance` | [instOneTropical](declarations/instonetropical.md) | 346 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [trop_zero](declarations/trop-zero.md) | 350 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [untrop_one](declarations/untrop-one.md) | 354 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `instance` | [instAddMonoidWithOneTropical](declarations/instaddmonoidwithonetropical.md) | 357 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `instance` | [(anonymous)](declarations/instance-source-edition-11.md) | 364 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 367 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [untrop_inv](declarations/untrop-inv.md) | 371 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `instance` | [(anonymous)](declarations/instance-source-edition-12.md) | 374 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [untrop_div](declarations/untrop-div.md) | 378 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `instance` | [instSemigroupTropical](declarations/instsemigrouptropical.md) | 381 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `instance` | [instCommSemigroupTropical](declarations/instcommsemigrouptropical.md) | 385 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 388 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [untrop_pow](declarations/untrop-pow.md) | 391 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [trop_smul](declarations/trop-smul.md) | 396 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `instance` | [instMulOneClassTropical](declarations/instmuloneclasstropical.md) | 399 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `instance` | [instMonoidTropical](declarations/instmonoidtropical.md) | 405 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [trop_nsmul](declarations/trop-nsmul.md) | 412 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `instance` | [instCommMonoidTropical](declarations/instcommmonoidtropical.md) | 415 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `instance` | [instGroupTropical](declarations/instgrouptropical.md) | 418 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `instance` | [(anonymous)](declarations/instance-source-edition-7.md) | 428 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [untrop_zpow](declarations/untrop-zpow.md) | 432 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [trop_zsmul](declarations/trop-zsmul.md) | 436 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `instance` | [mulLeftMono](declarations/mulleftmono.md) | 443 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `instance` | [mulRightMono](declarations/mulrightmono.md) | 447 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `instance` | [addLeftMono](declarations/addleftmono.md) | 451 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `instance` | [mulLeftStrictMono](declarations/mulleftstrictmono.md) | 460 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `instance` | [mulRightStrictMono](declarations/mulrightstrictmono.md) | 464 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `instance` | [instDistribTropical](declarations/instdistribtropical.md) | 468 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [add_pow](declarations/add-pow.md) | 476 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `instance` | [(anonymous)](declarations/instance.md) | 489 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `theorem` | [succ_nsmul](declarations/succ-nsmul.md) | 498 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `theorem` | [mul_eq_zero_iff](declarations/mul-eq-zero-iff.md) | 507 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 511 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cf2d3158fd847804e17256497e9ffc61290c4635b7d7839b0fc828d1ba905aa5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/Basic/Variant7327d520bd5133b81208ebdabd90bfb581cffc504cc26785f3899627b1bef4f8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
