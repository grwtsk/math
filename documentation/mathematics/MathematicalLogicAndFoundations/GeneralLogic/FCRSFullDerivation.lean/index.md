# FCRSFull Derivation

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**46 observed declarations and anonymous commands**, 8 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/FCRSFullDerivation/Variant6ed706d5b8ea35c82bbfdea3c080f7ad9464307deafc6b8d2bb3b4e954884b59.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `57bcae1bd79f4d23b65d15215540e9dee9c84c53`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MathematicalLogicAndFoundations/GeneralLogic/FCRSFullDerivation.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [projectionVersion](declarations/projectionversion.md) | 23 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [graphConsequenceTheoryArtifact](declarations/graphconsequencetheoryartifact.md) | 28 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `structure` | [GraphConsequenceProposition](declarations/graphconsequenceproposition.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [graphConsequenceTheory](declarations/graphconsequencetheory.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [graphConsequenceHolds_exact](declarations/graphconsequenceholds-exact.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [graphConsequenceTheoryVersion](declarations/graphconsequencetheoryversion.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [graphConsequenceAssumptions](declarations/graphconsequenceassumptions.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `structure` | [FullNativePreservationBridge](declarations/fullnativepreservationbridge.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [sourceClaimConsequence](declarations/sourceclaimconsequence.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [sourceClaimBridge](declarations/sourceclaimbridge.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `structure` | [FullNativePreservationEvidence](declarations/fullnativepreservationevidence.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [bridge](declarations/bridge.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [graphConsequenceProof](declarations/graphconsequenceproof.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [nativeDerivation](declarations/nativederivation.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [fullGraphProposition](declarations/fullgraphproposition.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [fullSourceScope](declarations/fullsourcescope.md) | 313 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [fullTargetScope](declarations/fulltargetscope.md) | 322 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [fullTranslationLineage](declarations/fulltranslationlineage.md) | 329 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [fullTranslation](declarations/fulltranslation.md) | 345 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [fullPreservation](declarations/fullpreservation.md) | 429 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [fullSourcePropositionInScope](declarations/fullsourcepropositioninscope.md) | 440 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [fullTargetTheorem](declarations/fulltargettheorem.md) | 446 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [fullTargetPropositionInScope](declarations/fulltargetpropositioninscope.md) | 455 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `inductive` | [FullTTAStage](declarations/fullttastage.md) | 462 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [identityCode](declarations/identitycode.md) | 497 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [identityCode_injective](declarations/identitycode-injective.md) | 528 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [rank](declarations/rank.md) | 532 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [label](declarations/label.md) | 564 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [nodeKind](declarations/nodekind.md) | 596 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [nodeKind_injective](declarations/nodekind-injective.md) | 627 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `inductive` | [FullTTADependency](declarations/fullttadependency.md) | 634 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [FullTTADependency.rankIncreases](declarations/fullttadependency-rankincreases.md) | 682 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [roleArtifact](declarations/roleartifact.md) | 689 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [fullStageNativeArtifact](declarations/fullstagenativeartifact.md) | 694 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [fullStageSupportingArtifacts](declarations/fullstagesupportingartifacts.md) | 753 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [fullStageTheoryContext](declarations/fullstagetheorycontext.md) | 814 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [fullStageNode](declarations/fullstagenode.md) | 827 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [fullStageNode_injective](declarations/fullstagenode-injective.md) | 852 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [fullStageNodeArtifact_injective](declarations/fullstagenodeartifact-injective.md) | 859 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [fullStageEdge](declarations/fullstageedge.md) | 868 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [fullStageValidationPolicy](declarations/fullstagevalidationpolicy.md) | 1015 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [fullStageValidation](declarations/fullstagevalidation.md) | 1023 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [fullDependencyGraph](declarations/fulldependencygraph.md) | 1033 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [fullGenericDerivationProjection](declarations/fullgenericderivationprojection.md) | 1051 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `structure` | [FullTransportDerivationProjection](declarations/fulltransportderivationprojection-source-edition-2.md) | 1108 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [fullTransportDerivationProjection](declarations/fulltransportderivationprojection.md) | 1143 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f75c19dd4655febb27dda31d498eeb2bc6c856590dd07558a61d93d9e4f3dc52 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/FCRSFullDerivation/Variant6ed706d5b8ea35c82bbfdea3c080f7ad9464307deafc6b8d2bb3b4e954884b59.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
