# Verification target: Bridge Normalization Namespaced Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "490649b651808e779f685bc4b7a0a8f28f3a29a2",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/BridgeNormalization/Variant38ab0b4968489c7fd93c49fe79460c18aa68674a49dbb4871e03685dbfd8c52a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/BridgeNormalizationNamespacedEdition2.lean/index.md) · [Full source](../../../../MeasureAndIntegration/BridgeNormalizationNamespacedEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `490649b651808e779f685bc4b7a0a8f28f3a29a2`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/BridgeNormalization/Variant38ab0b4968489c7fd93c49fe79460c18aa68674a49dbb4871e03685dbfd8c52a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/BridgeNormalization/Variant38ab0b4968489c7fd93c49fe79460c18aa68674a49dbb4871e03685dbfd8c52a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Integrals.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [unitBump](../../../../MeasureAndIntegration/BridgeNormalizationNamespacedEdition2.lean/declarations/unitbump.md) | 29 | `declaration-track:5d43705f4d7314c315309c292844b9106e9910ef8c14fb4abdc562342270622f` |
| 2 | `def` | [unitSecond](../../../../MeasureAndIntegration/BridgeNormalizationNamespacedEdition2.lean/declarations/unitsecond.md) | 32 | `declaration-track:567288a3724d50fc2eb184cfba3c869536b62a620d76265908440d13e79e2b05` |
| 3 | `theorem` | [unitBump_square_integral](../../../../MeasureAndIntegration/BridgeNormalizationNamespacedEdition2.lean/declarations/unitbump-square-integral.md) | 35 | `result-track:46d2f77868deb7644630c77fd395ab3c8c33ca40a14616711fdb2a0392c11c00` |
| 4 | `theorem` | [unitSecond_square_integral](../../../../MeasureAndIntegration/BridgeNormalizationNamespacedEdition2.lean/declarations/unitsecond-square-integral.md) | 50 | `result-track:e74835d4371893aba9ef3aa1e9e584d96eb185537e9393cdaf40c5c55002b4c7` |
| 5 | `theorem` | [unitSecond_mul_bump_integral](../../../../MeasureAndIntegration/BridgeNormalizationNamespacedEdition2.lean/declarations/unitsecond-mul-bump-integral.md) | 65 | `result-track:93761cdca1d96c57165081ef349b9ad260b766a81cc76f228c60b795a2af5a92` |
| 6 | `theorem` | [interior_square_scaling](../../../../MeasureAndIntegration/BridgeNormalizationNamespacedEdition2.lean/declarations/interior-square-scaling.md) | 80 | `result-track:9b33252b5956e8086a49a5553e5c7fe8591465cff91984996ff9537eef0b338f` |
| 7 | `theorem` | [unit_dilation_square_integral](../../../../MeasureAndIntegration/BridgeNormalizationNamespacedEdition2.lean/declarations/unit-dilation-square-integral.md) | 91 | `result-track:90be4757f3c82da6d554e55ee02d420097e89d05f1beb64bef8bd9bc239a0300` |
| 8 | `theorem` | [explicit_normalization](../../../../MeasureAndIntegration/BridgeNormalizationNamespacedEdition2.lean/declarations/explicit-normalization.md) | 111 | `result-track:e26a42bec73379fa74727519f3dcb50bfa38a12c87a497333f4265df8c60c1f9` |
| 9 | `theorem` | [normalized_square_integrable](../../../../MeasureAndIntegration/BridgeNormalizationNamespacedEdition2.lean/declarations/normalized-square-integrable.md) | 131 | `result-track:615453ee0fde9a1a18aa170605f386d5382a7eafd8c0a6ef99594674f9f66f56` |
| 10 | `theorem` | [normalized_square_integral](../../../../MeasureAndIntegration/BridgeNormalizationNamespacedEdition2.lean/declarations/normalized-square-integral.md) | 137 | `result-track:f9a6cbb39da6f07707a3f69624f10ae4d34d00634f828c2c47227a53c93a44c2` |
| 11 | `theorem` | [normalized_ne_zero](../../../../MeasureAndIntegration/BridgeNormalizationNamespacedEdition2.lean/declarations/normalized-ne-zero.md) | 144 | `result-track:383f8c05de01fbb9b301a6453ecb1fa0b6c50835419982181455b0a1331b0bc0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=798da5e3ac34dd4a14a2716b23489c94edb85e3e375eff01253d1d01710091cc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/BridgeNormalization/Variant38ab0b4968489c7fd93c49fe79460c18aa68674a49dbb4871e03685dbfd8c52a.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/BridgeNormalization/Variant38ab0b4968489c7fd93c49fe79460c18aa68674a49dbb4871e03685dbfd8c52a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
