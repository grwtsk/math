# Persistent Hash Map Public Zipper

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**15 observed declarations and anonymous commands**, 3 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentHashMap/Variant0cdde1452dae9325d61400f0b39003031e26feb254b06046a274c54b38125ae5.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ba3e08f65e0e1534492497b512690c6e4e63abb3`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PersistentHashMapPublicZipper.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [Zipper](declarations/zipper.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [Zipper.prependNode](declarations/zipper-prependnode.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [Zipper.step](declarations/zipper-step.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [instIterator](declarations/institerator.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [Node.measure](declarations/node-measure.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [Entry.measure](declarations/entry-measure.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [subarrayMeasure](declarations/subarraymeasure.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [Zipper.measure](declarations/zipper-measure.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [subarrayMeasure_cons](declarations/subarraymeasure-cons.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [measureEntries_eq_list_sum](declarations/measureentries-eq-list-sum.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [subarrayMeasure_toSubarray_eq](declarations/subarraymeasure-tosubarray-eq.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [instFinitenessRelation](declarations/instfinitenessrelation.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `instance` | [instFinite](declarations/instfinite.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `instance` | [instIteratorLoop](declarations/institeratorloop.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [iter](declarations/iter.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=eac4cfaa71a65d3cb0caef87b5e0d62108faa00415a00939e2b1d81d003ca347 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentHashMap/Variant0cdde1452dae9325d61400f0b39003031e26feb254b06046a274c54b38125ae5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
