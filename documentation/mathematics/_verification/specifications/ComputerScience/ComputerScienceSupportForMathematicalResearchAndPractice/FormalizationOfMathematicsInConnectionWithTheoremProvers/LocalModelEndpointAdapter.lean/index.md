# Verification target: Local Model Endpoint Adapter

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "51e40de9e0dde7fcffff8d5ddacea9a6cd36cdac",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M506970656c696e652f4c6f63616c4d6f64656c456e64706f696e74416461707465722e6c65616e/Variantaf57c2e924f8f15acf8e78dd235c3a71e9e1a9bd5d7a7be71dcfeea58e9b9581.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LocalModelEndpointAdapter.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LocalModelEndpointAdapter.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `51e40de9e0dde7fcffff8d5ddacea9a6cd36cdac`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M506970656c696e652f4c6f63616c4d6f64656c456e64706f696e74416461707465722e6c65616e/Variantaf57c2e924f8f15acf8e78dd235c3a71e9e1a9bd5d7a7be71dcfeea58e9b9581.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M506970656c696e652f4c6f63616c4d6f64656c456e64706f696e74416461707465722e6c65616e/Variantaf57c2e924f8f15acf8e78dd235c3a71e9e1a9bd5d7a7be71dcfeea58e9b9581.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Think.Bit0.Bit0.Bit1.Bit0.Bit0.Bit1.M506970656c696e652f417574686f72697479426f756e646172792e6c65616e` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [AdmissionStatus](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LocalModelEndpointAdapter.lean/declarations/admissionstatus.md) | 10 | `declaration-track:e4757bc70c626cd34426ce4df2d1affeb767db04dc1c7a75d8f1787210911c19` |
| 2 | `abbrev` | [ClaimRecord](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LocalModelEndpointAdapter.lean/declarations/claimrecord.md) | 11 | `declaration-track:3c0ddf30d32ad0edb0e09737092d022c53a04e91abceb91d0dbf67068cca062a` |
| 3 | `inductive` | [LocalModelRequestTag](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LocalModelEndpointAdapter.lean/declarations/localmodelrequesttag.md) | 14 | `declaration-track:750f25c86bc435182d6578d8e1ba39221e6a0703fd68ae6c145830d9857f1fb8` |
| 4 | `inductive` | [LocalModelResponseTag](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LocalModelEndpointAdapter.lean/declarations/localmodelresponsetag.md) | 24 | `declaration-track:6773f6e475c08cc0a935dbe14af07cbb4bd23f910ca49670f5d5ecdc2c6179b0` |
| 5 | `inductive` | [EndpointHintTag](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LocalModelEndpointAdapter.lean/declarations/endpointhinttag.md) | 32 | `declaration-track:18919f8a5f3ddc21b582d736121e0c41c58a70861edea68685762d0f388b50a4` |
| 6 | `inductive` | [CompactSummaryKind](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LocalModelEndpointAdapter.lean/declarations/compactsummarykind.md) | 40 | `declaration-track:129d394969992bcae6ac200c96bbd7c8c7a8a58567f695ad0fdf8d9a6fe1c4c6` |
| 7 | `inductive` | [PipelineOwnedStage](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LocalModelEndpointAdapter.lean/declarations/pipelineownedstage.md) | 48 | `declaration-track:af0be3759482d1541cef476f7bdbdb03826042056c685a16e0c43badd16034c1` |
| 8 | `structure` | [LocalModelClaim](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LocalModelEndpointAdapter.lean/declarations/localmodelclaim.md) | 58 | `declaration-track:9f3dc71f26642c17e078bd89877d2d4874c628cc765f73abadbfc923d676aedb` |
| 9 | `def` | [LocalModelClaim.toClaimRecord](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LocalModelEndpointAdapter.lean/declarations/localmodelclaim-toclaimrecord.md) | 71 | `declaration-track:aea5490c1e1d8ab49581fe499d68155dd1d49065898dd427aee1811ee78c8010` |
| 10 | `def` | [localModelAdapterClaim](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LocalModelEndpointAdapter.lean/declarations/localmodeladapterclaim.md) | 77 | `declaration-track:444dcb79166e08eae14b3b8c9d9c809857ddd3f565e5f22f62c9ae8721dff30c` |
| 11 | `def` | [localModelDirectAuthorityOverclaim](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LocalModelEndpointAdapter.lean/declarations/localmodeldirectauthorityoverclaim.md) | 90 | `declaration-track:1e44d873932c8626038b53ae6c1c2f2c8d8e5e8f59d5af51651b4d93678ecec6` |
| 12 | `def` | [endpointHintClaim](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LocalModelEndpointAdapter.lean/declarations/endpointhintclaim.md) | 102 | `declaration-track:60d30e34b1174a5d09e6c0801772f435ea8841ad146a6bc233ca5031dcb4c536` |
| 13 | `structure` | [LocalModelCompactSummary](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LocalModelEndpointAdapter.lean/declarations/localmodelcompactsummary-source-edition-2.md) | 106 | `declaration-track:4fd0ba5134c130c5a07d661ed97819158c93da1f2680c95659ede3b44409ae44` |
| 14 | `def` | [localModelCompactSummary](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LocalModelEndpointAdapter.lean/declarations/localmodelcompactsummary.md) | 115 | `declaration-track:186966dcb9ba4fe1559c8b0508fe0b9bd1e0643589cf143db0f427a7499bedf9` |
| 15 | `def` | [localModelRefusalSummary](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LocalModelEndpointAdapter.lean/declarations/localmodelrefusalsummary.md) | 124 | `declaration-track:6862d62970b395bb7022877e744628e896d09fc3aba5cd2bcefa953542d26741` |
| 16 | `structure` | [PromptPromotionTrainingSurface](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LocalModelEndpointAdapter.lean/declarations/promptpromotiontrainingsurface.md) | 128 | `declaration-track:3969323a2a1c3a84836a7f5ab032b081be7c25a47ebced9f5bfda3d84301ffbf` |
| 17 | `def` | [PromptPromotionTrainingSurface.toClaimRecord](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LocalModelEndpointAdapter.lean/declarations/promptpromotiontrainingsurface-toclaimrecord.md) | 140 | `declaration-track:9957ecae0d40b82b1ecdfa85b8e146519d40d25d11e0c42b904fa54261fe1789` |
| 18 | `def` | [thinkOfMathPromptPromotionTraining](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LocalModelEndpointAdapter.lean/declarations/thinkofmathpromptpromotiontraining.md) | 146 | `declaration-track:96b2765a28e8c47058c662f32f43cec48eb3f26aaa6aa024cbf920f91c15ad8b` |
| 19 | `theorem` | [local_model_adapter_has_no_authority](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LocalModelEndpointAdapter.lean/declarations/local-model-adapter-has-no-authority.md) | 157 | `result-track:e7db32e3d4a88d50f44bbc8fd8c3aa819d72a199931e964ef869f9d38e6d1a7e` |
| 20 | `theorem` | [local_model_output_has_no_authority](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LocalModelEndpointAdapter.lean/declarations/local-model-output-has-no-authority.md) | 161 | `result-track:392b94cf94f515f9222fdc2e6801efe90175596412b4a00a715112b32b5eaf86` |
| 21 | `theorem` | [local_model_direct_authority_claim_has_no_authority](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LocalModelEndpointAdapter.lean/declarations/local-model-direct-authority-claim-has-no-authority.md) | 165 | `result-track:c1706b70f0ee47662825f1f0595c936afb173df421773261d9c12918a8e8c9b8` |
| 22 | `theorem` | [endpoint_hint_is_not_checked_theorem](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LocalModelEndpointAdapter.lean/declarations/endpoint-hint-is-not-checked-theorem.md) | 170 | `result-track:fbc5b97fc5b7bd6d9e8ce8cfe75dd4f380f37622f432c40265cb6a7e0e483fb0` |
| 23 | `theorem` | [local_model_endpoint_hint_is_not_endpoint_judgment](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LocalModelEndpointAdapter.lean/declarations/local-model-endpoint-hint-is-not-endpoint-judgment.md) | 176 | `result-track:2c45026674c36859b9854e39f82aee7e1ae7cd068f36952e6ff865afe3b9198f` |
| 24 | `theorem` | [compact_summary_is_not_checked_theorem](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LocalModelEndpointAdapter.lean/declarations/compact-summary-is-not-checked-theorem.md) | 182 | `result-track:60f63114bd7be6f1f2c10497e1e563142ba0ce9a069290257ff2ee3f7a5e384e` |
| 25 | `theorem` | [local_model_compact_summary_is_not_checked_theorem](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LocalModelEndpointAdapter.lean/declarations/local-model-compact-summary-is-not-checked-theorem.md) | 187 | `result-track:de23066f3eed2e2c9e64225e1b33eaa387a0171bfdf0351abad9e0c897be63a8` |
| 26 | `theorem` | [local_model_refusal_summary_is_not_proof](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LocalModelEndpointAdapter.lean/declarations/local-model-refusal-summary-is-not-proof.md) | 191 | `result-track:980658d7a9407f87ba37db6cf50648e59294a42968db0dfa11aa94f8b4bf1d5e` |
| 27 | `theorem` | [prompt_promotion_training_is_not_theorem_authority](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LocalModelEndpointAdapter.lean/declarations/prompt-promotion-training-is-not-theorem-authority.md) | 195 | `result-track:4606f06df4e74cabfcdf99c085c6b2b2b99a4664805d65c217442dd95d5dab34` |
| 28 | `theorem` | [local_llm_adapter_weight_is_not_checked_theorem](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LocalModelEndpointAdapter.lean/declarations/local-llm-adapter-weight-is-not-checked-theorem.md) | 200 | `result-track:7f8d7636bdada8c120c842594ccf4e2f91ec344e413c3ed4a6f5a12b7fe0c809` |
| 29 | `theorem` | [discovery_is_pipeline_owned](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LocalModelEndpointAdapter.lean/declarations/discovery-is-pipeline-owned.md) | 205 | `result-track:bbb5c24e609a2a4eef629e6e11894598316932f718379d8e95c46c3727cc536d` |
| 30 | `theorem` | [compactification_is_pipeline_owned](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LocalModelEndpointAdapter.lean/declarations/compactification-is-pipeline-owned.md) | 208 | `result-track:253e34ee121cee877434ad2846b70aa294906588c9b2f7c200dd689230146b98` |
| 31 | `theorem` | [endpoint_classification_is_pipeline_owned](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LocalModelEndpointAdapter.lean/declarations/endpoint-classification-is-pipeline-owned.md) | 211 | `result-track:9cc50d3cf3c91fafa3c59afd0fc0caa3b538e4f2500d6ee46c60f9ba2f5e6c6c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=02ca1aa0d7569a81ac411ea1b680bc20b99eabd71414e4a21343d87660c74145 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M506970656c696e652f4c6f63616c4d6f64656c456e64706f696e74416461707465722e6c65616e/Variantaf57c2e924f8f15acf8e78dd235c3a71e9e1a9bd5d7a7be71dcfeea58e9b9581.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M506970656c696e652f4c6f63616c4d6f64656c456e64706f696e74416461707465722e6c65616e/Variantaf57c2e924f8f15acf8e78dd235c3a71e9e1a9bd5d7a7be71dcfeea58e9b9581.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
