# Verification target: Zero Smoothing Transform Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ad4aa115205e5181a9abe457bf23e104a0826106",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ZeroSmoothingTransform/Variant167217ee83309ef1fd366a5b6a7bfa93ff8273e2c01b43fcd7863444596e8f55.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/ZeroSmoothingTransformNamespaced.lean/index.md) · [Full source](../../../../MeasureAndIntegration/ZeroSmoothingTransformNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ad4aa115205e5181a9abe457bf23e104a0826106`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ZeroSmoothingTransform/Variant167217ee83309ef1fd366a5b6a7bfa93ff8273e2c01b43fcd7863444596e8f55.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ZeroSmoothingTransform/Variant167217ee83309ef1fd366a5b6a7bfa93ff8273e2c01b43fcd7863444596e8f55.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroSmoothingMultiplier` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroTransform` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [smoothedBilateralTransform](../../../../MeasureAndIntegration/ZeroSmoothingTransformNamespaced.lean/declarations/smoothedbilateraltransform.md) | 32 | `declaration-track:5c560a86da11168d6c39849ab308bbd186fed1c53ca81884beae288a7b89994e` |
| 2 | `theorem` | [smoothed_transform_integrand_integrable](../../../../MeasureAndIntegration/ZeroSmoothingTransformNamespaced.lean/declarations/smoothed-transform-integrand-integrable.md) | 36 | `result-track:1c1c991d164aaf9c39dd58c5a7cfde42393d2de7089ab115077f55b488f50757` |
| 3 | `theorem` | [smoothed_weighted_eq_convolution](../../../../MeasureAndIntegration/ZeroSmoothingTransformNamespaced.lean/declarations/smoothed-weighted-eq-convolution.md) | 49 | `result-track:4036964c03a42a96a067e0fead745d4344f01805713a68b592e35a9f4263f221` |
| 4 | `theorem` | [weighted_convolution_integrand_integrable](../../../../MeasureAndIntegration/ZeroSmoothingTransformNamespaced.lean/declarations/weighted-convolution-integrand-integrable.md) | 71 | `result-track:1a8fdf671b292b0e26bb5f4d68961244beb286a1db2671fa3c1133dd36f70da7` |
| 5 | `theorem` | [weighted_convolution_integrable_at](../../../../MeasureAndIntegration/ZeroSmoothingTransformNamespaced.lean/declarations/weighted-convolution-integrable-at.md) | 82 | `result-track:28ce54fd51695ce92376e145e1027dcbf0a27780a9549867504ce1200d00b36d` |
| 6 | `theorem` | [smoothed_bilateral_transform](../../../../MeasureAndIntegration/ZeroSmoothingTransformNamespaced.lean/declarations/smoothed-bilateral-transform.md) | 92 | `result-track:f07b6aacc3c5339aad0e31f3c3df8032f9c01bd5b0f5d3318d0360bfbf5380c5` |
| 7 | `theorem` | [smoothed_bilateral_transform_zeroOccurrence](../../../../MeasureAndIntegration/ZeroSmoothingTransformNamespaced.lean/declarations/smoothed-bilateral-transform-zerooccurrence.md) | 102 | `result-track:b904b1dd825db46628fea2837f20410e728d26484c609ab5bd433aae6cb739df` |
| 8 | `theorem` | [source_transform_control](../../../../MeasureAndIntegration/ZeroSmoothingTransformNamespaced.lean/declarations/source-transform-control.md) | 110 | `result-track:a76633ada4d0b530ca3de4443469e644ad88149801985d6f8d825b9599632beb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9404bc9376dff9726c881554a2c7401869abec0f76d2e94555b945a565bdfec5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/ZeroSmoothingTransform/Variant167217ee83309ef1fd366a5b6a7bfa93ff8273e2c01b43fcd7863444596e8f55.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/ZeroSmoothingTransform/Variant167217ee83309ef1fd366a5b6a7bfa93ff8273e2c01b43fcd7863444596e8f55.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
