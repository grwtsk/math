# Iterator Namespaced Public Iterator

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**39 observed declarations and anonymous commands**, 3 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variante750598ff6acefe4ea4c0b8b99e479a0a1b1497e1a80a7f3275496fdcca4e2c6.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8c20a62e7d1ff9b82cde2096d3695f21f1e2fa7f`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/IteratorNamespacedPublicIterator.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [Iterator](declarations/iterator.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [mkIterator](declarations/mkiterator.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `abbrev` | [iter](declarations/iter.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [(anonymous)](declarations/instance.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [Iterator.sizeOf_eq](declarations/iterator-sizeof-eq.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [toString](declarations/tostring.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [remainingBytes](declarations/remainingbytes.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [pos](declarations/pos.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [curr](declarations/curr.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [next](declarations/next.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [prev](declarations/prev.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [atEnd](declarations/atend.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [hasNext](declarations/hasnext.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [hasPrev](declarations/hasprev.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [curr'](declarations/curr-source-edition-2.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [next'](declarations/next-source-edition-2.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [toEnd](declarations/toend.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [extract](declarations/extract.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [forward](declarations/forward.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [remainingToString](declarations/remainingtostring.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [nextn](declarations/nextn.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [prevn](declarations/prevn.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [sizeOf_next_lt_of_hasNext](declarations/sizeof-next-lt-of-hasnext.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `macro_rules` | [(anonymous)](declarations/macro-rules-source-edition-2.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [sizeOf_next_lt_of_atEnd](declarations/sizeof-next-lt-of-atend.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `macro_rules` | [(anonymous)](declarations/macro-rules.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [setCurr](declarations/setcurr.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [find](declarations/find.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [foldUntil](declarations/folduntil.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [toLegacyIterator](declarations/tolegacyiterator.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `abbrev` | [String.Iterator](declarations/string-iterator.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `abbrev` | [String.iter](declarations/string-iter.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `abbrev` | [String.mkIterator](declarations/string-mkiterator.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `abbrev` | [String.Iterator.curr](declarations/string-iterator-curr.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `abbrev` | [String.Iterator.next](declarations/string-iterator-next.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `abbrev` | [String.Iterator.hasNext](declarations/string-iterator-hasnext.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `abbrev` | [Substring.toIterator](declarations/substring-toiterator.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=29f6023ceab70708d48f9ca70b1b16cc2f64e6ba5f5349eb2f56586aef57810a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variante750598ff6acefe4ea4c0b8b99e479a0a1b1497e1a80a7f3275496fdcca4e2c6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
