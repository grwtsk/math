# Substring Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**63 observed declarations and anonymous commands**, 3 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Substring/Variant6b9dc9e76926d0a89be53929c80d92aa8e8805ea6138954d35f374ce1200bc9d.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2f2d9a9dfa756452888fa648e91b6c5c8b54c82f`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/ComputerScience/AlgorithmsInComputerScience/SubstringPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [ofSlice](declarations/ofslice.md) | 27 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [toSlice?](declarations/toslice.md) | 36 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [isEmpty](declarations/isempty.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [Internal.isEmptyImpl](declarations/internal-isemptyimpl.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [toString](declarations/tostring.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [Internal.toStringImpl](declarations/internal-tostringimpl.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [get](declarations/get.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [Internal.getImpl](declarations/internal-getimpl.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [next](declarations/next.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [lt_next](declarations/lt-next.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [prev](declarations/prev.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [Internal.prevImpl](declarations/internal-previmpl.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [nextn](declarations/nextn.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [prevn](declarations/prevn.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [front](declarations/front.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [Internal.frontImpl](declarations/internal-frontimpl.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [posOf](declarations/posof.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [drop](declarations/drop.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [Internal.dropImpl](declarations/internal-dropimpl.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [dropRight](declarations/dropright.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [take](declarations/take.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [takeRight](declarations/takeright.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [atEnd](declarations/atend.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [extract](declarations/extract.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [Internal.extractImpl](declarations/internal-extractimpl.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [splitOn](declarations/spliton.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [foldl](declarations/foldl.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [foldr](declarations/foldr.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [any](declarations/any.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [all](declarations/all.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [Internal.allImpl](declarations/internal-allimpl.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [contains](declarations/contains.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [takeWhileAux](declarations/takewhileaux.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [takeWhile](declarations/takewhile.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [Internal.takeWhileImpl](declarations/internal-takewhileimpl.md) | 318 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [dropWhile](declarations/dropwhile.md) | 327 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [takeRightWhileAux](declarations/takerightwhileaux.md) | 332 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [takeRightWhile](declarations/takerightwhile.md) | 347 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [dropRightWhile](declarations/droprightwhile.md) | 358 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [trimLeft](declarations/trimleft.md) | 369 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [trimRight](declarations/trimright.md) | 378 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [trim](declarations/trim.md) | 397 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [isNat](declarations/isnat.md) | 412 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [toNat?](declarations/tonat.md) | 437 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [repair](declarations/repair.md) | 448 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [beq](declarations/beq.md) | 457 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [Internal.beqImpl](declarations/internal-beqimpl.md) | 463 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `instance` | [hasBeq](declarations/hasbeq.md) | 466 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [sameAs](declarations/sameas.md) | 473 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [commonPrefix](declarations/commonprefix.md) | 481 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [commonSuffix](declarations/commonsuffix.md) | 501 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `def` | [dropPrefix?](declarations/dropprefix.md) | 525 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `def` | [dropSuffix?](declarations/dropsuffix.md) | 539 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [prev_zero](declarations/prev-zero.md) | 546 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [prevn_zero](declarations/prevn-zero.md) | 548 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `abbrev` | [Substring](declarations/substring.md) | 557 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `abbrev` | [Substring.bsize](declarations/substring-bsize.md) | 560 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `abbrev` | [Substring.toString](declarations/substring-tostring.md) | 563 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `abbrev` | [Substring.isEmpty](declarations/substring-isempty.md) | 566 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `abbrev` | [Substring.next](declarations/substring-next.md) | 569 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `abbrev` | [Substring.prev](declarations/substring-prev.md) | 572 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `abbrev` | [Substring.atEnd](declarations/substring-atend.md) | 575 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `abbrev` | [Substring.beq](declarations/substring-beq.md) | 578 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=22ce795d2ac84c69ccdb01459a1642191ff8ff4fadd04e21593c39aa82a0d98c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Substring/Variant6b9dc9e76926d0a89be53929c80d92aa8e8805ea6138954d35f374ce1200bc9d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
