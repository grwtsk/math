# Nim Namespaced Move Left To Left Moves Nim

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**59 observed declarations and anonymous commands**, 46 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Nim/Variantdca4d9157807a452b1dc85b7050782dcac6c54d26b9c1c38ed6258ce7d8d3d8c.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `37f8d0e2699b90a3258998eafa2aa5352f183f19`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MathematicalLogicAndFoundations/SetTheory/NimNamespacedMoveLeftToLeftMovesNim.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [nim](declarations/nim.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [nim_def](declarations/nim-def.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [leftMoves_nim](declarations/leftmoves-nim.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [rightMoves_nim](declarations/rightmoves-nim.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [moveLeft_nim_hEq](declarations/moveleft-nim-heq.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [moveRight_nim_hEq](declarations/moveright-nim-heq.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [toLeftMovesNim](declarations/toleftmovesnim.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [toRightMovesNim](declarations/torightmovesnim.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [toLeftMovesNim_symm_lt](declarations/toleftmovesnim-symm-lt.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [toRightMovesNim_symm_lt](declarations/torightmovesnim-symm-lt.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [moveLeft_nim](declarations/moveleft-nim.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [moveLeft_toLeftMovesNim](declarations/moveleft-toleftmovesnim.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [moveRight_nim](declarations/moveright-nim.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [moveRight_toRightMovesNim](declarations/moveright-torightmovesnim.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [leftMovesNimRecOn](declarations/leftmovesnimrecon.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [rightMovesNimRecOn](declarations/rightmovesnimrecon.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `instance` | [isEmpty_nim_zero_leftMoves](declarations/isempty-nim-zero-leftmoves.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `instance` | [isEmpty_nim_zero_rightMoves](declarations/isempty-nim-zero-rightmoves.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [nimZeroRelabelling](declarations/nimzerorelabelling.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [nim_zero_equiv](declarations/nim-zero-equiv.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `instance` | [uniqueNimOneLeftMoves](declarations/uniquenimoneleftmoves.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `instance` | [uniqueNimOneRightMoves](declarations/uniquenimonerightmoves.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [default_nim_one_leftMoves_eq](declarations/default-nim-one-leftmoves-eq.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [default_nim_one_rightMoves_eq](declarations/default-nim-one-rightmoves-eq.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [toLeftMovesNim_one_symm](declarations/toleftmovesnim-one-symm.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [toRightMovesNim_one_symm](declarations/torightmovesnim-one-symm.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [nim_one_moveLeft](declarations/nim-one-moveleft.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [nim_one_moveRight](declarations/nim-one-moveright.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [nimOneRelabelling](declarations/nimonerelabelling.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [nim_one_equiv](declarations/nim-one-equiv.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [nim_birthday](declarations/nim-birthday.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [neg_nim](declarations/neg-nim.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `instance` | [impartial_nim](declarations/impartial-nim.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [nim_fuzzy_zero_of_ne_zero](declarations/nim-fuzzy-zero-of-ne-zero.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [nim_add_equiv_zero_iff](declarations/nim-add-equiv-zero-iff.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [nim_add_fuzzy_zero_iff](declarations/nim-add-fuzzy-zero-iff.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [nim_equiv_iff_eq](declarations/nim-equiv-iff-eq.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [grundyValue](declarations/grundyvalue.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [grundyValue_eq_sInf_moveLeft](declarations/grundyvalue-eq-sinf-moveleft.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [grundyValue_ne_moveLeft](declarations/grundyvalue-ne-moveleft.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [le_grundyValue_of_Iio_subset_moveLeft](declarations/le-grundyvalue-of-iio-subset-moveleft.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [exists_grundyValue_moveLeft_of_lt](declarations/exists-grundyvalue-moveleft-of-lt.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [grundyValue_le_of_forall_moveLeft](declarations/grundyvalue-le-of-forall-moveleft.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [equiv_nim_grundyValue](declarations/equiv-nim-grundyvalue.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [grundyValue_eq_iff_equiv_nim](declarations/grundyvalue-eq-iff-equiv-nim.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [nim_grundyValue](declarations/nim-grundyvalue.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [grundyValue_eq_iff_equiv](declarations/grundyvalue-eq-iff-equiv.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [grundyValue_zero](declarations/grundyvalue-zero.md) | 301 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [grundyValue_iff_equiv_zero](declarations/grundyvalue-iff-equiv-zero.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [grundyValue_star](declarations/grundyvalue-star.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [grundyValue_neg](declarations/grundyvalue-neg.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [grundyValue_eq_sInf_moveRight](declarations/grundyvalue-eq-sinf-moveright.md) | 315 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [grundyValue_ne_moveRight](declarations/grundyvalue-ne-moveright.md) | 323 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [le_grundyValue_of_Iio_subset_moveRight](declarations/le-grundyvalue-of-iio-subset-moveright.md) | 327 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [exists_grundyValue_moveRight_of_lt](declarations/exists-grundyvalue-moveright-of-lt.md) | 333 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [grundyValue_le_of_forall_moveRight](declarations/grundyvalue-le-of-forall-moveright.md) | 340 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [grundyValue_nim_add_nim](declarations/grundyvalue-nim-add-nim.md) | 346 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [nim_add_nim_equiv](declarations/nim-add-nim-equiv.md) | 362 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [grundyValue_add](declarations/grundyvalue-add.md) | 367 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b17de1f6292dea8e0945c4a9d2ec12f64a9e795c642b4c925a9e15d272018716 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Nim/Variantdca4d9157807a452b1dc85b7050782dcac6c54d26b9c1c38ed6258ce7d8d3d8c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
