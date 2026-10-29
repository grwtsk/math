# Div Inv Monoid Namespaced Public

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**43 observed declarations and anonymous commands**, 21 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/GroupTheory/DivInvMonoid/Variant093712ee3c47a471174edb02efbaa29ccb4237ac9548021ac5b709c6a2fed13b.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1c8a5b12e862be9c462ca3d6dfc5eb6657523c59`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/GroupTheoryAndGeneralizations/DivInvMonoidNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [zpowRec](declarations/zpowrec.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [zsmulRec](declarations/zsmulrec.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `class` | [InvolutiveNeg](declarations/involutiveneg.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `class` | [InvolutiveInv](declarations/involutiveinv.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [inv_inv](declarations/inv-inv.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [DivInvMonoid.div'](declarations/divinvmonoid-div.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `class` | [ZSMul](declarations/zsmul.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `class` | [ZPow](declarations/zpow.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `instance` | [ZPow.toPow](declarations/zpow-topow.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `instance` | [ZPow.ofPow](declarations/zpow-ofpow.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `class` | [DivInvMonoid](declarations/divinvmonoid.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [SubNegMonoid.sub'](declarations/subnegmonoid-sub.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `class` | [SubNegMonoid](declarations/subnegmonoid.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `class` | [IsAddCyclic](declarations/isaddcyclic.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `class` | [IsCyclic](declarations/iscyclic.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [exists_zpow_surjective](declarations/exists-zpow-surjective.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [zpow_eq_pow](declarations/zpow-eq-pow.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [zpow_zero](declarations/zpow-zero.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [zpow_natCast](declarations/zpow-natcast.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [zpow_ofNat](declarations/zpow-ofnat.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [zpow_negSucc](declarations/zpow-negsucc.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [negSucc_zsmul](declarations/negsucc-zsmul.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [div_eq_mul_inv](declarations/div-eq-mul-inv.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [inv_eq_one_div](declarations/inv-eq-one-div.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [mul_div_assoc](declarations/mul-div-assoc.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [one_div](declarations/one-div.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [zpow_one](declarations/zpow-one.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [zpow_two](declarations/zpow-two.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [zpow_neg_one](declarations/zpow-neg-one.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [zpow_neg_coe_of_pos](declarations/zpow-neg-coe-of-pos.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `class` | [NegZeroClass](declarations/negzeroclass.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `class` | [SubNegZeroMonoid](declarations/subnegzeromonoid.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `class` | [InvOneClass](declarations/invoneclass.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `class` | [DivInvOneMonoid](declarations/divinvonemonoid.md) | 315 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [inv_one](declarations/inv-one.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `class` | [SubtractionMonoid](declarations/subtractionmonoid.md) | 327 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `class` | [DivisionMonoid](declarations/divisionmonoid.md) | 338 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [mul_inv_rev](declarations/mul-inv-rev.md) | 349 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [inv_eq_of_mul_eq_one_right](declarations/inv-eq-of-mul-eq-one-right.md) | 353 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [inv_eq_of_mul_eq_one_left](declarations/inv-eq-of-mul-eq-one-left.md) | 357 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [eq_inv_of_mul_eq_one_left](declarations/eq-inv-of-mul-eq-one-left.md) | 361 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `class` | [SubtractionCommMonoid](declarations/subtractioncommmonoid.md) | 367 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `class` | [DivisionCommMonoid](declarations/divisioncommmonoid.md) | 373 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8a68f15bf30bc0dc52847106abc14e826db0826af7d6cd7ddf2b2cdec5a88023 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/DivInvMonoid/Variant093712ee3c47a471174edb02efbaa29ccb4237ac9548021ac5b709c6a2fed13b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
