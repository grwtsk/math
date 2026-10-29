# Verification target: GRWTSK.Analysis.ComplexAnalysis.Linear.Variant53192beedfa96640c6972f70ed0afe2ae2798714c0874dda5f5ea66a3c4dd027

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "30d7d02c4a329b7ecc66aa96e4f11b0c8659e383",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ComplexAnalysis/Linear/Variant53192beedfa96640c6972f70ed0afe2ae2798714c0874dda5f5ea66a3c4dd027.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../Analysis/ComplexAnalysis/Linear/Variant53192beedfa96640c6972f70ed0afe2ae2798714c0874dda5f5ea66a3c4dd027.lean/index.md) · [Full source](../../../../../../Analysis/ComplexAnalysis/Linear/Variant53192beedfa96640c6972f70ed0afe2ae2798714c0874dda5f5ea66a3c4dd027.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `30d7d02c4a329b7ecc66aa96e4f11b0c8659e383`.

Source path: `GRWTSK/Analysis/ComplexAnalysis/Linear/Variant53192beedfa96640c6972f70ed0afe2ae2798714c0874dda5f5ea66a3c4dd027.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ComplexAnalysis/Linear/Variant53192beedfa96640c6972f70ed0afe2ae2798714c0874dda5f5ea66a3c4dd027.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Analytic.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [fpowerSeries](../../../../../../Analysis/ComplexAnalysis/Linear/Variant53192beedfa96640c6972f70ed0afe2ae2798714c0874dda5f5ea66a3c4dd027.lean/declarations/fpowerseries--973769c51a1b98a62a1e7dee.md) | 40 | `declaration-track:973769c51a1b98a62a1e7dee520561dbc434cc3a9f5833f7e7760b9710e6ca38` |
| 2 | `theorem` | [fpower_series_apply_zero](../../../../../../Analysis/ComplexAnalysis/Linear/Variant53192beedfa96640c6972f70ed0afe2ae2798714c0874dda5f5ea66a3c4dd027.lean/declarations/fpower-series-apply-zero--1494d54ec2a8d66757bf0a01.md) | 46 | `result-track:1494d54ec2a8d66757bf0a0102bb3a19b3c6e74b16603097f32a62b8c4ac4c3e` |
| 3 | `theorem` | [fpower_series_apply_one](../../../../../../Analysis/ComplexAnalysis/Linear/Variant53192beedfa96640c6972f70ed0afe2ae2798714c0874dda5f5ea66a3c4dd027.lean/declarations/fpower-series-apply-one--ed6b6fdf0a33e38c55589c96.md) | 50 | `result-track:ed6b6fdf0a33e38c55589c96318e15631c17490bbb8b6a78abbea6ac25923e96` |
| 4 | `theorem` | [fpowerSeries_apply_add_two](../../../../../../Analysis/ComplexAnalysis/Linear/Variant53192beedfa96640c6972f70ed0afe2ae2798714c0874dda5f5ea66a3c4dd027.lean/declarations/fpowerseries-apply-add-two--2c1e34fe6a9ff96cdffc0e6b.md) | 54 | `result-track:2c1e34fe6a9ff96cdffc0e6be209c2014479946c9787b9cfabc6de518ec81c6c` |
| 5 | `theorem` | [fpowerSeries_radius](../../../../../../Analysis/ComplexAnalysis/Linear/Variant53192beedfa96640c6972f70ed0afe2ae2798714c0874dda5f5ea66a3c4dd027.lean/declarations/fpowerseries-radius--ecd7d40ffd2870adcba1940e.md) | 63 | `result-track:ecd7d40ffd2870adcba1940eb37d7fa487db0e04ec4564bd77aa9afae69dc9fd` |
| 6 | `theorem` | [hasFPowerSeriesOnBall](../../../../../../Analysis/ComplexAnalysis/Linear/Variant53192beedfa96640c6972f70ed0afe2ae2798714c0874dda5f5ea66a3c4dd027.lean/declarations/hasfpowerseriesonball--a4d65cc11c6e67a9d9496dc2.md) | 67 | `result-track:a4d65cc11c6e67a9d9496dc214ffa76e776450754858c3c5d659ba4364d7460e` |
| 7 | `theorem` | [hasFPowerSeriesAt](../../../../../../Analysis/ComplexAnalysis/Linear/Variant53192beedfa96640c6972f70ed0afe2ae2798714c0874dda5f5ea66a3c4dd027.lean/declarations/hasfpowerseriesat--a3df6ec69adac91b117c1a9c.md) | 75 | `result-track:a3df6ec69adac91b117c1a9c7f604cc5611208ce7c2c66fbb2a414883f6e8cc0` |
| 8 | `theorem` | [analyticAt](../../../../../../Analysis/ComplexAnalysis/Linear/Variant53192beedfa96640c6972f70ed0afe2ae2798714c0874dda5f5ea66a3c4dd027.lean/declarations/analyticat--29542bbd7016895ab7bc4a75.md) | 80 | `result-track:29542bbd7016895ab7bc4a7594ace5a5419151d3d11d9e7ea113fedc41b2b062` |
| 9 | `def` | [uncurryBilinear](../../../../../../Analysis/ComplexAnalysis/Linear/Variant53192beedfa96640c6972f70ed0afe2ae2798714c0874dda5f5ea66a3c4dd027.lean/declarations/uncurrybilinear--c226d45959266cf6392a72ca.md) | 88 | `declaration-track:c226d45959266cf6392a72ca0bcbf5389deacf8c11a3ed79b44d64072c54ef80` |
| 10 | `theorem` | [uncurryBilinear_apply](../../../../../../Analysis/ComplexAnalysis/Linear/Variant53192beedfa96640c6972f70ed0afe2ae2798714c0874dda5f5ea66a3c4dd027.lean/declarations/uncurrybilinear-apply--88403c3b111634d3acf78a08.md) | 95 | `result-track:88403c3b111634d3acf78a0844bfa01222ae73cbe4fc1ae6aa48220c60118237` |
| 11 | `def` | [fpowerSeriesBilinear](../../../../../../Analysis/ComplexAnalysis/Linear/Variant53192beedfa96640c6972f70ed0afe2ae2798714c0874dda5f5ea66a3c4dd027.lean/declarations/fpowerseriesbilinear--8f4c212cfabd640e1809a74d.md) | 101 | `declaration-track:8f4c212cfabd640e1809a74df4fb5f3baa0d23580d4275aab2d00f273f607841` |
| 12 | `theorem` | [fpowerSeriesBilinear_apply_zero](../../../../../../Analysis/ComplexAnalysis/Linear/Variant53192beedfa96640c6972f70ed0afe2ae2798714c0874dda5f5ea66a3c4dd027.lean/declarations/fpowerseriesbilinear-apply-zero--b7673e06a74328421216427b.md) | 108 | `result-track:b7673e06a74328421216427b6440d8a43e36798b0ce72273c8441fc3d0b15dd7` |
| 13 | `theorem` | [fpowerSeriesBilinear_apply_one](../../../../../../Analysis/ComplexAnalysis/Linear/Variant53192beedfa96640c6972f70ed0afe2ae2798714c0874dda5f5ea66a3c4dd027.lean/declarations/fpowerseriesbilinear-apply-one--edf6f184897619f0b6aeb412.md) | 112 | `result-track:edf6f184897619f0b6aeb4126a95ea7895bf0a6b35f656b62933861064520103` |
| 14 | `theorem` | [fpowerSeriesBilinear_apply_two](../../../../../../Analysis/ComplexAnalysis/Linear/Variant53192beedfa96640c6972f70ed0afe2ae2798714c0874dda5f5ea66a3c4dd027.lean/declarations/fpowerseriesbilinear-apply-two--2494de9fbb599bad71e9ff60.md) | 116 | `result-track:2494de9fbb599bad71e9ff6080ebac9d60b5c4c7a2c19c63bda0748d86a7fec6` |
| 15 | `theorem` | [fpowerSeriesBilinear_apply_add_three](../../../../../../Analysis/ComplexAnalysis/Linear/Variant53192beedfa96640c6972f70ed0afe2ae2798714c0874dda5f5ea66a3c4dd027.lean/declarations/fpowerseriesbilinear-apply-add-three--b4236f13d50f0fe2b8376905.md) | 120 | `result-track:b4236f13d50f0fe2b837690583e4723a79cece9f46be9a51c6cb333d19cc6afd` |
| 16 | `theorem` | [fpowerSeriesBilinear_radius](../../../../../../Analysis/ComplexAnalysis/Linear/Variant53192beedfa96640c6972f70ed0afe2ae2798714c0874dda5f5ea66a3c4dd027.lean/declarations/fpowerseriesbilinear-radius--845ee94a5da08728c8c75fac.md) | 133 | `result-track:845ee94a5da08728c8c75facfb725afb1324489b46e90ee816983b3be5c42d7d` |
| 17 | `theorem` | [hasFPowerSeriesOnBall_bilinear](../../../../../../Analysis/ComplexAnalysis/Linear/Variant53192beedfa96640c6972f70ed0afe2ae2798714c0874dda5f5ea66a3c4dd027.lean/declarations/hasfpowerseriesonball-bilinear--18f03669bd0e422991912953.md) | 138 | `result-track:18f03669bd0e422991912953e2df537cfaf3bdb858c3b2c12ced51bf852ca110` |
| 18 | `theorem` | [hasFPowerSeriesAt_bilinear](../../../../../../Analysis/ComplexAnalysis/Linear/Variant53192beedfa96640c6972f70ed0afe2ae2798714c0874dda5f5ea66a3c4dd027.lean/declarations/hasfpowerseriesat-bilinear--dea59b68e5796ce278160221.md) | 149 | `result-track:dea59b68e5796ce278160221f4ca7fd4f7580a0fe85f6c1d2a422171ecc34025` |
| 19 | `theorem` | [analyticAt_bilinear](../../../../../../Analysis/ComplexAnalysis/Linear/Variant53192beedfa96640c6972f70ed0afe2ae2798714c0874dda5f5ea66a3c4dd027.lean/declarations/analyticat-bilinear--dbab7506e97e4ccaa913c964.md) | 154 | `result-track:dbab7506e97e4ccaa913c964c878a67a2f101ba224079db58caf855d72df207b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=700ebce08d5a006b2f5333e492563f9165476e7eb9ec420697cfb13108e063af -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/ComplexAnalysis/Linear/Variant53192beedfa96640c6972f70ed0afe2ae2798714c0874dda5f5ea66a3c4dd027.lean","GRWTSK/_verification/specifications/Analysis/ComplexAnalysis/Linear/Variant53192beedfa96640c6972f70ed0afe2ae2798714c0874dda5f5ea66a3c4dd027.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
