# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.DyadicGreenFourierReadout

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cf222e3411b6e8df259a6e2d558d4ca9f35ea83b",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/DyadicGreenFourierReadout.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/DyadicGreenFourierReadout.lean/index.md) · [Full source](../../../../MeasureAndIntegration/DyadicGreenFourierReadout.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cf222e3411b6e8df259a6e2d558d4ca9f35ea83b`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/DyadicGreenFourierReadout.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/DyadicGreenFourierReadout.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.DyadicGreenFourierFrame`](../../../../MeasureAndIntegration/DyadicGreenFourierFrame.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.VonMangoldt.ComplexReadout`](../../../../MeasureAndIntegration/ComplexReadout.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.Analysis.Fourier.AddCircle` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [fourierModePrimitive](../../../../MeasureAndIntegration/DyadicGreenFourierReadout.lean/declarations/fouriermodeprimitive.md) | 42 | `declaration-track:ce87ba8edc32044cfcb053968e447c2fd1a6c44124615c540fc9320d235c665e` |
| 2 | `def` | [fourierModeValue](../../../../MeasureAndIntegration/DyadicGreenFourierReadout.lean/declarations/fouriermodevalue.md) | 46 | `declaration-track:0415f8be7ab9ca814ada1b02eed62d4d78a2a9374b85338355e390201affdff0` |
| 3 | `def` | [fourierModeSlope](../../../../MeasureAndIntegration/DyadicGreenFourierReadout.lean/declarations/fouriermodeslope.md) | 49 | `declaration-track:49078d0364cdfbda91a4bee699f72675f81459ab8eb8ead0817afccd4c6d583f` |
| 4 | `theorem` | [fourierModePrimitive_hasDerivAt](../../../../MeasureAndIntegration/DyadicGreenFourierReadout.lean/declarations/fouriermodeprimitive-hasderivat.md) | 52 | `result-track:6199cc14ab31245cbffb5dacbf6de7d237f06a85f9fb5c74e128bbe7eb9bef07` |
| 5 | `theorem` | [fourierModeValue_hasDerivAt](../../../../MeasureAndIntegration/DyadicGreenFourierReadout.lean/declarations/fouriermodevalue-hasderivat.md) | 60 | `result-track:21c189f5c65051ee951f42898f0c45657d7c2fe9923bec0fb131ab6fde9a2243` |
| 6 | `theorem` | [fourierModeSlope_continuous](../../../../MeasureAndIntegration/DyadicGreenFourierReadout.lean/declarations/fouriermodeslope-continuous.md) | 67 | `result-track:e9cdb99a5fbb41323b7b7a2ec211278edfff1687f8c4aa354a53e9cf2554ea16` |
| 7 | `theorem` | [fourierModeValue_zero](../../../../MeasureAndIntegration/DyadicGreenFourierReadout.lean/declarations/fouriermodevalue-zero.md) | 73 | `result-track:1d377b05a9aa0481b7fdf6ee076dae5cb2164e4dd809f69a284e38bc6c61e89f` |
| 8 | `theorem` | [fourierModeValue_one](../../../../MeasureAndIntegration/DyadicGreenFourierReadout.lean/declarations/fouriermodevalue-one.md) | 78 | `result-track:1c41b61a486dde1cbd6fb07d76d852c37431c59c607a4a910748fe175111eb07` |
| 9 | `def` | [fourierModeComplexTest](../../../../MeasureAndIntegration/DyadicGreenFourierReadout.lean/declarations/fouriermodecomplextest.md) | 87 | `declaration-track:4356f131f4a92ea5b0e287ddf2a9b8b4480d65f3fa72cbec0005491b6a2ec8c6` |
| 10 | `theorem` | [fourierModeComplexTest_value_zero](../../../../MeasureAndIntegration/DyadicGreenFourierReadout.lean/declarations/fouriermodecomplextest-value-zero.md) | 94 | `result-track:8d6c925c07fa75459f9aea6539e82aa83e8792b43a11b02469bf8352180907c1` |
| 11 | `theorem` | [fourierModeComplexTest_value_one](../../../../MeasureAndIntegration/DyadicGreenFourierReadout.lean/declarations/fouriermodecomplextest-value-one.md) | 100 | `result-track:09abbe7ae3f36145b47950e43737945f5a2c85146f995d64eda74666f6689120` |
| 12 | `theorem` | [greenResidualFourierCoeff_eq_unit_pairing](../../../../MeasureAndIntegration/DyadicGreenFourierReadout.lean/declarations/greenresidualfouriercoeff-eq-unit-pairing.md) | 105 | `result-track:966a8de454af45c157a30feb209d07602a44a8f85ef6880696f1df96f584f279` |
| 13 | `theorem` | [action_fourierModeComplexTest_eq_neg_fourierCoeff](../../../../MeasureAndIntegration/DyadicGreenFourierReadout.lean/declarations/action-fouriermodecomplextest-eq-neg-fouriercoeff.md) | 118 | `result-track:ec822318b7704e3d48a17c7a64b9ccb6ca25ebf2b5eac17e4c6ab027f81cb8ac` |
| 14 | `theorem` | [action_fourierModeComplexTest_norm_sq](../../../../MeasureAndIntegration/DyadicGreenFourierReadout.lean/declarations/action-fouriermodecomplextest-norm-sq.md) | 134 | `result-track:c49b8572e0ccb7a98aed5a9a9b70968a1f60983ab0464c0e617c0e54ea92aff5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0ab3d5be4d8e73550cf65ae3881fd846b76f64e8580c3d1d7ecb00afe6535e64 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/DyadicGreenFourierReadout.lean","GRWTSK/_verification/specifications/NumberTheory/Zeta/Riemann/DyadicGreenFourierReadout.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
