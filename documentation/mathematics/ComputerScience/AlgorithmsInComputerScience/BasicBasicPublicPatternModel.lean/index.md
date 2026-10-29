# Basic Basic Public Pattern Model

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**133 observed declarations and anonymous commands**, 111 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantd1460cfb5fca52390fcfc4c1d72e3aa13bf2e48d9d63dccef31e6f2130467bc7.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `850079f67d6ba4720fd9eb1b13a853cbfcbf4aab`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicPatternModel.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `class` | [PatternModel](declarations/patternmodel.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `class` | [StrictPatternModel](declarations/strictpatternmodel.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [not_matches_empty](declarations/not-matches-empty.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `structure` | [IsMatch](declarations/ismatch.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [IsMatch.ne_startPos](declarations/ismatch-ne-startpos.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [isMatch_iff](declarations/ismatch-iff.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [isMatch_iff_exists_splits](declarations/ismatch-iff-exists-splits.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [isMatch_cast_iff](declarations/ismatch-cast-iff.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [isMatch_sliceTo_iff](declarations/ismatch-sliceto-iff.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [isMatch_ofSliceTo_iff](declarations/ismatch-ofsliceto-iff.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `structure` | [IsRevMatch](declarations/isrevmatch.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [IsRevMatch.ne_endPos](declarations/isrevmatch-ne-endpos.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [isRevMatch_iff](declarations/isrevmatch-iff.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [isRevMatch_iff_exists_splits](declarations/isrevmatch-iff-exists-splits.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [isRevMatch_cast_iff](declarations/isrevmatch-cast-iff.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [isRevMatch_sliceFrom_iff](declarations/isrevmatch-slicefrom-iff.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [isRevMatch_ofSliceFrom_iff](declarations/isrevmatch-ofslicefrom-iff.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `structure` | [IsLongestMatch](declarations/islongestmatch.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [isLongestMatch_iff](declarations/islongestmatch-iff.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [IsLongestMatch.ne_startPos](declarations/islongestmatch-ne-startpos.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [not_isLongestMatch_startPos](declarations/not-islongestmatch-startpos.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [IsLongestMatch.eq](declarations/islongestmatch-eq.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [IsMatch.exists_isLongestMatch](declarations/ismatch-exists-islongestmatch.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [IsLongestMatch.le_of_isMatch](declarations/islongestmatch-le-of-ismatch.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [isLongestMatch_cast_iff](declarations/islongestmatch-cast-iff.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [IsLongestMatch.of_eq](declarations/islongestmatch-of-eq-source-edition-2.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [IsLongestMatch.sliceTo](declarations/islongestmatch-sliceto.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [isLongestMatch_of_ofSliceTo](declarations/islongestmatch-of-ofsliceto.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `structure` | [IsLongestRevMatch](declarations/islongestrevmatch.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [isLongestRevMatch_iff](declarations/islongestrevmatch-iff.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [IsLongestRevMatch.ne_endPos](declarations/islongestrevmatch-ne-endpos.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [not_isLongestRevMatch_endPos](declarations/not-islongestrevmatch-endpos.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [IsLongestRevMatch.eq](declarations/islongestrevmatch-eq.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [IsRevMatch.exists_isLongestRevMatch](declarations/isrevmatch-exists-islongestrevmatch.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [IsLongestRevMatch.le_of_isRevMatch](declarations/islongestrevmatch-le-of-isrevmatch.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [isLongestRevMatch_cast_iff](declarations/islongestrevmatch-cast-iff.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [IsLongestRevMatch.of_eq](declarations/islongestrevmatch-of-eq-source-edition-2.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [IsLongestRevMatch.sliceFrom](declarations/islongestrevmatch-slicefrom.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [isLongestRevMatch_of_ofSliceFrom](declarations/islongestrevmatch-of-ofslicefrom.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `class` | [NoPrefixPatternModel](declarations/noprefixpatternmodel.md) | 301 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [NoPrefixPatternModel.of_length_toList_eq](declarations/noprefixpatternmodel-of-length-tolist-eq.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [isLongestMatch_iff_isMatch](declarations/islongestmatch-iff-ismatch.md) | 309 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `class` | [NoSuffixPatternModel](declarations/nosuffixpatternmodel.md) | 322 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [NoSuffixPatternModel.of_length_toList_eq](declarations/nosuffixpatternmodel-of-length-tolist-eq.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [isLongestRevMatch_iff_isRevMatch](declarations/islongestrevmatch-iff-isrevmatch.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `structure` | [IsLongestMatchAt](declarations/islongestmatchat.md) | 342 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [isLongestMatchAt_iff](declarations/islongestmatchat-iff.md) | 346 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [IsLongestMatchAt.lt](declarations/islongestmatchat-lt.md) | 351 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [IsLongestMatchAt.ne](declarations/islongestmatchat-ne.md) | 357 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [not_isLongestMatchAt_self](declarations/not-islongestmatchat-self.md) | 362 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [IsLongestMatchAt.eq](declarations/islongestmatchat-eq.md) | 366 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [isLongestMatch_of_eq](declarations/islongestmatch-of-eq.md) | 371 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [isLongestMatchAt_iff_isLongestMatchAt_ofSliceFrom](declarations/islongestmatchat-iff-islongestmatchat-ofslicefrom.md) | 376 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [IsLongestMatch.isLongestMatchAt_ofSliceFrom](declarations/islongestmatch-islongestmatchat-ofslicefrom.md) | 389 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [isLongestMatchAt_startPos_iff](declarations/islongestmatchat-startpos-iff.md) | 396 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [isLongestMatch_iff_isLongestMatchAt_ofSliceFrom](declarations/islongestmatch-iff-islongestmatchat-ofslicefrom.md) | 402 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [IsLongestMatchAt.matches_slice](declarations/islongestmatchat-matches-slice.md) | 407 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [isLongestMatchAt_cast_iff](declarations/islongestmatchat-cast-iff.md) | 413 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [IsLongestMatchAt.of_eq](declarations/islongestmatchat-of-eq.md) | 418 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [IsLongestMatchAt.sliceTo](declarations/islongestmatchat-sliceto.md) | 423 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [isLongestMatchAt_of_ofSliceTo](declarations/islongestmatchat-of-ofsliceto.md) | 430 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `inductive` | [IsLongestMatchAtChain](declarations/islongestmatchatchain.md) | 439 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [IsLongestMatchAtChain.eq_of_isLongestMatchAt_self](declarations/islongestmatchatchain-eq-of-islongestmatchat-self.md) | 446 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [IsLongestMatchAtChain.le](declarations/islongestmatchatchain-le.md) | 455 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [IsLongestMatchAtChain.sliceTo](declarations/islongestmatchatchain-sliceto.md) | 461 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [isLongestMatchAtChain_of_ofSliceTo](declarations/islongestmatchatchain-of-ofsliceto.md) | 468 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `structure` | [IsLongestRevMatchAt](declarations/islongestrevmatchat.md) | 477 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [isLongestRevMatchAt_iff](declarations/islongestrevmatchat-iff.md) | 481 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [IsLongestRevMatchAt.lt](declarations/islongestrevmatchat-lt.md) | 486 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [IsLongestRevMatchAt.ne](declarations/islongestrevmatchat-ne.md) | 492 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [not_isLongestRevMatchAt_self](declarations/not-islongestrevmatchat-self.md) | 497 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [IsLongestRevMatchAt.eq](declarations/islongestrevmatchat-eq.md) | 501 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [isLongestRevMatch_of_eq](declarations/islongestrevmatch-of-eq.md) | 506 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [isLongestRevMatchAt_iff_isLongestRevMatchAt_ofSliceTo](declarations/islongestrevmatchat-iff-islongestrevmatchat-ofsliceto.md) | 511 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [IsLongestRevMatch.isLongestRevMatchAt_ofSliceTo](declarations/islongestrevmatch-islongestrevmatchat-ofsliceto.md) | 522 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [isLongestRevMatchAt_endPos_iff](declarations/islongestrevmatchat-endpos-iff.md) | 529 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [isLongestRevMatch_iff_isLongestRevMatchAt_ofSliceTo](declarations/islongestrevmatch-iff-islongestrevmatchat-ofsliceto.md) | 535 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [IsLongestRevMatchAt.matches_slice](declarations/islongestrevmatchat-matches-slice.md) | 540 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [isLongestRevMatchAt_cast_iff](declarations/islongestrevmatchat-cast-iff.md) | 546 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [IsLongestRevMatchAt.of_eq](declarations/islongestrevmatchat-of-eq.md) | 551 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [IsLongestRevMatchAt.sliceFrom](declarations/islongestrevmatchat-slicefrom.md) | 556 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [isLongestRevMatchAt_of_ofSliceFrom](declarations/islongestrevmatchat-of-ofslicefrom.md) | 563 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `inductive` | [IsLongestRevMatchAtChain](declarations/islongestrevmatchatchain.md) | 572 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [IsLongestRevMatchAtChain.eq_of_isLongestRevMatchAt_self](declarations/islongestrevmatchatchain-eq-of-islongestrevmatchat-self.md) | 579 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [IsLongestRevMatchAtChain.le](declarations/islongestrevmatchatchain-le.md) | 588 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [IsLongestRevMatchAtChain.sliceFrom](declarations/islongestrevmatchatchain-slicefrom.md) | 594 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [isLongestRevMatchAtChain_of_ofSliceFrom](declarations/islongestrevmatchatchain-of-ofslicefrom.md) | 601 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `structure` | [MatchesAt](declarations/matchesat.md) | 609 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [matchesAt_iff_exists_isLongestMatchAt](declarations/matchesat-iff-exists-islongestmatchat.md) | 612 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [matchesAt_iff_exists_isLongestMatch](declarations/matchesat-iff-exists-islongestmatch.md) | 616 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [matchesAt_iff_exists_isMatch](declarations/matchesat-iff-exists-ismatch.md) | 621 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [not_matchesAt_endPos](declarations/not-matchesat-endpos.md) | 631 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [matchesAt_iff_matchesAt_ofSliceFrom](declarations/matchesat-iff-matchesat-ofslicefrom.md) | 637 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `theorem` | [IsLongestMatchAt.matchesAt](declarations/islongestmatchat-matchesat.md) | 647 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [matchesAt_cast_iff](declarations/matchesat-cast-iff.md) | 652 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `structure` | [RevMatchesAt](declarations/revmatchesat.md) | 662 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [revMatchesAt_iff_exists_isLongestRevMatchAt](declarations/revmatchesat-iff-exists-islongestrevmatchat.md) | 665 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [revMatchesAt_iff_exists_isLongestRevMatch](declarations/revmatchesat-iff-exists-islongestrevmatch.md) | 669 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `theorem` | [revMatchesAt_iff_exists_isRevMatch](declarations/revmatchesat-iff-exists-isrevmatch.md) | 674 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `theorem` | [not_revMatchesAt_startPos](declarations/not-revmatchesat-startpos.md) | 684 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `theorem` | [revMatchesAt_iff_revMatchesAt_ofSliceTo](declarations/revmatchesat-iff-revmatchesat-ofsliceto.md) | 690 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `theorem` | [IsLongestRevMatchAt.revMatchesAt](declarations/islongestrevmatchat-revmatchesat.md) | 700 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `theorem` | [revMatchesAt_cast_iff](declarations/revmatchesat-cast-iff.md) | 705 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `def` | [matchAt?](declarations/matchat.md) | 717 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `theorem` | [matchAt?_eq_some_iff](declarations/matchat-eq-some-iff.md) | 722 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `theorem` | [matchAt?_eq_none_iff](declarations/matchat-eq-none-iff.md) | 730 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `theorem` | [lt_of_matchAt?_eq_some](declarations/lt-of-matchat-eq-some.md) | 737 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `theorem` | [matchAt?_cast](declarations/matchat-cast.md) | 743 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `def` | [revMatchAt?](declarations/revmatchat.md) | 757 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `theorem` | [revMatchAt?_eq_some_iff](declarations/revmatchat-eq-some-iff.md) | 762 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `theorem` | [revMatchAt?_eq_none_iff](declarations/revmatchat-eq-none-iff.md) | 770 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `theorem` | [lt_of_revMatchAt?_eq_some](declarations/lt-of-revmatchat-eq-some.md) | 777 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `theorem` | [revMatchAt?_cast](declarations/revmatchat-cast.md) | 783 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `class` | [LawfulForwardPatternModel](declarations/lawfulforwardpatternmodel.md) | 799 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `theorem` | [LawfulForwardPatternModel.skipPrefix?_sliceFrom_eq_none_iff](declarations/lawfulforwardpatternmodel-skipprefix-slicefrom-eq-none-iff.md) | 803 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `theorem` | [LawfulForwardPatternModel.skipPrefix?_eq_none_iff](declarations/lawfulforwardpatternmodel-skipprefix-eq-none-iff.md) | 813 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `class` | [LawfulBackwardPatternModel](declarations/lawfulbackwardpatternmodel.md) | 826 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `theorem` | [LawfulBackwardPatternModel.skipSuffix?_sliceTo_eq_none_iff](declarations/lawfulbackwardpatternmodel-skipsuffix-sliceto-eq-none-iff.md) | 830 | `BLOCKED_NATIVE_ADMISSION` |
| 119 | `theorem` | [LawfulBackwardPatternModel.skipSuffix?_eq_none_iff](declarations/lawfulbackwardpatternmodel-skipsuffix-eq-none-iff.md) | 840 | `BLOCKED_NATIVE_ADMISSION` |
| 120 | `inductive` | [IsValidSearchFrom](declarations/isvalidsearchfrom.md) | 855 | `BLOCKED_NATIVE_ADMISSION` |
| 121 | `theorem` | [IsValidSearchFrom.matched_of_eq](declarations/isvalidsearchfrom-matched-of-eq.md) | 865 | `BLOCKED_NATIVE_ADMISSION` |
| 122 | `theorem` | [IsValidSearchFrom.mismatched_of_eq](declarations/isvalidsearchfrom-mismatched-of-eq.md) | 872 | `BLOCKED_NATIVE_ADMISSION` |
| 123 | `theorem` | [IsValidSearchFrom.endPos_of_eq](declarations/isvalidsearchfrom-endpos-of-eq.md) | 880 | `BLOCKED_NATIVE_ADMISSION` |
| 124 | `theorem` | [isValidSearchFrom_cast_iff](declarations/isvalidsearchfrom-cast-iff.md) | 887 | `BLOCKED_NATIVE_ADMISSION` |
| 125 | `class` | [LawfulToForwardSearcherModel](declarations/lawfultoforwardsearchermodel.md) | 911 | `BLOCKED_NATIVE_ADMISSION` |
| 126 | `theorem` | [LawfulToForwardSearcherModel.defaultImplementation](declarations/lawfultoforwardsearchermodel-defaultimplementation.md) | 916 | `BLOCKED_NATIVE_ADMISSION` |
| 127 | `inductive` | [IsValidRevSearchFrom](declarations/isvalidrevsearchfrom.md) | 966 | `BLOCKED_NATIVE_ADMISSION` |
| 128 | `theorem` | [IsValidRevSearchFrom.matched_of_eq](declarations/isvalidrevsearchfrom-matched-of-eq.md) | 976 | `BLOCKED_NATIVE_ADMISSION` |
| 129 | `theorem` | [IsValidRevSearchFrom.mismatched_of_eq](declarations/isvalidrevsearchfrom-mismatched-of-eq.md) | 983 | `BLOCKED_NATIVE_ADMISSION` |
| 130 | `theorem` | [IsValidRevSearchFrom.startPos_of_eq](declarations/isvalidrevsearchfrom-startpos-of-eq.md) | 991 | `BLOCKED_NATIVE_ADMISSION` |
| 131 | `theorem` | [isValidRevSearchFrom_cast_iff](declarations/isvalidrevsearchfrom-cast-iff.md) | 998 | `BLOCKED_NATIVE_ADMISSION` |
| 132 | `class` | [LawfulToBackwardSearcherModel](declarations/lawfultobackwardsearchermodel.md) | 1022 | `BLOCKED_NATIVE_ADMISSION` |
| 133 | `theorem` | [LawfulToBackwardSearcherModel.defaultImplementation](declarations/lawfultobackwardsearchermodel-defaultimplementation.md) | 1027 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=799f9071d801d4dca4aa12891fde017d4a42f7b450e321876558ed73b30ceea7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantd1460cfb5fca52390fcfc4c1d72e3aa13bf2e48d9d63dccef31e6f2130467bc7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
