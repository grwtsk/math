# Max Namespaced Aligned

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**78 observed declarations and anonymous commands**, 56 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Max/Variantd383980f89b4d6ded217a62dcbc1d2c284b162aad0af141d8cec534d7c52028f.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4ea0848ef8bc9051f774b74388badee3f10160e4`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/OrderLatticesOrderedAlgebraicStructures/OrderedSets/MaxNamespacedAligned.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `class` | [NoBotOrder](declarations/nobotorder.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `class` | [NoTopOrder](declarations/notoporder.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `class` | [NoMinOrder](declarations/nominorder.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `class` | [NoMaxOrder](declarations/nomaxorder.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `instance` | [nonempty_lt](declarations/nonempty-lt.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `instance` | [nonempty_gt](declarations/nonempty-gt.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `instance` | [OrderDual.noBotOrder](declarations/orderdual-nobotorder.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `instance` | [OrderDual.noTopOrder](declarations/orderdual-notoporder.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `instance` | [OrderDual.noMinOrder](declarations/orderdual-nominorder.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `instance` | [OrderDual.noMaxOrder](declarations/orderdual-nomaxorder.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `instance` | [noMaxOrder_of_left](declarations/nomaxorder-of-left.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `instance` | [noMaxOrder_of_right](declarations/nomaxorder-of-right.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `instance` | [noMinOrder_of_left](declarations/nominorder-of-left.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `instance` | [noMinOrder_of_right](declarations/nominorder-of-right.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `instance` | [(anonymous)](declarations/instance.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [NoBotOrder.to_noMinOrder](declarations/nobotorder-to-nominorder.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [NoTopOrder.to_noMaxOrder](declarations/notoporder-to-nomaxorder.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [noBotOrder_iff_noMinOrder](declarations/nobotorder-iff-nominorder.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [noTopOrder_iff_noMaxOrder](declarations/notoporder-iff-nomaxorder.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [NoMinOrder.not_acc](declarations/nominorder-not-acc.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [NoMaxOrder.not_acc](declarations/nomaxorder-not-acc.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [IsBot](declarations/isbot-source-edition-2.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [IsTop](declarations/istop.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [IsMin](declarations/ismin.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [IsMax](declarations/ismax.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [not_isBot](declarations/not-isbot.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [not_isTop](declarations/not-istop.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [IsBot.isMin](declarations/isbot-ismin.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [IsTop.isMax](declarations/istop-ismax.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [isBot_toDual_iff](declarations/isbot-todual-iff.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [isTop_toDual_iff](declarations/istop-todual-iff.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [isMin_toDual_iff](declarations/ismin-todual-iff.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [isMax_toDual_iff](declarations/ismax-todual-iff.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [isBot_ofDual_iff](declarations/isbot-ofdual-iff.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [isTop_ofDual_iff](declarations/istop-ofdual-iff.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [isMin_ofDual_iff](declarations/ismin-ofdual-iff.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [isMax_ofDual_iff](declarations/ismax-ofdual-iff.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [IsBot.mono](declarations/isbot-mono.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [IsTop.mono](declarations/istop-mono.md) | 309 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [IsMin.mono](declarations/ismin-mono.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [IsMax.mono](declarations/ismax-mono.md) | 315 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [IsMin.not_lt](declarations/ismin-not-lt.md) | 318 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [IsMax.not_lt](declarations/ismax-not-lt.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [not_isMin_of_lt](declarations/not-ismin-of-lt.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [not_isMax_of_lt](declarations/not-ismax-of-lt.md) | 329 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [isMin_iff_forall_not_lt](declarations/ismin-iff-forall-not-lt.md) | 336 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [isMax_iff_forall_not_lt](declarations/ismax-iff-forall-not-lt.md) | 340 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [not_isMin_iff](declarations/not-ismin-iff.md) | 345 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [not_isMax_iff](declarations/not-ismax-iff.md) | 350 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [not_isMin](declarations/not-ismin.md) | 355 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [not_isMax](declarations/not-ismax.md) | 360 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [isBot](declarations/isbot.md) | 368 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [isTop](declarations/istop-source-edition-2.md) | 371 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [isMin](declarations/ismin-source-edition-2.md) | 374 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [isMax](declarations/ismax-source-edition-2.md) | 378 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [IsMin.eq_of_le](declarations/ismin-eq-of-le.md) | 390 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [IsMin.eq_of_ge](declarations/ismin-eq-of-ge.md) | 394 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [IsMax.eq_of_le](declarations/ismax-eq-of-le.md) | 398 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [IsMax.eq_of_ge](declarations/ismax-eq-of-ge.md) | 402 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [IsBot.prod_mk](declarations/isbot-prod-mk.md) | 412 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [IsTop.prod_mk](declarations/istop-prod-mk.md) | 415 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [IsMin.prod_mk](declarations/ismin-prod-mk.md) | 418 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [IsMax.prod_mk](declarations/ismax-prod-mk.md) | 421 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [IsBot.fst](declarations/isbot-fst.md) | 424 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [IsBot.snd](declarations/isbot-snd.md) | 427 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [IsTop.fst](declarations/istop-fst.md) | 430 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [IsTop.snd](declarations/istop-snd.md) | 433 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [IsMin.fst](declarations/ismin-fst.md) | 436 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [IsMin.snd](declarations/ismin-snd.md) | 440 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [IsMax.fst](declarations/ismax-fst.md) | 444 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [IsMax.snd](declarations/ismax-snd.md) | 448 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [Prod.isBot_iff](declarations/prod-isbot-iff.md) | 452 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [Prod.isTop_iff](declarations/prod-istop-iff.md) | 456 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [Prod.isMin_iff](declarations/prod-ismin-iff.md) | 460 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [Prod.isMax_iff](declarations/prod-ismax-iff.md) | 464 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=37d36170d2a86a3c68287894dfae409d2aed64963d041bc6a0715c60c73a1378 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Max/Variantd383980f89b4d6ded217a62dcbc1d2c284b162aad0af141d8cec534d7c52028f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
