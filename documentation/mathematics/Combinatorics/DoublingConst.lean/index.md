# Doubling Const

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**30 observed declarations and anonymous commands**, 28 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/DoublingConst/Variant8bf3794751f2dbf694d562f34518d3d3f35efa1bc9f040cffb2fd964de96aa4e.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e9395dd8e8b19b10571e3eece5e14c76c9c71572`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/Combinatorics/DoublingConst.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [mulConst](declarations/mulconst.md) | 29 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [divConst](declarations/divconst.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [mulConst_mul_card](declarations/mulconst-mul-card.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [divConst_mul_card](declarations/divconst-mul-card.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [card_mul_mulConst](declarations/card-mul-mulconst.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [card_mul_divConst](declarations/card-mul-divconst.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [mulConst_empty_left](declarations/mulconst-empty-left.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [divConst_empty_left](declarations/divconst-empty-left.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [mulConst_empty_right](declarations/mulconst-empty-right.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [divConst_empty_right](declarations/divconst-empty-right.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [mulConst_inv_right](declarations/mulconst-inv-right.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [divConst_inv_right](declarations/divconst-inv-right.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [mulConst_le_inv_dens](declarations/mulconst-le-inv-dens.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [divConst_le_inv_dens](declarations/divconst-le-inv-dens.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [cast_addConst](declarations/cast-addconst.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [cast_subConst](declarations/cast-subconst.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [cast_mulConst](declarations/cast-mulconst.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [cast_divConst](declarations/cast-divconst.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [cast_addConst_mul_card](declarations/cast-addconst-mul-card.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [cast_subConst_mul_card](declarations/cast-subconst-mul-card.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [card_mul_cast_addConst](declarations/card-mul-cast-addconst.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [card_mul_cast_subConst](declarations/card-mul-cast-subconst.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [cast_mulConst_mul_card](declarations/cast-mulconst-mul-card.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [cast_divConst_mul_card](declarations/cast-divconst-mul-card.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [card_mul_cast_mulConst](declarations/card-mul-cast-mulconst.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [card_mul_cast_divConst](declarations/card-mul-cast-divconst.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [mulConst_inv_left](declarations/mulconst-inv-left.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [divConst_inv_left](declarations/divconst-inv-left.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [mulConst_le_divConst_sq](declarations/mulconst-le-divconst-sq.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [divConst_le_mulConst_sq](declarations/divconst-le-mulconst-sq.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=940a4072b86b98f3fa86600b45aa4c72414ba2b43d463033b17c3a79342188e8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/DoublingConst/Variant8bf3794751f2dbf694d562f34518d3d3f35efa1bc9f040cffb2fd964de96aa4e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
