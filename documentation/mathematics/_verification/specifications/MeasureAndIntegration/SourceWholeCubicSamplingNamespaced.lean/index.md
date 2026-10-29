# Verification target: Source Whole Cubic Sampling Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c297c5e62be30ac4dd7a8ca7df805225e058c9c4",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceWholeCubicSampling/Variant1732a03ee2cad3c798451e3d0f2ab0e0339e93527b551b17de7c3482c557c67b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/SourceWholeCubicSamplingNamespaced.lean/index.md) · [Full source](../../../../MeasureAndIntegration/SourceWholeCubicSamplingNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c297c5e62be30ac4dd7a8ca7df805225e058c9c4`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceWholeCubicSampling/Variant1732a03ee2cad3c798451e3d0f2ab0e0339e93527b551b17de7c3482c557c67b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceWholeCubicSampling/Variant1732a03ee2cad3c798451e3d0f2ab0e0339e93527b551b17de7c3482c557c67b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceCubicSamplingRemainder` — import line 6; external provider; requires a separately pinned dependency.
- `SourceFullPositiveKappa` — import line 7; external provider; requires a separately pinned dependency.
- `SourceFullDivisorLogInventory` — import line 8; external provider; requires a separately pinned dependency.
- `SourceActualCubicCenteredRows` — import line 9; external provider; requires a separately pinned dependency.
- `SourceResidualBudget` — import line 10; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceFractionalQuadrature` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [wholeCubicMajorant](../../../../MeasureAndIntegration/SourceWholeCubicSamplingNamespaced.lean/declarations/wholecubicmajorant.md) | 36 | `declaration-track:824022c1ef4c769d399212f44830a93c2ab450343f22bf9157efbd2685e22904` |
| 2 | `def` | [wholeCubicErrorRow](../../../../MeasureAndIntegration/SourceWholeCubicSamplingNamespaced.lean/declarations/wholecubicerrorrow.md) | 41 | `declaration-track:d886023d13afc52b8f6fcdb6d6e91548eb5f13b998607542f48b47ef4782ee85` |
| 3 | `theorem` | [cubic_log_error_all_positive](../../../../MeasureAndIntegration/SourceWholeCubicSamplingNamespaced.lean/declarations/cubic-log-error-all-positive.md) | 46 | `result-track:b431aa9c68aaf4545ecf0e384ac13699339da076cc8cf600cad6f4536299961c` |
| 4 | `theorem` | [wholeCubicMajorant_integrable](../../../../MeasureAndIntegration/SourceWholeCubicSamplingNamespaced.lean/declarations/wholecubicmajorant-integrable.md) | 75 | `result-track:1133bbb4e55f0704cf05c81e048a1d61692b0fef587115dde58e801a2cd42be7` |
| 5 | `theorem` | [actual_whole_error_le_majorant](../../../../MeasureAndIntegration/SourceWholeCubicSamplingNamespaced.lean/declarations/actual-whole-error-le-majorant.md) | 80 | `result-track:b89e2abaea2a1016da27fc2226d72000a336002125ad98b988b39aaaba7c32d0` |
| 6 | `theorem` | [actual_whole_error_integrable](../../../../MeasureAndIntegration/SourceWholeCubicSamplingNamespaced.lean/declarations/actual-whole-error-integrable.md) | 94 | `result-track:93671b9a255900444823df1b360048b4ccab83d2dfd9622843dbf15876b1569a` |
| 7 | `theorem` | [wholeCubicMajorant_integral_le](../../../../MeasureAndIntegration/SourceWholeCubicSamplingNamespaced.lean/declarations/wholecubicmajorant-integral-le.md) | 105 | `result-track:20aacd3099390cd0886bb5ba19e0397964fc66d5c7e527ec16a4de3af53a1d5e` |
| 8 | `theorem` | [wholeCubicErrorRow_abs_le](../../../../MeasureAndIntegration/SourceWholeCubicSamplingNamespaced.lean/declarations/wholecubicerrorrow-abs-le.md) | 122 | `result-track:5680a27f364923f5b968499dc2a4da2c7fbdd3f85217c66f755bc2011b319ee9` |
| 9 | `theorem` | [whole_short_error_abs_le](../../../../MeasureAndIntegration/SourceWholeCubicSamplingNamespaced.lean/declarations/whole-short-error-abs-le.md) | 132 | `result-track:ec2df77a8f570f5ec09b76df180aa0d392e4b3d7746beff0da63d77f300650f0` |
| 10 | `def` | [wholeCubicMainTerm](../../../../MeasureAndIntegration/SourceWholeCubicSamplingNamespaced.lean/declarations/wholecubicmainterm.md) | 159 | `declaration-track:348b94712864c94f611e8a3b49c34d61dc15cc158c4da1b7475c44e7cc392cf7` |
| 11 | `theorem` | [full_model_density_eq](../../../../MeasureAndIntegration/SourceWholeCubicSamplingNamespaced.lean/declarations/full-model-density-eq.md) | 168 | `result-track:735207782ce68ac67e8c284282a5b6a8eafe6096413fda65eccfe8e900007b8d` |
| 12 | `theorem` | [full_model_integrable](../../../../MeasureAndIntegration/SourceWholeCubicSamplingNamespaced.lean/declarations/full-model-integrable.md) | 184 | `result-track:2cb26279fc666b165e18675792f866a685ae2c33231d20ae145f4fccd85dea9b` |
| 13 | `theorem` | [full_model_integral_eq_main](../../../../MeasureAndIntegration/SourceWholeCubicSamplingNamespaced.lean/declarations/full-model-integral-eq-main.md) | 192 | `result-track:6aae14efbac9700acf78059b316d4bcd5c78c002caafed05817959e91c58dca5` |
| 14 | `theorem` | [actual_samples_eq_full_main_add_error](../../../../MeasureAndIntegration/SourceWholeCubicSamplingNamespaced.lean/declarations/actual-samples-eq-full-main-add-error.md) | 214 | `result-track:4a2d988af924fc4e0b7f2d0a19a1e69fcc64de5132988b525b9e0d20be747ee6` |
| 15 | `theorem` | [actual_residual_eq_full_short_main_add_complement_add_error](../../../../MeasureAndIntegration/SourceWholeCubicSamplingNamespaced.lean/declarations/actual-residual-eq-full-short-main-add-complement-add-error.md) | 235 | `result-track:9b8ee7108617d81567df5e663f68ba397e1dab97dde87bf333cd0eee4f233cd5` |
| 16 | `theorem` | [residual_upper_of_joint_full_block](../../../../MeasureAndIntegration/SourceWholeCubicSamplingNamespaced.lean/declarations/residual-upper-of-joint-full-block.md) | 257 | `result-track:60802c235ac57404ffb87933611310f981573cdf4e082b32bae8eac93964ca35` |
| 17 | `theorem` | [residual_upper_of_joint_full_block_at_radius](../../../../MeasureAndIntegration/SourceWholeCubicSamplingNamespaced.lean/declarations/residual-upper-of-joint-full-block-at-radius.md) | 266 | `result-track:14785a2b13e274d72601b06dd6286979712b533d5ff5a6002e70d057af7d8e0f` |
| 18 | `def` | [wholeCubicResidualBudget](../../../../MeasureAndIntegration/SourceWholeCubicSamplingNamespaced.lean/declarations/wholecubicresidualbudget.md) | 279 | `declaration-track:f5a1e6ae537e827a8ab75e9260183adfec3c685f1a55da7310b5bb090606a92f` |
| 19 | `theorem` | [wholeCubicResidualBudget_nonneg](../../../../MeasureAndIntegration/SourceWholeCubicSamplingNamespaced.lean/declarations/wholecubicresidualbudget-nonneg.md) | 281 | `result-track:bbeedf57b1f708fc7c4066c116c88261a36cf852a3a36e07c84330ab1f7dadbb` |
| 20 | `theorem` | [residual_witness_of_joint_full_block](../../../../MeasureAndIntegration/SourceWholeCubicSamplingNamespaced.lean/declarations/residual-witness-of-joint-full-block.md) | 284 | `result-track:87cb3880044f14a58b6f79837dd51f84f9a107ef3ee8a437599d01360c2cbb79` |
| 21 | `theorem` | [all_real_lower_of_joint_full_block](../../../../MeasureAndIntegration/SourceWholeCubicSamplingNamespaced.lean/declarations/all-real-lower-of-joint-full-block.md) | 296 | `result-track:86c7849cd58a77ba1a714db3f73bc578e19182cee7ae6c716b07ae4bbd5b2bb6` |
| 22 | `theorem` | [estimate_of_joint_full_block](../../../../MeasureAndIntegration/SourceWholeCubicSamplingNamespaced.lean/declarations/estimate-of-joint-full-block.md) | 309 | `result-track:2fd6185502796ce7e866996db819ce0e5db83f63a3256a2b146eadda2022bee8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=110bc17af92492ff817ad81554c78395320e8bc1f1c7125b5d6338397dbc8cf9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/SourceWholeCubicSampling/Variant1732a03ee2cad3c798451e3d0f2ab0e0339e93527b551b17de7c3482c557c67b.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/SourceWholeCubicSampling/Variant1732a03ee2cad3c798451e3d0f2ab0e0339e93527b551b17de7c3482c557c67b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
