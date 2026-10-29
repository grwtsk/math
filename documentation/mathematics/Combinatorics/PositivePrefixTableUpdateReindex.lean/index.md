# Positive Prefix Table Update Reindex

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**62 observed declarations and anonymous commands**, 24 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Combinatorics/DirectedGraph/Checks/Positive/PrefixTableUpdateReindex.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ae0a4942fc811e1f3cdb4ac80750ffbb4127ea50`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/Combinatorics/PositivePrefixTableUpdateReindex.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [original](declarations/original.md) | 16 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [swapIndex](declarations/swapindex.md) | 21 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [updated](declarations/updated.md) | 23 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [translation](declarations/translation.md) | 28 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [translation_bijective](declarations/translation-bijective.md) | 34 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [vertexA](declarations/vertexa.md) | 36 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [vertexB](declarations/vertexb.md) | 37 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [id0](declarations/id0.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [id1](declarations/id1.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [new0](declarations/new0.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [new1](declarations/new1.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [new2](declarations/new2.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [oldTag0](declarations/oldtag0.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [oldTag1](declarations/oldtag1.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [newTag0](declarations/newtag0.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [newTag1](declarations/newtag1.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [newTag2](declarations/newtag2.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `instance` | [oldTagDecidableEq](declarations/oldtagdecidableeq.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `instance` | [newTagDecidableEq](declarations/newtagdecidableeq.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [old_tags_distinct](declarations/old-tags-distinct.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [arrow0](declarations/arrow0.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [arrow1](declarations/arrow1.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [single0](declarations/single0.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [single1](declarations/single1.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [seedRows](declarations/seedrows.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [seed](declarations/seed.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [before](declarations/before.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [seed_inventory](declarations/seed-inventory.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [before_dictionary](declarations/before-dictionary.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [before_wellFormed](declarations/before-wellformed.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [before_nodes](declarations/before-nodes.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [before_actual_decode](declarations/before-actual-decode.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [id2](declarations/id2.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [oldTag2](declarations/oldtag2.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [arrow2](declarations/arrow2.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [returnPath](declarations/returnpath.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [returnRows](declarations/returnrows.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [parallelRows](declarations/parallelrows.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [firstState](declarations/firststate.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [secondState](declarations/secondstate.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [return_trace](declarations/return-trace.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [return_inventory](declarations/return-inventory.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [first_dictionary](declarations/first-dictionary.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [first_wellFormed](declarations/first-wellformed.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [second_wellFormed](declarations/second-wellformed.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [first_nodes](declarations/first-nodes.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [first_references](declarations/first-references.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [first_actual_decode](declarations/first-actual-decode.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [second_actual_decode](declarations/second-actual-decode.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [actual_all_fields_commute](declarations/actual-all-fields-commute.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [actual_new_decode](declarations/actual-new-decode.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `example` | [(anonymous)](declarations/example-source-edition-3.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `example` | [(anonymous)](declarations/example-source-edition-2.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `example` | [(anonymous)](declarations/example.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `def` | [collapseIndex](declarations/collapseindex.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `def` | [collapse](declarations/collapse.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [collapse_not_injective](declarations/collapse-not-injective.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [mapped_seed_dictionary](declarations/mapped-seed-dictionary.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [collapsed_inventory](declarations/collapsed-inventory.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [collapsed_update_dictionary](declarations/collapsed-update-dictionary.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [actual_noninjective_update_failure](declarations/actual-noninjective-update-failure.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [actual_noninjective_wellFormed_failure](declarations/actual-noninjective-wellformed-failure.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=66d75b7ceb791f5431332d71e58f593e165d8eb182deded286bc256b1342c337 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Combinatorics/DirectedGraph/Checks/Positive/PrefixTableUpdateReindex.lean","GRWTSK/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableUpdateReindex.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
