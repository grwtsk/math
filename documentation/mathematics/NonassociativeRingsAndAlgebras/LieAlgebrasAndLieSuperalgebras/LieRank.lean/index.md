# Lie Rank

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**27 observed declarations and anonymous commands**, 23 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/Rank/Variantfb19dbf9b7461d7ced570deb2d25785c7ce05fc2f20f63a256b754816daef073.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c9c5877344913b63037a49a5df28b6e17fa95621`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieRank.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [rank](declarations/rank.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `lemma` | [polyCharpoly_coeff_rank_ne_zero](declarations/polycharpoly-coeff-rank-ne-zero-source-edition-2.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [rank_eq_natTrailingDegree](declarations/rank-eq-nattrailingdegree-source-edition-2.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [rank_le_card](declarations/rank-le-card-source-edition-2.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [rank_le_finrank](declarations/rank-le-finrank-source-edition-2.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [rank_le_natTrailingDegree_charpoly_ad](declarations/rank-le-nattrailingdegree-charpoly-ad-source-edition-2.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [IsRegular](declarations/isregular.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [isRegular_def](declarations/isregular-def-source-edition-2.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [isRegular_iff_coeff_polyCharpoly_rank_ne_zero](declarations/isregular-iff-coeff-polycharpoly-rank-ne-zero-source-edition-2.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [isRegular_iff_natTrailingDegree_charpoly_eq_rank](declarations/isregular-iff-nattrailingdegree-charpoly-eq-rank.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [exists_isRegular_of_finrank_le_card](declarations/exists-isregular-of-finrank-le-card-source-edition-2.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [exists_isRegular](declarations/exists-isregular.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `abbrev` | [rank](declarations/rank-source-edition-2.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [polyCharpoly_coeff_rank_ne_zero](declarations/polycharpoly-coeff-rank-ne-zero.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [rank_eq_natTrailingDegree](declarations/rank-eq-nattrailingdegree.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [rank_le_card](declarations/rank-le-card.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [rank_le_finrank](declarations/rank-le-finrank.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [rank_le_natTrailingDegree_charpoly_ad](declarations/rank-le-nattrailingdegree-charpoly-ad.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `abbrev` | [IsRegular](declarations/isregular-source-edition-2.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [isRegular_def](declarations/isregular-def.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [isRegular_iff_coeff_polyCharpoly_rank_ne_zero](declarations/isregular-iff-coeff-polycharpoly-rank-ne-zero.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [isRegular_iff_natTrailingDegree_charpoly_eq_rank](declarations/isregular-iff-nattrailingdegree-charpoly-eq-rank-source-edition-2.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [exists_isRegular_of_finrank_le_card](declarations/exists-isregular-of-finrank-le-card.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [exists_isRegular](declarations/exists-isregular-source-edition-2.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [finrank_engel](declarations/finrank-engel.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [rank_le_finrank_engel](declarations/rank-le-finrank-engel.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [isRegular_iff_finrank_engel_eq_rank](declarations/isregular-iff-finrank-engel-eq-rank.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=11e74a547e8ee72def2ce77940617fc33378df41606c50dc0d9638117c2df449 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Rank/Variantfb19dbf9b7461d7ced570deb2d25785c7ce05fc2f20f63a256b754816daef073.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
