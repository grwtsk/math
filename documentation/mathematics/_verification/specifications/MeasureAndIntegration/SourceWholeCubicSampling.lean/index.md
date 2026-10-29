# Verification target: Source Whole Cubic Sampling

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "521fe18234c7b0fa00ae03ac408ff11f826231ae",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceWholeCubicSampling/Variantab676cf6313d15717c96d309dc744e34f1eae16d30826493a828f6000cd7b0e0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/SourceWholeCubicSampling.lean/index.md) · [Full source](../../../../MeasureAndIntegration/SourceWholeCubicSampling.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `521fe18234c7b0fa00ae03ac408ff11f826231ae`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceWholeCubicSampling/Variantab676cf6313d15717c96d309dc744e34f1eae16d30826493a828f6000cd7b0e0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceWholeCubicSampling/Variantab676cf6313d15717c96d309dc744e34f1eae16d30826493a828f6000cd7b0e0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceCubicSamplingRemainder` — import line 1; external provider; requires a separately pinned dependency.
- `SourceFullPositiveKappa` — import line 2; external provider; requires a separately pinned dependency.
- `SourceFullDivisorLogInventory` — import line 3; external provider; requires a separately pinned dependency.
- `SourceActualCubicCenteredRows` — import line 4; external provider; requires a separately pinned dependency.
- `SourceResidualBudget` — import line 5; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceFractionalQuadrature` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [wholeCubicMajorant](../../../../MeasureAndIntegration/SourceWholeCubicSampling.lean/declarations/wholecubicmajorant.md) | 28 | `declaration-track:4589b94255a0d25f3b403a559205d7b3f4d974482ad1960dac384df46bb0ee20` |
| 2 | `def` | [wholeCubicErrorRow](../../../../MeasureAndIntegration/SourceWholeCubicSampling.lean/declarations/wholecubicerrorrow.md) | 33 | `declaration-track:73109cd2120d34eddfeb34d4e417452ec09735374bfbdaf0929054bc912cb03e` |
| 3 | `theorem` | [cubic_log_error_all_positive](../../../../MeasureAndIntegration/SourceWholeCubicSampling.lean/declarations/cubic-log-error-all-positive.md) | 38 | `result-track:233f3abba2d7ff5ff6b30630414a908a1875e2e3ca5d7440061855973e1cc2c0` |
| 4 | `theorem` | [wholeCubicMajorant_integrable](../../../../MeasureAndIntegration/SourceWholeCubicSampling.lean/declarations/wholecubicmajorant-integrable.md) | 67 | `result-track:1dc8a0efab561bd9b400b15794325b5f4bc5d24018b4524cab7d3157829d3395` |
| 5 | `theorem` | [actual_whole_error_le_majorant](../../../../MeasureAndIntegration/SourceWholeCubicSampling.lean/declarations/actual-whole-error-le-majorant.md) | 72 | `result-track:70fc408a8bcbbb7a563b92e86a680b706b9af75e636393f811bd188e8049b18e` |
| 6 | `theorem` | [actual_whole_error_integrable](../../../../MeasureAndIntegration/SourceWholeCubicSampling.lean/declarations/actual-whole-error-integrable.md) | 86 | `result-track:e1cf2913f6828c2bf310680a80e666c29af1d943c268fc40a6c346cfdd59c755` |
| 7 | `theorem` | [wholeCubicMajorant_integral_le](../../../../MeasureAndIntegration/SourceWholeCubicSampling.lean/declarations/wholecubicmajorant-integral-le.md) | 97 | `result-track:09c86e4fa9a8f4adb5dec4564832b7022716d53c2ccbc4e3b9eb4d9ce8a83bb8` |
| 8 | `theorem` | [wholeCubicErrorRow_abs_le](../../../../MeasureAndIntegration/SourceWholeCubicSampling.lean/declarations/wholecubicerrorrow-abs-le.md) | 114 | `result-track:7ee562d3566617755fd9c5c93b47e193ed23ca5b58012890b91a04f1ee564d85` |
| 9 | `theorem` | [whole_short_error_abs_le](../../../../MeasureAndIntegration/SourceWholeCubicSampling.lean/declarations/whole-short-error-abs-le.md) | 124 | `result-track:e2eccbef10eb3851b42f1b38bade9aebe1b1588e652ddb40a51e8f732cb08da1` |
| 10 | `def` | [wholeCubicMainTerm](../../../../MeasureAndIntegration/SourceWholeCubicSampling.lean/declarations/wholecubicmainterm.md) | 151 | `declaration-track:c09cb5891f192aa66a0c9520804fae47d7adb15526f9af3e3d1a88ca360375ee` |
| 11 | `theorem` | [full_model_density_eq](../../../../MeasureAndIntegration/SourceWholeCubicSampling.lean/declarations/full-model-density-eq.md) | 160 | `result-track:751646641f39f657f486a11ac166eba4c567f4e28351b68f4d06a5563d7f8551` |
| 12 | `theorem` | [full_model_integrable](../../../../MeasureAndIntegration/SourceWholeCubicSampling.lean/declarations/full-model-integrable.md) | 176 | `result-track:248f0c73b8b92d441a7fa86762a7712b42c47e9445852db336011053423e5953` |
| 13 | `theorem` | [full_model_integral_eq_main](../../../../MeasureAndIntegration/SourceWholeCubicSampling.lean/declarations/full-model-integral-eq-main.md) | 184 | `result-track:7cbd650ccb31f9199ca15fdf7e2ce19585cc5e43e137edffe179f5b6d4e88868` |
| 14 | `theorem` | [actual_samples_eq_full_main_add_error](../../../../MeasureAndIntegration/SourceWholeCubicSampling.lean/declarations/actual-samples-eq-full-main-add-error.md) | 206 | `result-track:a0533d3e6c76701cc08b579a56fdeb80cac78470c8eaff51ae35f033b3703b19` |
| 15 | `theorem` | [actual_residual_eq_full_short_main_add_complement_add_error](../../../../MeasureAndIntegration/SourceWholeCubicSampling.lean/declarations/actual-residual-eq-full-short-main-add-complement-add-error.md) | 227 | `result-track:d2da01adc03bfbc616ee0c53a10c2567a99f727dcdc5b5a68a2c49aa29516425` |
| 16 | `theorem` | [residual_upper_of_joint_full_block](../../../../MeasureAndIntegration/SourceWholeCubicSampling.lean/declarations/residual-upper-of-joint-full-block.md) | 249 | `result-track:d4b6e7e7378156a562a1b872a1a66ef15eb2b2da7be1cc191f20b99e0e7bf538` |
| 17 | `theorem` | [residual_upper_of_joint_full_block_at_radius](../../../../MeasureAndIntegration/SourceWholeCubicSampling.lean/declarations/residual-upper-of-joint-full-block-at-radius.md) | 258 | `result-track:22b2e25740e40e4abf29b103cc06368926912f131d166ec87796e9a50dd59e20` |
| 18 | `def` | [wholeCubicResidualBudget](../../../../MeasureAndIntegration/SourceWholeCubicSampling.lean/declarations/wholecubicresidualbudget.md) | 271 | `declaration-track:c41f7cdec0f362a0bd3c7979b023c4f04d827f6fb0a94d62f2dd599126b42b29` |
| 19 | `theorem` | [wholeCubicResidualBudget_nonneg](../../../../MeasureAndIntegration/SourceWholeCubicSampling.lean/declarations/wholecubicresidualbudget-nonneg.md) | 273 | `result-track:5562f085b1086b78d9bc5db60179593c82716d3cb032eaba27292fc30cdcfad1` |
| 20 | `theorem` | [residual_witness_of_joint_full_block](../../../../MeasureAndIntegration/SourceWholeCubicSampling.lean/declarations/residual-witness-of-joint-full-block.md) | 276 | `result-track:176cab5ee92aea95a829f4670e57c439b7c4748d7a2fad1b151223749977b514` |
| 21 | `theorem` | [all_real_lower_of_joint_full_block](../../../../MeasureAndIntegration/SourceWholeCubicSampling.lean/declarations/all-real-lower-of-joint-full-block.md) | 288 | `result-track:f9f503b42f2af8bff4330463052b641130976e8ba00a346e0260495d3fe03b71` |
| 22 | `theorem` | [estimate_of_joint_full_block](../../../../MeasureAndIntegration/SourceWholeCubicSampling.lean/declarations/estimate-of-joint-full-block.md) | 301 | `result-track:4ab7890b8a9b7902142ffcc25d1dd4a49b78128b024e1652b2c04feb580b3e13` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=299234ab5f7672c2fd3e2bcabf639fb62454868736f74dccb4d5500190cef981 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/SourceWholeCubicSampling/Variantab676cf6313d15717c96d309dc744e34f1eae16d30826493a828f6000cd7b0e0.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/SourceWholeCubicSampling/Variantab676cf6313d15717c96d309dc744e34f1eae16d30826493a828f6000cd7b0e0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
