# Substring Namespaced Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**63 observed declarations and anonymous commands**, 3 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Substring/Variantc220d5695c08785370bf52d448bcd68087444c8df859dd49e1aa7bab2d536948.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b9b6fc154a6f3a56b5df2c227aa6da7a4f74e1d9`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/ComputerScience/AlgorithmsInComputerScience/SubstringNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [ofSlice](declarations/ofslice.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [toSlice?](declarations/toslice.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [isEmpty](declarations/isempty.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [Internal.isEmptyImpl](declarations/internal-isemptyimpl.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [toString](declarations/tostring.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [Internal.toStringImpl](declarations/internal-tostringimpl.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [get](declarations/get.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [Internal.getImpl](declarations/internal-getimpl.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [next](declarations/next.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [lt_next](declarations/lt-next.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [prev](declarations/prev.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [Internal.prevImpl](declarations/internal-previmpl.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [nextn](declarations/nextn.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [prevn](declarations/prevn.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [front](declarations/front.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [Internal.frontImpl](declarations/internal-frontimpl.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [posOf](declarations/posof.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [drop](declarations/drop.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [Internal.dropImpl](declarations/internal-dropimpl.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [dropRight](declarations/dropright.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [take](declarations/take.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [takeRight](declarations/takeright.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [atEnd](declarations/atend.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [extract](declarations/extract.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [Internal.extractImpl](declarations/internal-extractimpl.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [splitOn](declarations/spliton.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [foldl](declarations/foldl.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [foldr](declarations/foldr.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [any](declarations/any.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [all](declarations/all.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [Internal.allImpl](declarations/internal-allimpl.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [contains](declarations/contains.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [takeWhileAux](declarations/takewhileaux.md) | 307 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [takeWhile](declarations/takewhile.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [Internal.takeWhileImpl](declarations/internal-takewhileimpl.md) | 326 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [dropWhile](declarations/dropwhile.md) | 335 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [takeRightWhileAux](declarations/takerightwhileaux.md) | 340 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [takeRightWhile](declarations/takerightwhile.md) | 355 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [dropRightWhile](declarations/droprightwhile.md) | 366 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [trimLeft](declarations/trimleft.md) | 377 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [trimRight](declarations/trimright.md) | 386 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [trim](declarations/trim.md) | 405 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [isNat](declarations/isnat.md) | 420 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [toNat?](declarations/tonat.md) | 445 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [repair](declarations/repair.md) | 456 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [beq](declarations/beq.md) | 465 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [Internal.beqImpl](declarations/internal-beqimpl.md) | 471 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `instance` | [hasBeq](declarations/hasbeq.md) | 474 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [sameAs](declarations/sameas.md) | 481 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [commonPrefix](declarations/commonprefix.md) | 489 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [commonSuffix](declarations/commonsuffix.md) | 509 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `def` | [dropPrefix?](declarations/dropprefix.md) | 533 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `def` | [dropSuffix?](declarations/dropsuffix.md) | 547 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [prev_zero](declarations/prev-zero.md) | 554 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [prevn_zero](declarations/prevn-zero.md) | 556 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `abbrev` | [Substring](declarations/substring.md) | 565 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `abbrev` | [Substring.bsize](declarations/substring-bsize.md) | 568 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `abbrev` | [Substring.toString](declarations/substring-tostring.md) | 571 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `abbrev` | [Substring.isEmpty](declarations/substring-isempty.md) | 574 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `abbrev` | [Substring.next](declarations/substring-next.md) | 577 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `abbrev` | [Substring.prev](declarations/substring-prev.md) | 580 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `abbrev` | [Substring.atEnd](declarations/substring-atend.md) | 583 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `abbrev` | [Substring.beq](declarations/substring-beq.md) | 586 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f8c5a1e3697591695c9db593406481831828e4d42df3e5b234c67675f3f1adb2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Substring/Variantc220d5695c08785370bf52d448bcd68087444c8df859dd49e1aa7bab2d536948.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
