# Verification target: Five Mode Transport

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "44fd227875533f400f80e6b30fdd4b968ffee655",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/FiveModeTransport/Variantfcff052eb101ae2b63bdcb3576f45c53001a95b4729a2abca3c07ab36e1fd101.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/FiveModeTransport.lean/index.md) · [Full source](../../../../MeasureAndIntegration/FiveModeTransport.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `44fd227875533f400f80e6b30fdd4b968ffee655`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/FiveModeTransport/Variantfcff052eb101ae2b63bdcb3576f45c53001a95b4729a2abca3c07ab36e1fd101.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/FiveModeTransport/Variantfcff052eb101ae2b63bdcb3576f45c53001a95b4729a2abca3c07ab36e1fd101.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `scratch.common_mean_20261004.FiveModeSource` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CorrelationMoment` — import line 2; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimatePrimeSmoothDefect` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mode_continuous](../../../../MeasureAndIntegration/FiveModeTransport.lean/declarations/mode-continuous.md) | 19 | `result-track:52ac32368b063682496553197a7f94f3a3c0f88148121ef7dba711dd8757f50b` |
| 2 | `theorem` | [mode_product_integrable](../../../../MeasureAndIntegration/FiveModeTransport.lean/declarations/mode-product-integrable.md) | 22 | `result-track:b4ebe715be8c188d8284f684e1a996910424e3712570b6dc5dbde7ca03551e08` |
| 3 | `def` | [modeCorrelation](../../../../MeasureAndIntegration/FiveModeTransport.lean/declarations/modecorrelation.md) | 53 | `declaration-track:871e2b0cca44e2ac295da3a796ac3c6270e42f6434660a72f07962da3779f55e` |
| 4 | `theorem` | [actual_correlation_reconstruction](../../../../MeasureAndIntegration/FiveModeTransport.lean/declarations/actual-correlation-reconstruction.md) | 56 | `result-track:5cb538dcc28a6acbd94505889a4c3e861301f5b38800343b5d4d5f239362d0f7` |
| 5 | `def` | [poleMoment](../../../../MeasureAndIntegration/FiveModeTransport.lean/declarations/polemoment.md) | 83 | `declaration-track:ff542e79f8c1b6198d395fc3d0fb9cd8095ca80887505839afa12a57d4f98747` |
| 6 | `theorem` | [mode_pole_integrable](../../../../MeasureAndIntegration/FiveModeTransport.lean/declarations/mode-pole-integrable.md) | 86 | `result-track:127415882f8f5d2210ac3be99d5f65337a75943989445ca0979b8afb94cd2447` |
| 7 | `theorem` | [alpha_dot_pole_zero](../../../../MeasureAndIntegration/FiveModeTransport.lean/declarations/alpha-dot-pole-zero.md) | 103 | `result-track:648729dcb88e12e293b1d47a9fe07cd45f60acea586c65387a4af351e2036c58` |
| 8 | `theorem` | [pole_matrix_contraction](../../../../MeasureAndIntegration/FiveModeTransport.lean/declarations/pole-matrix-contraction.md) | 115 | `result-track:1c00a5021ae924fb816287f0c3c0d8d3363af373a4a69262d490f3ec874aca2c` |
| 9 | `theorem` | [contracted_correlation_origin](../../../../MeasureAndIntegration/FiveModeTransport.lean/declarations/contracted-correlation-origin.md) | 131 | `result-track:37a34a6d490418c328f27ed73bb0b0079fd2b16c2241e69e48466d69a66e2abd` |
| 10 | `theorem` | [contracted_correlation_even](../../../../MeasureAndIntegration/FiveModeTransport.lean/declarations/contracted-correlation-even.md) | 137 | `result-track:46c2b187cdb0890ed9c353859f968d3a7feb3368546515912c031840daeb8496` |
| 11 | `theorem` | [contracted_correlation_support](../../../../MeasureAndIntegration/FiveModeTransport.lean/declarations/contracted-correlation-support.md) | 145 | `result-track:a7572361e2d5da67e5216415dca4033b010f27ec996d29331e085faf1f360e2b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6af23757a413f6fc8d501fbd5ae37dc497ecf71db11d102c94a4ffedaf84d9f0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/FiveModeTransport/Variantfcff052eb101ae2b63bdcb3576f45c53001a95b4729a2abca3c07ab36e1fd101.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/FiveModeTransport/Variantfcff052eb101ae2b63bdcb3576f45c53001a95b4729a2abca3c07ab36e1fd101.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
