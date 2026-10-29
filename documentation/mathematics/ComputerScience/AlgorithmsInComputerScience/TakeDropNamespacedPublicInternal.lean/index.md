# Take Drop Namespaced Public Internal

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**55 observed declarations and anonymous commands**, 0 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeDrop/Variant74ee768031fff0390b02ef81656db687f5e37445b9990ca991deea90570250eb.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `672e13424af56fdc89c2ae3f619f831cdbf7b6f9`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/ComputerScience/AlgorithmsInComputerScience/TakeDropNamespacedPublicInternal.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [drop](declarations/drop.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [Internal.dropImpl](declarations/internal-dropimpl.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [dropEnd](declarations/dropend.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [dropRight](declarations/dropright.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [Slice.dropRight](declarations/slice-dropright.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [Internal.dropRightImpl](declarations/internal-droprightimpl.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [take](declarations/take.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [takeEnd](declarations/takeend.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [takeRight](declarations/takeright.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [Slice.takeRight](declarations/slice-takeright.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [takeWhile](declarations/takewhile.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [dropWhile](declarations/dropwhile.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [takeEndWhile](declarations/takeendwhile.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [takeRightWhile](declarations/takerightwhile.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [Slice.takeRightWhile](declarations/slice-takerightwhile.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [dropEndWhile](declarations/dropendwhile.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [dropRightWhile](declarations/droprightwhile.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [Slice.dropRightWhile](declarations/slice-droprightwhile.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [skipPrefix?](declarations/skipprefix.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [skipPrefixWhile](declarations/skipprefixwhile.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [all](declarations/all.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [revAll](declarations/revall.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [Pos.skip?](declarations/pos-skip.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [Pos.skipWhile](declarations/pos-skipwhile.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [startsWith](declarations/startswith.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [isPrefixOf](declarations/isprefixof.md) | 327 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [Internal.isPrefixOfImpl](declarations/internal-isprefixofimpl.md) | 331 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [endsWith](declarations/endswith.md) | 346 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [skipSuffix?](declarations/skipsuffix.md) | 355 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [skipSuffixWhile](declarations/skipsuffixwhile.md) | 362 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [Pos.revSkip?](declarations/pos-revskip.md) | 372 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [Pos.revSkipWhile](declarations/pos-revskipwhile.md) | 379 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [trimAsciiEnd](declarations/trimasciiend.md) | 395 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [trimRight](declarations/trimright.md) | 399 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [Slice.trimRight](declarations/slice-trimright.md) | 403 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [trimAsciiStart](declarations/trimasciistart.md) | 419 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [trimLeft](declarations/trimleft.md) | 423 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [Slice.trimLeft](declarations/slice-trimleft.md) | 427 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [trimAscii](declarations/trimascii.md) | 442 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [trim](declarations/trim.md) | 446 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [Slice.trim](declarations/slice-trim.md) | 450 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [Internal.trimImpl](declarations/internal-trimimpl.md) | 454 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [Pos.Raw.nextWhile](declarations/pos-raw-nextwhile.md) | 467 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `abbrev` | [nextWhile](declarations/nextwhile.md) | 471 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [Internal.nextWhileImpl](declarations/internal-nextwhileimpl.md) | 475 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [Pos.Raw.nextUntil](declarations/pos-raw-nextuntil.md) | 488 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [nextUntil](declarations/nextuntil.md) | 492 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [dropPrefix?](declarations/dropprefix-source-edition-2.md) | 512 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [dropSuffix?](declarations/dropsuffix.md) | 532 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [dropPrefix](declarations/dropprefix.md) | 552 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [stripPrefix](declarations/stripprefix.md) | 556 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `def` | [Slice.stripPrefix](declarations/slice-stripprefix.md) | 560 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `def` | [dropSuffix](declarations/dropsuffix-source-edition-2.md) | 580 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `def` | [stripSuffix](declarations/stripsuffix.md) | 584 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `def` | [Slice.stripSuffix](declarations/slice-stripsuffix.md) | 588 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=10396dc2bd9cda5cd91ecb280a8aa1a98e35eb53284cdee0a14fc8388d28901a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeDrop/Variant74ee768031fff0390b02ef81656db687f5e37445b9990ca991deea90570250eb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
