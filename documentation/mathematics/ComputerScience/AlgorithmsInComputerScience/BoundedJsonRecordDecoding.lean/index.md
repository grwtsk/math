# Bounded Json Record Decoding

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**87 observed declarations and anonymous commands**, 28 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BoundedJsonRecordDecoding.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ea38b8da556b6da6bed48c2a03264ae686ff1b23`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/ComputerScience/AlgorithmsInComputerScience/BoundedJsonRecordDecoding.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [Value](declarations/value-source-edition-2.md) | 13 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [Value.array](declarations/value-array.md) | 24 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [Value.object](declarations/value-object.md) | 28 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `abbrev` | [Raw](declarations/raw.md) | 32 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [scalar](declarations/scalar.md) | 34 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [whitespace](declarations/whitespace.md) | 36 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [skip](declarations/skip.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [hexDigit](declarations/hexdigit.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [hex4](declarations/hex4.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [utf8](declarations/utf8.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [escaped](declarations/escaped.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [stringBody](declarations/stringbody.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [stringToken](declarations/stringtoken.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [digits](declarations/digits.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [naturalToken](declarations/naturaltoken.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [value](declarations/value.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [arrayItems](declarations/arrayitems.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [objectItems](declarations/objectitems.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [decode](declarations/decode.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [asString](declarations/asstring.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [asNat](declarations/asnat.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [asBool](declarations/asbool.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [asArray](declarations/asarray.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [asObject](declarations/asobject.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [field](declarations/field.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [getString](declarations/getstring.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [getNat](declarations/getnat.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [getArray](declarations/getarray.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [allSome](declarations/allsome.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [area](declarations/area.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [byteHex](declarations/bytehex.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [objects](declarations/objects.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [insertBy](declarations/insertby.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [sortBy](declarations/sortby.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [readSet](declarations/readset.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [readSets](declarations/readsets.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [outputs](declarations/outputs.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [occurrences](declarations/occurrences.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [planBindings](declarations/planbindings.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [targetLe](declarations/targetle.md) | 328 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [expectedOutputs](declarations/expectedoutputs.md) | 333 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [actionCosts](declarations/actioncosts.md) | 356 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [shardIndices](declarations/shardindices.md) | 360 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [shardTotals](declarations/shardtotals.md) | 364 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [shardProfile](declarations/shardprofile.md) | 368 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [exactKeys](declarations/exactkeys.md) | 372 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [lowerHex](declarations/lowerhex.md) | 378 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [certificateGrammar](declarations/certificategrammar.md) | 382 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [planInventories](declarations/planinventories.md) | 401 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [inventoryMatches](declarations/inventorymatches.md) | 407 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [inventoryCheck](declarations/inventorycheck.md) | 423 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `def` | [retentionCheck](declarations/retentioncheck.md) | 434 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `structure` | [ReplayData](declarations/replaydata.md) | 449 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `def` | [contextCheck](declarations/contextcheck.md) | 465 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `def` | [project](declarations/project.md) | 478 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `def` | [ReplayData.accepts](declarations/replaydata-accepts.md) | 494 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `def` | [guardCheck](declarations/guardcheck.md) | 498 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `def` | [rawCheck](declarations/rawcheck.md) | 503 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [rawCheck_spec](declarations/rawcheck-spec.md) | 508 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [rawCheck_projection_exact](declarations/rawcheck-projection-exact.md) | 532 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [rawCheck_literal_decode](declarations/rawcheck-literal-decode.md) | 539 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [rawCheck_inventory_exact](declarations/rawcheck-inventory-exact.md) | 549 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [decoded_reification_exact](declarations/decoded-reification-exact.md) | 559 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [decoded_objects_exact](declarations/decoded-objects-exact.md) | 563 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [decoded_readSets_exact](declarations/decoded-readsets-exact.md) | 567 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [decoded_occurrences_exact](declarations/decoded-occurrences-exact.md) | 571 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [decoded_outputs_exact](declarations/decoded-outputs-exact.md) | 575 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [natural_is_not_boolean](declarations/natural-is-not-boolean.md) | 579 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [same_raw_unique_decode](declarations/same-raw-unique-decode.md) | 581 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [array_order_and_multiplicity](declarations/array-order-and-multiplicity.md) | 585 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [object_order_and_multiplicity](declarations/object-order-and-multiplicity.md) | 590 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [string_codepoints_exact](declarations/string-codepoints-exact.md) | 596 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `def` | [ascii](declarations/ascii.md) | 598 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [duplicate_decoded_key_rejected](declarations/duplicate-decoded-key-rejected.md) | 600 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [array_trailing_comma_rejected](declarations/array-trailing-comma-rejected.md) | 603 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [object_trailing_comma_rejected](declarations/object-trailing-comma-rejected.md) | 605 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [leading_zero_rejected](declarations/leading-zero-rejected.md) | 607 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [u64_overflow_rejected](declarations/u64-overflow-rejected.md) | 609 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [u64_maximum_decodes](declarations/u64-maximum-decodes.md) | 611 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [boolean_natural_distinct](declarations/boolean-natural-distinct.md) | 614 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [utf8_overlong_rejected](declarations/utf8-overlong-rejected.md) | 616 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [utf8_surrogate_rejected](declarations/utf8-surrogate-rejected.md) | 618 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [lone_escape_surrogate_rejected](declarations/lone-escape-surrogate-rejected.md) | 620 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [surrogate_pair_decodes](declarations/surrogate-pair-decodes.md) | 622 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [utf8_non_bmp_decodes](declarations/utf8-non-bmp-decodes.md) | 625 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [unicode_spelling_not_normalized](declarations/unicode-spelling-not-normalized.md) | 628 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [decoded_array_order_multiplicity](declarations/decoded-array-order-multiplicity.md) | 631 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=28aff537a9341c16899ad7e1ae8fdade1f61995f8837502422657b21b823fe80 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BoundedJsonRecordDecoding.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
