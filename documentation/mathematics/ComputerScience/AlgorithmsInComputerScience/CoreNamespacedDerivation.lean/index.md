# Core Namespaced Derivation

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**36 observed declarations and anonymous commands**, 6 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Variant864c26db417779373f9311d21a848b804633ad50af310b9b390e84e1292c70cc.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `340423edfb15ab76a0417cbbaa6896ea350f5f7a`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/ComputerScience/AlgorithmsInComputerScience/CoreNamespacedDerivation.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [TranslationLineage](declarations/translationlineage.md) | 31 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [rootArtifact](declarations/rootartifact.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [leafArtifacts](declarations/leafartifacts.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `structure` | [AssumptionTranslation](declarations/assumptiontranslation.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `structure` | [AssumptionDischarge](declarations/assumptiondischarge.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `structure` | [MappedTargetAssumption](declarations/mappedtargetassumption.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `structure` | [IntroducedTargetAssumption](declarations/introducedtargetassumption.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `inductive` | [TargetAssumptionClassification](declarations/targetassumptionclassification.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `structure` | [TargetAssumptionPartition](declarations/targetassumptionpartition.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `inductive` | [ExistenceEvidence](declarations/existenceevidence.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `structure` | [ScopeTranslation](declarations/scopetranslation.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `structure` | [Translation](declarations/translation.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [comp](declarations/comp.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `structure` | [CertifiedTheorem](declarations/certifiedtheorem.md) | 317 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [proof](declarations/proof.md) | 331 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `structure` | [CertifiedTheoremAggregate](declarations/certifiedtheoremaggregate.md) | 343 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `structure` | [PreservesTruth](declarations/preservestruth.md) | 353 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `structure` | [ReflectsTruth](declarations/reflectstruth.md) | 371 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `structure` | [TranslationEquivalence](declarations/translationequivalence.md) | 389 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `structure` | [PreservationTheorem](declarations/preservationtheorem.md) | 404 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `structure` | [ReflectionTheorem](declarations/reflectiontheorem.md) | 419 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `structure` | [ObjectFaithfulnessOnScope](declarations/objectfaithfulnessonscope.md) | 438 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [mapObject_injective](declarations/mapobject-injective.md) | 463 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `inductive` | [InformationLossAssessment](declarations/informationlossassessment.md) | 494 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [IsVerifiedLossless](declarations/isverifiedlossless.md) | 520 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `structure` | [EquivalenceWitness](declarations/equivalencewitness.md) | 540 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [preservation_comp](declarations/preservation-comp.md) | 557 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [reflection_comp](declarations/reflection-comp.md) | 591 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [equivalence_comp](declarations/equivalence-comp.md) | 624 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [transport_theorem](declarations/transport-theorem.md) | 655 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `structure` | [AggregateTransportApplication](declarations/aggregatetransportapplication.md) | 689 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [reflect_theorem](declarations/reflect-theorem.md) | 712 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `structure` | [ReflectionApplication](declarations/reflectionapplication.md) | 747 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [transport_reflect_roundtrip](declarations/transport-reflect-roundtrip.md) | 774 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `structure` | [RoundTripEvidence](declarations/roundtripevidence.md) | 796 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [property_transfer_under_equivalence](declarations/property-transfer-under-equivalence.md) | 818 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6fd3f618ff78765fb4aac3d4ced418575715e2ac803998f6089c6779879e056a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Variant864c26db417779373f9311d21a848b804633ad50af310b9b390e84e1292c70cc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
