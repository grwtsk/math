# Monomial Order Namespaced Public

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**29 observed declarations and anonymous commands**, 19 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MonomialOrder/Variantf6aa2065eb100913f7b0a14c369c947f2b76951eeb005cf7528dcb647de50cbd.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2708d1ba5b05d8a3eee6a1b3e9db2541b20d19ce`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/TheoryOfData/DataStructures/MonomialOrderNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [MonomialOrder](declarations/monomialorder.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [(anonymous)](declarations/instance.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `instance` | [isOrderedCancelAddMonoid_syn](declarations/isorderedcanceladdmonoid-syn.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [toWithBotSyn](declarations/towithbotsyn.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [le_add_right](declarations/le-add-right.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `instance` | [orderBot](declarations/orderbot.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [bot_eq_zero](declarations/bot-eq-zero.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [zero_le](declarations/zero-le.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [eq_zero_iff](declarations/eq-zero-iff.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [toSyn_eq_zero_iff](declarations/tosyn-eq-zero-iff.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [toSyn_lt_iff_ne_zero](declarations/tosyn-lt-iff-ne-zero.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [toSyn_strictMono](declarations/tosyn-strictmono.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [toWithBotSyn_apply_bot](declarations/towithbotsyn-apply-bot.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [toWithBotSyn_symm_apply_bot](declarations/towithbotsyn-symm-apply-bot.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [toWithBotSyn_apply_eq_bot_iff](declarations/towithbotsyn-apply-eq-bot-iff.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [toWithBotSyn_apply_le_bot_iff](declarations/towithbotsyn-apply-le-bot-iff.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [toWithBotSyn_apply_coe](declarations/towithbotsyn-apply-coe.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [bot_lt_toWithBotSyn_apply_iff](declarations/bot-lt-towithbotsyn-apply-iff.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [toWithBotSyn_symm_apply_eq_bot](declarations/towithbotsyn-symm-apply-eq-bot.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [toWithBotSyn_apply](declarations/towithbotsyn-apply.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `example` | [(anonymous)](declarations/example.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `example` | [(anonymous)](declarations/example-source-edition-2.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `example` | [(anonymous)](declarations/example-source-edition-3.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [MonomialOrder.lex](declarations/monomialorder-lex.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [MonomialOrder.lex_le_iff](declarations/monomialorder-lex-le-iff.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [MonomialOrder.lex_lt_iff](declarations/monomialorder-lex-lt-iff.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [MonomialOrder.lex_lt_iff_of_unique](declarations/monomialorder-lex-lt-iff-of-unique.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [MonomialOrder.lex_le_iff_of_unique](declarations/monomialorder-lex-le-iff-of-unique.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ee6e04d408de1a3d67f6d278c684f902b549f43a3130eab38e431a9f9a0063dd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MonomialOrder/Variantf6aa2065eb100913f7b0a14c369c947f2b76951eeb005cf7528dcb647de50cbd.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
