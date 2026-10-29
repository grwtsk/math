# Verification target: Functional Analytic Linear Algebra

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "238d9fa2019c172305c471d42655127b6b2b02a4",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/FunctionalAnalyticLinearAlgebra/Variant7d43d5320f53415828bb8256e12bd7b4f45c6558386daba23abb0946a8fa31d9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/FunctionalAnalyticLinearAlgebra.lean/index.md) · [Full source](../../../../GeneralTopology/FunctionalAnalyticLinearAlgebra.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `238d9fa2019c172305c471d42655127b6b2b02a4`.

Source path: `GRWTSK/Topology/GeneralTopology/FunctionalAnalyticLinearAlgebra/Variant7d43d5320f53415828bb8256e12bd7b4f45c6558386daba23abb0946a8fa31d9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/FunctionalAnalyticLinearAlgebra/Variant7d43d5320f53415828bb8256e12bd7b4f45c6558386daba23abb0946a8fa31d9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.LinearMap.Basic` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Basic` — import line 2; external provider; requires a separately pinned dependency.
- `Think.SourceTree.Legacy.Analysis.AnalyticGenerators` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ContinuousLinearOperatorSkeleton](../../../../GeneralTopology/FunctionalAnalyticLinearAlgebra.lean/declarations/continuouslinearoperatorskeleton.md) | 23 | `declaration-track:6faa263882b8c87379f2e1e8dbf27896ef02a8a531b146acb51562567b2d3808` |
| 2 | `def` | [LinearKernel](../../../../GeneralTopology/FunctionalAnalyticLinearAlgebra.lean/declarations/linearkernel.md) | 37 | `declaration-track:897bd3574c9dca79dd15306c365c3f03c1bc14f018da274c4b1854c5d136e705` |
| 3 | `def` | [LinearRange](../../../../GeneralTopology/FunctionalAnalyticLinearAlgebra.lean/declarations/linearrange.md) | 41 | `declaration-track:940b9580029526d68bf6532b78eaca80f02df3269227ef4328c096ca3273751e` |
| 4 | `def` | [LinearAffineFiber](../../../../GeneralTopology/FunctionalAnalyticLinearAlgebra.lean/declarations/linearaffinefiber.md) | 45 | `declaration-track:774f28c7a6dd529be64d141df908292a15a023fd99f53bb07e1a786a0a3d2561` |
| 5 | `def` | [LinearEqualizer](../../../../GeneralTopology/FunctionalAnalyticLinearAlgebra.lean/declarations/linearequalizer.md) | 49 | `declaration-track:b673a480a7adceb97125b429a016c2d506c9db88c3a87fd27fd4bae8a9a52d9e` |
| 6 | `def` | [LinearConstraintIntersection](../../../../GeneralTopology/FunctionalAnalyticLinearAlgebra.lean/declarations/linearconstraintintersection.md) | 53 | `declaration-track:e6248bf08bd34698b2457e1a4df1c7dd5fa09acaf77ab632dc6eed76a8f508e7` |
| 7 | `theorem` | [linear_affine_fiber_nonempty_iff_range](../../../../GeneralTopology/FunctionalAnalyticLinearAlgebra.lean/declarations/linear-affine-fiber-nonempty-iff-range.md) | 57 | `result-track:3045cb4c3faaf7ab4e73a62d836d23cc6657adc58021d69972c2ec82ead83408` |
| 8 | `theorem` | [linear_affine_fiber_zero_eq_kernel](../../../../GeneralTopology/FunctionalAnalyticLinearAlgebra.lean/declarations/linear-affine-fiber-zero-eq-kernel.md) | 69 | `result-track:845824bb303fc7aa8c61b5976473f987578e65ea103fe7d19c38764bdb19a430` |
| 9 | `inductive` | [LinearAnalyticOperatorForm](../../../../GeneralTopology/FunctionalAnalyticLinearAlgebra.lean/declarations/linearanalyticoperatorform.md) | 80 | `declaration-track:8c64fca9704f20e85fff2f46c03ac39fdd6ffe9f1459651fd2b884e537bdfa11` |
| 10 | `def` | [analyticGeneratorLinearOperatorForm](../../../../GeneralTopology/FunctionalAnalyticLinearAlgebra.lean/declarations/analyticgeneratorlinearoperatorform.md) | 93 | `declaration-track:48dcf0d48db0cb8ed0db48cafea35c0eaccef6dee58f0278e0827346ac33891e` |
| 11 | `theorem` | [analytic_generator_has_linear_operator_form](../../../../GeneralTopology/FunctionalAnalyticLinearAlgebra.lean/declarations/analytic-generator-has-linear-operator-form.md) | 121 | `result-track:312ae737fa6666b5d83a870a21978cdba557a048b78da68a0230ae00b68016f1` |
| 12 | `structure` | [LocalFunctionalAnalyticContext](../../../../GeneralTopology/FunctionalAnalyticLinearAlgebra.lean/declarations/localfunctionalanalyticcontext.md) | 147 | `declaration-track:a935e4161686c3ebd248b1eca670413d37623af93c52b0f2d4a1d166e566d746` |
| 13 | `def` | [LocalAnalyticRange](../../../../GeneralTopology/FunctionalAnalyticLinearAlgebra.lean/declarations/localanalyticrange.md) | 155 | `declaration-track:76b953230f65be95e7b4984e54fbf6578992da3d7b85b775417cf68f8f75da1f` |
| 14 | `def` | [LocalCoefficientFiber](../../../../GeneralTopology/FunctionalAnalyticLinearAlgebra.lean/declarations/localcoefficientfiber.md) | 162 | `declaration-track:de9af7c338a91d22a05c10dc0b5fed6fa6a7ed0dfcfb00b4a2cf91b157790c69` |
| 15 | `theorem` | [local_coefficient_fiber_nonempty_iff_range](../../../../GeneralTopology/FunctionalAnalyticLinearAlgebra.lean/declarations/local-coefficient-fiber-nonempty-iff-range.md) | 169 | `result-track:f2d4901e13ed0d9fa4219fafe8e3dff735e2bd7af0e8d3e30f2b9aab4d95a09e` |
| 16 | `theorem` | [local_analytic_range_subset_analyticSubspace](../../../../GeneralTopology/FunctionalAnalyticLinearAlgebra.lean/declarations/local-analytic-range-subset-analyticsubspace.md) | 184 | `result-track:dc88791786f82fbe05e6aa2325d6b50a80cc76a6ae985240e42b7070e7750f79` |
| 17 | `theorem` | [local_coefficient_fiber_witness_lands_in_analyticSubspace](../../../../GeneralTopology/FunctionalAnalyticLinearAlgebra.lean/declarations/local-coefficient-fiber-witness-lands-in-analyticsubspace.md) | 193 | `result-track:3b4891084bda015abc4a7f6919da274b7033730ee203a4c4f987860fc703aeef` |
| 18 | `structure` | [GlobalFunctionalAnalyticContext](../../../../GeneralTopology/FunctionalAnalyticLinearAlgebra.lean/declarations/globalfunctionalanalyticcontext.md) | 227 | `declaration-track:ba4eb1c7600de83a38226a2193798f58627a7ff14536e2fbd5e8a1e395df366b` |
| 19 | `def` | [GlobalSynthesizedSection](../../../../GeneralTopology/FunctionalAnalyticLinearAlgebra.lean/declarations/globalsynthesizedsection.md) | 238 | `declaration-track:0b545da8918531284b707fce41969f1637b7f6edb6b970be58627e9fa2365abb` |
| 20 | `def` | [GlobalCechEqualizer](../../../../GeneralTopology/FunctionalAnalyticLinearAlgebra.lean/declarations/globalcechequalizer.md) | 246 | `declaration-track:ce24d6d9573ec1f744db5d72017c87839124016a9ffb5b364dee8f588e209469` |
| 21 | `def` | [GlobalIdentification](../../../../GeneralTopology/FunctionalAnalyticLinearAlgebra.lean/declarations/globalidentification.md) | 256 | `declaration-track:f8235dccaa6317402e439ac9523a775496428f0a7a12500b55e2e04b46e94d4e` |
| 22 | `def` | [GlobalCoefficientFiber](../../../../GeneralTopology/FunctionalAnalyticLinearAlgebra.lean/declarations/globalcoefficientfiber.md) | 264 | `declaration-track:2c5bc93ef4ab73cc51050798b2f6bde2581ac9281a94acf72569ebbcecadd023` |
| 23 | `theorem` | [global_coefficient_fiber_requires_equalizer](../../../../GeneralTopology/FunctionalAnalyticLinearAlgebra.lean/declarations/global-coefficient-fiber-requires-equalizer.md) | 274 | `result-track:e85c9c3dc8688605628d1a183d76172f91906a8d9172df418ae2d0284c53e63f` |
| 24 | `theorem` | [global_coefficient_fiber_requires_identification](../../../../GeneralTopology/FunctionalAnalyticLinearAlgebra.lean/declarations/global-coefficient-fiber-requires-identification.md) | 284 | `result-track:79bbd3d04a999e13324c43556afad6fc3cdec81bbb049fe8fb35760c701b125b` |
| 25 | `theorem` | [global_synthesized_section_lands_in_analyticSubspace](../../../../GeneralTopology/FunctionalAnalyticLinearAlgebra.lean/declarations/global-synthesized-section-lands-in-analyticsubspace.md) | 294 | `result-track:ed13f868b3a969b03d1bb414ddb44b210656c2de75bcbab91355b00555112fb4` |
| 26 | `theorem` | [global_coefficient_fiber_lands_in_local_analyticSubspaces](../../../../GeneralTopology/FunctionalAnalyticLinearAlgebra.lean/declarations/global-coefficient-fiber-lands-in-local-analyticsubspaces.md) | 303 | `result-track:4b03df1d955eb20c91ca0e405c7ba9d40dd7496634cd453816b3a8b710e17a1e` |
| 27 | `structure` | [LocalGeneratorOperatorSignature](../../../../GeneralTopology/FunctionalAnalyticLinearAlgebra.lean/declarations/localgeneratoroperatorsignature.md) | 340 | `declaration-track:ebd532b28c3ff384ad826dea9a6c3927ab3bb2e5f8c6ca909adc749666975a66` |
| 28 | `theorem` | [local_generator_operator_signature_lands_in_range](../../../../GeneralTopology/FunctionalAnalyticLinearAlgebra.lean/declarations/local-generator-operator-signature-lands-in-range.md) | 353 | `result-track:d519b0102fd8973628af9029f89c6290f3422d0a6d8ea4551cb125a55e05b8b5` |
| 29 | `theorem` | [local_generator_operator_signature_lands_in_analyticSubspace](../../../../GeneralTopology/FunctionalAnalyticLinearAlgebra.lean/declarations/local-generator-operator-signature-lands-in-analyticsubspace.md) | 363 | `result-track:e6bd4eb12e52b6e4fed351697ad5d3637345f325121ce23761d721f68cb06d3f` |
| 30 | `structure` | [GlobalGeneratorOperatorSignature](../../../../GeneralTopology/FunctionalAnalyticLinearAlgebra.lean/declarations/globalgeneratoroperatorsignature.md) | 379 | `declaration-track:b4c07bc217776badd64f91f91f6c7f56215573aa2b2cbefcf37c8bcad3cc67f3` |
| 31 | `theorem` | [global_generator_operator_signature_satisfies_equalizer](../../../../GeneralTopology/FunctionalAnalyticLinearAlgebra.lean/declarations/global-generator-operator-signature-satisfies-equalizer.md) | 393 | `result-track:1c0013a068dff8d2c1b5cd582780514e3ec1303bdd9d25b970dec30f5c418c2b` |
| 32 | `theorem` | [global_generator_operator_signature_identifies_restrictions](../../../../GeneralTopology/FunctionalAnalyticLinearAlgebra.lean/declarations/global-generator-operator-signature-identifies-restrictions.md) | 405 | `result-track:8a082647f4b23d6d8fc5ce84c2ce19a98edd6a1a04f43e95dee070d3a58b366e` |
| 33 | `theorem` | [global_generator_operator_signature_lands_in_local_analyticSubspaces](../../../../GeneralTopology/FunctionalAnalyticLinearAlgebra.lean/declarations/global-generator-operator-signature-lands-in-local-analyticsubspaces.md) | 417 | `result-track:b0eca61c444a5e48357fb4718141408a869445fc3452eceaf9bb67e891fc4124` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0aa0a1babfa09b7ccd14cbc9da1c6490c251992e209bf4d74d0a09b2a4b360e5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/FunctionalAnalyticLinearAlgebra/Variant7d43d5320f53415828bb8256e12bd7b4f45c6558386daba23abb0946a8fa31d9.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/FunctionalAnalyticLinearAlgebra/Variant7d43d5320f53415828bb8256e12bd7b4f45c6558386daba23abb0946a8fa31d9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
