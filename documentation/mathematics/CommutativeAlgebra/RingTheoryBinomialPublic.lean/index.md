# Ring Theory Binomial Public

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**55 observed declarations and anonymous commands**, 48 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/Binomial/Variant3c166133aad0ad483819ce8a9050e1c3378d5cbac88bd2b41808810853d9b6d3.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `29ea28732ccc71f8229cfeababdd5912fcb84610`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/CommutativeAlgebra/RingTheoryBinomialPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `class` | [BinomialRing](declarations/binomialring.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [multichoose](declarations/multichoose.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [multichoose_eq_multichoose](declarations/multichoose-eq-multichoose.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [factorial_nsmul_multichoose_eq_ascPochhammer](declarations/factorial-nsmul-multichoose-eq-ascpochhammer.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [multichoose_zero_right'](declarations/multichoose-zero-right.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [multichoose_zero_right](declarations/multichoose-zero-right-source-edition-2.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [multichoose_one_right'](declarations/multichoose-one-right-source-edition-2.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [multichoose_one_right](declarations/multichoose-one-right.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [multichoose_zero_succ](declarations/multichoose-zero-succ.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [ascPochhammer_succ_succ](declarations/ascpochhammer-succ-succ.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [multichoose_succ_succ](declarations/multichoose-succ-succ.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [multichoose_one](declarations/multichoose-one.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [multichoose_two](declarations/multichoose-two.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [map_multichoose](declarations/map-multichoose.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [ascPochhammer_smeval_cast](declarations/ascpochhammer-smeval-cast.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [ascPochhammer_smeval_eq_eval](declarations/ascpochhammer-smeval-eq-eval.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [descPochhammer_smeval_eq_ascPochhammer](declarations/descpochhammer-smeval-eq-ascpochhammer.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [descPochhammer_smeval_eq_descFactorial](declarations/descpochhammer-smeval-eq-descfactorial.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [ascPochhammer_smeval_neg_eq_descPochhammer](declarations/ascpochhammer-smeval-neg-eq-descpochhammer.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `instance` | [Nat.instBinomialRing](declarations/nat-instbinomialring.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [Int.multichoose](declarations/int-multichoose.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `instance` | [Int.instBinomialRing](declarations/int-instbinomialring.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `instance` | [(anonymous)](declarations/instance.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [smeval_ascPochhammer_self_neg](declarations/smeval-ascpochhammer-self-neg.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [smeval_ascPochhammer_succ_neg](declarations/smeval-ascpochhammer-succ-neg.md) | 307 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [smeval_ascPochhammer_neg_add](declarations/smeval-ascpochhammer-neg-add.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [smeval_ascPochhammer_neg_of_lt](declarations/smeval-ascpochhammer-neg-of-lt.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [smeval_ascPochhammer_nat_cast](declarations/smeval-ascpochhammer-nat-cast.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [multichoose_neg_self](declarations/multichoose-neg-self.md) | 329 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [multichoose_neg_succ](declarations/multichoose-neg-succ.md) | 335 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [multichoose_neg_add](declarations/multichoose-neg-add.md) | 339 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [multichoose_neg_of_lt](declarations/multichoose-neg-of-lt.md) | 344 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [multichoose_succ_neg_natCast](declarations/multichoose-succ-neg-natcast.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [smeval_ascPochhammer_int_ofNat](declarations/smeval-ascpochhammer-int-ofnat.md) | 354 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [choose](declarations/choose.md) | 380 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [multichoose_eq](declarations/multichoose-eq.md) | 385 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [descPochhammer_eq_factorial_smul_choose](declarations/descpochhammer-eq-factorial-smul-choose.md) | 390 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [choose_natCast](declarations/choose-natcast.md) | 399 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [choose_zero_right'](declarations/choose-zero-right-source-edition-2.md) | 405 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [choose_zero_right](declarations/choose-zero-right.md) | 410 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [choose_zero_succ](declarations/choose-zero-succ.md) | 414 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [choose_zero_pos](declarations/choose-zero-pos.md) | 418 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [choose_zero_ite](declarations/choose-zero-ite.md) | 422 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [choose_one_right'](declarations/choose-one-right.md) | 429 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [choose_one_right](declarations/choose-one-right-source-edition-2.md) | 432 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [choose_neg](declarations/choose-neg.md) | 435 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [choose_neg'](declarations/choose-neg-source-edition-2.md) | 442 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [descPochhammer_succ_succ_smeval](declarations/descpochhammer-succ-succ-smeval.md) | 446 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [choose_succ_succ](declarations/choose-succ-succ.md) | 457 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [choose_smul_choose](declarations/choose-smul-choose.md) | 464 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [choose_add_smul_choose](declarations/choose-add-smul-choose.md) | 475 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [choose_eq_smul](declarations/choose-eq-smul.md) | 482 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [descPochhammer_smeval_add](declarations/descpochhammer-smeval-add.md) | 490 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [add_choose_eq](declarations/add-choose-eq.md) | 519 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `lemma` | [map_choose](declarations/map-choose.md) | 533 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7fa53ed9c29fb8a17d6f93a9b6fda6c3c0923011bd73a5448675a57541dca225 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN (source snapshot `a63dee15727d`). Mathematical admission is not claimed. [Coverage](https://github.com/grwtsk/math/issues/1429).

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","snapshot":"a63dee15727d965b263e7b32a3a79b735297ca73b6d88c7d82b91be5ac3da782","source_paths":["GRWTSK/Algebra/Binomial/Variant3c166133aad0ad483819ce8a9050e1c3378d5cbac88bd2b41808810853d9b6d3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
