# Ring Theory Binomial

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**51 observed declarations and anonymous commands**, 44 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/Binomial/Variantfb10ef411c1253eb0e95d7b2df528a1f265dff1a1f67ce188d0359d87b09510c.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0d5c1bbe25c7ace25ed26d2cddb97b62e32a0f95`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/CommutativeAlgebra/RingTheoryBinomial.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `class` | [BinomialRing](declarations/binomialring.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [multichoose](declarations/multichoose.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [multichoose_eq_multichoose](declarations/multichoose-eq-multichoose.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [factorial_nsmul_multichoose_eq_ascPochhammer](declarations/factorial-nsmul-multichoose-eq-ascpochhammer.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [multichoose_zero_right'](declarations/multichoose-zero-right-source-edition-2.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [multichoose_zero_right](declarations/multichoose-zero-right.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [multichoose_one_right'](declarations/multichoose-one-right-source-edition-2.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [multichoose_one_right](declarations/multichoose-one-right.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [multichoose_zero_succ](declarations/multichoose-zero-succ.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [ascPochhammer_succ_succ](declarations/ascpochhammer-succ-succ.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [multichoose_succ_succ](declarations/multichoose-succ-succ.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [multichoose_one](declarations/multichoose-one.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [multichoose_two](declarations/multichoose-two.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [ascPochhammer_smeval_cast](declarations/ascpochhammer-smeval-cast.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [ascPochhammer_smeval_eq_eval](declarations/ascpochhammer-smeval-eq-eval.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [descPochhammer_smeval_eq_ascPochhammer](declarations/descpochhammer-smeval-eq-ascpochhammer.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [descPochhammer_smeval_eq_descFactorial](declarations/descpochhammer-smeval-eq-descfactorial.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [ascPochhammer_smeval_neg_eq_descPochhammer](declarations/ascpochhammer-smeval-neg-eq-descpochhammer.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `instance` | [Nat.instBinomialRing](declarations/nat-instbinomialring.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [Int.multichoose](declarations/int-multichoose.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `instance` | [Int.instBinomialRing](declarations/int-instbinomialring.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `instance` | [(anonymous)](declarations/instance.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [smeval_ascPochhammer_self_neg](declarations/smeval-ascpochhammer-self-neg.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [smeval_ascPochhammer_succ_neg](declarations/smeval-ascpochhammer-succ-neg.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [smeval_ascPochhammer_neg_add](declarations/smeval-ascpochhammer-neg-add.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [smeval_ascPochhammer_neg_of_lt](declarations/smeval-ascpochhammer-neg-of-lt.md) | 301 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [smeval_ascPochhammer_nat_cast](declarations/smeval-ascpochhammer-nat-cast.md) | 305 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [multichoose_neg_self](declarations/multichoose-neg-self.md) | 309 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [multichoose_neg_succ](declarations/multichoose-neg-succ.md) | 315 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [multichoose_neg_add](declarations/multichoose-neg-add.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [multichoose_neg_of_lt](declarations/multichoose-neg-of-lt.md) | 324 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [multichoose_succ_neg_natCast](declarations/multichoose-succ-neg-natcast.md) | 328 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [smeval_ascPochhammer_int_ofNat](declarations/smeval-ascpochhammer-int-ofnat.md) | 334 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [choose](declarations/choose.md) | 360 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [descPochhammer_eq_factorial_smul_choose](declarations/descpochhammer-eq-factorial-smul-choose.md) | 365 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [choose_natCast](declarations/choose-natcast.md) | 374 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [choose_zero_right'](declarations/choose-zero-right-source-edition-2.md) | 380 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [choose_zero_right](declarations/choose-zero-right.md) | 385 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [choose_zero_succ](declarations/choose-zero-succ.md) | 389 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [choose_zero_pos](declarations/choose-zero-pos.md) | 393 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [choose_zero_ite](declarations/choose-zero-ite.md) | 397 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [choose_one_right'](declarations/choose-one-right.md) | 404 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [choose_one_right](declarations/choose-one-right-source-edition-2.md) | 407 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [choose_neg](declarations/choose-neg.md) | 410 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [descPochhammer_succ_succ_smeval](declarations/descpochhammer-succ-succ-smeval.md) | 417 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [choose_succ_succ](declarations/choose-succ-succ.md) | 428 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [choose_eq_nat_choose](declarations/choose-eq-nat-choose.md) | 435 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [choose_smul_choose](declarations/choose-smul-choose.md) | 444 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [choose_add_smul_choose](declarations/choose-add-smul-choose.md) | 455 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [descPochhammer_smeval_add](declarations/descpochhammer-smeval-add.md) | 465 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [add_choose_eq](declarations/add-choose-eq.md) | 494 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cdbd6435b6e433167ef683ea7a3bec259a4208bbc951e814ee775367cd19b705 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN (source snapshot `a63dee15727d`). Mathematical admission is not claimed. [Coverage](https://github.com/grwtsk/math/issues/1429).

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","snapshot":"a63dee15727d965b263e7b32a3a79b735297ca73b6d88c7d82b91be5ac3da782","source_paths":["GRWTSK/Algebra/Binomial/Variantfb10ef411c1253eb0e95d7b2df528a1f265dff1a1f67ce188d0359d87b09510c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
