# Group Type Tags

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**92 observed declarations and anonymous commands**, 26 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/GroupTheory/TypeTags/Variant7542c0f3c67b58a0f32a6ed94b90d22e5c12f90ab4cde5fbc9591dfd645646bc.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `af27d0d9e5d5e06f9ed01668f0706b434cac2f92`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/GroupTheoryAndGeneralizations/GroupTypeTags.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [Additive](declarations/additive.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [Multiplicative](declarations/multiplicative.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [ofMul](declarations/ofmul.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [toMul](declarations/tomul.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [ofMul_symm_eq](declarations/ofmul-symm-eq.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [toMul_symm_eq](declarations/tomul-symm-eq.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [ofAdd](declarations/ofadd.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [toAdd](declarations/toadd.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [ofAdd_symm_eq](declarations/ofadd-symm-eq.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [toAdd_symm_eq](declarations/toadd-symm-eq.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [toAdd_ofAdd](declarations/toadd-ofadd.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [ofAdd_toAdd](declarations/ofadd-toadd.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [toMul_ofMul](declarations/tomul-ofmul.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [ofMul_toMul](declarations/ofmul-tomul.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `instance` | [(anonymous)](declarations/instance-source-edition-7.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `instance` | [(anonymous)](declarations/instance-source-edition-8.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `instance` | [(anonymous)](declarations/instance.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `instance` | [instNontrivialAdditive](declarations/instnontrivialadditive.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `instance` | [instNontrivialMultiplicative](declarations/instnontrivialmultiplicative.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `instance` | [Additive.add](declarations/additive-add.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `instance` | [Multiplicative.mul](declarations/multiplicative-mul.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [ofAdd_add](declarations/ofadd-add.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [toAdd_mul](declarations/toadd-mul.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [ofMul_mul](declarations/ofmul-mul.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [toMul_add](declarations/tomul-add.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `instance` | [Additive.addSemigroup](declarations/additive-addsemigroup.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `instance` | [Multiplicative.semigroup](declarations/multiplicative-semigroup.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `instance` | [Additive.addCommSemigroup](declarations/additive-addcommsemigroup.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `instance` | [Multiplicative.commSemigroup](declarations/multiplicative-commsemigroup.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `instance` | [Additive.isLeftCancelAdd](declarations/additive-isleftcanceladd.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `instance` | [Multiplicative.isLeftCancelMul](declarations/multiplicative-isleftcancelmul.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `instance` | [Additive.isRightCancelAdd](declarations/additive-isrightcanceladd.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `instance` | [Multiplicative.isRightCancelMul](declarations/multiplicative-isrightcancelmul.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `instance` | [Additive.isCancelAdd](declarations/additive-iscanceladd.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `instance` | [Multiplicative.isCancelMul](declarations/multiplicative-iscancelmul.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `instance` | [Additive.addLeftCancelSemigroup](declarations/additive-addleftcancelsemigroup.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `instance` | [Multiplicative.leftCancelSemigroup](declarations/multiplicative-leftcancelsemigroup.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `instance` | [Additive.addRightCancelSemigroup](declarations/additive-addrightcancelsemigroup.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `instance` | [Multiplicative.rightCancelSemigroup](declarations/multiplicative-rightcancelsemigroup.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [ofMul_one](declarations/ofmul-one.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [ofMul_eq_zero](declarations/ofmul-eq-zero.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [toMul_zero](declarations/tomul-zero.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [ofAdd_zero](declarations/ofadd-zero.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [ofAdd_eq_one](declarations/ofadd-eq-one.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [toAdd_one](declarations/toadd-one.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `instance` | [Additive.addZeroClass](declarations/additive-addzeroclass.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `instance` | [Multiplicative.mulOneClass](declarations/multiplicative-muloneclass.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `instance` | [Additive.addMonoid](declarations/additive-addmonoid.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `instance` | [Multiplicative.monoid](declarations/multiplicative-monoid.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `instance` | [Additive.addLeftCancelMonoid](declarations/additive-addleftcancelmonoid.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `instance` | [Multiplicative.leftCancelMonoid](declarations/multiplicative-leftcancelmonoid.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `instance` | [Additive.addRightCancelMonoid](declarations/additive-addrightcancelmonoid.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `instance` | [Multiplicative.rightCancelMonoid](declarations/multiplicative-rightcancelmonoid.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `instance` | [Additive.addCommMonoid](declarations/additive-addcommmonoid.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `instance` | [Multiplicative.commMonoid](declarations/multiplicative-commmonoid.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `instance` | [Additive.neg](declarations/additive-neg.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [ofMul_inv](declarations/ofmul-inv.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [toMul_neg](declarations/tomul-neg.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `instance` | [Multiplicative.inv](declarations/multiplicative-inv.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [ofAdd_neg](declarations/ofadd-neg.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [toAdd_inv](declarations/toadd-inv.md) | 315 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `instance` | [Additive.sub](declarations/additive-sub.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `instance` | [Multiplicative.div](declarations/multiplicative-div.md) | 323 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [ofAdd_sub](declarations/ofadd-sub.md) | 328 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [toAdd_div](declarations/toadd-div.md) | 333 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [ofMul_div](declarations/ofmul-div.md) | 338 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [toMul_sub](declarations/tomul-sub.md) | 343 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `instance` | [Additive.involutiveNeg](declarations/additive-involutiveneg.md) | 347 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `instance` | [Multiplicative.involutiveInv](declarations/multiplicative-involutiveinv.md) | 350 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `instance` | [Additive.subNegMonoid](declarations/additive-subnegmonoid.md) | 353 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `instance` | [Multiplicative.divInvMonoid](declarations/multiplicative-divinvmonoid.md) | 361 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `instance` | [Additive.subtractionMonoid](declarations/additive-subtractionmonoid.md) | 369 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `instance` | [Multiplicative.divisionMonoid](declarations/multiplicative-divisionmonoid.md) | 374 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `instance` | [Additive.subtractionCommMonoid](declarations/additive-subtractioncommmonoid.md) | 379 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `instance` | [Multiplicative.divisionCommMonoid](declarations/multiplicative-divisioncommmonoid.md) | 383 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `instance` | [Additive.addGroup](declarations/additive-addgroup.md) | 387 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `instance` | [Multiplicative.group](declarations/multiplicative-group.md) | 390 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `instance` | [Additive.addCommGroup](declarations/additive-addcommgroup.md) | 393 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `instance` | [Multiplicative.commGroup](declarations/multiplicative-commgroup.md) | 396 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `def` | [AddMonoidHom.toMultiplicative](declarations/addmonoidhom-tomultiplicative-source-edition-3.md) | 401 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `def` | [MonoidHom.toAdditive](declarations/monoidhom-toadditive.md) | 421 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `def` | [AddMonoidHom.toMultiplicative'](declarations/addmonoidhom-tomultiplicative-source-edition-2.md) | 441 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `def` | [MonoidHom.toAdditive'](declarations/monoidhom-toadditive-source-edition-2.md) | 461 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `def` | [AddMonoidHom.toMultiplicative''](declarations/addmonoidhom-tomultiplicative.md) | 470 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `def` | [MonoidHom.toAdditive''](declarations/monoidhom-toadditive-source-edition-3.md) | 490 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `instance` | [Additive.coeToFun](declarations/additive-coetofun.md) | 503 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `instance` | [Multiplicative.coeToFun](declarations/multiplicative-coetofun.md) | 514 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=60ee4a934cc0a6af87ff3fc71c1927b55d184e2d7a4ef1db6658d8c01a419a87 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/TypeTags/Variant7542c0f3c67b58a0f32a6ed94b90d22e5c12f90ab4cde5fbc9591dfd645646bc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
