# Doubling Const Namespaced

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**30 observed declarations and anonymous commands**, 28 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/DoublingConst/Varianta2066817c51d17cd81c139f6e954babe7663dbc8a09a3fd58cba5ebdaf0617da.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0920add13d4ed5c3b3c3a26793befef5a6a6ddc7`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/Combinatorics/DoublingConstNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [mulConst](declarations/mulconst.md) | 37 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [divConst](declarations/divconst.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [mulConst_mul_card](declarations/mulconst-mul-card.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [divConst_mul_card](declarations/divconst-mul-card.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [card_mul_mulConst](declarations/card-mul-mulconst.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [card_mul_divConst](declarations/card-mul-divconst.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [mulConst_empty_left](declarations/mulconst-empty-left.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [divConst_empty_left](declarations/divconst-empty-left.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [mulConst_empty_right](declarations/mulconst-empty-right.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [divConst_empty_right](declarations/divconst-empty-right.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [mulConst_inv_right](declarations/mulconst-inv-right.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [divConst_inv_right](declarations/divconst-inv-right.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [mulConst_le_inv_dens](declarations/mulconst-le-inv-dens.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [divConst_le_inv_dens](declarations/divconst-le-inv-dens.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [cast_addConst](declarations/cast-addconst.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [cast_subConst](declarations/cast-subconst.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [cast_mulConst](declarations/cast-mulconst.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [cast_divConst](declarations/cast-divconst.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [cast_addConst_mul_card](declarations/cast-addconst-mul-card.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [cast_subConst_mul_card](declarations/cast-subconst-mul-card.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [card_mul_cast_addConst](declarations/card-mul-cast-addconst.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [card_mul_cast_subConst](declarations/card-mul-cast-subconst.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [cast_mulConst_mul_card](declarations/cast-mulconst-mul-card.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [cast_divConst_mul_card](declarations/cast-divconst-mul-card.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [card_mul_cast_mulConst](declarations/card-mul-cast-mulconst.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [card_mul_cast_divConst](declarations/card-mul-cast-divconst.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [mulConst_inv_left](declarations/mulconst-inv-left.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [divConst_inv_left](declarations/divconst-inv-left.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [mulConst_le_divConst_sq](declarations/mulconst-le-divconst-sq.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [divConst_le_mulConst_sq](declarations/divconst-le-mulconst-sq.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=501982cddd5d1889fcb1fd5e7b22955db7949d0364e7cc02dcc93ddcdab91b62 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/DoublingConst/Varianta2066817c51d17cd81c139f6e954babe7663dbc8a09a3fd58cba5ebdaf0617da.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
