# G2

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**53 observed declarations and anonymous commands**, 35 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/G2/Variant213e306aab0cbc596fd1acb9cf0d62b6d1d51c5f36d9611a699c3e2d159892c1.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b94f8da98fba941335109439534b52b3a154c78c`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/G2.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `class` | [EmbeddedG2](declarations/embeddedg2.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `class` | [IsG2](declarations/isg2.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `class` | [IsNotG2](declarations/isnotg2.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [isG2_iff](declarations/isg2-iff.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [isNotG2_iff](declarations/isnotg2-iff.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [not_isG2_iff_isNotG2](declarations/not-isg2-iff-isnotg2.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [IsG2.pairingIn_mem_zero_one_three](declarations/isg2-pairingin-mem-zero-one-three.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [ofPairingInThree](declarations/ofpairinginthree.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `instance` | [(anonymous)](declarations/instance.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [pairing_long_short](declarations/pairing-long-short.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [shortAddLong](declarations/shortaddlong.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [twoShortAddLong](declarations/twoshortaddlong.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [threeShortAddLong](declarations/threeshortaddlong.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [threeShortAddTwoLong](declarations/threeshortaddtwolong.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `abbrev` | [shortRoot](declarations/shortroot.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `abbrev` | [longRoot](declarations/longroot.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `abbrev` | [shortAddLongRoot](declarations/shortaddlongroot.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `abbrev` | [twoShortAddLongRoot](declarations/twoshortaddlongroot.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `abbrev` | [threeShortAddLongRoot](declarations/threeshortaddlongroot.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `abbrev` | [threeShortAddTwoLongRoot](declarations/threeshortaddtwolongroot.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `abbrev` | [allRoots](declarations/allroots.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [allRoots_subset_range_root](declarations/allroots-subset-range-root.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [pairingIn_short_long](declarations/pairingin-short-long.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [pairing_short_long](declarations/pairing-short-long.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [shortAddLongRoot_eq](declarations/shortaddlongroot-eq.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [twoShortAddLongRoot_eq](declarations/twoshortaddlongroot-eq.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [threeShortAddLongRoot_eq](declarations/threeshortaddlongroot-eq.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [threeShortAddTwoLongRoot_eq](declarations/threeshortaddtwolongroot-eq.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [linearIndependent_short_long](declarations/linearindependent-short-long.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `abbrev` | [allCoeffs](declarations/allcoeffs.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [allRoots_eq_map_allCoeffs](declarations/allroots-eq-map-allcoeffs.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `lemma` | [allRoots_nodup](declarations/allroots-nodup.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `lemma` | [mem_span_of_mem_allRoots](declarations/mem-span-of-mem-allroots.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `lemma` | [long_eq_three_mul_short](declarations/long-eq-three-mul-short.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `lemma` | [shortAddLongRoot_shortRoot](declarations/shortaddlongroot-shortroot.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `lemma` | [twoShortAddLongRoot_shortRoot](declarations/twoshortaddlongroot-shortroot.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `lemma` | [threeShortAddLongRoot_longRoot](declarations/threeshortaddlongroot-longroot.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `lemma` | [threeShortAddTwoLongRoot_longRoot](declarations/threeshortaddtwolongroot-longroot.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `lemma` | [pairingIn_shortAddLong_left](declarations/pairingin-shortaddlong-left.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `lemma` | [pairingIn_shortAddLong_right](declarations/pairingin-shortaddlong-right.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `lemma` | [pairingIn_twoShortAddLong_left](declarations/pairingin-twoshortaddlong-left.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `lemma` | [pairingIn_twoShortAddLong_right](declarations/pairingin-twoshortaddlong-right.md) | 331 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `lemma` | [pairingIn_threeShortAddLong_left](declarations/pairingin-threeshortaddlong-left.md) | 352 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `lemma` | [pairingIn_threeShortAddLong_right](declarations/pairingin-threeshortaddlong-right.md) | 365 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `lemma` | [pairingIn_threeShortAddTwoLong_left](declarations/pairingin-threeshortaddtwolong-left.md) | 387 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `lemma` | [pairingIn_threeShortAddTwoLong_right](declarations/pairingin-threeshortaddtwolong-right.md) | 400 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `lemma` | [isOrthogonal_short_and_long_aux](declarations/isorthogonal-short-and-long-aux.md) | 424 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `lemma` | [isOrthogonal_short_and_long](declarations/isorthogonal-short-and-long.md) | 445 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `lemma` | [span_eq_top](declarations/span-eq-top.md) | 464 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `lemma` | [mem_allRoots](declarations/mem-allroots.md) | 474 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [indexEquivAllRoots](declarations/indexequivallroots.md) | 495 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `lemma` | [card_index_eq_twelve](declarations/card-index-eq-twelve.md) | 505 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `lemma` | [setOf_index_eq_univ](declarations/setof-index-eq-univ.md) | 514 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b5e0a0c3031185f0bc7a0cf26843a8c713fab0735b7ba2b4ea26b99a85a7cc31 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/G2/Variant213e306aab0cbc596fd1acb9cf0d62b6d1d51c5f36d9611a699c3e2d159892c1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
