# Group Monoid Public

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**77 observed declarations and anonymous commands**, 38 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/GroupTheory/Monoid/Variant192a415f3decda0c5c21f8c6c04bdc26fd7072cb47ded0b0d0aa2ba09e204c35.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `302c444f017235acc1271402facc00d8492ad1b1`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/GroupTheoryAndGeneralizations/GroupMonoidPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `class` | [AddZero](declarations/addzero.md) | 32 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `class` | [MulOne](declarations/mulone.md) | 37 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `class` | [IsDedekindFiniteAddMonoid](declarations/isdedekindfiniteaddmonoid.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `class` | [IsDedekindFiniteMonoid](declarations/isdedekindfinitemonoid.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [mul_eq_one_comm](declarations/mul-eq-one-comm.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `class` | [AddZeroClass](declarations/addzeroclass.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `class` | [MulOneClass](declarations/muloneclass.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [MulOneClass.ext](declarations/muloneclass-ext.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [one_mul](declarations/one-mul.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [mul_one](declarations/mul-one.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `class` | [IsUnital](declarations/isunital.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `class` | [IsNotUnital](declarations/isnotunital.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [not_isUnital_iff_isNotUnital](declarations/not-isunital-iff-isnotunital.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [not_isNotUnital_iff_isUnital](declarations/not-isnotunital-iff-isunital.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `abbrev` | [IsUnital.toMulOneClass](declarations/isunital-tomuloneclass.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [MulOneClass.isUnital](declarations/muloneclass-isunital.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [npowRec_add](declarations/npowrec-add.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [npowRec_succ](declarations/npowrec-succ.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [npowBinRec](declarations/npowbinrec.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [npowRec'](declarations/npowrec.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [nsmulRec'](declarations/nsmulrec.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [npowRec'_succ](declarations/npowrec-succ-source-edition-2.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [npowRec'_two_mul](declarations/npowrec-two-mul.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [npowRec'_mul_comm](declarations/npowrec-mul-comm.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [npowRec_eq](declarations/npowrec-eq.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [npowBinRec.go_spec](declarations/npowbinrec-go-spec.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `abbrev` | [npowRecAuto](declarations/npowrecauto.md) | 327 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `abbrev` | [npowBinRecAuto](declarations/npowbinrecauto.md) | 338 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [npowRec_eq_npowBinRec](declarations/npowrec-eq-npowbinrec.md) | 342 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [npowBinRec_zero](declarations/npowbinrec-zero.md) | 349 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [npowBinRec_succ](declarations/npowbinrec-succ.md) | 352 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `class` | [NSMul](declarations/nsmul.md) | 359 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `class` | [NPow](declarations/npow.md) | 367 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `instance` | [NPow.toPow](declarations/npow-topow.md) | 372 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `instance` | [NPow.ofPow](declarations/npow-ofpow.md) | 376 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `class` | [AddMonoid](declarations/addmonoid.md) | 379 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `class` | [Monoid](declarations/monoid.md) | 390 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [npow_eq_pow](declarations/npow-eq-pow.md) | 401 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `lemma` | [left_inv_eq_right_inv](declarations/left-inv-eq-right-inv.md) | 404 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [pow_zero](declarations/pow-zero.md) | 409 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [pow_succ](declarations/pow-succ.md) | 413 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `lemma` | [pow_one](declarations/pow-one.md) | 417 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `lemma` | [pow_succ'](declarations/pow-succ-source-edition-2.md) | 419 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `lemma` | [mul_pow_mul](declarations/mul-pow-mul.md) | 423 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `lemma` | [pow_mul_comm'](declarations/pow-mul-comm-source-edition-2.md) | 430 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `lemma` | [pow_two](declarations/pow-two.md) | 433 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `lemma` | [pow_three'](declarations/pow-three.md) | 439 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `lemma` | [pow_three](declarations/pow-three-source-edition-2.md) | 442 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `lemma` | [one_pow](declarations/one-pow.md) | 445 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `lemma` | [pow_add](declarations/pow-add.md) | 450 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `lemma` | [pow_mul_comm](declarations/pow-mul-comm.md) | 454 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `lemma` | [pow_mul](declarations/pow-mul-source-edition-2.md) | 457 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `lemma` | [pow_mul'](declarations/pow-mul.md) | 462 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `lemma` | [pow_right_comm](declarations/pow-right-comm.md) | 465 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `lemma` | [IsLeftRegular.mul_eq_one_symm](declarations/isleftregular-mul-eq-one-symm.md) | 468 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `lemma` | [IsRightRegular.mul_eq_one_symm](declarations/isrightregular-mul-eq-one-symm.md) | 472 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 478 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 481 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `lemma` | [of_exists_self_mul_eq_one](declarations/of-exists-self-mul-eq-one.md) | 487 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `lemma` | [of_exists_mul_self_eq_one](declarations/of-exists-mul-self-eq-one.md) | 494 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `abbrev` | [IsUnital.toMonoid](declarations/isunital-tomonoid.md) | 509 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `class` | [IsAddTorsionFree](declarations/isaddtorsionfree.md) | 514 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `class` | [IsMulTorsionFree](declarations/ismultorsionfree.md) | 519 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `class` | [AddCommMonoid](declarations/addcommmonoid.md) | 525 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `class` | [CommMonoid](declarations/commmonoid.md) | 529 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `instance` | [(anonymous)](declarations/instance.md) | 536 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `class` | [AddLeftCancelMonoid](declarations/addleftcancelmonoid.md) | 543 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `class` | [LeftCancelMonoid](declarations/leftcancelmonoid.md) | 549 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `class` | [AddRightCancelMonoid](declarations/addrightcancelmonoid.md) | 560 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `class` | [RightCancelMonoid](declarations/rightcancelmonoid.md) | 566 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `class` | [AddCancelMonoid](declarations/addcancelmonoid.md) | 577 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `class` | [CancelMonoid](declarations/cancelmonoid.md) | 581 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `class` | [AddCancelCommMonoid](declarations/addcancelcommmonoid.md) | 584 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `class` | [CancelCommMonoid](declarations/cancelcommmonoid.md) | 590 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 596 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 602 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=972414976374ad0ddc7ee4942a58e62f5e81ed10838372ddcb9def63d3e0ebca -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Monoid/Variant192a415f3decda0c5c21f8c6c04bdc26fd7072cb47ded0b0d0aa2ba09e204c35.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
