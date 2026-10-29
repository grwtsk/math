# Doubling Const Public

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**30 observed declarations and anonymous commands**, 28 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/DoublingConst/Variant0f4df5d0e8db94e03a3e44ae5e1005f51c4053a0f6a7db0f31ab2505f6e48d6b.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5c4431c79e03bd9ab033ed9d6bd3519aabadd443`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/Combinatorics/DoublingConstPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [mulConst](declarations/mulconst.md) | 33 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [divConst](declarations/divconst.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [mulConst_mul_card](declarations/mulconst-mul-card.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [divConst_mul_card](declarations/divconst-mul-card.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [card_mul_mulConst](declarations/card-mul-mulconst.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [card_mul_divConst](declarations/card-mul-divconst.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [mulConst_empty_left](declarations/mulconst-empty-left.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [divConst_empty_left](declarations/divconst-empty-left.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [mulConst_empty_right](declarations/mulconst-empty-right.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [divConst_empty_right](declarations/divconst-empty-right.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [mulConst_inv_right](declarations/mulconst-inv-right.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [divConst_inv_right](declarations/divconst-inv-right.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [one_le_mulConst](declarations/one-le-mulconst.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [one_le_mulConst_self](declarations/one-le-mulconst-self.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [one_le_divConst](declarations/one-le-divconst.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [one_le_divConst_self](declarations/one-le-divconst-self.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [mulConst_le_card](declarations/mulconst-le-card.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [divConst_le_card](declarations/divconst-le-card.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [mulConst_le_inv_dens](declarations/mulconst-le-inv-dens.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [divConst_le_inv_dens](declarations/divconst-le-inv-dens.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [cast_mulConst](declarations/cast-mulconst.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [cast_divConst](declarations/cast-divconst.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [cast_mulConst_mul_card](declarations/cast-mulconst-mul-card.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [cast_divConst_mul_card](declarations/cast-divconst-mul-card.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [card_mul_cast_mulConst](declarations/card-mul-cast-mulconst.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [card_mul_cast_divConst](declarations/card-mul-cast-divconst.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [divConst_le_mulConst_sq](declarations/divconst-le-mulconst-sq.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [mulConst_inv_left](declarations/mulconst-inv-left.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [divConst_inv_left](declarations/divconst-inv-left.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [mulConst_le_divConst_sq](declarations/mulconst-le-divconst-sq.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7a45d52632d0825a1433916df3b1140b60915d57ac64ceed58aee29ed3113739 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/DoublingConst/Variant0f4df5d0e8db94e03a3e44ae5e1005f51c4053a0f6a7db0f31ab2505f6e48d6b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
