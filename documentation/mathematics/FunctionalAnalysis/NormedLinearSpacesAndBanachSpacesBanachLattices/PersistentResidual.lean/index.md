# Persistent Residual

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**78 observed declarations and anonymous commands**, 27 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentResidual/Variant02feb8f23af3423ea668d5d732a612bb7169b421e4809a1c3680bce047633a9d.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `aef33b3529f6513f9a08045056f8b648c60d9ac5`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/PersistentResidual.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [PRDIdentifier](declarations/prdidentifier.md) | 20 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [ReferenceDimensions](declarations/referencedimensions.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `structure` | [StateIndex](declarations/stateindex.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `structure` | [ResidualIndex](declarations/residualindex.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `structure` | [InputIndex](declarations/inputindex.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `structure` | [OutputIndex](declarations/outputindex.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `structure` | [ConstraintIndex](declarations/constraintindex.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `structure` | [ParameterIndex](declarations/parameterindex.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `inductive` | [ResidualKind](declarations/residualkind.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `inductive` | [PrincipalModelRole](declarations/principalmodelrole.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `inductive` | [PrincipalCarrier](declarations/principalcarrier.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [prd01_principalRolesDistinct](declarations/prd01-principalrolesdistinct.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `structure` | [PrincipalRoleTypeSeparation](declarations/principalroletypeseparation.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [PrincipalRoleTypeSeparation.state_ne_input](declarations/principalroletypeseparation-state-ne-input.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `structure` | [ProbabilityKernelSamplingPrimitive](declarations/probabilitykernelsamplingprimitive.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `structure` | [ActivationFreeBarycentricRetraction](declarations/activationfreebarycentricretraction.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [ActivationFreeBarycentricRetraction.normalize](declarations/activationfreebarycentricretraction-normalize.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [ActivationFreeBarycentricRetraction.idempotent](declarations/activationfreebarycentricretraction-idempotent.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [ActivationFreeBarycentricRetraction.fixed_iff_zeroBarycenter](declarations/activationfreebarycentricretraction-fixed-iff-zerobarycenter.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `inductive` | [ActivationFreeExpr](declarations/activationfreeexpr.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [ActivationFreeExpr.evaluate](declarations/activationfreeexpr-evaluate.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `structure` | [ActivationFreeNormalForm](declarations/activationfreenormalform.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `structure` | [PersistentResidualModel](declarations/persistentresidualmodel.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [prd01_modelStateInputDistinct](declarations/prd01-modelstateinputdistinct.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [prd02_activationFreeIdentityNormalForm](declarations/prd02-activationfreeidentitynormalform.md) | 317 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [persistentResidualModel_stateUpdate_formula](declarations/persistentresidualmodel-stateupdate-formula.md) | 344 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [persistentResidualModel_memoryMixedDifference_eq](declarations/persistentresidualmodel-memorymixeddifference-eq.md) | 366 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [prd04_modelResidualStateNonlinearity](declarations/prd04-modelresidualstatenonlinearity.md) | 393 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [ActiveAt](declarations/activeat.md) | 417 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `structure` | [AffinePersistentSystem](declarations/affinepersistentsystem.md) | 426 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [affineTrajectory](declarations/affinetrajectory.md) | 433 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [affineClosedForm](declarations/affineclosedform.md) | 441 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [apply_succ_sub](declarations/apply-succ-sub.md) | 448 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [prd03_affinePersistentSystemIsAffine](declarations/prd03-affinepersistentsystemisaffine.md) | 461 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [affineTrajectory_affineCombination](declarations/affinetrajectory-affinecombination.md) | 502 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `structure` | [AffinePersistentReadout](declarations/affinepersistentreadout.md) | 524 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [affinePersistentOutput](declarations/affinepersistentoutput.md) | 529 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [prd03_affinePersistentInputOutputMap](declarations/prd03-affinepersistentinputoutputmap.md) | 538 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [residualMemoryTrajectory](declarations/residualmemorytrajectory.md) | 562 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [prd06_typedResidualPersistence](declarations/prd06-typedresidualpersistence.md) | 571 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [bilinearResidualTransition](declarations/bilinearresidualtransition.md) | 605 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [bilinearMixedDifference_eq](declarations/bilinearmixeddifference-eq.md) | 613 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [prd04_genuineResidualStateNonlinearity](declarations/prd04-genuineresidualstatenonlinearity.md) | 629 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [scalarResidualEnergyStep](declarations/scalarresidualenergystep.md) | 646 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [alternatingResiduals_cancel](declarations/alternatingresiduals-cancel.md) | 650 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [prd07_residualEnergyNonCancellation](declarations/prd07-residualenergynoncancellation.md) | 654 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `structure` | [PredictionBootstrap](declarations/predictionbootstrap.md) | 664 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [prd05_noncircularPredictionBootstrap](declarations/prd05-noncircularpredictionbootstrap.md) | 672 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `structure` | [PersistentExcitationCertificate](declarations/persistentexcitationcertificate.md) | 680 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [prd08_persistentExcitationLowerBound](declarations/prd08-persistentexcitationlowerbound.md) | 692 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `structure` | [EffectiveResidualMotionCertificate](declarations/effectiveresidualmotioncertificate.md) | 702 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [prd09_fixedTransition_impliesEffectiveNull](declarations/prd09-fixedtransition-implieseffectivenull.md) | 717 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [prd09_effectiveResidualCausesStateMotion](declarations/prd09-effectiveresidualcausesstatemotion.md) | 733 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [prd09_fixedTransition_impliesKernelDirection](declarations/prd09-fixedtransition-implieskerneldirection.md) | 745 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `structure` | [ForwardInvarianceCertificate](declarations/forwardinvariancecertificate.md) | 756 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [prd10_forwardInvariance](declarations/prd10-forwardinvariance.md) | 761 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `structure` | [LyapunovDecreaseCertificate](declarations/lyapunovdecreasecertificate.md) | 768 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [prd11_lyapunovStrictDecrease](declarations/prd11-lyapunovstrictdecrease.md) | 781 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `structure` | [RealizableConvergenceCertificate](declarations/realizableconvergencecertificate.md) | 796 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `structure` | [InconsistentConstraintBoundCertificate](declarations/inconsistentconstraintboundcertificate.md) | 806 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `structure` | [ObservabilityCertificate](declarations/observabilitycertificate.md) | 814 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `structure` | [ReachabilityCertificate](declarations/reachabilitycertificate.md) | 820 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `inductive` | [LearningMethod](declarations/learningmethod.md) | 827 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `structure` | [LearningDescentCertificate](declarations/learningdescentcertificate.md) | 836 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `structure` | [FiniteProbabilityKernel](declarations/finiteprobabilitykernel.md) | 843 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [prd17_finiteKernelNormalized](declarations/prd17-finitekernelnormalized.md) | 849 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `structure` | [FinitePrecisionSimulation](declarations/finiteprecisionsimulation.md) | 856 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `inductive` | [CapabilityClass](declarations/capabilityclass.md) | 864 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `inductive` | [CapabilitySystemLayer](declarations/capabilitysystemlayer.md) | 883 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `inductive` | [CapabilityModality](declarations/capabilitymodality.md) | 887 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `inductive` | [NonGenerativeService](declarations/nongenerativeservice.md) | 894 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `structure` | [CapabilityAdapter](declarations/capabilityadapter.md) | 900 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [prd19_capabilityAdapterPreservation](declarations/prd19-capabilityadapterpreservation.md) | 915 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `inductive` | [CapabilityValidationOutcome](declarations/capabilityvalidationoutcome.md) | 923 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `structure` | [CapabilityValidation](declarations/capabilityvalidation.md) | 927 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `structure` | [AcceptedCapabilityValidation](declarations/acceptedcapabilityvalidation.md) | 934 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `structure` | [CapabilityScopedCompleteness](declarations/capabilityscopedcompleteness.md) | 943 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `structure` | [OpenResearchObligation](declarations/openresearchobligation.md) | 963 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ba7264352c744cb35fb02b12e3763f697ad26751cc85408399a76be0978c4ca2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentResidual/Variant02feb8f23af3423ea668d5d732a612bb7169b421e4809a1c3680bce047633a9d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
