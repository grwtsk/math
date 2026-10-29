# Verification target: Smooth Explicit Formula Namespaced Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4a4d0ecee183686a9028c465233acd57b64fc3b6",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SmoothExplicitFormula/Variantc74b4357242af28c5a398595a3ac93040facd4e4e6c2670ef8d4ccd3b87d0c19.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/SmoothExplicitFormulaNamespacedEdition1.lean/index.md) · [Full source](../../../../MeasureAndIntegration/SmoothExplicitFormulaNamespacedEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4a4d0ecee183686a9028c465233acd57b64fc3b6`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SmoothExplicitFormula/Variantc74b4357242af28c5a398595a3ac93040facd4e4e6c2670ef8d4ccd3b87d0c19.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SmoothExplicitFormula/Variantc74b4357242af28c5a398595a3ac93040facd4e4e6c2670ef8d4ccd3b87d0c19.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroSmoothingLogarithmic` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroShellCount` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ContDiff.Convolution` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Group.InfiniteSum` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [polynomial_norm_le](../../../../MeasureAndIntegration/SmoothExplicitFormulaNamespacedEdition1.lean/declarations/polynomial-norm-le.md) | 47 | `result-track:94b5314149c4af52c2a4bdbe22dc0f4aefe94f91376ccb5fdf833810153f5ce4` |
| 2 | `def` | [decayConstant](../../../../MeasureAndIntegration/SmoothExplicitFormulaNamespacedEdition1.lean/declarations/decayconstant.md) | 70 | `declaration-track:e564fc68cc258900d70ecbc1143af1a4b9cdc496bc936bd3bfee1e7e7f7cbb45` |
| 3 | `theorem` | [transform_norm_le](../../../../MeasureAndIntegration/SmoothExplicitFormulaNamespacedEdition1.lean/declarations/transform-norm-le.md) | 72 | `result-track:211d4a8d636e992921f8511f5a77c22363823c65f1a2a61e8900b47fcf2b1335` |
| 4 | `theorem` | [transform_square_norm_le](../../../../MeasureAndIntegration/SmoothExplicitFormulaNamespacedEdition1.lean/declarations/transform-square-norm-le.md) | 125 | `result-track:e7268987b42f51c16bf18199179ad90e17b4a58ae22a95ba9b0f0ed103b7dba1` |
| 5 | `theorem` | [eventually_one_le_shifted_norm](../../../../MeasureAndIntegration/SmoothExplicitFormulaNamespacedEdition1.lean/declarations/eventually-one-le-shifted-norm.md) | 150 | `result-track:9e2b2ad9ecb73004479085e9c372e131ee079ae462261a3d4eecf534c4555690` |
| 6 | `theorem` | [source_transform_square_norms_summable](../../../../MeasureAndIntegration/SmoothExplicitFormulaNamespacedEdition1.lean/declarations/source-transform-square-norms-summable.md) | 158 | `result-track:b22045e1b2c3ba0440058f2d5742e613ad351a419e52bc76843f8601325e121c` |
| 7 | `theorem` | [smoothed_square_norm_le](../../../../MeasureAndIntegration/SmoothExplicitFormulaNamespacedEdition1.lean/declarations/smoothed-square-norm-le.md) | 168 | `result-track:2902923ee528bddaef7c42e4d3c6d216f496d4cf02d3971a4790dd2c7d0bfad3` |
| 8 | `theorem` | [smoothed_squares_summable](../../../../MeasureAndIntegration/SmoothExplicitFormulaNamespacedEdition1.lean/declarations/smoothed-squares-summable.md) | 188 | `result-track:4f36403429ae4175a324cbd2574264f384afd74ca46be98c3cfa37b3ec05ffab` |
| 9 | `def` | [correlation](../../../../MeasureAndIntegration/SmoothExplicitFormulaNamespacedEdition1.lean/declarations/correlation.md) | 198 | `declaration-track:2ff54beffa8f647a21e4c6a9dee304fe2af97d41de4b93fbe42e39e72752274a` |
| 10 | `def` | [bilateral](../../../../MeasureAndIntegration/SmoothExplicitFormulaNamespacedEdition1.lean/declarations/bilateral.md) | 200 | `declaration-track:3417fc53126f1dc97804e71c07db41f04f01fd717d0a4cc9d747dcea5128deef` |
| 11 | `theorem` | [weighted_integrable](../../../../MeasureAndIntegration/SmoothExplicitFormulaNamespacedEdition1.lean/declarations/weighted-integrable.md) | 203 | `result-track:8ee3cdd8097258ec6258ed4ace0eaecaba406771dcf867d537670ce8f210fb39` |
| 12 | `theorem` | [correlation_eq_convolution](../../../../MeasureAndIntegration/SmoothExplicitFormulaNamespacedEdition1.lean/declarations/correlation-eq-convolution.md) | 212 | `result-track:c71a25efc75217a1eaedabea22706d3e1087903d94bd0eb4422e9cfe07916f1d` |
| 13 | `theorem` | [correlation_even](../../../../MeasureAndIntegration/SmoothExplicitFormulaNamespacedEdition1.lean/declarations/correlation-even.md) | 219 | `result-track:da36585075c2a6aaf367393c184896bedf9dd71cd59597c938bb38405e6e36bf` |
| 14 | `theorem` | [correlation_contDiff](../../../../MeasureAndIntegration/SmoothExplicitFormulaNamespacedEdition1.lean/declarations/correlation-contdiff.md) | 226 | `result-track:804f119d2b611e731ac89bbe403781dee47ca40cfac11cb719965a7cb44418e0` |
| 15 | `theorem` | [correlation_support_subset](../../../../MeasureAndIntegration/SmoothExplicitFormulaNamespacedEdition1.lean/declarations/correlation-support-subset.md) | 232 | `result-track:4b57942afac70c491448aceb1df69bd22040b44910bfa9c42d557e5a64aa5fcc` |
| 16 | `theorem` | [weighted_correlation_eq_convolution](../../../../MeasureAndIntegration/SmoothExplicitFormulaNamespacedEdition1.lean/declarations/weighted-correlation-eq-convolution.md) | 243 | `result-track:f57e6b64b6f483b5dcb24fc9d76bff8ff0afd3119a596873840e5bd822bca544` |
| 17 | `theorem` | [weighted_product_integrable](../../../../MeasureAndIntegration/SmoothExplicitFormulaNamespacedEdition1.lean/declarations/weighted-product-integrable.md) | 265 | `result-track:9133bfee8c61eca95b77b192b749917d584fd227f1fd38eda5715799054983b8` |
| 18 | `theorem` | [bilateral_correlation](../../../../MeasureAndIntegration/SmoothExplicitFormulaNamespacedEdition1.lean/declarations/bilateral-correlation.md) | 274 | `result-track:c0c342ab1776c0d10bcf785ccfac21b136fd80230cf8ed341c00bf270144b7a8` |
| 19 | `def` | [smoothKernel](../../../../MeasureAndIntegration/SmoothExplicitFormulaNamespacedEdition1.lean/declarations/smoothkernel.md) | 285 | `declaration-track:21e67e25c3bdda6278c7120762992b628ce7d7b230a3dae93e900e21f5ea0a27` |
| 20 | `def` | [smoothKernelFT](../../../../MeasureAndIntegration/SmoothExplicitFormulaNamespacedEdition1.lean/declarations/smoothkernelft.md) | 289 | `declaration-track:95ccb2f6e85d583d849d66c80d1be8d1fa9c78fad57b955bb68a910cdf0e0b7a` |
| 21 | `theorem` | [smoothKernelFT_eq_square](../../../../MeasureAndIntegration/SmoothExplicitFormulaNamespacedEdition1.lean/declarations/smoothkernelft-eq-square.md) | 294 | `result-track:2961cdec40e00957131d45c9b4f6b4b478bc945d619cf12b7e48ccad99a543cf` |
| 22 | `theorem` | [smoothKernelFT_shifted](../../../../MeasureAndIntegration/SmoothExplicitFormulaNamespacedEdition1.lean/declarations/smoothkernelft-shifted.md) | 307 | `result-track:c24e2350bac09685acfb34324b006498a70225d91b5b4eaae4f032489aec8bda` |
| 23 | `theorem` | [smoothed_pole_bilateral](../../../../MeasureAndIntegration/SmoothExplicitFormulaNamespacedEdition1.lean/declarations/smoothed-pole-bilateral.md) | 316 | `result-track:b41f0a0942f1266ac69fbb63792b75cb00ea2e21b84eea61164b615ee50457a0` |
| 24 | `def` | [SmoothExplicitFormulaObligation](../../../../MeasureAndIntegration/SmoothExplicitFormulaNamespacedEdition1.lean/declarations/smoothexplicitformulaobligation.md) | 332 | `declaration-track:711b02fd76580b1185d35aeeef9e05f1ba694eacb0124f1ec0ed8325cfdfadb5` |
| 25 | `theorem` | [smooth_kernel_admission](../../../../MeasureAndIntegration/SmoothExplicitFormulaNamespacedEdition1.lean/declarations/smooth-kernel-admission.md) | 342 | `result-track:8f4626d15b75f40584c7b5137b1418baf55f2142881f4bc91b1067e8fdbc4cf0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1fcede99b075a140331887ecef7815efc7635fa391b1128a03613fe551831c72 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/SmoothExplicitFormula/Variantc74b4357242af28c5a398595a3ac93040facd4e4e6c2670ef8d4ccd3b87d0c19.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/SmoothExplicitFormula/Variantc74b4357242af28c5a398595a3ac93040facd4e4e6c2670ef8d4ccd3b87d0c19.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
