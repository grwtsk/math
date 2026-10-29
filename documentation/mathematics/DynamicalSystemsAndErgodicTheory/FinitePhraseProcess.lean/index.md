# Finite Phrase Process

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**160 observed declarations and anonymous commands**, 75 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/DynamicalSystems/TransitionSystems/FinitePhraseProcess.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b17be9c50ad983254387730cd6e5ef95daf7f263`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/DynamicalSystemsAndErgodicTheory/FinitePhraseProcess.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [WeightedEdge](declarations/weightededge.md) | 32 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `inductive` | [Path](declarations/path.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [Path.cost_add_potential_le](declarations/path-cost-add-potential-le.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [Path.cost_le_entry_potential](declarations/path-cost-le-entry-potential.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [positive_loop_obstructs_potential](declarations/positive-loop-obstructs-potential.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `abbrev` | [Section](declarations/section.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [Section.restrict](declarations/section-restrict.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [Section.restrict_identity](declarations/section-restrict-identity.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [Section.restrict_composition](declarations/section-restrict-composition.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `structure` | [Cover](declarations/cover.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [Compatible](declarations/compatible.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [function_sections_unique_gluing](declarations/function-sections-unique-gluing.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `inductive` | [Participant](declarations/participant.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `inductive` | [Register](declarations/register.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `structure` | [Frame](declarations/frame.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [pivotFrame](declarations/pivotframe.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `inductive` | [ContextPoint](declarations/contextpoint.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `inductive` | [BindingValue](declarations/bindingvalue.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [pivotSection](declarations/pivotsection.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `inductive` | [PivotOpen](declarations/pivotopen.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [pivotPiece](declarations/pivotpiece.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [pivotCover](declarations/pivotcover.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [pivotLocalSection](declarations/pivotlocalsection.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [pivotLocalCompatible](declarations/pivotlocalcompatible.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [pivot_unique_gluing](declarations/pivot-unique-gluing.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `structure` | [FrameTransport](declarations/frametransport.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [FrameTransport.identity](declarations/frametransport-identity.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [FrameTransport.compose](declarations/frametransport-compose.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [frame_transport_identity](declarations/frame-transport-identity.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [frame_transport_composition](declarations/frame-transport-composition.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [frame_transport_cocycle](declarations/frame-transport-cocycle.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [bridgeFrame](declarations/bridgeframe.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [pivot_to_bridge_transport](declarations/pivot-to-bridge-transport.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `inductive` | [ClaimScope](declarations/claimscope.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `structure` | [PhraseCore](declarations/phrasecore.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `structure` | [EncodedCore](declarations/encodedcore.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [encode](declarations/encode.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [decode](declarations/decode.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [decode_encode](declarations/decode-encode.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [encode_decode](declarations/encode-decode.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `structure` | [FrameRoleObservations](declarations/frameroleobservations.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [observeFrameRole](declarations/observeframerole.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [FrameRoleEquivalent](declarations/frameroleequivalent.md) | 317 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [reconstruct](declarations/reconstruct.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [observe_reconstruct](declarations/observe-reconstruct.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [reconstruct_observe_equivalent](declarations/reconstruct-observe-equivalent.md) | 335 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [observation_separation](declarations/observation-separation.md) | 339 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `structure` | [SufficientRepresentation](declarations/sufficientrepresentation.md) | 343 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [factorToFrameRole](declarations/factortoframerole.md) | 349 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [frame_role_universal_factorization](declarations/frame-role-universal-factorization.md) | 353 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [frame_role_factor_unique_on_carrier](declarations/frame-role-factor-unique-on-carrier.md) | 359 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `structure` | [StructuralQuine](declarations/structuralquine.md) | 369 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `def` | [pilotStructuralQuine](declarations/pilotstructuralquine.md) | 379 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [pilot_quine_exact_carrier](declarations/pilot-quine-exact-carrier.md) | 388 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [pilot_quine_certificate_reconstruction](declarations/pilot-quine-certificate-reconstruction.md) | 393 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [pilot_quine_separation](declarations/pilot-quine-separation.md) | 398 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `def` | [pilotRepresentation](declarations/pilotrepresentation.md) | 403 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [pilot_quine_universal_factorization](declarations/pilot-quine-universal-factorization.md) | 408 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `inductive` | [BoundProposition](declarations/boundproposition.md) | 413 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `structure` | [PropositionCorrection](declarations/propositioncorrection.md) | 418 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `def` | [sourceExplanation](declarations/sourceexplanation.md) | 426 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `def` | [revisedExplanation](declarations/revisedexplanation.md) | 434 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `def` | [clarifyBound](declarations/clarifybound.md) | 442 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [clarify_source_is_revision](declarations/clarify-source-is-revision.md) | 448 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [source_and_revision_are_not_exact](declarations/source-and-revision-are-not-exact.md) | 451 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [source_and_revision_preserve_frame_role](declarations/source-and-revision-preserve-frame-role.md) | 454 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `def` | [boundCorrection](declarations/boundcorrection.md) | 458 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [bound_correction_changes_proposition](declarations/bound-correction-changes-proposition.md) | 466 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [clarify_transition_congruence](declarations/clarify-transition-congruence.md) | 470 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `def` | [inducedClarify](declarations/inducedclarify.md) | 475 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [induced_clarify_commutes](declarations/induced-clarify-commutes.md) | 478 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `inductive` | [ProcessOp](declarations/processop.md) | 482 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `def` | [interpret](declarations/interpret.md) | 491 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [interpreter_preserves_structure](declarations/interpreter-preserves-structure.md) | 499 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `inductive` | [TransportProcessOp](declarations/transportprocessop.md) | 509 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `def` | [lowerTransportOperation](declarations/lowertransportoperation.md) | 517 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `def` | [interpretTransport](declarations/interprettransport.md) | 524 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [transport_interpreter_correspondence](declarations/transport-interpreter-correspondence.md) | 527 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `structure` | [ExecutableProcessState](declarations/executableprocessstate.md) | 538 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `def` | [initialProcessState](declarations/initialprocessstate.md) | 545 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `inductive` | [ExecutableProcessOp](declarations/executableprocessop.md) | 551 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `def` | [executeProcess](declarations/executeprocess.md) | 559 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [execute_quote_self_core_materializes_description](declarations/execute-quote-self-core-materializes-description.md) | 574 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [execute_compose_materializes_order](declarations/execute-compose-materializes-order.md) | 579 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [execute_project_materializes_observations](declarations/execute-project-materializes-observations.md) | 587 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `inductive` | [PilotPhrase](declarations/pilotphrase.md) | 593 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `def` | [pilotText](declarations/pilottext.md) | 602 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `def` | [pilotRelation](declarations/pilotrelation.md) | 611 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `def` | [pilotContinuationOpen](declarations/pilotcontinuationopen.md) | 619 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `def` | [pilotSectionFor](declarations/pilotsectionfor.md) | 623 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `def` | [pilotLocalSectionFor](declarations/pilotlocalsectionfor.md) | 631 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [pilot_local_compatible](declarations/pilot-local-compatible.md) | 635 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [pilot_phrase_unique_gluing](declarations/pilot-phrase-unique-gluing.md) | 640 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `structure` | [LampComposition](declarations/lampcomposition-source-edition-2.md) | 648 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `def` | [lampComposition](declarations/lampcomposition.md) | 658 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `def` | [LampComposition.Valid](declarations/lampcomposition-valid.md) | 667 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [lamp_composition_application](declarations/lamp-composition-application.md) | 679 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [lamp_composition_preserves_shared_bindings](declarations/lamp-composition-preserves-shared-bindings.md) | 682 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `theorem` | [lamp_composition_retains_ordered_distinct_actions](declarations/lamp-composition-retains-ordered-distinct-actions.md) | 697 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `theorem` | [lamp_pair_unique_local_gluing](declarations/lamp-pair-unique-local-gluing.md) | 704 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `inductive` | [LampPoint](declarations/lamppoint.md) | 721 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `inductive` | [LampOpen](declarations/lampopen.md) | 729 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `def` | [lampPiece](declarations/lamppiece.md) | 734 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `theorem` | [lampCover](declarations/lampcover.md) | 738 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `def` | [lampPairSection](declarations/lamppairsection.md) | 747 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `def` | [lampPairLocalSection](declarations/lamppairlocalsection.md) | 755 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `theorem` | [lamp_pair_local_compatible](declarations/lamp-pair-local-compatible.md) | 758 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `theorem` | [lamp_pair_joint_unique_gluing](declarations/lamp-pair-joint-unique-gluing.md) | 762 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `theorem` | [lamp_pair_joint_gluing_retains_actions](declarations/lamp-pair-joint-gluing-retains-actions.md) | 770 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `def` | [phraseCoreFor](declarations/phrasecorefor.md) | 775 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `def` | [executedLampComposition](declarations/executedlampcomposition.md) | 785 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `theorem` | [lamp_process_execution_is_substantive](declarations/lamp-process-execution-is-substantive.md) | 790 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `theorem` | [quoted_process_execution_is_substantive](declarations/quoted-process-execution-is-substantive.md) | 797 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `inductive` | [LampRealization](declarations/lamprealization.md) | 803 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `def` | [lampRealizationText](declarations/lamprealizationtext.md) | 809 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `def` | [lampRealizationSpeaker](declarations/lamprealizationspeaker.md) | 814 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `def` | [lampRealizationSymbols](declarations/lamprealizationsymbols.md) | 818 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `inductive` | [LampChoiceState](declarations/lampchoicestate.md) | 823 | `BLOCKED_NATIVE_ADMISSION` |
| 119 | `inductive` | [LampChoiceEdge](declarations/lampchoiceedge-source-edition-2.md) | 828 | `BLOCKED_NATIVE_ADMISSION` |
| 120 | `def` | [lampChoiceEdge](declarations/lampchoiceedge.md) | 833 | `BLOCKED_NATIVE_ADMISSION` |
| 121 | `def` | [lampEdgeRealization](declarations/lampedgerealization.md) | 837 | `BLOCKED_NATIVE_ADMISSION` |
| 122 | `def` | [lampRealizationAdmitted](declarations/lamprealizationadmitted.md) | 841 | `BLOCKED_NATIVE_ADMISSION` |
| 123 | `def` | [lampChoicePotential](declarations/lampchoicepotential.md) | 844 | `BLOCKED_NATIVE_ADMISSION` |
| 124 | `theorem` | [lamp_choice_potential_decreases](declarations/lamp-choice-potential-decreases.md) | 848 | `BLOCKED_NATIVE_ADMISSION` |
| 125 | `theorem` | [lamp_choice_path](declarations/lamp-choice-path.md) | 853 | `BLOCKED_NATIVE_ADMISSION` |
| 126 | `theorem` | [lamp_choice_cost_realizes_symbols](declarations/lamp-choice-cost-realizes-symbols.md) | 863 | `BLOCKED_NATIVE_ADMISSION` |
| 127 | `theorem` | [lamp_realization_scalar_lengths](declarations/lamp-realization-scalar-lengths.md) | 867 | `BLOCKED_NATIVE_ADMISSION` |
| 128 | `theorem` | [two_legal_lamp_realizations](declarations/two-legal-lamp-realizations.md) | 871 | `BLOCKED_NATIVE_ADMISSION` |
| 129 | `theorem` | [lamp_realization_class_envelope](declarations/lamp-realization-class-envelope.md) | 877 | `BLOCKED_NATIVE_ADMISSION` |
| 130 | `theorem` | [speaker_shift_rejected](declarations/speaker-shift-rejected.md) | 885 | `BLOCKED_NATIVE_ADMISSION` |
| 131 | `def` | [pilotSymbols](declarations/pilotsymbols.md) | 892 | `BLOCKED_NATIVE_ADMISSION` |
| 132 | `theorem` | [pilot_text_scalar_length](declarations/pilot-text-scalar-length.md) | 900 | `BLOCKED_NATIVE_ADMISSION` |
| 133 | `theorem` | [pilot_symbol_floor](declarations/pilot-symbol-floor.md) | 904 | `BLOCKED_NATIVE_ADMISSION` |
| 134 | `def` | [dynamicalUnits](declarations/dynamicalunits.md) | 907 | `BLOCKED_NATIVE_ADMISSION` |
| 135 | `theorem` | [one_symbol_unit](declarations/one-symbol-unit.md) | 909 | `BLOCKED_NATIVE_ADMISSION` |
| 136 | `theorem` | [anchor_unit](declarations/anchor-unit.md) | 912 | `BLOCKED_NATIVE_ADMISSION` |
| 137 | `def` | [advanceProcess](declarations/advanceprocess.md) | 915 | `BLOCKED_NATIVE_ADMISSION` |
| 138 | `theorem` | [pivot_advances_one_unit](declarations/pivot-advances-one-unit.md) | 918 | `BLOCKED_NATIVE_ADMISSION` |
| 139 | `inductive` | [PilotState](declarations/pilotstate.md) | 922 | `BLOCKED_NATIVE_ADMISSION` |
| 140 | `inductive` | [PilotEdge](declarations/pilotedge.md) | 936 | `BLOCKED_NATIVE_ADMISSION` |
| 141 | `def` | [pilotEdge](declarations/pilotedge-source-edition-2.md) | 945 | `BLOCKED_NATIVE_ADMISSION` |
| 142 | `def` | [potential](declarations/potential.md) | 953 | `BLOCKED_NATIVE_ADMISSION` |
| 143 | `theorem` | [pilot_potential_decreases](declarations/pilot-potential-decreases.md) | 966 | `BLOCKED_NATIVE_ADMISSION` |
| 144 | `inductive` | [ConcreteTransition](declarations/concretetransition.md) | 971 | `BLOCKED_NATIVE_ADMISSION` |
| 145 | `def` | [abstractTransition](declarations/abstracttransition.md) | 980 | `BLOCKED_NATIVE_ADMISSION` |
| 146 | `def` | [transitionPhrase](declarations/transitionphrase.md) | 988 | `BLOCKED_NATIVE_ADMISSION` |
| 147 | `def` | [assemblySeparatorSymbols](declarations/assemblyseparatorsymbols.md) | 996 | `BLOCKED_NATIVE_ADMISSION` |
| 148 | `theorem` | [concrete_transition_coverage](declarations/concrete-transition-coverage.md) | 1000 | `BLOCKED_NATIVE_ADMISSION` |
| 149 | `theorem` | [concrete_transition_cost_coverage](declarations/concrete-transition-cost-coverage.md) | 1004 | `BLOCKED_NATIVE_ADMISSION` |
| 150 | `theorem` | [pivotPath](declarations/pivotpath.md) | 1009 | `BLOCKED_NATIVE_ADMISSION` |
| 151 | `theorem` | [contemplativePath](declarations/contemplativepath.md) | 1014 | `BLOCKED_NATIVE_ADMISSION` |
| 152 | `theorem` | [sourceExplanationPath](declarations/sourceexplanationpath.md) | 1020 | `BLOCKED_NATIVE_ADMISSION` |
| 153 | `theorem` | [formalPath](declarations/formalpath.md) | 1026 | `BLOCKED_NATIVE_ADMISSION` |
| 154 | `theorem` | [transitionPath](declarations/transitionpath.md) | 1031 | `BLOCKED_NATIVE_ADMISSION` |
| 155 | `theorem` | [pivot_stopping_envelope](declarations/pivot-stopping-envelope.md) | 1037 | `BLOCKED_NATIVE_ADMISSION` |
| 156 | `theorem` | [contemplative_stopping_envelope](declarations/contemplative-stopping-envelope.md) | 1040 | `BLOCKED_NATIVE_ADMISSION` |
| 157 | `theorem` | [source_explanation_stopping_envelope](declarations/source-explanation-stopping-envelope.md) | 1043 | `BLOCKED_NATIVE_ADMISSION` |
| 158 | `theorem` | [formal_stopping_envelope](declarations/formal-stopping-envelope.md) | 1046 | `BLOCKED_NATIVE_ADMISSION` |
| 159 | `theorem` | [transitional_pair_stopping_envelope](declarations/transitional-pair-stopping-envelope.md) | 1049 | `BLOCKED_NATIVE_ADMISSION` |
| 160 | `theorem` | [pilot_contract](declarations/pilot-contract.md) | 1052 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3223f3bc89590a54113298fd5935ee176dbd773650903fad1f938bf13bfe4cfe -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/FinitePhraseProcess.lean","GRWTSK/DynamicalSystems/TransitionSystems/FinitePhraseProcess.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
