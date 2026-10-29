# CStar Algebra Multiplier

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**86 observed declarations and anonymous commands**, 52 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/Multiplier/Variant9bcf12b47ea10835528e16de1a6f45d801302fdb7ddfb59e040bed5a2a03bfe9.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `31eb08fa7dd71ba585809bbee515aa38657add36`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/FunctionalAnalysis/CStarAlgebraMultiplier.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [DoubleCentralizer](declarations/doublecentralizer.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `lemma` | [DoubleCentralizer.ext](declarations/doublecentralizer-ext.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [range_toProd](declarations/range-toprod.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [instAdd](declarations/instadd.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `instance` | [instZero](declarations/instzero.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `instance` | [instNeg](declarations/instneg.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `instance` | [instSub](declarations/instsub.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `instance` | [instSMul](declarations/instsmul.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [smul_toProd](declarations/smul-toprod.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [smul_fst](declarations/smul-fst.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [smul_snd](declarations/smul-snd.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `instance` | [instIsScalarTower](declarations/instisscalartower.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `instance` | [instSMulCommClass](declarations/instsmulcommclass.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `instance` | [instIsCentralScalar](declarations/instiscentralscalar.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `instance` | [instOne](declarations/instone.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `instance` | [instMul](declarations/instmul.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `instance` | [instNatCast](declarations/instnatcast.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `instance` | [instIntCast](declarations/instintcast.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `instance` | [instPow](declarations/instpow.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `instance` | [instInhabited](declarations/instinhabited.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [add_toProd](declarations/add-toprod.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [zero_toProd](declarations/zero-toprod.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [neg_toProd](declarations/neg-toprod.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [sub_toProd](declarations/sub-toprod.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [one_toProd](declarations/one-toprod.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [natCast_toProd](declarations/natcast-toprod.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [intCast_toProd](declarations/intcast-toprod.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [pow_toProd](declarations/pow-toprod.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [add_fst](declarations/add-fst.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [add_snd](declarations/add-snd.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [zero_fst](declarations/zero-fst.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [zero_snd](declarations/zero-snd.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [neg_fst](declarations/neg-fst.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [neg_snd](declarations/neg-snd.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [sub_fst](declarations/sub-fst.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [sub_snd](declarations/sub-snd.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [one_fst](declarations/one-fst.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [one_snd](declarations/one-snd.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [mul_fst](declarations/mul-fst.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [mul_snd](declarations/mul-snd.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [natCast_fst](declarations/natcast-fst.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [natCast_snd](declarations/natcast-snd.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [intCast_fst](declarations/intcast-fst.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [intCast_snd](declarations/intcast-snd.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [pow_fst](declarations/pow-fst.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [pow_snd](declarations/pow-snd.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [toProdMulOpposite](declarations/toprodmulopposite.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [toProdMulOpposite_injective](declarations/toprodmulopposite-injective.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [range_toProdMulOpposite](declarations/range-toprodmulopposite.md) | 301 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `instance` | [instRing](declarations/instring.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [toProdHom](declarations/toprodhom.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `def` | [toProdMulOppositeHom](declarations/toprodmuloppositehom.md) | 326 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `instance` | [instModule](declarations/instmodule.md) | 335 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `instance` | [instAlgebra](declarations/instalgebra.md) | 340 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [algebraMap_toProd](declarations/algebramap-toprod.md) | 361 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [algebraMap_fst](declarations/algebramap-fst.md) | 364 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [algebraMap_snd](declarations/algebramap-snd.md) | 367 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `instance` | [instStar](declarations/inststar.md) | 381 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [star_fst](declarations/star-fst.md) | 393 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [star_snd](declarations/star-snd.md) | 397 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `instance` | [instStarAddMonoid](declarations/inststaraddmonoid.md) | 400 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `instance` | [instStarRing](declarations/inststarring.md) | 407 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `instance` | [instStarModule](declarations/inststarmodule.md) | 414 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `def` | [coe](declarations/coe.md) | 432 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 443 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [coe_fst](declarations/coe-fst.md) | 447 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [coe_snd](declarations/coe-snd.md) | 451 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [coe_eq_algebraMap](declarations/coe-eq-algebramap.md) | 454 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `def` | [coeHom](declarations/coehom.md) | 463 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `instance` | [(anonymous)](declarations/instance.md) | 490 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [norm_def](declarations/norm-def-source-edition-2.md) | 496 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [nnnorm_def](declarations/nnnorm-def.md) | 499 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [norm_def'](declarations/norm-def.md) | 502 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [nnnorm_def'](declarations/nnnorm-def-source-edition-2.md) | 505 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `instance` | [instNormedSpace](declarations/instnormedspace.md) | 508 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `instance` | [instNormedAlgebra](declarations/instnormedalgebra.md) | 512 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [isUniformEmbedding_toProdMulOpposite](declarations/isuniformembedding-toprodmulopposite.md) | 515 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 519 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [norm_fst_eq_snd](declarations/norm-fst-eq-snd.md) | 533 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [nnnorm_fst_eq_snd](declarations/nnnorm-fst-eq-snd.md) | 569 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [norm_fst](declarations/norm-fst.md) | 573 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [norm_snd](declarations/norm-snd.md) | 577 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [nnnorm_fst](declarations/nnnorm-fst.md) | 580 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [nnnorm_snd](declarations/nnnorm-snd.md) | 584 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `instance` | [instCStarRing](declarations/instcstarring.md) | 595 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 646 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a3891f43353987d2e6364c6cb90842b83dc5c0439932227cf6d23c11ae1e8c0d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/Multiplier/Variant9bcf12b47ea10835528e16de1a6f45d801302fdb7ddfb59e040bed5a2a03bfe9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
