# Loop Namespaced Public Iterator Loop

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**64 observed declarations and anonymous commands**, 2 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Loop/Varianta0a433df087cf4b914ba4a8a6e99ff1de25a16bbcd0c45090c964b50288f0b8a.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `676e7f3761eb5ede32612fb091ed3b0b557ddc86`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LoopNamespacedPublicIteratorLoop.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [IteratorLoop.rel](declarations/iteratorloop-rel.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [IteratorLoop.WellFounded](declarations/iteratorloop-wellfounded.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `class` | [IteratorLoop](declarations/iteratorloop.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `structure` | [IteratorLoop.WithWF](declarations/iteratorloop-withwf.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `instance` | [IteratorLoop.WithWF.instWellFoundedRelation](declarations/iteratorloop-withwf-instwellfoundedrelation.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [IterM.DefaultConsumers.forIn'](declarations/iterm-defaultconsumers-forin.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [IterM.DefaultConsumers.forIn'.wf](declarations/iterm-defaultconsumers-forin-wf.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [IteratorLoop.defaultImplementation](declarations/iteratorloop-defaultimplementation.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `class` | [LawfulIteratorLoop](declarations/lawfuliteratorloop.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `instance` | [instLawfulIteratorLoopDefaultImplementation](declarations/instlawfuliteratorloopdefaultimplementation.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [IteratorLoop.wellFounded_of_finite](declarations/iteratorloop-wellfounded-of-finite.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [IteratorLoop.wellFounded_of_productive](declarations/iteratorloop-wellfounded-of-productive.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [IteratorLoop.finiteForIn'](declarations/iteratorloop-finiteforin.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [IterM.instForIn'](declarations/iterm-instforin.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `instance` | [IterM.instForInOfIteratorLoop](declarations/iterm-instforinofiteratorloop.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [IterM.Partial.instForIn'](declarations/iterm-partial-instforin.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [IterM.Total.instForIn'](declarations/iterm-total-instforin.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `instance` | [IterM.Partial.instForInOfIteratorLoop](declarations/iterm-partial-instforinofiteratorloop.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `instance` | [(anonymous)](declarations/instance.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `instance` | [IterM.instForMOfIteratorLoop](declarations/iterm-instformofiteratorloop.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `instance` | [IterM.Partial.instForMOfItreratorLoop](declarations/iterm-partial-instformofitreratorloop.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [IterM.foldM](declarations/iterm-foldm.md) | 301 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [IterM.Partial.foldM](declarations/iterm-partial-foldm.md) | 317 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [IterM.Total.foldM](declarations/iterm-total-foldm.md) | 333 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [IterM.fold](declarations/iterm-fold.md) | 345 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [IterM.Partial.fold](declarations/iterm-partial-fold.md) | 359 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [IterM.Total.fold](declarations/iterm-total-fold.md) | 374 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [IterM.drain](declarations/iterm-drain.md) | 384 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [IterM.Partial.drain](declarations/iterm-partial-drain.md) | 396 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [IterM.Total.drain](declarations/iterm-total-drain.md) | 408 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [IterM.anyM](declarations/iterm-anym.md) | 421 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [IterM.Partial.anyM](declarations/iterm-partial-anym.md) | 441 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [IterM.Total.anyM](declarations/iterm-total-anym.md) | 458 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [IterM.any](declarations/iterm-any.md) | 472 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [IterM.Partial.any](declarations/iterm-partial-any.md) | 488 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [IterM.Total.any](declarations/iterm-total-any.md) | 504 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [IterM.allM](declarations/iterm-allm.md) | 518 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [IterM.Partial.allM](declarations/iterm-partial-allm.md) | 537 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [IterM.Total.allM](declarations/iterm-total-allm.md) | 554 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [IterM.all](declarations/iterm-all.md) | 571 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [IterM.Partial.all](declarations/iterm-partial-all.md) | 586 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [IterM.Total.all](declarations/iterm-total-all.md) | 602 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [IterM.findSomeM?](declarations/iterm-findsomem.md) | 635 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [IterM.Partial.findSomeM?](declarations/iterm-partial-findsomem.md) | 670 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [IterM.Total.findSomeM?](declarations/iterm-total-findsomem.md) | 703 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [IterM.findSome?](declarations/iterm-findsome.md) | 723 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [IterM.Partial.findSome?](declarations/iterm-partial-findsome.md) | 742 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [IterM.Total.findSome?](declarations/iterm-total-findsome.md) | 762 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [IterM.findM?](declarations/iterm-findm.md) | 795 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [IterM.Partial.findM?](declarations/iterm-partial-findm.md) | 827 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `def` | [IterM.Total.findM?](declarations/iterm-total-findm.md) | 860 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `def` | [IterM.find?](declarations/iterm-find.md) | 880 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `def` | [IterM.Partial.find?](declarations/iterm-partial-find.md) | 899 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `def` | [IterM.Total.find?](declarations/iterm-total-find.md) | 919 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `def` | [IterM.first?](declarations/iterm-first.md) | 938 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `def` | [IterM.Total.first?](declarations/iterm-total-first.md) | 958 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `def` | [IterM.isEmpty](declarations/iterm-isempty.md) | 973 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `def` | [IterM.Total.isEmpty](declarations/iterm-total-isempty.md) | 989 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `def` | [IterM.length](declarations/iterm-length.md) | 1004 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `def` | [IterM.count](declarations/iterm-count.md) | 1009 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `def` | [IterM.size](declarations/iterm-size.md) | 1012 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `def` | [IterM.Partial.count](declarations/iterm-partial-count.md) | 1022 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `def` | [IterM.Partial.size](declarations/iterm-partial-size.md) | 1034 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ce5c585df9b06a2ae25d20eb3bbfd6511b24660f91607a18a2d379cef283775c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Loop/Varianta0a433df087cf4b914ba4a8a6e99ff1de25a16bbcd0c45090c964b50288f0b8a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
