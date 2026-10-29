# Shared Binary Matrix Stream Namespaced Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**117 observed declarations and anonymous commands**, 37 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SharedBinaryMatrixStream/Variantadf14c06210058540baf7f05044a2f63b711544fd66da35b9c262db350b03362.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ea599239c79a6aa763990712170c5de2d866e056`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/ComputerScience/AlgorithmsInComputerScience/SharedBinaryMatrixStreamNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [cacheLineBytes](declarations/cachelinebytes.md) | 37 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [streamHeaderBytes](declarations/streamheaderbytes.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [channelStrideBytes](declarations/channelstridebytes.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [eventWordCount](declarations/eventwordcount.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [eventAbiVersion](declarations/eventabiversion.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `structure` | [ByteRange](declarations/byterange.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [ByteRange.endOffset](declarations/byterange-endoffset.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [ByteRange.Aligned](declarations/byterange-aligned.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [ByteRange.InBounds](declarations/byterange-inbounds.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [ByteRange.Disjoint](declarations/byterange-disjoint.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [channelRange](declarations/channelrange.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [streamBufferBytes](declarations/streambufferbytes.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [channelRange_aligned](declarations/channelrange-aligned.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [channelRange_inBounds](declarations/channelrange-inbounds.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [channelRange_pairwiseDisjoint](declarations/channelrange-pairwisedisjoint.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `structure` | [LayoutDescriptor](declarations/layoutdescriptor.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [LayoutDescriptor.Valid](declarations/layoutdescriptor-valid.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [predictiveLayoutGenerator](declarations/predictivelayoutgenerator.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [predictiveLayoutGenerator_sound](declarations/predictivelayoutgenerator-sound.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `structure` | [BinaryMatrixFrame](declarations/binarymatrixframe.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [predictedBit](declarations/predictedbit.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [BinaryMatrixFrame.PredictedBy](declarations/binarymatrixframe-predictedby.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [predictiveFrameGenerator](declarations/predictiveframegenerator.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [predictiveFrameGenerator_sound](declarations/predictiveframegenerator-sound.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `structure` | [MatrixCellEdit](declarations/matrixcelledit.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [MatrixCellEdit.ValidFor](declarations/matrixcelledit-validfor.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [verifyCellEdit](declarations/verifycelledit.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [verifyCellEdit_sound](declarations/verifycelledit-sound.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [BinaryMatrixFrame.applyCellEdit](declarations/binarymatrixframe-applycelledit.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [BinaryMatrixFrame.applyCellEdit_predictedBy](declarations/binarymatrixframe-applycelledit-predictedby.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `structure` | [RevisionedPublication](declarations/revisionedpublication.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [RevisionedPublication.current](declarations/revisionedpublication-current.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [RevisionedPublication.current_revision](declarations/revisionedpublication-current-revision.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `structure` | [UserEvent](declarations/userevent.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `abbrev` | [EventWords](declarations/eventwords.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [SignedInt32](declarations/signedint32.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [EventWords.Signed32](declarations/eventwords-signed32.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [encodeEvent](declarations/encodeevent.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [decodeEvent](declarations/decodeevent.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [decodeEvent_encodeEvent](declarations/decodeevent-encodeevent.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [UserEvent.Valid](declarations/userevent-valid.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `instance` | [(anonymous)](declarations/instance.md) | 303 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [verifyEvent](declarations/verifyevent.md) | 307 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [verifyEvent_sound](declarations/verifyevent-sound.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [fiberTensionColorContourSchema](declarations/fibertensioncolorcontourschema.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [maxFiberTension](declarations/maxfibertension.md) | 329 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `structure` | [HostFiber](declarations/hostfiber.md) | 335 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [HostFiber.Valid](declarations/hostfiber-valid.md) | 341 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 345 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `structure` | [HostFiberNetwork](declarations/hostfibernetwork.md) | 354 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `def` | [HostFiberNetwork.Valid](declarations/hostfibernetwork-valid.md) | 357 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 361 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `abbrev` | [FiberRank](declarations/fiberrank.md) | 375 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `def` | [HostFiberNetwork.fiberRank](declarations/hostfibernetwork-fiberrank.md) | 377 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [HostFiberNetwork.fiberRank_lt_of_tension_lt](declarations/hostfibernetwork-fiberrank-lt-of-tension-lt.md) | 385 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [HostFiberNetwork.fiberRank_lt_of_target_lt](declarations/hostfibernetwork-fiberrank-lt-of-target-lt.md) | 395 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [HostFiberNetwork.fiberRank_lt_of_slot_lt](declarations/hostfibernetwork-fiberrank-lt-of-slot-lt.md) | 408 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `def` | [HostFiberNetwork.outgoingSlots](declarations/hostfibernetwork-outgoingslots.md) | 422 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `def` | [HostFiberNetwork.selectOutgoingSlot](declarations/hostfibernetwork-selectoutgoingslot.md) | 430 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [HostFiberNetwork.selectOutgoingSlot_enabled](declarations/hostfibernetwork-selectoutgoingslot-enabled.md) | 436 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [HostFiberNetwork.candidate_rank_le_selected](declarations/hostfibernetwork-candidate-rank-le-selected.md) | 452 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [HostFiberNetwork.candidate_tension_le_selected](declarations/hostfibernetwork-candidate-tension-le-selected.md) | 467 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [HostFiberNetwork.selected_target_le_candidate_of_tension_eq](declarations/hostfibernetwork-selected-target-le-candidate-of-tension-eq.md) | 482 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [HostFiberNetwork.selected_slot_le_candidate_of_ties](declarations/hostfibernetwork-selected-slot-le-candidate-of-ties.md) | 500 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [HostFiberNetwork.selectOutgoingSlot_none_iff](declarations/hostfibernetwork-selectoutgoingslot-none-iff.md) | 519 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `def` | [cieXyzScale](declarations/ciexyzscale.md) | 537 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `def` | [cieXyzChannelMax](declarations/ciexyzchannelmax.md) | 538 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `structure` | [CieXyzFixed](declarations/ciexyzfixed.md) | 542 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `def` | [CieXyzFixed.Bounded](declarations/ciexyzfixed-bounded.md) | 548 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `instance` | [(anonymous)](declarations/instance-source-edition-8.md) | 553 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `def` | [CieXyzFixed.toRational](declarations/ciexyzfixed-torational.md) | 558 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [CieXyzFixed.toRational_nonnegative](declarations/ciexyzfixed-torational-nonnegative.md) | 564 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [CieXyzFixed.toRational_le_channelCap](declarations/ciexyzfixed-torational-le-channelcap.md) | 572 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `inductive` | [CieXyzChannel](declarations/ciexyzchannel.md) | 590 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `def` | [CieXyzFixed.channelValue](declarations/ciexyzfixed-channelvalue.md) | 596 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `def` | [CieXyzFixed.replaceChannel](declarations/ciexyzfixed-replacechannel.md) | 602 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `structure` | [CieXyzState](declarations/ciexyzstate.md) | 612 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `structure` | [CieXyzProposal](declarations/ciexyzproposal.md) | 620 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `def` | [CieXyzProposal.ValidFor](declarations/ciexyzproposal-validfor.md) | 625 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 629 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `def` | [verifyCieXyzProposal](declarations/verifyciexyzproposal.md) | 634 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [verifyCieXyzProposal_sound](declarations/verifyciexyzproposal-sound.md) | 639 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `def` | [CieXyzState.applyProposal](declarations/ciexyzstate-applyproposal.md) | 645 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [CieXyzState.applyProposal_revision](declarations/ciexyzstate-applyproposal-revision.md) | 651 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [CieXyzState.applyProposal_color](declarations/ciexyzstate-applyproposal-color.md) | 657 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [CieXyzState.applyProposal_bounded](declarations/ciexyzstate-applyproposal-bounded.md) | 663 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `structure` | [CieXyzEdit](declarations/ciexyzedit.md) | 672 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `def` | [CieXyzEdit.ValidFor](declarations/ciexyzedit-validfor.md) | 679 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `instance` | [(anonymous)](declarations/instance-source-edition-7.md) | 686 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `def` | [verifyCieXyzEdit](declarations/verifyciexyzedit.md) | 692 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [verifyCieXyzEdit_sound](declarations/verifyciexyzedit-sound.md) | 697 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `def` | [CieXyzState.applyEdit](declarations/ciexyzstate-applyedit.md) | 704 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [CieXyzState.applyEdit_revision](declarations/ciexyzstate-applyedit-revision.md) | 710 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `theorem` | [CieXyzState.applyEdit_selectedChannel](declarations/ciexyzstate-applyedit-selectedchannel.md) | 716 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [CieXyzState.applyEdit_otherChannel](declarations/ciexyzstate-applyedit-otherchannel.md) | 723 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [CieXyzState.applyEdit_bounded](declarations/ciexyzstate-applyedit-bounded.md) | 735 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `structure` | [CieXyzDiscrepancy](declarations/ciexyzdiscrepancy.md) | 757 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `def` | [cieXyzSignedDelta](declarations/ciexyzsigneddelta.md) | 763 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `def` | [CieXyzDiscrepancy.between](declarations/ciexyzdiscrepancy-between.md) | 766 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `def` | [discrepancyChannelSupport](declarations/discrepancychannelsupport.md) | 772 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `def` | [CieXyzDiscrepancy.supportCount](declarations/ciexyzdiscrepancy-supportcount.md) | 775 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `def` | [CieXyzDiscrepancy.l1Mass](declarations/ciexyzdiscrepancy-l1mass.md) | 781 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `def` | [CieXyzDiscrepancy.linfMass](declarations/ciexyzdiscrepancy-linfmass.md) | 787 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `theorem` | [CieXyzDiscrepancy.supportCount_le_three](declarations/ciexyzdiscrepancy-supportcount-le-three.md) | 793 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `theorem` | [CieXyzDiscrepancy.linfMass_le_l1Mass](declarations/ciexyzdiscrepancy-linfmass-le-l1mass.md) | 800 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `theorem` | [CieXyzDiscrepancy.l1Mass_eq_zero_iff](declarations/ciexyzdiscrepancy-l1mass-eq-zero-iff.md) | 807 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `structure` | [CieXyzStageMeasure](declarations/ciexyzstagemeasure.md) | 832 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `def` | [measureCieXyzStage](declarations/measureciexyzstage.md) | 837 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `theorem` | [measureCieXyzStage_missingStageCount_le_one](declarations/measureciexyzstage-missingstagecount-le-one.md) | 847 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `theorem` | [measureCieXyzStage_none](declarations/measureciexyzstage-none.md) | 853 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `theorem` | [measureCieXyzStage_some](declarations/measureciexyzstage-some.md) | 860 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `structure` | [FiberTensionColorContourContract](declarations/fibertensioncolorcontourcontract.md) | 870 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `structure` | [Contract](declarations/contract.md) | 882 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `def` | [ProvesAnalyticContraction](declarations/provesanalyticcontraction.md) | 893 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `theorem` | [does_not_prove_analyticContraction](declarations/does-not-prove-analyticcontraction.md) | 900 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bea5711e975d8e593e789a22bd6f4545a8c471555a8b148c7f24c224cb2e90ad -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SharedBinaryMatrixStream/Variantadf14c06210058540baf7f05044a2f63b711544fd66da35b9c262db350b03362.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
