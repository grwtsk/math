# Max

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**88 observed declarations and anonymous commands**, 64 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Max/Variantf3bc2716bcc347e27c02787f65ab957657381405589387bdd2aa961c165121b5.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4a1aaba3ca1d3841e0b1610c205304f57af6bf06`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/OrderLatticesOrderedAlgebraicStructures/OrderedSets/Max.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `class` | [NoBotOrder](declarations/nobotorder.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `class` | [NoTopOrder](declarations/notoporder.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `class` | [NoMinOrder](declarations/nominorder.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `class` | [NoMaxOrder](declarations/nomaxorder.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `instance` | [nonempty_lt](declarations/nonempty-lt.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `instance` | [nonempty_gt](declarations/nonempty-gt.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `instance` | [IsEmpty.toNoMaxOrder](declarations/isempty-tonomaxorder.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `instance` | [IsEmpty.toNoMinOrder](declarations/isempty-tonominorder.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `instance` | [OrderDual.noBotOrder](declarations/orderdual-nobotorder.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `instance` | [OrderDual.noTopOrder](declarations/orderdual-notoporder.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `instance` | [OrderDual.noMinOrder](declarations/orderdual-nominorder.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `instance` | [OrderDual.noMaxOrder](declarations/orderdual-nomaxorder.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `instance` | [noMaxOrder_of_left](declarations/nomaxorder-of-left.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `instance` | [noMaxOrder_of_right](declarations/nomaxorder-of-right.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `instance` | [noMinOrder_of_left](declarations/nominorder-of-left.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `instance` | [noMinOrder_of_right](declarations/nominorder-of-right.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `instance` | [(anonymous)](declarations/instance.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [NoBotOrder.to_noMinOrder](declarations/nobotorder-to-nominorder.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [NoTopOrder.to_noMaxOrder](declarations/notoporder-to-nomaxorder.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [noBotOrder_iff_noMinOrder](declarations/nobotorder-iff-nominorder.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [noTopOrder_iff_noMaxOrder](declarations/notoporder-iff-nomaxorder.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [NoMinOrder.not_acc](declarations/nominorder-not-acc.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [NoMaxOrder.not_acc](declarations/nomaxorder-not-acc.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [IsBot](declarations/isbot-source-edition-2.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [IsTop](declarations/istop-source-edition-2.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [IsMin](declarations/ismin.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [IsMax](declarations/ismax-source-edition-2.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [not_isBot](declarations/not-isbot.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [not_isTop](declarations/not-istop.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [IsBot.isMin](declarations/isbot-ismin.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [IsTop.isMax](declarations/istop-ismax.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [IsTop.isMax_iff](declarations/istop-ismax-iff.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [IsBot.isMin_iff](declarations/isbot-ismin-iff.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [isBot_toDual_iff](declarations/isbot-todual-iff.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [isTop_toDual_iff](declarations/istop-todual-iff.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [isMin_toDual_iff](declarations/ismin-todual-iff.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [isMax_toDual_iff](declarations/ismax-todual-iff.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [isBot_ofDual_iff](declarations/isbot-ofdual-iff.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [isTop_ofDual_iff](declarations/istop-ofdual-iff.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [isMin_ofDual_iff](declarations/ismin-ofdual-iff.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [isMax_ofDual_iff](declarations/ismax-ofdual-iff.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [IsBot.mono](declarations/isbot-mono.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [IsTop.mono](declarations/istop-mono.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [IsMin.mono](declarations/ismin-mono.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [IsMax.mono](declarations/ismax-mono.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [IsMin.not_lt](declarations/ismin-not-lt.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [IsMax.not_lt](declarations/ismax-not-lt.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [not_isMin_of_lt](declarations/not-ismin-of-lt.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [not_isMax_of_lt](declarations/not-ismax-of-lt.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [isMin_iff_forall_not_lt](declarations/ismin-iff-forall-not-lt.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [isMax_iff_forall_not_lt](declarations/ismax-iff-forall-not-lt.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [not_isMin_iff](declarations/not-ismin-iff.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [not_isMax_iff](declarations/not-ismax-iff.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [not_isMin](declarations/not-ismin.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [not_isMax](declarations/not-ismax.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [isBot](declarations/isbot.md) | 309 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [isTop](declarations/istop.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [isMin](declarations/ismin-source-edition-2.md) | 313 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [isMax](declarations/ismax.md) | 316 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [IsMin.eq_of_le](declarations/ismin-eq-of-le.md) | 327 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [IsMin.eq_of_ge](declarations/ismin-eq-of-ge.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [IsMax.eq_of_le](declarations/ismax-eq-of-le.md) | 333 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [IsMax.eq_of_ge](declarations/ismax-eq-of-ge.md) | 336 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [IsBot.lt_of_ne](declarations/isbot-lt-of-ne.md) | 339 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [IsTop.lt_of_ne](declarations/istop-lt-of-ne.md) | 342 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [IsBot.not_isMax](declarations/isbot-not-ismax.md) | 345 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [IsTop.not_isMin](declarations/istop-not-ismin.md) | 350 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [IsBot.not_isTop](declarations/isbot-not-istop.md) | 353 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [IsTop.not_isBot](declarations/istop-not-isbot.md) | 356 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [IsBot.prodMk](declarations/isbot-prodmk.md) | 365 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [IsTop.prodMk](declarations/istop-prodmk.md) | 370 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [IsMin.prodMk](declarations/ismin-prodmk.md) | 375 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [IsMax.prodMk](declarations/ismax-prodmk.md) | 380 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [IsBot.fst](declarations/isbot-fst.md) | 385 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [IsBot.snd](declarations/isbot-snd.md) | 387 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [IsTop.fst](declarations/istop-fst.md) | 389 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [IsTop.snd](declarations/istop-snd.md) | 391 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [IsMin.fst](declarations/ismin-fst.md) | 393 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [IsMin.snd](declarations/ismin-snd.md) | 396 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [IsMax.fst](declarations/ismax-fst.md) | 399 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [IsMax.snd](declarations/ismax-snd.md) | 402 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [Prod.isBot_iff](declarations/prod-isbot-iff.md) | 405 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [Prod.isTop_iff](declarations/prod-istop-iff.md) | 408 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [Prod.isMin_iff](declarations/prod-ismin-iff.md) | 411 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [Prod.isMax_iff](declarations/prod-ismax-iff.md) | 414 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8f473854690094f35b2400241702631755df62a6c73b3abd65b2a776d4406152 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Max/Variantf3bc2716bcc347e27c02787f65ab957657381405589387bdd2aa961c165121b5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
