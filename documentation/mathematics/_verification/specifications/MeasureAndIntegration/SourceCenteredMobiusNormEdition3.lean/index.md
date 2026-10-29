# Verification target: Source Centered Mobius Norm Edition3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "90d3d335a7721c599e75d935e5185c7b6f62f30f",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCenteredMobiusNorm/Variantc3fe9c8b931c73578c1fa8edbeb1ab848987f9c8fd52e1512d1d149e6d1975b2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/SourceCenteredMobiusNormEdition3.lean/index.md) · [Full source](../../../../MeasureAndIntegration/SourceCenteredMobiusNormEdition3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `90d3d335a7721c599e75d935e5185c7b6f62f30f`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCenteredMobiusNorm/Variantc3fe9c8b931c73578c1fa8edbeb1ab848987f9c8fd52e1512d1d149e6d1975b2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCenteredMobiusNorm/Variantc3fe9c8b931c73578c1fa8edbeb1ab848987f9c8fd52e1512d1d149e6d1975b2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceVaughanHankel` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceCorrelationCurvature` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [realSource](../../../../MeasureAndIntegration/SourceCenteredMobiusNormEdition3.lean/declarations/realsource.md) | 27 | `declaration-track:647eb2ce7ba525c96462a96975da06d54c48d9c70f274d384eb15484df445067` |
| 2 | `theorem` | [realSource_coe](../../../../MeasureAndIntegration/SourceCenteredMobiusNormEdition3.lean/declarations/realsource-coe.md) | 30 | `result-track:4b05ae35f2b930c6dad0cae446a17bced8dd89b9e41ea20c900c617c06d27380` |
| 3 | `theorem` | [realSource_norm](../../../../MeasureAndIntegration/SourceCenteredMobiusNormEdition3.lean/declarations/realsource-norm.md) | 35 | `result-track:bd048b9360711e333b28e426a378723891392d29b408e82fcf6a77988476cec2` |
| 4 | `def` | [shift](../../../../MeasureAndIntegration/SourceCenteredMobiusNormEdition3.lean/declarations/shift.md) | 43 | `declaration-track:722ea28bc3c00df80294a5857a7f6d7800ef515d431637f6eddcc6ce82a1a1f0` |
| 5 | `theorem` | [shift_coe](../../../../MeasureAndIntegration/SourceCenteredMobiusNormEdition3.lean/declarations/shift-coe.md) | 47 | `result-track:276d5b944efa81519d52a8a7805981dcd9082738376a4b028938acb8654805e7` |
| 6 | `theorem` | [shift_norm](../../../../MeasureAndIntegration/SourceCenteredMobiusNormEdition3.lean/declarations/shift-norm.md) | 55 | `result-track:fef8b81827be0123ececf807820bddcdf4319aa8b1d578309d0c314ba19adf26` |
| 7 | `theorem` | [shift_inner](../../../../MeasureAndIntegration/SourceCenteredMobiusNormEdition3.lean/declarations/shift-inner.md) | 59 | `result-track:23a24d51f89fb936c6957c0d6ec9e6cfed543b644d2905ffc2856f6d6544da94` |
| 8 | `theorem` | [correlation_deriv_zero](../../../../MeasureAndIntegration/SourceCenteredMobiusNormEdition3.lean/declarations/correlation-deriv-zero.md) | 80 | `result-track:debb999b8173739de13699ae2adbaa647e1482eace4c35bb9887c121a3108888` |
| 9 | `theorem` | [shift_sub_norm_le](../../../../MeasureAndIntegration/SourceCenteredMobiusNormEdition3.lean/declarations/shift-sub-norm-le.md) | 96 | `result-track:907cc93afa7c106bbb502aa9c8858cffc5f52c773f2dc69cb57972fd81115b20` |
| 10 | `def` | [atom](../../../../MeasureAndIntegration/SourceCenteredMobiusNormEdition3.lean/declarations/atom.md) | 117 | `declaration-track:e811a4caf558087b3043318c8113ffc49459c39a2413e83a0cb0631437060e77` |
| 11 | `theorem` | [atom_norm](../../../../MeasureAndIntegration/SourceCenteredMobiusNormEdition3.lean/declarations/atom-norm.md) | 120 | `result-track:118dbfc403e21ca832a39c7170c091865196f083090635db9062a978613bcd43` |
| 12 | `theorem` | [log_step_le](../../../../MeasureAndIntegration/SourceCenteredMobiusNormEdition3.lean/declarations/log-step-le.md) | 125 | `result-track:8b5c573a761c58cb87dc74b6503150646ee429e98ded69e38402fd236730dc09` |
| 13 | `theorem` | [atom_step_norm_le](../../../../MeasureAndIntegration/SourceCenteredMobiusNormEdition3.lean/declarations/atom-step-norm-le.md) | 149 | `result-track:89c254910589ba08100f85e805d03fd83bf6f8b055ae6b6d7e4fd1fae3d3159c` |
| 14 | `theorem` | [finite_abel](../../../../MeasureAndIntegration/SourceCenteredMobiusNormEdition3.lean/declarations/finite-abel.md) | 193 | `result-track:f0303545344cc2c1f0e2ccb2cc92e6c8960cbb7732ce284d9b70e9a7fe90affb` |
| 15 | `theorem` | [inverse_sqrt_telescope](../../../../MeasureAndIntegration/SourceCenteredMobiusNormEdition3.lean/declarations/inverse-sqrt-telescope.md) | 211 | `result-track:e5dfb809829575b03bf806c9a1419a308a7b05250a8edb90356c090664aa8fdc` |
| 16 | `theorem` | [centeredMobiusReflectedL2_norm_le_scale_add_ten](../../../../MeasureAndIntegration/SourceCenteredMobiusNormEdition3.lean/declarations/centeredmobiusreflectedl2-norm-le-scale-add-ten.md) | 222 | `result-track:b1c9edf0509d3c83dde64e9e32e187c83198ff1bc0e03882e9a2cb903df98e78` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=19be7ef5723439a0644630cfe89785ddf17f0c5e0b1b67802e763e6217b7eb78 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCenteredMobiusNorm/Variantc3fe9c8b931c73578c1fa8edbeb1ab848987f9c8fd52e1512d1d149e6d1975b2.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCenteredMobiusNorm/Variantc3fe9c8b931c73578c1fa8edbeb1ab848987f9c8fd52e1512d1d149e6d1975b2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
