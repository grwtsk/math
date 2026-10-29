# PGame Basic Namespaced

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**110 observed declarations and anonymous commands**, 64 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantaaae97c05801907a907fd8449eb9997305d1895a83863fdb8ea38a9697be8741.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9aaf0ec62579a6b40dcbe351d74abdbe1ec51b16`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MathematicalLogicAndFoundations/SetTheory/PGameBasicNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [PGame](declarations/pgame.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [LeftMoves](declarations/leftmoves.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [RightMoves](declarations/rightmoves.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [moveLeft](declarations/moveleft.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [moveRight](declarations/moveright.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [leftMoves_mk](declarations/leftmoves-mk.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [moveLeft_mk](declarations/moveleft-mk.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [rightMoves_mk](declarations/rightmoves-mk.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [moveRight_mk](declarations/moveright-mk.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [ext](declarations/ext.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [ofLists](declarations/oflists.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [leftMoves_ofLists](declarations/leftmoves-oflists.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [rightMoves_ofLists](declarations/rightmoves-oflists.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `abbrev` | [toOfListsLeftMoves](declarations/tooflistsleftmoves.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `abbrev` | [toOfListsRightMoves](declarations/tooflistsrightmoves.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [ofLists_moveLeft'](declarations/oflists-moveleft.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [ofLists_moveLeft](declarations/oflists-moveleft-source-edition-2.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [ofLists_moveRight'](declarations/oflists-moveright.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [ofLists_moveRight](declarations/oflists-moveright-source-edition-2.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [moveRecOn](declarations/moverecon.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `inductive` | [IsOption](declarations/isoption.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [IsOption.mk_left](declarations/isoption-mk-left.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [IsOption.mk_right](declarations/isoption-mk-right.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [wf_isOption](declarations/wf-isoption.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [Subsequent](declarations/subsequent.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [Subsequent.trans](declarations/subsequent-trans.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [wf_subsequent](declarations/wf-subsequent.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [Subsequent.moveLeft](declarations/subsequent-moveleft.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [Subsequent.moveRight](declarations/subsequent-moveright.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [Subsequent.mk_left](declarations/subsequent-mk-left.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [Subsequent.mk_right](declarations/subsequent-mk-right.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `macro` | [(anonymous)](declarations/macro.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [Subsequent.mk_right'](declarations/subsequent-mk-right-source-edition-2.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [Subsequent.moveRight_mk_left](declarations/subsequent-moveright-mk-left.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [Subsequent.moveRight_mk_right](declarations/subsequent-moveright-mk-right.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [Subsequent.moveLeft_mk_left](declarations/subsequent-moveleft-mk-left.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [Subsequent.moveLeft_mk_right](declarations/subsequent-moveleft-mk-right.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `instance` | [(anonymous)](declarations/instance.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [zero_leftMoves](declarations/zero-leftmoves.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [zero_rightMoves](declarations/zero-rightmoves.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `instance` | [isEmpty_zero_leftMoves](declarations/isempty-zero-leftmoves.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `instance` | [isEmpty_zero_rightMoves](declarations/isempty-zero-rightmoves.md) | 301 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `instance` | [(anonymous)](declarations/instance-source-edition-8.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `instance` | [instOnePGame](declarations/instonepgame.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [one_leftMoves](declarations/one-leftmoves.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [one_moveLeft](declarations/one-moveleft.md) | 316 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [one_rightMoves](declarations/one-rightmoves.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `instance` | [uniqueOneLeftMoves](declarations/uniqueoneleftmoves.md) | 323 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `instance` | [isEmpty_one_rightMoves](declarations/isempty-one-rightmoves.md) | 326 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `def` | [Identical](declarations/identical.md) | 334 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [identical_iff](declarations/identical-iff-source-edition-2.md) | 341 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [Identical.refl](declarations/identical-refl.md) | 345 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [Identical.rfl](declarations/identical-rfl.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [Identical.symm](declarations/identical-symm.md) | 350 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [identical_comm](declarations/identical-comm.md) | 353 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [Identical.trans](declarations/identical-trans.md) | 356 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `def` | [memₗ](declarations/mem-source-edition-2.md) | 361 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `def` | [memᵣ](declarations/mem.md) | 364 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [memₗ_def](declarations/mem-def-source-edition-2.md) | 371 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [memᵣ_def](declarations/mem-def.md) | 372 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [moveLeft_memₗ](declarations/moveleft-mem.md) | 373 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [moveRight_memᵣ](declarations/moveright-mem.md) | 374 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [identical_of_isEmpty](declarations/identical-of-isempty.md) | 376 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `def` | [identicalSetoid](declarations/identicalsetoid.md) | 382 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `instance` | [(anonymous)](declarations/instance-source-edition-7.md) | 385 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 386 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 387 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 388 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `lemma` | [Identical.moveLeft](declarations/identical-moveleft.md) | 391 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `lemma` | [Identical.moveRight](declarations/identical-moveright.md) | 397 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [identical_of_eq](declarations/identical-of-eq.md) | 401 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [identical_iff'](declarations/identical-iff.md) | 404 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [memₗ.congr_right](declarations/mem-congr-right.md) | 413 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [memᵣ.congr_right](declarations/mem-congr-right-source-edition-2.md) | 419 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [memₗ.congr_left](declarations/mem-congr-left.md) | 425 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [memᵣ.congr_left](declarations/mem-congr-left-source-edition-2.md) | 429 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `lemma` | [Identical.ext](declarations/identical-ext.md) | 433 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `lemma` | [Identical.ext_iff](declarations/identical-ext-iff.md) | 438 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `lemma` | [Identical.congr_right](declarations/identical-congr-right.md) | 441 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `lemma` | [Identical.congr_left](declarations/identical-congr-left.md) | 444 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `lemma` | [Identical.of_fn](declarations/identical-of-fn.md) | 448 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `lemma` | [Identical.of_equiv](declarations/identical-of-equiv.md) | 458 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `inductive` | [Relabelling](declarations/relabelling.md) | 471 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `def` | [mk'](declarations/mk.md) | 486 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `def` | [leftMovesEquiv](declarations/leftmovesequiv.md) | 492 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [mk_leftMovesEquiv](declarations/mk-leftmovesequiv-source-edition-2.md) | 496 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [mk'_leftMovesEquiv](declarations/mk-leftmovesequiv.md) | 500 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `def` | [rightMovesEquiv](declarations/rightmovesequiv.md) | 505 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [mk_rightMovesEquiv](declarations/mk-rightmovesequiv-source-edition-2.md) | 509 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [mk'_rightMovesEquiv](declarations/mk-rightmovesequiv.md) | 513 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `def` | [moveLeft](declarations/moveleft-source-edition-2.md) | 518 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `def` | [moveLeftSymm](declarations/moveleftsymm.md) | 522 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `def` | [moveRight](declarations/moveright-source-edition-2.md) | 527 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `def` | [moveRightSymm](declarations/moverightsymm.md) | 532 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `def` | [refl](declarations/refl.md) | 538 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `instance` | [(anonymous)](declarations/instance-source-edition-9.md) | 542 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `def` | [symm](declarations/symm.md) | 547 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `def` | [trans](declarations/trans.md) | 552 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `def` | [isEmpty](declarations/isempty.md) | 557 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `def` | [relabel](declarations/relabel.md) | 563 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `theorem` | [relabel_moveLeft'](declarations/relabel-moveleft-source-edition-2.md) | 567 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `theorem` | [relabel_moveLeft](declarations/relabel-moveleft.md) | 571 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `theorem` | [relabel_moveRight'](declarations/relabel-moveright-source-edition-2.md) | 575 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `theorem` | [relabel_moveRight](declarations/relabel-moveright.md) | 579 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `def` | [relabelRelabelling](declarations/relabelrelabelling.md) | 583 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `def` | [insertLeft](declarations/insertleft.md) | 591 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `def` | [insertRight](declarations/insertright.md) | 596 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `theorem` | [insertRight_insertLeft](declarations/insertright-insertleft.md) | 601 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=83e024de5a6dd5263eba374a24c7e3e3c6284abc7c5faa1170afd9053fd13bd3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantaaae97c05801907a907fd8449eb9997305d1895a83863fdb8ea38a9697be8741.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
