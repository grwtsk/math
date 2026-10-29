# Basic Basic Namespaced Public Shrink

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../../complete-source-index.md) · [Full source](source.md)

**116 observed declarations and anonymous commands**, 55 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantbd04596e0fb1156d5876bd65d64d5ed8fec1cd8b473e357e7e7a333bd1f628ea.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `218f5af72498bb841935cbde7cddbbfacde49f6b`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicShrink.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `opaque` | [Internal.idOpaque](declarations/internal-idopaque.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [Shrink](declarations/shrink.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [Shrink.deflate](declarations/shrink-deflate.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [Shrink.inflate](declarations/shrink-inflate.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [Shrink.deflate_inflate](declarations/shrink-deflate-inflate.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [Shrink.inflate_deflate](declarations/shrink-inflate-deflate.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [Shrink.inflate_inj](declarations/shrink-inflate-inj.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [Shrink.deflate_inj](declarations/shrink-deflate-inj.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `structure` | [IterM](declarations/iterm.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `structure` | [Iter](declarations/iter.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [Iter.toIterM](declarations/iter-toiterm.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [IterM.toIter](declarations/iterm-toiter.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [Iter.toIter_toIterM](declarations/iter-toiter-toiterm.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [Iter.toIter_comp_toIterM](declarations/iter-toiter-comp-toiterm.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [Iter.toIterM_toIter](declarations/iter-toiterm-toiter.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [Iter.toIterM_comp_toIter](declarations/iter-toiterm-comp-toiter.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `inductive` | [IterStep](declarations/iterstep.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [IterStep.successor](declarations/iterstep-successor.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [IterStep.successor_yield](declarations/iterstep-successor-yield.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [IterStep.successor_skip](declarations/iterstep-successor-skip.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [IterStep.successor_done](declarations/iterstep-successor-done.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [IterStep.mapIterator](declarations/iterstep-mapiterator.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [IterStep.mapIterator_yield](declarations/iterstep-mapiterator-yield.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [IterStep.mapIterator_skip](declarations/iterstep-mapiterator-skip.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [IterStep.mapIterator_done](declarations/iterstep-mapiterator-done.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [IterStep.mapIterator_mapIterator](declarations/iterstep-mapiterator-mapiterator.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [IterStep.mapIterator_comp](declarations/iterstep-mapiterator-comp.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [IterStep.mapIterator_id](declarations/iterstep-mapiterator-id-source-edition-2.md) | 309 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [IterStep.mapIterator_id'](declarations/iterstep-mapiterator-id.md) | 314 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `abbrev` | [PlausibleIterStep](declarations/plausibleiterstep.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [PlausibleIterStep.yield](declarations/plausibleiterstep-yield.md) | 331 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [PlausibleIterStep.skip](declarations/plausibleiterstep-skip.md) | 340 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [PlausibleIterStep.done](declarations/plausibleiterstep-done.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `abbrev` | [PlausibleIterStep.casesOn](declarations/plausibleiterstep-caseson.md) | 356 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `class` | [Iterator](declarations/iterator.md) | 374 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `abbrev` | [IterM.mk'](declarations/iterm-mk.md) | 395 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [Iterators.toIterM](declarations/iterators-toiterm.md) | 399 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [IterM.mk_internalState](declarations/iterm-mk-internalstate.md) | 401 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [IterM.internalState_mk](declarations/iterm-internalstate-mk.md) | 406 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [Iter.internalState_toIterM](declarations/iter-internalstate-toiterm.md) | 411 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [Iter.toIterM_mk](declarations/iter-toiterm-mk.md) | 415 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [IterM.toIter_mk](declarations/iterm-toiter-mk.md) | 420 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `abbrev` | [IterM.IsPlausibleStep](declarations/iterm-isplausiblestep.md) | 428 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `abbrev` | [IterM.Step](declarations/iterm-step-source-edition-2.md) | 436 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [IterM.step](declarations/iterm-step.md) | 446 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [IterM.step_eq](declarations/iterm-step-eq.md) | 450 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [IterM.step_mk](declarations/iterm-step-mk.md) | 455 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [IterM.IsPlausibleOutput](declarations/iterm-isplausibleoutput.md) | 464 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [IterM.IsPlausibleSuccessorOf](declarations/iterm-isplausiblesuccessorof.md) | 473 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [IterM.IsPlausibleSkipSuccessorOf](declarations/iterm-isplausibleskipsuccessorof.md) | 482 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `abbrev` | [Iter.IsPlausibleStep](declarations/iter-isplausiblestep.md) | 494 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `inductive` | [IterM.IsPlausibleIndirectOutput](declarations/iterm-isplausibleindirectoutput.md) | 502 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `inductive` | [IterM.IsPlausibleIndirectSuccessorOf](declarations/iterm-isplausibleindirectsuccessorof.md) | 515 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [IterM.IsPlausibleIndirectSuccessorOf.trans](declarations/iterm-isplausibleindirectsuccessorof-trans.md) | 523 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [IterM.IsPlausibleIndirectSuccessorOf.single](declarations/iterm-isplausibleindirectsuccessorof-single.md) | 531 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [IterM.IsPlausibleIndirectOutput.trans](declarations/iterm-isplausibleindirectoutput-trans.md) | 537 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `abbrev` | [Iter.Step](declarations/iter-step-source-edition-2.md) | 549 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `def` | [Iter.Step.toMonadic](declarations/iter-step-tomonadic.md) | 556 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `def` | [IterM.Step.toPure](declarations/iterm-step-topure.md) | 564 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [IterM.Step.val_toPure](declarations/iterm-step-val-topure.md) | 569 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [IterM.Step.toPure_yield](declarations/iterm-step-topure-yield.md) | 575 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [IterM.Step.toPure_skip](declarations/iterm-step-topure-skip.md) | 580 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [IterM.Step.toPure_done](declarations/iterm-step-topure-done.md) | 585 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `def` | [Iter.IsPlausibleOutput](declarations/iter-isplausibleoutput.md) | 594 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [Iter.isPlausibleOutput_iff_exists](declarations/iter-isplausibleoutput-iff-exists.md) | 598 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `def` | [Iter.IsPlausibleSuccessorOf](declarations/iter-isplausiblesuccessorof.md) | 613 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [Iter.isPlausibleSuccessorOf_eq_invImage](declarations/iter-isplausiblesuccessorof-eq-invimage.md) | 617 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [Iter.isPlausibleSuccessorOf_iff_exists](declarations/iter-isplausiblesuccessorof-iff-exists.md) | 621 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [Iter.IsPlausibleStep.isPlausibleSuccessor_of_yield](declarations/iter-isplausiblestep-isplausiblesuccessor-of-yield.md) | 633 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [Iter.IsPlausibleStep.isPlausibleSuccessor_of_skip](declarations/iter-isplausiblestep-isplausiblesuccessor-of-skip.md) | 638 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `inductive` | [Iter.IsPlausibleIndirectOutput](declarations/iter-isplausibleindirectoutput.md) | 647 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [Iter.isPlausibleIndirectOutput_iff_isPlausibleIndirectOutput_toIterM](declarations/iter-isplausibleindirectoutput-iff-isplausibleindirectoutput-toiterm.md) | 656 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `inductive` | [Iter.IsPlausibleIndirectSuccessorOf](declarations/iter-isplausibleindirectsuccessorof.md) | 681 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [Iter.isPlausibleIndirectSuccessor_iff_isPlausibleIndirectSuccessor_toIterM](declarations/iter-isplausibleindirectsuccessor-iff-isplausibleindirectsuccessor-toite.md) | 689 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [Iter.IsPlausibleIndirectSuccessorOf.trans](declarations/iter-isplausibleindirectsuccessorof-trans.md) | 704 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [Iter.IsPlausibleIndirectOutput.trans](declarations/iter-isplausibleindirectoutput-trans.md) | 711 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `def` | [Iter.IsPlausibleSkipSuccessorOf](declarations/iter-isplausibleskipsuccessorof.md) | 722 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `def` | [Iter.step](declarations/iter-step.md) | 732 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [Iter.step_eq](declarations/iter-step-eq.md) | 735 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `class` | [Iterators.Finite](declarations/iterators-finite.md) | 750 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [Iterators.Finite.wf_of_id](declarations/iterators-finite-wf-of-id.md) | 754 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `structure` | [IterM.TerminationMeasures.Finite](declarations/iterm-terminationmeasures-finite.md) | 762 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `def` | [IterM.TerminationMeasures.Finite.Rel](declarations/iterm-terminationmeasures-finite-rel.md) | 776 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `instance` | [IterM.TerminationMeasures.instWellFoundedRelationFinite](declarations/iterm-terminationmeasures-instwellfoundedrelationfinite.md) | 781 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `def` | [IterM.finitelyManySteps](declarations/iterm-finitelymanysteps-source-edition-2.md) | 792 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `def` | [IterM.finitelyManySteps!](declarations/iterm-finitelymanysteps.md) | 801 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [IterM.TerminationMeasures.Finite.rel_of_yield](declarations/iterm-terminationmeasures-finite-rel-of-yield.md) | 809 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [IterM.TerminationMeasures.Finite.rel_of_skip](declarations/iterm-terminationmeasures-finite-rel-of-skip.md) | 816 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [IterM.TerminationMeasures.Finite.rel_trans](declarations/iterm-terminationmeasures-finite-rel-trans.md) | 822 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `macro_rules` | [(anonymous)](declarations/macro-rules-source-edition-4.md) | 828 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `def` | [Iter.finitelyManySteps](declarations/iter-finitelymanysteps.md) | 835 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `def` | [Iter.finitelyManySteps!](declarations/iter-finitelymanysteps-source-edition-2.md) | 840 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [Iter.TerminationMeasures.Finite.rel_of_yield](declarations/iter-terminationmeasures-finite-rel-of-yield.md) | 848 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `theorem` | [Iter.TerminationMeasures.Finite.rel_of_skip](declarations/iter-terminationmeasures-finite-rel-of-skip.md) | 855 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `macro_rules` | [(anonymous)](declarations/macro-rules.md) | 861 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `theorem` | [IterM.isPlausibleSuccessorOf_of_yield](declarations/iterm-isplausiblesuccessorof-of-yield.md) | 867 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [IterM.isPlausibleSuccessorOf_of_skip](declarations/iterm-isplausiblesuccessorof-of-skip.md) | 873 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `class` | [Iterators.Productive](declarations/iterators-productive.md) | 890 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `structure` | [IterM.TerminationMeasures.Productive](declarations/iterm-terminationmeasures-productive.md) | 898 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `def` | [IterM.TerminationMeasures.Productive.Rel](declarations/iterm-terminationmeasures-productive-rel.md) | 912 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `theorem` | [IterM.TerminationMeasures.Finite.Rel.of_productive](declarations/iterm-terminationmeasures-finite-rel-of-productive.md) | 917 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `instance` | [IterM.TerminationMeasures.instWellFoundedRelationProductive](declarations/iterm-terminationmeasures-instwellfoundedrelationproductive.md) | 935 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `def` | [IterM.finitelyManySkips](declarations/iterm-finitelymanyskips-source-edition-2.md) | 946 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `def` | [IterM.finitelyManySkips!](declarations/iterm-finitelymanyskips.md) | 956 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `theorem` | [IterM.TerminationMeasures.Productive.rel_of_skip](declarations/iterm-terminationmeasures-productive-rel-of-skip.md) | 964 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `macro_rules` | [(anonymous)](declarations/macro-rules-source-edition-3.md) | 970 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `def` | [Iter.finitelyManySkips](declarations/iter-finitelymanyskips.md) | 976 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `def` | [Iter.finitelyManySkips!](declarations/iter-finitelymanyskips-source-edition-2.md) | 981 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `theorem` | [Iter.TerminationMeasures.Productive.rel_of_skip](declarations/iter-terminationmeasures-productive-rel-of-skip.md) | 989 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `macro_rules` | [(anonymous)](declarations/macro-rules-source-edition-2.md) | 995 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `instance` | [Iterators.instProductiveOfFinte](declarations/iterators-instproductiveoffinte.md) | 1000 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `class` | [LawfulDeterministicIterator](declarations/lawfuldeterministiciterator.md) | 1021 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `structure` | [FinitenessRelation](declarations/finitenessrelation.md) | 1034 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `theorem` | [Finite.of_finitenessRelation](declarations/finite-of-finitenessrelation.md) | 1045 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `structure` | [ProductivenessRelation](declarations/productivenessrelation.md) | 1060 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `theorem` | [Productive.of_productivenessRelation](declarations/productive-of-productivenessrelation.md) | 1071 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8b3633851ce376c29cc79522258f827e1e00db7405875b7c735427b2c3b66d0c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantbd04596e0fb1156d5876bd65d64d5ed8fec1cd8b473e357e7e7a333bd1f628ea.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
