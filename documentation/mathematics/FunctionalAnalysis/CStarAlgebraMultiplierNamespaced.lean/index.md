# CStar Algebra Multiplier Namespaced

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**86 observed declarations and anonymous commands**, 52 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/Multiplier/Variantf5164c958b3465391851517b5c22bd2bcbe976c0728210b5e14fd67126e96dd2.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `19e6009d93dd22c2c397baab24ac9bfb4152c1c4`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/FunctionalAnalysis/CStarAlgebraMultiplierNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [DoubleCentralizer](declarations/doublecentralizer.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `lemma` | [DoubleCentralizer.ext](declarations/doublecentralizer-ext.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [range_toProd](declarations/range-toprod.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [instAdd](declarations/instadd.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `instance` | [instZero](declarations/instzero.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `instance` | [instNeg](declarations/instneg.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `instance` | [instSub](declarations/instsub.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `instance` | [instSMul](declarations/instsmul.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [smul_toProd](declarations/smul-toprod.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [smul_fst](declarations/smul-fst.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [smul_snd](declarations/smul-snd.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `instance` | [instIsScalarTower](declarations/instisscalartower.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `instance` | [instSMulCommClass](declarations/instsmulcommclass.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `instance` | [instIsCentralScalar](declarations/instiscentralscalar.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `instance` | [instOne](declarations/instone.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `instance` | [instMul](declarations/instmul.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `instance` | [instNatCast](declarations/instnatcast.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `instance` | [instIntCast](declarations/instintcast.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `instance` | [instPow](declarations/instpow.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `instance` | [instInhabited](declarations/instinhabited.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [add_toProd](declarations/add-toprod.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [zero_toProd](declarations/zero-toprod.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [neg_toProd](declarations/neg-toprod.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [sub_toProd](declarations/sub-toprod.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [one_toProd](declarations/one-toprod.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [natCast_toProd](declarations/natcast-toprod.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [intCast_toProd](declarations/intcast-toprod.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [pow_toProd](declarations/pow-toprod.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [add_fst](declarations/add-fst.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [add_snd](declarations/add-snd.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [zero_fst](declarations/zero-fst.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [zero_snd](declarations/zero-snd.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [neg_fst](declarations/neg-fst.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [neg_snd](declarations/neg-snd.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [sub_fst](declarations/sub-fst.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [sub_snd](declarations/sub-snd.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [one_fst](declarations/one-fst.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [one_snd](declarations/one-snd.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [mul_fst](declarations/mul-fst.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [mul_snd](declarations/mul-snd.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [natCast_fst](declarations/natcast-fst.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [natCast_snd](declarations/natcast-snd.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [intCast_fst](declarations/intcast-fst.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [intCast_snd](declarations/intcast-snd.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [pow_fst](declarations/pow-fst.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [pow_snd](declarations/pow-snd.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [toProdMulOpposite](declarations/toprodmulopposite.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [toProdMulOpposite_injective](declarations/toprodmulopposite-injective.md) | 303 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [range_toProdMulOpposite](declarations/range-toprodmulopposite.md) | 309 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `instance` | [instRing](declarations/instring.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [toProdHom](declarations/toprodhom.md) | 327 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `def` | [toProdMulOppositeHom](declarations/toprodmuloppositehom.md) | 334 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `instance` | [instModule](declarations/instmodule.md) | 343 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `instance` | [instAlgebra](declarations/instalgebra.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [algebraMap_toProd](declarations/algebramap-toprod.md) | 369 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [algebraMap_fst](declarations/algebramap-fst.md) | 372 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [algebraMap_snd](declarations/algebramap-snd.md) | 375 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `instance` | [instStar](declarations/inststar.md) | 389 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [star_fst](declarations/star-fst.md) | 401 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [star_snd](declarations/star-snd.md) | 405 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `instance` | [instStarAddMonoid](declarations/inststaraddmonoid.md) | 408 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `instance` | [instStarRing](declarations/inststarring.md) | 415 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `instance` | [instStarModule](declarations/inststarmodule.md) | 422 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `def` | [coe](declarations/coe.md) | 440 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 451 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [coe_fst](declarations/coe-fst.md) | 455 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [coe_snd](declarations/coe-snd.md) | 459 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [coe_eq_algebraMap](declarations/coe-eq-algebramap.md) | 462 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `def` | [coeHom](declarations/coehom.md) | 471 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 498 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [norm_def](declarations/norm-def-source-edition-2.md) | 504 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [nnnorm_def](declarations/nnnorm-def.md) | 507 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [norm_def'](declarations/norm-def.md) | 510 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [nnnorm_def'](declarations/nnnorm-def-source-edition-2.md) | 513 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `instance` | [instNormedSpace](declarations/instnormedspace.md) | 516 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `instance` | [instNormedAlgebra](declarations/instnormedalgebra.md) | 520 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [isUniformEmbedding_toProdMulOpposite](declarations/isuniformembedding-toprodmulopposite.md) | 523 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 527 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [norm_fst_eq_snd](declarations/norm-fst-eq-snd.md) | 541 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [nnnorm_fst_eq_snd](declarations/nnnorm-fst-eq-snd.md) | 577 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [norm_fst](declarations/norm-fst.md) | 581 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [norm_snd](declarations/norm-snd.md) | 585 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [nnnorm_fst](declarations/nnnorm-fst.md) | 588 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [nnnorm_snd](declarations/nnnorm-snd.md) | 592 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `instance` | [instCStarRing](declarations/instcstarring.md) | 603 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `instance` | [(anonymous)](declarations/instance.md) | 654 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=aa5dbc2dbd0f8c8b2447a094543206d0f026c10e98ea1c3e2e92cb9a5ce58b44 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/Multiplier/Variantf5164c958b3465391851517b5c22bd2bcbe976c0728210b5e14fd67126e96dd2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
