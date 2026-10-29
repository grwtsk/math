# Iterator Public Iterator

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**39 observed declarations and anonymous commands**, 3 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variant9470d2b5756b418930d1a91eb3ea7f01656f511b6c89eb8aefd27a2fa937d77f.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `593ae97d4c9ee64e42da480fee3f414a1300980f`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/IteratorPublicIterator.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [Iterator](declarations/iterator.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [mkIterator](declarations/mkiterator.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `abbrev` | [iter](declarations/iter.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [(anonymous)](declarations/instance.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [Iterator.sizeOf_eq](declarations/iterator-sizeof-eq.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [toString](declarations/tostring.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [remainingBytes](declarations/remainingbytes.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [pos](declarations/pos.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [curr](declarations/curr.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [next](declarations/next-source-edition-2.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [prev](declarations/prev.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [atEnd](declarations/atend.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [hasNext](declarations/hasnext.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [hasPrev](declarations/hasprev.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [curr'](declarations/curr-source-edition-2.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [next'](declarations/next.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [toEnd](declarations/toend.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [extract](declarations/extract.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [forward](declarations/forward.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [remainingToString](declarations/remainingtostring.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [nextn](declarations/nextn.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [prevn](declarations/prevn.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [sizeOf_next_lt_of_hasNext](declarations/sizeof-next-lt-of-hasnext.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `macro_rules` | [(anonymous)](declarations/macro-rules.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [sizeOf_next_lt_of_atEnd](declarations/sizeof-next-lt-of-atend.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `macro_rules` | [(anonymous)](declarations/macro-rules-source-edition-2.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [setCurr](declarations/setcurr.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [find](declarations/find.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [foldUntil](declarations/folduntil.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [toLegacyIterator](declarations/tolegacyiterator.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `abbrev` | [String.Iterator](declarations/string-iterator.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `abbrev` | [String.iter](declarations/string-iter.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `abbrev` | [String.mkIterator](declarations/string-mkiterator.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `abbrev` | [String.Iterator.curr](declarations/string-iterator-curr.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `abbrev` | [String.Iterator.next](declarations/string-iterator-next.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `abbrev` | [String.Iterator.hasNext](declarations/string-iterator-hasnext.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `abbrev` | [Substring.toIterator](declarations/substring-toiterator.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7d695757e36f0a09073e388e791c008922154ad52e9dc44367b0a3531b18f7d5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variant9470d2b5756b418930d1a91eb3ea7f01656f511b6c89eb8aefd27a2fa937d77f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
