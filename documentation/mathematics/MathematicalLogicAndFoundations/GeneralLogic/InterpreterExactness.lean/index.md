# Interpreter Exactness

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**64 observed declarations and anonymous commands**, 23 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/InterpreterExactness/Variant3962676004a15556f18e058a6a3e950c7dbf0bfaf7f97bb64e4f6d07e51256f5.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3389b484cbd6d2871358b66e90d8ba2f20b5728c`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MathematicalLogicAndFoundations/GeneralLogic/InterpreterExactness.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [interpreterExactnessTheoryIdentifier](declarations/interpreterexactnesstheoryidentifier.md) | 18 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [interpreterExactnessTheoryVersion](declarations/interpreterexactnesstheoryversion.md) | 21 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `structure` | [QuotientCompatibleInterpreter](declarations/quotientcompatibleinterpreter.md) | 24 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [domainSetoid](declarations/domainsetoid.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [inducedQuotientInterpreter](declarations/inducedquotientinterpreter.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [totalQuotientInterpreter](declarations/totalquotientinterpreter.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [kernelSetoid](declarations/kernelsetoid.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [kernelProjection](declarations/kernelprojection.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [RealizedImage](declarations/realizedimage.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [kernelToRealizedImage](declarations/kerneltorealizedimage.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `structure` | [UndefinedDefect](declarations/undefineddefect.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `structure` | [CollisionDefect](declarations/collisiondefect.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `structure` | [OmissionDefect](declarations/omissiondefect.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [Total](declarations/total.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [AuthorizedKernelAgreement](declarations/authorizedkernelagreement.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [Coverage](declarations/coverage.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [LevelExact](declarations/levelexact.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `structure` | [SemanticallyExact](declarations/semanticallyexact.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [ObservationalDefectWithin](declarations/observationaldefectwithin.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [observational_defect_compose](declarations/observational-defect-compose.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [observational_defect_zero](declarations/observational-defect-zero.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `structure` | [AssociativeFragmentExecution](declarations/associativefragmentexecution.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [StepSummarySound](declarations/stepsummarysound.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [SequentialSummarySound](declarations/sequentialsummarysound.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [sound_step_summaries_compose](declarations/sound-step-summaries-compose.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `structure` | [EffectiveInverse](declarations/effectiveinverse.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `structure` | [EffectiveExact](declarations/effectiveexact.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `structure` | [ReflectivelyCertifiedExact](declarations/reflectivelycertifiedexact.md) | 331 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `structure` | [CanonicalRepresentativeSection](declarations/canonicalrepresentativesection.md) | 352 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [quotientEquivalence](declarations/quotientequivalence.md) | 364 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [representativeReadback](declarations/representativereadback.md) | 376 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [representative_readback_projects_to_inverse_class](declarations/representative-readback-projects-to-inverse-class.md) | 386 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [CapacityParity](declarations/capacityparity.md) | 399 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [quotient_interpreter_well_defined](declarations/quotient-interpreter-well-defined.md) | 407 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [canonical_behavioral_factorization](declarations/canonical-behavioral-factorization.md) | 423 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [kernel_to_realized_image_bijective](declarations/kernel-to-realized-image-bijective.md) | 435 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [authorized_kernel_agreement_iff_injective](declarations/authorized-kernel-agreement-iff-injective.md) | 454 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [coverage_iff_omission_defect_empty](declarations/coverage-iff-omission-defect-empty.md) | 477 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [totality_iff_undefined_defect_empty](declarations/totality-iff-undefined-defect-empty.md) | 496 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [kernel_agreement_iff_collision_defect_empty](declarations/kernel-agreement-iff-collision-defect-empty.md) | 508 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [level_exact_iff_defects_empty](declarations/level-exact-iff-defects-empty.md) | 531 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [level_exact_implies_capacity_parity](declarations/level-exact-implies-capacity-parity.md) | 551 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [ExactThrough](declarations/exactthrough.md) | 579 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [ExactAtAllLevels](declarations/exactatalllevels.md) | 583 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `structure` | [BoundedExactnessCertificate](declarations/boundedexactnesscertificate.md) | 587 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [finite_prefix_exactness_does_not_imply_all_levels](declarations/finite-prefix-exactness-does-not-imply-all-levels.md) | 593 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [equalitySetoid](declarations/equalitysetoid.md) | 606 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `instance` | [boolSemanticIdentity](declarations/boolsemanticidentity.md) | 612 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [booleanNegationInterpreter](declarations/booleannegationinterpreter.md) | 614 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [booleanNegationLevelExact](declarations/booleannegationlevelexact.md) | 626 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [booleanIdentitySpecification](declarations/booleanidentityspecification.md) | 640 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [level_exact_does_not_determine_designated_semantics](declarations/level-exact-does-not-determine-designated-semantics.md) | 649 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `instance` | [natIdentity](declarations/natidentity.md) | 666 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `def` | [successorInterpreter](declarations/successorinterpreter.md) | 668 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `def` | [identityInterpreter](declarations/identityinterpreter.md) | 679 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [identity_interpreter_effectively_exact](declarations/identity-interpreter-effectively-exact.md) | 690 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [capacity_parity_does_not_imply_level_exact](declarations/capacity-parity-does-not-imply-level-exact.md) | 720 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [successor_injective_not_surjective](declarations/successor-injective-not-surjective.md) | 730 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [halving_surjective_not_injective](declarations/halving-surjective-not-injective.md) | 739 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [even_domain_bijective_but_partial](declarations/even-domain-bijective-but-partial.md) | 754 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [constant_map_neither](declarations/constant-map-neither.md) | 779 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `def` | [partialPredecessor](declarations/partialpredecessor.md) | 794 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `def` | [bottomTotalize](declarations/bottomtotalize.md) | 799 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [bottom_totalization_does_not_remove_undefinedness](declarations/bottom-totalization-does-not-remove-undefinedness.md) | 804 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0af8964ac1443e9ba0c5eb2d9826e9389a702e498b64551a5c56434c711d4fe7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/InterpreterExactness/Variant3962676004a15556f18e058a6a3e950c7dbf0bfaf7f97bb64e4f6d07e51256f5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
