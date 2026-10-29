# Verification target: Bridge Normalization Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0785a00e62ec1600da89231a5d3deafb15f10bca",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/BridgeNormalization/Variant790c4045cf1e6a745981719beb0e9ad8ed6bdc0fdb1ccb12ff44ba1671a558c7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/BridgeNormalizationEdition2.lean/index.md) · [Full source](../../../../MeasureAndIntegration/BridgeNormalizationEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0785a00e62ec1600da89231a5d3deafb15f10bca`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/BridgeNormalization/Variant790c4045cf1e6a745981719beb0e9ad8ed6bdc0fdb1ccb12ff44ba1671a558c7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/BridgeNormalization/Variant790c4045cf1e6a745981719beb0e9ad8ed6bdc0fdb1ccb12ff44ba1671a558c7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Integrals.Basic` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [unitBump](../../../../MeasureAndIntegration/BridgeNormalizationEdition2.lean/declarations/unitbump.md) | 21 | `declaration-track:eee44f2b194aabdb08dc28eada97eb97f7b3a96d45752bf43d1bbf032e899504` |
| 2 | `def` | [unitSecond](../../../../MeasureAndIntegration/BridgeNormalizationEdition2.lean/declarations/unitsecond.md) | 24 | `declaration-track:417a01e399bab79bb0f8a39bd048b8135970f606c03a7321f9537d0660cc95a8` |
| 3 | `theorem` | [unitBump_square_integral](../../../../MeasureAndIntegration/BridgeNormalizationEdition2.lean/declarations/unitbump-square-integral.md) | 27 | `result-track:0116d29e9944cc00925e7a0449e3cc097d122e9894391eec4e8080faadc34d19` |
| 4 | `theorem` | [unitSecond_square_integral](../../../../MeasureAndIntegration/BridgeNormalizationEdition2.lean/declarations/unitsecond-square-integral.md) | 42 | `result-track:67d5217abdde7da5dcf705f000fbe20c8e73ab4bbd34105e6e2e53528b3a1169` |
| 5 | `theorem` | [unitSecond_mul_bump_integral](../../../../MeasureAndIntegration/BridgeNormalizationEdition2.lean/declarations/unitsecond-mul-bump-integral.md) | 57 | `result-track:efc3b16795636f16cf5d15cd8666865d4d3fe6689a5fe89be41b3361ccdc34b3` |
| 6 | `theorem` | [interior_square_scaling](../../../../MeasureAndIntegration/BridgeNormalizationEdition2.lean/declarations/interior-square-scaling.md) | 72 | `result-track:d597c43beac1551337191f14395de9335593da364c163f52508c304f9ddeaa46` |
| 7 | `theorem` | [unit_dilation_square_integral](../../../../MeasureAndIntegration/BridgeNormalizationEdition2.lean/declarations/unit-dilation-square-integral.md) | 83 | `result-track:f2af0c2363f60629454a4dd039a858daa06bdc1740d5da81e1c2a3c6f4db597e` |
| 8 | `theorem` | [explicit_normalization](../../../../MeasureAndIntegration/BridgeNormalizationEdition2.lean/declarations/explicit-normalization.md) | 103 | `result-track:7c038e8dc286e0b541d549fb992e643ac8ffaa4d1ade91d9c3e5eeeb24ded69d` |
| 9 | `theorem` | [normalized_square_integrable](../../../../MeasureAndIntegration/BridgeNormalizationEdition2.lean/declarations/normalized-square-integrable.md) | 123 | `result-track:498a0310a6f5893cbbb224aa129fc1fbbb5626c9689a787c3fa1d1e981078ef6` |
| 10 | `theorem` | [normalized_square_integral](../../../../MeasureAndIntegration/BridgeNormalizationEdition2.lean/declarations/normalized-square-integral.md) | 129 | `result-track:571dfaa6eca76fa325fb5d839e52474a43108a60b6aa1b073a7deb15cc425a38` |
| 11 | `theorem` | [normalized_ne_zero](../../../../MeasureAndIntegration/BridgeNormalizationEdition2.lean/declarations/normalized-ne-zero.md) | 136 | `result-track:9a10469a902fbf71e534fdf32e5a144083329f1b37884b2cbb9009eaf6c4fedc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9feeb0d4fa84bd1867d78085f62b69697453fb7ce7ce893f1eb54d9efffc4873 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/BridgeNormalization/Variant790c4045cf1e6a745981719beb0e9ad8ed6bdc0fdb1ccb12ff44ba1671a558c7.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/BridgeNormalization/Variant790c4045cf1e6a745981719beb0e9ad8ed6bdc0fdb1ccb12ff44ba1671a558c7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
