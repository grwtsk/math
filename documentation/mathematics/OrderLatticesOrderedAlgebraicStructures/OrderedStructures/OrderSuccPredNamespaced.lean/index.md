# Order Succ Pred Namespaced

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**54 observed declarations and anonymous commands**, 52 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant5da0bf4d8439756914d10083044bf079db8f94cda3fbe5e9e123a5cdf264c566.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9b23f6a4c5f38af0b72bb57404976237337311bc`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderSuccPredNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `class` | [SuccAddOrder](declarations/succaddorder.md) | 36 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `class` | [PredSubOrder](declarations/predsuborder.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [succ_eq_add_one](declarations/succ-eq-add-one.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [add_one_le_of_lt](declarations/add-one-le-of-lt.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [add_one_le_iff_of_not_isMax](declarations/add-one-le-iff-of-not-ismax.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [add_one_le_iff](declarations/add-one-le-iff.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [wcovBy_add_one](declarations/wcovby-add-one.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [covBy_add_one](declarations/covby-add-one.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [pred_eq_sub_one](declarations/pred-eq-sub-one.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [le_sub_one_of_lt](declarations/le-sub-one-of-lt.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [le_sub_one_iff_of_not_isMin](declarations/le-sub-one-iff-of-not-ismin.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [le_sub_one_iff](declarations/le-sub-one-iff.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [sub_one_wcovBy](declarations/sub-one-wcovby.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [sub_one_covBy](declarations/sub-one-covby.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [succ_iterate](declarations/succ-iterate.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [pred_iterate](declarations/pred-iterate.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [not_isMax_zero](declarations/not-ismax-zero.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [one_le_iff_pos](declarations/one-le-iff-pos.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [covBy_iff_add_one_eq](declarations/covby-iff-add-one-eq.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [covBy_iff_sub_one_eq](declarations/covby-iff-sub-one-eq.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [IsSuccPrelimit.add_one_lt](declarations/issuccprelimit-add-one-lt.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [IsPredPrelimit.lt_sub_one](declarations/ispredprelimit-lt-sub-one.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [IsSuccLimit.add_one_lt](declarations/issucclimit-add-one-lt.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [IsPredLimit.lt_sub_one](declarations/ispredlimit-lt-sub-one.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [IsSuccPrelimit.add_natCast_lt](declarations/issuccprelimit-add-natcast-lt.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [IsPredPrelimit.lt_sub_natCast](declarations/ispredprelimit-lt-sub-natcast.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [IsSuccLimit.add_natCast_lt](declarations/issucclimit-add-natcast-lt.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [IsPredLimit.lt_sub_natCast](declarations/ispredlimit-lt-sub-natcast.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [IsSuccLimit.natCast_lt](declarations/issucclimit-natcast-lt.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [not_isSuccLimit_natCast](declarations/not-issucclimit-natcast.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [succ_eq_zero](declarations/succ-eq-zero.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [le_of_lt_add_one](declarations/le-of-lt-add-one.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [lt_add_one_iff_of_not_isMax](declarations/lt-add-one-iff-of-not-ismax.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [lt_add_one_iff](declarations/lt-add-one-iff.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [le_of_sub_one_lt](declarations/le-of-sub-one-lt.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [sub_one_lt_iff_of_not_isMin](declarations/sub-one-lt-iff-of-not-ismin.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [sub_one_lt_iff](declarations/sub-one-lt-iff.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [lt_one_iff_nonpos](declarations/lt-one-iff-nonpos.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `lemma` | [monotoneOn_of_le_add_one](declarations/monotoneon-of-le-add-one.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `lemma` | [antitoneOn_of_add_one_le](declarations/antitoneon-of-add-one-le.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `lemma` | [strictMonoOn_of_lt_add_one](declarations/strictmonoon-of-lt-add-one.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `lemma` | [strictAntiOn_of_add_one_lt](declarations/strictantion-of-add-one-lt.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `lemma` | [monotone_of_le_add_one](declarations/monotone-of-le-add-one.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `lemma` | [antitone_of_add_one_le](declarations/antitone-of-add-one-le.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `lemma` | [strictMono_of_lt_add_one](declarations/strictmono-of-lt-add-one.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `lemma` | [strictAnti_of_add_one_lt](declarations/strictanti-of-add-one-lt.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `lemma` | [monotoneOn_of_sub_one_le](declarations/monotoneon-of-sub-one-le.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `lemma` | [antitoneOn_of_le_sub_one](declarations/antitoneon-of-le-sub-one.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `lemma` | [strictMonoOn_of_sub_one_lt](declarations/strictmonoon-of-sub-one-lt.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `lemma` | [strictAntiOn_of_lt_sub_one](declarations/strictantion-of-lt-sub-one.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `lemma` | [monotone_of_sub_one_le](declarations/monotone-of-sub-one-le.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `lemma` | [antitone_of_le_sub_one](declarations/antitone-of-le-sub-one.md) | 315 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `lemma` | [strictMono_of_sub_one_lt](declarations/strictmono-of-sub-one-lt.md) | 318 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `lemma` | [strictAnti_of_lt_sub_one](declarations/strictanti-of-lt-sub-one.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=afa4b3b0aff7416890cde9e2ef3b8725ed12fa853cbc282e8875ba8a8739153c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant5da0bf4d8439756914d10083044bf079db8f94cda3fbe5e9e123a5cdf264c566.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
