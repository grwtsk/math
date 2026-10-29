# Extremal Turan Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**39 observed declarations and anonymous commands**, 32 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variantbc1b359202124ecc738c1da8be0ec8b6d38649d608b1813202fc2039ee2538a9.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ff42de11d5bc83a29b72c85401a351e15fd390a3`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/Combinatorics/GraphTheory/ExtremalTuranPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [IsTuranMaximal](declarations/isturanmaximal.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [turanGraph](declarations/turangraph.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [turanGraph_adj](declarations/turangraph-adj.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [(anonymous)](declarations/instance.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [turanGraph_zero](declarations/turangraph-zero.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [turanGraph_one](declarations/turangraph-one.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [turanGraph_eq_top](declarations/turangraph-eq-top.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [turanGraph_cliqueFree](declarations/turangraph-cliquefree.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [not_cliqueFree_of_isTuranMaximal](declarations/not-cliquefree-of-isturanmaximal.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [exists_isTuranMaximal](declarations/exists-isturanmaximal.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [degree_eq_of_not_adj](declarations/degree-eq-of-not-adj.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [not_adj_trans](declarations/not-adj-trans.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [equivalence_not_adj](declarations/equivalence-not-adj.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [setoid](declarations/setoid.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [finpartition](declarations/finpartition.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [not_adj_iff_part_eq](declarations/not-adj-iff-part-eq.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [degree_eq_card_sub_part_card](declarations/degree-eq-card-sub-part-card.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [isEquipartition](declarations/isequipartition.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [card_parts_le](declarations/card-parts-le.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [card_parts](declarations/card-parts.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [nonempty_iso_turanGraph](declarations/nonempty-iso-turangraph.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [isTuranMaximal_of_iso](declarations/isturanmaximal-of-iso.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [IsTuranMaximal.iso](declarations/isturanmaximal-iso.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [isTuranMaximal_turanGraph](declarations/isturanmaximal-turangraph.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [isTuranMaximal_iff_nonempty_iso_turanGraph](declarations/isturanmaximal-iff-nonempty-iso-turangraph.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [isExtremal_top_free_iff_isTuranMaximal](declarations/isextremal-top-free-iff-isturanmaximal.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [isExtremal_top_free_turanGraph](declarations/isextremal-top-free-turangraph.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [extremalNumber_top](declarations/extremalnumber-top.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [card_edgeFinset_eq_extremalNumber_top_iff_nonempty_iso_turanGraph](declarations/card-edgefinset-eq-extremalnumber-top-iff-nonempty-iso-turangraph.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `abbrev` | [turanNumber](declarations/turannumber.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `lemma` | [sum_ne_add_mod_eq_sub_one](declarations/sum-ne-add-mod-eq-sub-one.md) | 332 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `lemma` | [turanNumber_add](declarations/turannumber-add.md) | 352 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [turanNumber_eq](declarations/turannumber-eq.md) | 373 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `lemma` | [turanNumber_two](declarations/turannumber-two.md) | 406 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `lemma` | [turanNumber_three](declarations/turannumber-three.md) | 412 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [mul_turanNumber_le](declarations/mul-turannumber-le.md) | 420 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [CliqueFree.card_edgeFinset_le](declarations/cliquefree-card-edgefinset-le.md) | 433 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `lemma` | [strictMonoOn_turanNumber](declarations/strictmonoon-turannumber.md) | 442 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f1e935c6e963d8b57a608c88d13df0732b1fed9bb81e213da364571a079fa6fa -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variantbc1b359202124ecc738c1da8be0ec8b6d38649d608b1813202fc2039ee2538a9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
