# Verification target: Pipeline Semantics

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d652c7023478b1ba576a7e0d90387081301f7ac9",
  "lexical_observation_count": 61,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PipelineSemantics/Variante8e651a3e99cf2f08ad958659c9d8a1f6926f8476c87bc64aee581cb411fb815.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/PipelineSemantics.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/PipelineSemantics.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d652c7023478b1ba576a7e0d90387081301f7ac9`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PipelineSemantics/Variante8e651a3e99cf2f08ad958659c9d8a1f6926f8476c87bc64aee581cb411fb815.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PipelineSemantics/Variante8e651a3e99cf2f08ad958659c9d8a1f6926f8476c87bc64aee581cb411fb815.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.ContinuousAssurance.Claim` — import line 1; external provider; requires a separately pinned dependency.
- `Surface.ContinuousAssurance.Pipeline` — import line 2; external provider; requires a separately pinned dependency.
- `Surface.ContinuousAssurance.Refinement` — import line 3; external provider; requires a separately pinned dependency.
- `Surface.ContinuousAssurance.AnalyticTheoremPolicy` — import line 4; external provider; requires a separately pinned dependency.
- `Surface.ContinuousAssurance.QuantizedEvidence` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [rootConfigurationParserRefinementStatus](../../../../../ComputerScience/AlgorithmsInComputerScience/PipelineSemantics.lean/declarations/rootconfigurationparserrefinementstatus.md) | 25 | `declaration-track:70d9ba002096be21ef1d4308150e2ebd82b96a43b61a6d03b14e8de479794f1c` |
| 2 | `theorem` | [rootConfigurationParserRefinement_notSubmitted](../../../../../ComputerScience/AlgorithmsInComputerScience/PipelineSemantics.lean/declarations/rootconfigurationparserrefinement-notsubmitted.md) | 31 | `result-track:737ca98e76b41b6256021550254a893c4367014ffea0610a0becdc402a940207` |
| 3 | `theorem` | [optionalAnalysis_preserves_claim_status](../../../../../ComputerScience/AlgorithmsInComputerScience/PipelineSemantics.lean/declarations/optionalanalysis-preserves-claim-status.md) | 36 | `result-track:96072e31e9853c935505bb2139c9dda9fe9eabb4446c29dacf1914045b3ac681` |
| 4 | `structure` | [RuntimeCertificate](../../../../../ComputerScience/AlgorithmsInComputerScience/PipelineSemantics.lean/declarations/runtimecertificate.md) | 45 | `declaration-track:988facf8e9a0ec677437b0c4cd750b49ac02f0263e0390aa7c87c67018947166` |
| 5 | `def` | [ValidFor](../../../../../ComputerScience/AlgorithmsInComputerScience/PipelineSemantics.lean/declarations/validfor-source-edition-2.md) | 64 | `declaration-track:daa6d4b4e072b0c9b620574a5ba0427786a8c1733643ba3d893cb2412aa59e5d` |
| 6 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/PipelineSemantics.lean/declarations/instance.md) | 72 | `declaration-track:14ece3445b4bfff5e72554767bb394c3860b1adc270b14b3da89bc998303bdbc` |
| 7 | `def` | [check](../../../../../ComputerScience/AlgorithmsInComputerScience/PipelineSemantics.lean/declarations/check.md) | 78 | `declaration-track:50407d2fc6ba702920e40c989bb2b649e839fdd3f82b976ca26a9836f63a0a5d` |
| 8 | `theorem` | [check_sound](../../../../../ComputerScience/AlgorithmsInComputerScience/PipelineSemantics.lean/declarations/check-sound.md) | 82 | `result-track:b62538c99c1a0032e4051e4d37cf480781891b3d6e7d63b08a755b4501b69a49` |
| 9 | `def` | [AcceptedFor](../../../../../ComputerScience/AlgorithmsInComputerScience/PipelineSemantics.lean/declarations/acceptedfor.md) | 90 | `declaration-track:61ec2d33d445f435b4a9b89af8244b6b7679f8331e902e11ed88731d7effa7a3` |
| 10 | `def` | [toEvidenceBundle](../../../../../ComputerScience/AlgorithmsInComputerScience/PipelineSemantics.lean/declarations/toevidencebundle.md) | 94 | `declaration-track:2c10eefd54fa93cab996d0c391d7d415852b662dca3aea10e4f5e2cb14f91490` |
| 11 | `def` | [collectEvidence](../../../../../ComputerScience/AlgorithmsInComputerScience/PipelineSemantics.lean/declarations/collectevidence.md) | 112 | `declaration-track:08bd0e5e836c0de9f0ec276aea885e2e8924ddd4d9603bd6c15f4410085ee2bd` |
| 12 | `def` | [CollectEvidencePostcondition](../../../../../ComputerScience/AlgorithmsInComputerScience/PipelineSemantics.lean/declarations/collectevidencepostcondition.md) | 119 | `declaration-track:579df9f80da68cd1e939d8a53fb9122f00239abc8a23c2f796bfc2dde5eb3c0c` |
| 13 | `theorem` | [collectEvidencePostcondition](../../../../../ComputerScience/AlgorithmsInComputerScience/PipelineSemantics.lean/declarations/collectevidencepostcondition-source-edition-2.md) | 126 | `result-track:79ffc0ddf2783b9105545c4b7398e2a623bdeff8fa8623d6c18ca76e16d633c6` |
| 14 | `structure` | [ClassifiedClaim](../../../../../ComputerScience/AlgorithmsInComputerScience/PipelineSemantics.lean/declarations/classifiedclaim.md) | 136 | `declaration-track:452d6eaafb062487cec22e46224455f121995f2eeab265190b32a5ae9b22e768` |
| 15 | `def` | [classifyClaim](../../../../../ComputerScience/AlgorithmsInComputerScience/PipelineSemantics.lean/declarations/classifyclaim.md) | 142 | `declaration-track:b04745a17cb1a937c1ba7325268d5fe75e0c67943672a732ad5a97d4bd389a0b` |
| 16 | `def` | [classifyClaims](../../../../../ComputerScience/AlgorithmsInComputerScience/PipelineSemantics.lean/declarations/classifyclaims.md) | 148 | `declaration-track:3b9f44cadcfe1606c742ed649446e910f0bfed9afe301a57855a1d645d4f6dde` |
| 17 | `def` | [ClassifyClaimsPostcondition](../../../../../ComputerScience/AlgorithmsInComputerScience/PipelineSemantics.lean/declarations/classifyclaimspostcondition.md) | 152 | `declaration-track:333c6f81fca6e357c28621a7c348acd2d73f9ff1aefba2fd372aa621d69b5619` |
| 18 | `theorem` | [classifyClaimsSound](../../../../../ComputerScience/AlgorithmsInComputerScience/PipelineSemantics.lean/declarations/classifyclaimssound.md) | 163 | `result-track:8110ba4ebc3fa1b6dc911d7335a37ad099faddc7a56753563fa979e052b162ac` |
| 19 | `def` | [classifyClaimsAt](../../../../../ComputerScience/AlgorithmsInComputerScience/PipelineSemantics.lean/declarations/classifyclaimsat.md) | 172 | `declaration-track:2fe184260c39a2beb4e6f1c64d23a4ec598bab0167bf1a0f9de2568659bf99b7` |
| 20 | `theorem` | [classifyClaimsAt_level_independent](../../../../../ComputerScience/AlgorithmsInComputerScience/PipelineSemantics.lean/declarations/classifyclaimsat-level-independent.md) | 178 | `result-track:396197f19261d5332ca745d262a00bf9624921addb0eb3966bc4f24ca6a0ff5c` |
| 21 | `structure` | [ClaimGate](../../../../../ComputerScience/AlgorithmsInComputerScience/PipelineSemantics.lean/declarations/claimgate.md) | 187 | `declaration-track:844ca658a8fada07ce0f4e6972ae0923194681824742713518bb89d93bd18c59` |
| 22 | `def` | [gateDecision](../../../../../ComputerScience/AlgorithmsInComputerScience/PipelineSemantics.lean/declarations/gatedecision.md) | 196 | `declaration-track:99a47431dd6053bfaf91ae2658d0c4362d6feb1eeb45152996e6304af1a8ee17` |
| 23 | `def` | [applyGate](../../../../../ComputerScience/AlgorithmsInComputerScience/PipelineSemantics.lean/declarations/applygate.md) | 205 | `declaration-track:402bb6e5877ed79c5a480032f5e4ab9fca3330fcd0627edbaf05c416726d6352` |
| 24 | `def` | [applyGates](../../../../../ComputerScience/AlgorithmsInComputerScience/PipelineSemantics.lean/declarations/applygates.md) | 210 | `declaration-track:60f3de7d61eb748c82eac695f804cd300af295b6f68f1f37b4ea9df55438f008` |
| 25 | `theorem` | [gateDecisionSound](../../../../../ComputerScience/AlgorithmsInComputerScience/PipelineSemantics.lean/declarations/gatedecisionsound.md) | 214 | `result-track:2255734d6864c1bbccf5e571e22ab7996e647cd0520c08f817e8ef75083310eb` |
| 26 | `def` | [ApplyGatesPostcondition](../../../../../ComputerScience/AlgorithmsInComputerScience/PipelineSemantics.lean/declarations/applygatespostcondition-source-edition-2.md) | 220 | `declaration-track:a1afcb85e819237deddaff6516fc9275fc501e154c50d955c75fdd809dbefeb0` |
| 27 | `theorem` | [applyGatesPostcondition](../../../../../ComputerScience/AlgorithmsInComputerScience/PipelineSemantics.lean/declarations/applygatespostcondition.md) | 226 | `result-track:1904fc3786e8bbbb0eef62cfcc7e35ab53f77002ee40bb7fae41e787d7020c1c` |
| 28 | `def` | [ValidFor](../../../../../ComputerScience/AlgorithmsInComputerScience/PipelineSemantics.lean/declarations/validfor.md) | 240 | `declaration-track:4a30c4291d09635e280401ca0d109cf8d0fc13fe9568d031891d605ef2c6ef1e` |
| 29 | `def` | [issueAttestation](../../../../../ComputerScience/AlgorithmsInComputerScience/PipelineSemantics.lean/declarations/issueattestation.md) | 248 | `declaration-track:859847bb264c2814cc52040368c1f6c339b9f96421c8d54c48f5954b7d9fdaa9` |
| 30 | `def` | [IssueAttestationPostcondition](../../../../../ComputerScience/AlgorithmsInComputerScience/PipelineSemantics.lean/declarations/issueattestationpostcondition.md) | 262 | `declaration-track:596dec2e4b21ca959732f0787527c2df2ad1fd7197d0d4a083cdfadbc38d6a17` |
| 31 | `theorem` | [issueAttestationPostcondition](../../../../../ComputerScience/AlgorithmsInComputerScience/PipelineSemantics.lean/declarations/issueattestationpostcondition-source-edition-2.md) | 271 | `result-track:8ffb419c6bd135c60ab90f12a4ea1ac2df36554df276e52a042970f22f8a335a` |
| 32 | `theorem` | [attestationProvenanceSound](../../../../../ComputerScience/AlgorithmsInComputerScience/PipelineSemantics.lean/declarations/attestationprovenancesound.md) | 285 | `result-track:29f0fc1658f95c053a89573e87eea86006f095deb663dc46bc40a9eec791f9d2` |
| 33 | `structure` | [RefinementRequest](../../../../../ComputerScience/AlgorithmsInComputerScience/PipelineSemantics.lean/declarations/refinementrequest.md) | 300 | `declaration-track:5bce4878bd715d7eb02c11aefbc571c5ac3c96d4495bacfdc040e0fbf3dbefe4` |
| 34 | `def` | [refinementRequestsFor](../../../../../ComputerScience/AlgorithmsInComputerScience/PipelineSemantics.lean/declarations/refinementrequestsfor.md) | 306 | `declaration-track:71e87a623d927bad7cac9c1460634bce127c5fc5faf3fdda5e4d3d552be0ca25` |
| 35 | `def` | [EmitRefinementRequestsPostcondition](../../../../../ComputerScience/AlgorithmsInComputerScience/PipelineSemantics.lean/declarations/emitrefinementrequestspostcondition.md) | 313 | `declaration-track:de30b8fe25e4f2bdc411213c5ea1133309cd697d0730a8681fc9a5d9449b8918` |
| 36 | `theorem` | [emitRefinementRequestsPostcondition](../../../../../ComputerScience/AlgorithmsInComputerScience/PipelineSemantics.lean/declarations/emitrefinementrequestspostcondition-source-edition-2.md) | 320 | `result-track:e5428143d044deaae613291ace0ca640774551546fbe63dfb3ebbc8dce4394a7` |
| 37 | `structure` | [SemanticPipelineState](../../../../../ComputerScience/AlgorithmsInComputerScience/PipelineSemantics.lean/declarations/semanticpipelinestate.md) | 341 | `declaration-track:b910f66a05ffa479757f974007318a7147c7f7c8179f60d2a100f8929a7f44d6` |
| 38 | `def` | [collectEvidenceTransition](../../../../../ComputerScience/AlgorithmsInComputerScience/PipelineSemantics.lean/declarations/collectevidencetransition.md) | 349 | `declaration-track:1f9e22524a8481d876951264771c98fd400119d5637a18649da88cc49034ab2a` |
| 39 | `def` | [classifyClaimsTransition](../../../../../ComputerScience/AlgorithmsInComputerScience/PipelineSemantics.lean/declarations/classifyclaimstransition.md) | 357 | `declaration-track:3adeb6ddb7b671491163c48ea99fab3d67469f2633da768c4cdcae41370ac2c0` |
| 40 | `def` | [applyGatesTransition](../../../../../ComputerScience/AlgorithmsInComputerScience/PipelineSemantics.lean/declarations/applygatestransition.md) | 363 | `declaration-track:c37204437b73ae34487728b4abee11ced9032aefe274ab3e9ce8b85fac999516` |
| 41 | `def` | [issueAttestationTransition](../../../../../ComputerScience/AlgorithmsInComputerScience/PipelineSemantics.lean/declarations/issueattestationtransition.md) | 367 | `declaration-track:44e9eb5bf965502871080cb0e95213a8dc7cdf3e1d3bbfc914872a07443a4296` |
| 42 | `def` | [emitRefinementRequestsTransition](../../../../../ComputerScience/AlgorithmsInComputerScience/PipelineSemantics.lean/declarations/emitrefinementrequeststransition.md) | 378 | `declaration-track:d75776dde594859bb1e33196ceb9fe66fc342ac182794c64ec3f612fb8087f15` |
| 43 | `inductive` | [SemanticStage](../../../../../ComputerScience/AlgorithmsInComputerScience/PipelineSemantics.lean/declarations/semanticstage.md) | 389 | `declaration-track:e15035a98c47d3f2d89495d07e44019cec09fbbdc1b83cdd2b3166229b907f9e` |
| 44 | `def` | [toPipelineStage](../../../../../ComputerScience/AlgorithmsInComputerScience/PipelineSemantics.lean/declarations/topipelinestage.md) | 400 | `declaration-track:c7a001a5e507cd09266cea45fdb3bb446ee9596011f232357da36f41d0b0ce74` |
| 45 | `inductive` | [Input](../../../../../ComputerScience/AlgorithmsInComputerScience/PipelineSemantics.lean/declarations/input.md) | 408 | `declaration-track:a7ae7abadbd9dbfb2751a1b93317fea623b79100982f335103b17bc1d6ec55b7` |
| 46 | `def` | [Output](../../../../../ComputerScience/AlgorithmsInComputerScience/PipelineSemantics.lean/declarations/output.md) | 424 | `declaration-track:95f7797c9a55a414bbc5ed8b305a94c80e260f8e2fffb7b40365661ca9e9fb18` |
| 47 | `def` | [evaluate](../../../../../ComputerScience/AlgorithmsInComputerScience/PipelineSemantics.lean/declarations/evaluate.md) | 432 | `declaration-track:7033f63fecc2d548568335644eb701d4d138ab05b4804ca549fe2768788a24f1` |
| 48 | `def` | [transition](../../../../../ComputerScience/AlgorithmsInComputerScience/PipelineSemantics.lean/declarations/transition.md) | 447 | `declaration-track:fe9401bc1cd0b5d5401016b4f151e79b0ad249ce7452f2ac796ec724cb3c929d` |
| 49 | `def` | [Postcondition](../../../../../ComputerScience/AlgorithmsInComputerScience/PipelineSemantics.lean/declarations/postcondition.md) | 471 | `declaration-track:d53a930c9e9add5eddb3c3889996a34b504f54ec6287b0c5b6bf10f6eb68010d` |
| 50 | `theorem` | [transition_satisfies_postcondition](../../../../../ComputerScience/AlgorithmsInComputerScience/PipelineSemantics.lean/declarations/transition-satisfies-postcondition.md) | 481 | `result-track:1b9c32e938517762680e9185008d33ad3d05ee0c3394be80b5cf8487cfbc20ab` |
| 51 | `theorem` | [toPipelineStage_spec_stage](../../../../../ComputerScience/AlgorithmsInComputerScience/PipelineSemantics.lean/declarations/topipelinestage-spec-stage.md) | 491 | `result-track:b1cef1794a4e99a9a31602c47d0b5a485c045412986de06314914ca2d8ad5463` |
| 52 | `theorem` | [toPipelineStage_injective](../../../../../ComputerScience/AlgorithmsInComputerScience/PipelineSemantics.lean/declarations/topipelinestage-injective.md) | 496 | `result-track:f22c9a8f63281be554b98ebbef6208566a12ae163e3e1f55a16e18a35f18ffc6` |
| 53 | `structure` | [ModeledAuditControllerState](../../../../../ComputerScience/AlgorithmsInComputerScience/PipelineSemantics.lean/declarations/modeledauditcontrollerstate.md) | 505 | `declaration-track:52db6a095357dbf4613fdd1ad551219b8a7bab79f5576a0c710ee0cf0ee1117d` |
| 54 | `def` | [ModeledAuditControllerState.Valid](../../../../../ComputerScience/AlgorithmsInComputerScience/PipelineSemantics.lean/declarations/modeledauditcontrollerstate-valid.md) | 510 | `declaration-track:d4a63bc73395200197c7963166df426d5315bf0476cf5535918a08c122441229` |
| 55 | `def` | [modeledAuditControllerStep](../../../../../ComputerScience/AlgorithmsInComputerScience/PipelineSemantics.lean/declarations/modeledauditcontrollerstep.md) | 515 | `declaration-track:d86bb0be3cd88a91e708f6bcdde9c0ba4496f8300062f351cb0b4ad2c5b8c1ec` |
| 56 | `def` | [evidenceIdentifiers](../../../../../ComputerScience/AlgorithmsInComputerScience/PipelineSemantics.lean/declarations/evidenceidentifiers.md) | 523 | `declaration-track:10deaaa0f7758f7dd8c0ac17e31105ce338b5b5d023ed8960ff9ebda9a15e924` |
| 57 | `def` | [modeledAuditControllerRefinement](../../../../../ComputerScience/AlgorithmsInComputerScience/PipelineSemantics.lean/declarations/modeledauditcontrollerrefinement.md) | 531 | `declaration-track:95dcb80cd18eb6cff5a6c353b2826a4de9e6f843f37a28fba8f9528f52b6e7a5` |
| 58 | `theorem` | [auditValidStatePreserved](../../../../../ComputerScience/AlgorithmsInComputerScience/PipelineSemantics.lean/declarations/auditvalidstatepreserved.md) | 561 | `result-track:34fd46f920f949f217203fd331f2dffe59d81a96d23e65da12dae42837488225` |
| 59 | `theorem` | [auditTransitionSound](../../../../../ComputerScience/AlgorithmsInComputerScience/PipelineSemantics.lean/declarations/audittransitionsound.md) | 569 | `result-track:30419c33b71dc8b7a15ee70c5f38c66d03e9813839699befc83c563b5e512094` |
| 60 | `theorem` | [auditObservationSound](../../../../../ComputerScience/AlgorithmsInComputerScience/PipelineSemantics.lean/declarations/auditobservationsound.md) | 581 | `result-track:d8ad5cec53a128879fc673984ff521686d869a9f5245139004872bea0f432bf0` |
| 61 | `theorem` | [modeledAuditController_does_not_submit_rust_bridge](../../../../../ComputerScience/AlgorithmsInComputerScience/PipelineSemantics.lean/declarations/modeledauditcontroller-does-not-submit-rust-bridge.md) | 591 | `result-track:dcc64c6bc98039e93012c35efc1bce9894ee453d5e7c496817671d77e578a4af` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=96aaa726006c63c7c2c72eb421922a228e498de6f1285c5cc9217444a8d2a21f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PipelineSemantics/Variante8e651a3e99cf2f08ad958659c9d8a1f6926f8476c87bc64aee581cb411fb815.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PipelineSemantics/Variante8e651a3e99cf2f08ad958659c9d8a1f6926f8476c87bc64aee581cb411fb815.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
