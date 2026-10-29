# Max Aligned

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**78 observed declarations and anonymous commands**, 56 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Max/Variant50064e0f7cf93316aa70124805d018b69ebc90978ce2cb23af614afeaf4d42f9.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `06d782fa6c7995ce5f154862e9c784c21ad183d5`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/OrderLatticesOrderedAlgebraicStructures/OrderedSets/MaxAligned.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `class` | [NoBotOrder](declarations/nobotorder.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `class` | [NoTopOrder](declarations/notoporder.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `class` | [NoMinOrder](declarations/nominorder.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `class` | [NoMaxOrder](declarations/nomaxorder.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `instance` | [nonempty_lt](declarations/nonempty-lt.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `instance` | [nonempty_gt](declarations/nonempty-gt.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `instance` | [OrderDual.noBotOrder](declarations/orderdual-nobotorder.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `instance` | [OrderDual.noTopOrder](declarations/orderdual-notoporder.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `instance` | [OrderDual.noMinOrder](declarations/orderdual-nominorder.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `instance` | [OrderDual.noMaxOrder](declarations/orderdual-nomaxorder.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `instance` | [(anonymous)](declarations/instance.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `instance` | [noMaxOrder_of_left](declarations/nomaxorder-of-left.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `instance` | [noMaxOrder_of_right](declarations/nomaxorder-of-right.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `instance` | [noMinOrder_of_left](declarations/nominorder-of-left.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `instance` | [noMinOrder_of_right](declarations/nominorder-of-right.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [NoBotOrder.to_noMinOrder](declarations/nobotorder-to-nominorder.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [NoTopOrder.to_noMaxOrder](declarations/notoporder-to-nomaxorder.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [noBotOrder_iff_noMinOrder](declarations/nobotorder-iff-nominorder.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [noTopOrder_iff_noMaxOrder](declarations/notoporder-iff-nomaxorder.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [NoMinOrder.not_acc](declarations/nominorder-not-acc.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [NoMaxOrder.not_acc](declarations/nomaxorder-not-acc.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [IsBot](declarations/isbot.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [IsTop](declarations/istop-source-edition-2.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [IsMin](declarations/ismin-source-edition-2.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [IsMax](declarations/ismax.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [not_isBot](declarations/not-isbot.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [not_isTop](declarations/not-istop.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [IsBot.isMin](declarations/isbot-ismin.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [IsTop.isMax](declarations/istop-ismax.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [isBot_toDual_iff](declarations/isbot-todual-iff.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [isTop_toDual_iff](declarations/istop-todual-iff.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [isMin_toDual_iff](declarations/ismin-todual-iff.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [isMax_toDual_iff](declarations/ismax-todual-iff.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [isBot_ofDual_iff](declarations/isbot-ofdual-iff.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [isTop_ofDual_iff](declarations/istop-ofdual-iff.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [isMin_ofDual_iff](declarations/ismin-ofdual-iff.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [isMax_ofDual_iff](declarations/ismax-ofdual-iff.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [IsBot.mono](declarations/isbot-mono.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [IsTop.mono](declarations/istop-mono.md) | 301 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [IsMin.mono](declarations/ismin-mono.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [IsMax.mono](declarations/ismax-mono.md) | 307 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [IsMin.not_lt](declarations/ismin-not-lt.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [IsMax.not_lt](declarations/ismax-not-lt.md) | 313 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [not_isMin_of_lt](declarations/not-ismin-of-lt.md) | 317 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [not_isMax_of_lt](declarations/not-ismax-of-lt.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [isMin_iff_forall_not_lt](declarations/ismin-iff-forall-not-lt.md) | 328 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [isMax_iff_forall_not_lt](declarations/ismax-iff-forall-not-lt.md) | 332 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [not_isMin_iff](declarations/not-ismin-iff.md) | 337 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [not_isMax_iff](declarations/not-ismax-iff.md) | 342 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [not_isMin](declarations/not-ismin.md) | 347 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [not_isMax](declarations/not-ismax.md) | 352 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [isBot](declarations/isbot-source-edition-2.md) | 360 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [isTop](declarations/istop.md) | 363 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [isMin](declarations/ismin.md) | 366 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [isMax](declarations/ismax-source-edition-2.md) | 370 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [IsMin.eq_of_le](declarations/ismin-eq-of-le.md) | 382 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [IsMin.eq_of_ge](declarations/ismin-eq-of-ge.md) | 386 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [IsMax.eq_of_le](declarations/ismax-eq-of-le.md) | 390 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [IsMax.eq_of_ge](declarations/ismax-eq-of-ge.md) | 394 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [IsBot.prod_mk](declarations/isbot-prod-mk.md) | 404 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [IsTop.prod_mk](declarations/istop-prod-mk.md) | 407 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [IsMin.prod_mk](declarations/ismin-prod-mk.md) | 410 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [IsMax.prod_mk](declarations/ismax-prod-mk.md) | 413 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [IsBot.fst](declarations/isbot-fst.md) | 416 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [IsBot.snd](declarations/isbot-snd.md) | 419 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [IsTop.fst](declarations/istop-fst.md) | 422 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [IsTop.snd](declarations/istop-snd.md) | 425 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [IsMin.fst](declarations/ismin-fst.md) | 428 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [IsMin.snd](declarations/ismin-snd.md) | 432 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [IsMax.fst](declarations/ismax-fst.md) | 436 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [IsMax.snd](declarations/ismax-snd.md) | 440 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [Prod.isBot_iff](declarations/prod-isbot-iff.md) | 444 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [Prod.isTop_iff](declarations/prod-istop-iff.md) | 448 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [Prod.isMin_iff](declarations/prod-ismin-iff.md) | 452 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [Prod.isMax_iff](declarations/prod-ismax-iff.md) | 456 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4526d271acac42136b799c50d9ff453e9bd89d9a142a08e8f2f92cd6feea6ea4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Max/Variant50064e0f7cf93316aa70124805d018b69ebc90978ce2cb23af614afeaf4d42f9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
