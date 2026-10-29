# Finite Cyclic Edge Certificate

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**29 observed declarations and anonymous commands**, 12 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCyclicEdgeCertificate.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `43e4146d642551f48744f76956a6317708f4a644`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/ProbabilityTheoryAndStochasticProcesses/FiniteCyclicEdgeCertificate.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [BinaryEdgeWord](declarations/binaryedgeword.md) | 26 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [CountedBinaryEdge](declarations/countedbinaryedge.md) | 29 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [countedBinaryEdgeTotal](declarations/countedbinaryedgetotal.md) | 33 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [binaryEdgePrefix](declarations/binaryedgeprefix.md) | 37 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [binaryEdgeSuffix](declarations/binaryedgesuffix.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [countedEdgeLabel](declarations/countededgelabel.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [cyclicSuccessor](declarations/cyclicsuccessor.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `structure` | [CountedCyclicEulerCertificate](declarations/countedcycliceulercertificate.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `abbrev` | [CyclicBinaryWord](declarations/cyclicbinaryword.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [cyclicBinaryBlock](declarations/cyclicbinaryblock.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [cyclicBinaryBlockCount](declarations/cyclicbinaryblockcount.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [CyclicCountRealizable](declarations/cycliccountrealizable.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [cyclicShift](declarations/cyclicshift.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [cyclicShift_zero](declarations/cyclicshift-zero.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [cyclicShift_succ](declarations/cyclicshift-succ.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [CountedCyclicEulerCertificate.word](declarations/countedcycliceulercertificate-word.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [CountedCyclicEulerCertificate.label_eq_word_shift](declarations/countedcycliceulercertificate-label-eq-word-shift.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [CountedCyclicEulerCertificate.block_eq_label](declarations/countedcycliceulercertificate-block-eq-label.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [countedCyclicOrder_label_fiber_equiv](declarations/countedcyclicorder-label-fiber-equiv.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [countedCyclicOrder_label_count](declarations/countedcyclicorder-label-count.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [cyclicBinaryBlock_compatible](declarations/cyclicbinaryblock-compatible.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [countedCyclicOrderOfCounts](declarations/countedcyclicorderofcounts.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [countedCyclicOrderOfCounts_label](declarations/countedcyclicorderofcounts-label.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [countedCyclicEulerCertificateOfCounts](declarations/countedcycliceulercertificateofcounts.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [cyclicCountRealizable_has_certificate](declarations/cycliccountrealizable-has-certificate.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [CountedCyclicEulerCertificate.word_count](declarations/countedcycliceulercertificate-word-count.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [CountedCyclicEulerCertificate.realizable](declarations/countedcycliceulercertificate-realizable.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [countedCyclicEulerCertificate_nonempty_iff](declarations/countedcycliceulercertificate-nonempty-iff.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [cyclicCountRealizable_iff_certificate](declarations/cycliccountrealizable-iff-certificate.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c10f84f960d9d7fbc865dd71d867da29d0cb9642d9da702790d8661ada69fe43 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCyclicEdgeCertificate.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
