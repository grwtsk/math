# Local Model Endpoint Adapter Namespaced

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**31 observed declarations and anonymous commands**, 13 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M506970656c696e652f4c6f63616c4d6f64656c456e64706f696e74416461707465722e6c65616e/Variantc904b0df2c784a6edec05644ee2dd3fbecdfd76e5aaa1ea7ca1404dda10d31f2.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cd67e8f6f689ab7a1ee26d2e8c5d8810f7082cad`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LocalModelEndpointAdapterNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [AdmissionStatus](declarations/admissionstatus.md) | 18 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `abbrev` | [ClaimRecord](declarations/claimrecord.md) | 19 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `inductive` | [LocalModelRequestTag](declarations/localmodelrequesttag.md) | 22 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `inductive` | [LocalModelResponseTag](declarations/localmodelresponsetag.md) | 32 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `inductive` | [EndpointHintTag](declarations/endpointhinttag.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `inductive` | [CompactSummaryKind](declarations/compactsummarykind.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `inductive` | [PipelineOwnedStage](declarations/pipelineownedstage.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `structure` | [LocalModelClaim](declarations/localmodelclaim.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [LocalModelClaim.toClaimRecord](declarations/localmodelclaim-toclaimrecord.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [localModelAdapterClaim](declarations/localmodeladapterclaim.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [localModelDirectAuthorityOverclaim](declarations/localmodeldirectauthorityoverclaim.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [endpointHintClaim](declarations/endpointhintclaim.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `structure` | [LocalModelCompactSummary](declarations/localmodelcompactsummary-source-edition-2.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [localModelCompactSummary](declarations/localmodelcompactsummary.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [localModelRefusalSummary](declarations/localmodelrefusalsummary.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `structure` | [PromptPromotionTrainingSurface](declarations/promptpromotiontrainingsurface.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [PromptPromotionTrainingSurface.toClaimRecord](declarations/promptpromotiontrainingsurface-toclaimrecord.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [thinkOfMathPromptPromotionTraining](declarations/thinkofmathpromptpromotiontraining.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [local_model_adapter_has_no_authority](declarations/local-model-adapter-has-no-authority.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [local_model_output_has_no_authority](declarations/local-model-output-has-no-authority.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [local_model_direct_authority_claim_has_no_authority](declarations/local-model-direct-authority-claim-has-no-authority.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [endpoint_hint_is_not_checked_theorem](declarations/endpoint-hint-is-not-checked-theorem.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [local_model_endpoint_hint_is_not_endpoint_judgment](declarations/local-model-endpoint-hint-is-not-endpoint-judgment.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [compact_summary_is_not_checked_theorem](declarations/compact-summary-is-not-checked-theorem.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [local_model_compact_summary_is_not_checked_theorem](declarations/local-model-compact-summary-is-not-checked-theorem.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [local_model_refusal_summary_is_not_proof](declarations/local-model-refusal-summary-is-not-proof.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [prompt_promotion_training_is_not_theorem_authority](declarations/prompt-promotion-training-is-not-theorem-authority.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [local_llm_adapter_weight_is_not_checked_theorem](declarations/local-llm-adapter-weight-is-not-checked-theorem.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [discovery_is_pipeline_owned](declarations/discovery-is-pipeline-owned.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [compactification_is_pipeline_owned](declarations/compactification-is-pipeline-owned.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [endpoint_classification_is_pipeline_owned](declarations/endpoint-classification-is-pipeline-owned.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ece59d098eb2bae9b3e17279934006599212b8f9d2afeba11dc67f413d3a2ac8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M506970656c696e652f4c6f63616c4d6f64656c456e64706f696e74416461707465722e6c65616e/Variantc904b0df2c784a6edec05644ee2dd3fbecdfd76e5aaa1ea7ca1404dda10d31f2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
