# Verification target: Mixed Source V2 Prebytes

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a337e7b3b0733502c95a8ab27694dfcabcd51a93",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/MixedSourceV2Prebytes/Variant227f152d38ef83c975eb7f470ea52eeac8412fac5b26ff1b1ee2df76ea026223.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/MixedSourceV2Prebytes.lean/index.md) · [Full source](../../../../MeasureAndIntegration/MixedSourceV2Prebytes.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a337e7b3b0733502c95a8ab27694dfcabcd51a93`.

Source path: `GRWTSK/Topology/GeneralTopology/MixedSourceV2Prebytes/Variant227f152d38ef83c975eb7f470ea52eeac8412fac5b26ff1b1ee2df76ea026223.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/MixedSourceV2Prebytes/Variant227f152d38ef83c975eb7f470ea52eeac8412fac5b26ff1b1ee2df76ea026223.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceScaleDerivative` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceCorrelationCurvature` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../MeasureAndIntegration/MixedSourceV2Prebytes.lean/declarations/instance.md) | 33 | `declaration-track:4ce210a7395fded0bb56c9c2ba810640aa1240752613c10a5b5efd93df205c55` |
| 2 | `def` | [spatialDerivative](../../../../MeasureAndIntegration/MixedSourceV2Prebytes.lean/declarations/spatialderivative.md) | 37 | `declaration-track:7d16f3018730573961b89e48c34b4af5696dee3d96c242ec9a984f91edf1478b` |
| 3 | `theorem` | [normalizedSource_hasSpatialDerivAt](../../../../MeasureAndIntegration/MixedSourceV2Prebytes.lean/declarations/normalizedsource-hasspatialderivat.md) | 42 | `result-track:0bf8f8d4e9bb21a939c4b987eedfd98cdf02934e75bd6f8e370acd31765e9518` |
| 4 | `theorem` | [spatialDerivative_eq_deriv](../../../../MeasureAndIntegration/MixedSourceV2Prebytes.lean/declarations/spatialderivative-eq-deriv.md) | 61 | `result-track:746ba44fe748aaf33563f0dfc6e49510e26c899ec9590f3082c869da7bf2882c` |
| 5 | `theorem` | [spatialDerivative_continuousAt_joint](../../../../MeasureAndIntegration/MixedSourceV2Prebytes.lean/declarations/spatialderivative-continuousat-joint.md) | 66 | `result-track:be58adc86e0aa2bff3f489e09eb3b1f2238fe011f6271532692c3722256f8229` |
| 6 | `theorem` | [spatialDerivative_continuousOn_joint](../../../../MeasureAndIntegration/MixedSourceV2Prebytes.lean/declarations/spatialderivative-continuouson-joint.md) | 77 | `result-track:4510f5b5113c01d2d367352706834def2cb46f23320914fddead21bb066fc1a3` |
| 7 | `theorem` | [spatialDerivative_continuous](../../../../MeasureAndIntegration/MixedSourceV2Prebytes.lean/declarations/spatialderivative-continuous.md) | 82 | `result-track:23fe003768513753d9ac4176fe3456beed467f8c6f67f3a83035077ee3cf8191` |
| 8 | `theorem` | [spatialDerivative_zero_of_le_abs](../../../../MeasureAndIntegration/MixedSourceV2Prebytes.lean/declarations/spatialderivative-zero-of-le-abs.md) | 90 | `result-track:f0bf84301a18280e79213f18093a4ab3fc907cf831fe9574cc9522a7ffee24d4` |
| 9 | `theorem` | [spatialDerivative_hasCompactSupport](../../../../MeasureAndIntegration/MixedSourceV2Prebytes.lean/declarations/spatialderivative-hascompactsupport.md) | 99 | `result-track:2c923bd5094269815d5d4e5cec2596fcdfaee987f839d55d3573e9b01de336ad` |
| 10 | `theorem` | [spatialDerivative_memLp](../../../../MeasureAndIntegration/MixedSourceV2Prebytes.lean/declarations/spatialderivative-memlp.md) | 114 | `result-track:10bd7ce0d0006543e31c8936a4802bd6bf014a1d9611b5fb534c99b05689148a` |
| 11 | `def` | [spatialDerivativeL2](../../../../MeasureAndIntegration/MixedSourceV2Prebytes.lean/declarations/spatialderivativel2.md) | 120 | `declaration-track:5ebcabc7af3d32c1e8b976bb362fcc8fe7fac644a62d49cd4ae23bb2227d0e20` |
| 12 | `theorem` | [spatialDerivativeL2_coe_ae](../../../../MeasureAndIntegration/MixedSourceV2Prebytes.lean/declarations/spatialderivativel2-coe-ae.md) | 124 | `result-track:91bd14697e2db362fbd47ad05b41e7dea527b51b0d74952ccfcd0ff46c802b41` |
| 13 | `def` | [spatialDerivativeState](../../../../MeasureAndIntegration/MixedSourceV2Prebytes.lean/declarations/spatialderivativestate.md) | 134 | `declaration-track:77eed9bde2b4561e6da7e59360997695f7fae8eaad744a0388e0ceb814adb9b9` |
| 14 | `theorem` | [spatialDerivativeState_eq](../../../../MeasureAndIntegration/MixedSourceV2Prebytes.lean/declarations/spatialderivativestate-eq.md) | 138 | `result-track:8ef57a352e79c5eff3d023a7f1a255bc50be2e993e43944434dc59a0d76526c1` |
| 15 | `theorem` | [spatialDerivativeState_coe_ae](../../../../MeasureAndIntegration/MixedSourceV2Prebytes.lean/declarations/spatialderivativestate-coe-ae.md) | 143 | `result-track:658c0acfba107641b9a6a6ffdb2d032b49ede226af5ac9e5b0722156299c4581` |
| 16 | `theorem` | [spatialDerivativeState_norm_sub_sq](../../../../MeasureAndIntegration/MixedSourceV2Prebytes.lean/declarations/spatialderivativestate-norm-sub-sq.md) | 149 | `result-track:d78590c563bc088ac8c1d9f8ae8718a1aac8e7db397e00cb6be17ea83a5023ad` |
| 17 | `theorem` | [spatialDerivative_differenceIntegral_continuousOn](../../../../MeasureAndIntegration/MixedSourceV2Prebytes.lean/declarations/spatialderivative-differenceintegral-continuouson.md) | 170 | `result-track:b280a95eb2465d1c5829efbe23aa6565473bc249f898c9765b728b66fb6b3b9a` |
| 18 | `theorem` | [spatialDerivativeState_continuousAt](../../../../MeasureAndIntegration/MixedSourceV2Prebytes.lean/declarations/spatialderivativestate-continuousat.md) | 194 | `result-track:b315817a16a74431a52542251a0b67bef7b4b490789e830ebbf8d716d4b9be18` |
| 19 | `theorem` | [spatialDerivativeState_continuousOn](../../../../MeasureAndIntegration/MixedSourceV2Prebytes.lean/declarations/spatialderivativestate-continuouson.md) | 214 | `result-track:b637dc46d7a5d568428c49d2b4d6b1b143b08bd899309cc660d99a4510d35fc6` |
| 20 | `theorem` | [real_inner_of_representatives](../../../../MeasureAndIntegration/MixedSourceV2Prebytes.lean/declarations/real-inner-of-representatives.md) | 221 | `result-track:4ec3dcb41a822b17a928da12a204327affcb4e527060b0817feab2b7faae542f` |
| 21 | `theorem` | [translate_real_representative](../../../../MeasureAndIntegration/MixedSourceV2Prebytes.lean/declarations/translate-real-representative.md) | 238 | `result-track:ec5457d49acc788d94e6c1d11b0241d98514f65d7ea16bb907f60e024f0c58a6` |
| 22 | `theorem` | [sourceCorrelationPrime_eq_inner](../../../../MeasureAndIntegration/MixedSourceV2Prebytes.lean/declarations/sourcecorrelationprime-eq-inner.md) | 246 | `result-track:009f1018d8d8d463bd711f25c2d9d1fef15de30642b4380ca6e9ba232d44c3dd` |
| 23 | `theorem` | [mixed_spatialDerivative_inner_neg](../../../../MeasureAndIntegration/MixedSourceV2Prebytes.lean/declarations/mixed-spatialderivative-inner-neg.md) | 255 | `result-track:76d12cf49893d5d43920f0497666c0ec0eedd634629dcba872d532a290f9ec5e` |
| 24 | `theorem` | [sourceCorrelationPrime_sub_eq_mixed](../../../../MeasureAndIntegration/MixedSourceV2Prebytes.lean/declarations/sourcecorrelationprime-sub-eq-mixed.md) | 284 | `result-track:2d8db06bed22cfcc6ec5f67794c39554bb23860e7b16274af0dc5b0c085a0f06` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c6752c20274670381de1d486299107cd948ba437994bf1c72c760c2c3d947efa -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/MixedSourceV2Prebytes/Variant227f152d38ef83c975eb7f470ea52eeac8412fac5b26ff1b1ee2df76ea026223.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/MixedSourceV2Prebytes/Variant227f152d38ef83c975eb7f470ea52eeac8412fac5b26ff1b1ee2df76ea026223.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
