# Direct Sum Ring Mul Eq Dfinsupp Sum

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**54 observed declarations and anonymous commands**, 23 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/Ring/Variant797a063fc6ce810265f3ac4f49b5b1f01531b50f5f7f8a7ffff16545d234faf2.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `596c7e80795a972468850fe67211c18a087215e5`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/GeneralAlgebraicSystems/AlgebraicStructures/DirectSumRingMulEqDfinsuppSum.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `class` | [GNonUnitalNonAssocSemiring](declarations/gnonunitalnonassocsemiring.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `class` | [GSemiring](declarations/gsemiring.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `class` | [GCommSemiring](declarations/gcommsemiring.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `class` | [GRing](declarations/gring.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `class` | [GCommRing](declarations/gcommring.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [of_eq_of_gradedMonoid_eq](declarations/of-eq-of-gradedmonoid-eq.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `instance` | [(anonymous)](declarations/instance.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [gMulHom](declarations/gmulhom.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [mulHom](declarations/mulhom.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [mulHom_apply](declarations/mulhom-apply.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [mulHom_of_of](declarations/mulhom-of-of.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [of_mul_of](declarations/of-mul-of.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [one_mul](declarations/one-mul.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [mul_one](declarations/mul-one.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [mul_assoc](declarations/mul-assoc.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `instance` | [semiring](declarations/semiring.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [ofPow](declarations/ofpow.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [ofList_dProd](declarations/oflist-dprod.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [list_prod_ofFn_of_eq_dProd](declarations/list-prod-offn-of-eq-dprod.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [mul_eq_dfinsupp_sum](declarations/mul-eq-dfinsupp-sum.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [mul_eq_sum_support_ghas_mul](declarations/mul-eq-sum-support-ghas-mul.md) | 324 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [mul_comm](declarations/mul-comm.md) | 337 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `instance` | [commSemiring](declarations/commsemiring.md) | 346 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `instance` | [nonAssocRing](declarations/nonassocring.md) | 362 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `instance` | [ring](declarations/ring.md) | 379 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `instance` | [commRing](declarations/commring.md) | 395 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [of_zero_one](declarations/of-zero-one.md) | 421 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [of_zero_smul](declarations/of-zero-smul.md) | 432 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [of_zero_mul](declarations/of-zero-mul.md) | 437 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `instance` | [GradeZero.nonUnitalNonAssocSemiring](declarations/gradezero-nonunitalnonassocsemiring.md) | 441 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `instance` | [GradeZero.smulWithZero](declarations/gradezero-smulwithzero.md) | 446 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [of_zero_pow](declarations/of-zero-pow.md) | 459 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 465 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [ofNatCast](declarations/ofnatcast.md) | 469 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `instance` | [GradeZero.semiring](declarations/gradezero-semiring.md) | 474 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [ofZeroRingHom](declarations/ofzeroringhom.md) | 481 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `instance` | [GradeZero.module](declarations/gradezero-module.md) | 490 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `instance` | [GradeZero.commSemiring](declarations/gradezero-commsemiring.md) | 502 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `instance` | [GradeZero.nonUnitalNonAssocRing](declarations/gradezero-nonunitalnonassocring.md) | 515 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 532 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [ofIntCast](declarations/ofintcast.md) | 536 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `instance` | [GradeZero.ring](declarations/gradezero-ring.md) | 541 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `instance` | [GradeZero.commRing](declarations/gradezero-commring.md) | 560 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [ringHom_ext'](declarations/ringhom-ext.md) | 587 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [ringHom_ext](declarations/ringhom-ext-source-edition-2.md) | 593 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [toSemiring](declarations/tosemiring.md) | 605 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [toSemiring_of](declarations/tosemiring-of.md) | 626 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [toSemiring_coe_addMonoidHom](declarations/tosemiring-coe-addmonoidhom.md) | 632 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [liftRingHom](declarations/liftringhom.md) | 641 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `instance` | [NonUnitalNonAssocSemiring.directSumGNonUnitalNonAssocSemiring](declarations/nonunitalnonassocsemiring-directsumgnonunitalnonassocsemiring.md) | 679 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `instance` | [Semiring.directSumGSemiring](declarations/semiring-directsumgsemiring.md) | 689 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `example` | [(anonymous)](declarations/example.md) | 701 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `instance` | [CommSemiring.directSumGCommSemiring](declarations/commsemiring-directsumgcommsemiring.md) | 707 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=57e4add7e14b24c16f1933d5787b1e82095ddca3b1039e16b1b4950ce8e6cb8c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Ring/Variant797a063fc6ce810265f3ac4f49b5b1f01531b50f5f7f8a7ffff16545d234faf2.lean","GRWTSK/Algebra/RingTheory/Variant797a063fc6ce810265f3ac4f49b5b1f01531b50f5f7f8a7ffff16545d234faf2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
