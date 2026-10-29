# Verification target: Source Actual Complex Endpoint Asymptotic Namespaced Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "288c655170afa005f52e1448e04a990cd6543310",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variantb780032113412bccfd7384fb7d777defb4984e721eeda41745e07f9c67fb7760.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/SourceActualComplexEndpointAsymptoticNamespacedEdition2.lean/index.md) · [Full source](../../../../MeasureAndIntegration/SourceActualComplexEndpointAsymptoticNamespacedEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `288c655170afa005f52e1448e04a990cd6543310`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variantb780032113412bccfd7384fb7d777defb4984e721eeda41745e07f9c67fb7760.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variantb780032113412bccfd7384fb7d777defb4984e721eeda41745e07f9c67fb7760.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceActualEdgeLeadingLimit` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Gaussian.GaussianIntegral` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [actualEndpointExtension](../../../../MeasureAndIntegration/SourceActualComplexEndpointAsymptoticNamespacedEdition2.lean/declarations/actualendpointextension.md) | 32 | `declaration-track:daf2f8d84b12c51cdb557d96a71588e3f13d44fe06a74e48740731575a85dc7c` |
| 2 | `def` | [actualComplexEndpointIntegrand](../../../../MeasureAndIntegration/SourceActualComplexEndpointAsymptoticNamespacedEdition2.lean/declarations/actualcomplexendpointintegrand.md) | 36 | `declaration-track:41dec0ddbc7155a882cfbfd4b723a0626c0cddbde000911fb76a2d6d5db8f1aa` |
| 3 | `def` | [actualLeadingComplexCoefficient](../../../../MeasureAndIntegration/SourceActualComplexEndpointAsymptoticNamespacedEdition2.lean/declarations/actualleadingcomplexcoefficient.md) | 40 | `declaration-track:bbd21c8aa995cdaa1a365d7652f288ce39586e0bbad44943415e68b6f6362589` |
| 4 | `theorem` | [actualEndpointMajorant_integrable](../../../../MeasureAndIntegration/SourceActualComplexEndpointAsymptoticNamespacedEdition2.lean/declarations/actualendpointmajorant-integrable.md) | 45 | `result-track:dfd18acbbca98f1ce677474f6dd1b59614111dffa64d25a3bb176492edbe81ff` |
| 5 | `theorem` | [actualComplexEndpointIntegrand_norm_le](../../../../MeasureAndIntegration/SourceActualComplexEndpointAsymptoticNamespacedEdition2.lean/declarations/actualcomplexendpointintegrand-norm-le.md) | 56 | `result-track:35fea58dd3a265b1201bfe213bac049cb18fef57be0d293b7ad93f6129061973` |
| 6 | `theorem` | [actualComplexEndpointIntegrand_aestronglyMeasurable](../../../../MeasureAndIntegration/SourceActualComplexEndpointAsymptoticNamespacedEdition2.lean/declarations/actualcomplexendpointintegrand-aestronglymeasurable.md) | 71 | `result-track:dc082a41ee086ffd9838910dda31ff550705b5b4cb0ca9f50c73f02dc8650b2e` |
| 7 | `theorem` | [actualComplexEndpointIntegrand_integrable](../../../../MeasureAndIntegration/SourceActualComplexEndpointAsymptoticNamespacedEdition2.lean/declarations/actualcomplexendpointintegrand-integrable.md) | 80 | `result-track:9d27d31d95cd7565cfe2baac67dfc2b0f772ae80ae7a6f46cfdb280cd0e95e4b` |
| 8 | `theorem` | [actualComplexEndpointIntegrand_tendsto](../../../../MeasureAndIntegration/SourceActualComplexEndpointAsymptoticNamespacedEdition2.lean/declarations/actualcomplexendpointintegrand-tendsto.md) | 88 | `result-track:85c6f9bcbcbb3677235ae5ee221a04f9a67f3b72bd5502ad26792bce78153d05` |
| 9 | `theorem` | [actualComplexEndpoint_integral_tendsto](../../../../MeasureAndIntegration/SourceActualComplexEndpointAsymptoticNamespacedEdition2.lean/declarations/actualcomplexendpoint-integral-tendsto.md) | 100 | `result-track:8078f8210adfa97e5461b0f545c167e45c8a64e7f58d27313c0937c251fab768` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=855b4a6223aceb150af67e3824cdcff16845518d4985e9362e1380f6510bf3fc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variantb780032113412bccfd7384fb7d777defb4984e721eeda41745e07f9c67fb7760.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variantb780032113412bccfd7384fb7d777defb4984e721eeda41745e07f9c67fb7760.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
