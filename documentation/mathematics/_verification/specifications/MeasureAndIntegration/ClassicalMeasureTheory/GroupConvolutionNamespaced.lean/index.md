# Verification target: Group Convolution Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8b1938745be16bf65dc53a416a1bc59d19f06466",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Convolution/Variantfb0a713d27d15fbeee14c29e6da75b923004631f1b69c40ea630630f85e3f9a0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupConvolutionNamespaced.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupConvolutionNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8b1938745be16bf65dc53a416a1bc59d19f06466`.

Source path: `GRWTSK/Analysis/MeasureTheory/Convolution/Variantfb0a713d27d15fbeee14c29e6da75b923004631f1b69c40ea630630f85e3f9a0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Convolution/Variantfb0a713d27d15fbeee14c29e6da75b923004631f1b69c40ea630630f85e3f9a0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Measure.MeasureSpace` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Prod` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mconv](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupConvolutionNamespaced.lean/declarations/mconv.md) | 39 | `declaration-track:2e6489433bd40384bbacf02429bf518650c0f61c81db58d419ed125b3fb60b32` |
| 2 | `theorem` | [lintegral_mconv](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupConvolutionNamespaced.lean/declarations/lintegral-mconv.md) | 49 | `result-track:fccb2206a9855e975e3380eb47d60d7bb9e438432550d699b0087e7d1875a991` |
| 3 | `theorem` | [dirac_one_mconv](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupConvolutionNamespaced.lean/declarations/dirac-one-mconv.md) | 57 | `result-track:5967cfee067acc0620dc333fa90194b39125215a22fa9e453358ecbd61af06ca` |
| 4 | `theorem` | [mconv_dirac_one](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupConvolutionNamespaced.lean/declarations/mconv-dirac-one.md) | 66 | `result-track:a392f00c8e516b0ebe1d8de3893c231a41657115e6e31a7f9859e5a48e85be06` |
| 5 | `theorem` | [zero_mconv](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupConvolutionNamespaced.lean/declarations/zero-mconv.md) | 76 | `result-track:2d705b78740353e931e45aa8fc9a66ca1c2110d10c8a48c4708248295ae531bd` |
| 6 | `theorem` | [mconv_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupConvolutionNamespaced.lean/declarations/mconv-zero.md) | 83 | `result-track:549b2e82d590ae3cab558eb2da0970b171ecfb4fb3a10a618f31cf66251c5e93` |
| 7 | `theorem` | [mconv_add](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupConvolutionNamespaced.lean/declarations/mconv-add.md) | 88 | `result-track:3a088879a74c25636f8dc5439e744683f76daaaff9b226f89c87a09749ac74d9` |
| 8 | `theorem` | [add_mconv](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupConvolutionNamespaced.lean/declarations/add-mconv.md) | 95 | `result-track:2e26f5bc76e68fdf44b1da3261baa5c6d5d8bfe7b301c782ab0eac9d0b684f61` |
| 9 | `theorem` | [mconv_comm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupConvolutionNamespaced.lean/declarations/mconv-comm.md) | 103 | `result-track:5261ca0d422c693c238ae6d25729a46d17180f87fe8b0e0b5b66703f5ac432ed` |
| 10 | `instance` | [sfinite_mconv_of_sfinite](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupConvolutionNamespaced.lean/declarations/sfinite-mconv-of-sfinite.md) | 112 | `declaration-track:d1512593a214a3203981c788bac5267ff99b6164b151d9462f60b99298d08370` |
| 11 | `instance` | [finite_of_finite_mconv](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupConvolutionNamespaced.lean/declarations/finite-of-finite-mconv.md) | 116 | `declaration-track:df5c83b4f52bb5d9c9d3ccdbce62f870ef75f474e8c20602c09312e7a8b463f8` |
| 12 | `theorem` | [mconv_assoc](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupConvolutionNamespaced.lean/declarations/mconv-assoc.md) | 125 | `result-track:37c4155f8490340d3aed3f714b800f9b4ff35bdf64d2d98bd0a05c66207c10e6` |
| 13 | `instance` | [probabilitymeasure_of_probabilitymeasures_mconv](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupConvolutionNamespaced.lean/declarations/probabilitymeasure-of-probabilitymeasures-mconv.md) | 136 | `declaration-track:e18ce0bbc34f4430060e679be14d8bc59ef4d3c87c72c1f520d874bea0140494` |
| 14 | `lemma` | [map_mconv_monoidHom](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupConvolutionNamespaced.lean/declarations/map-mconv-monoidhom.md) | 142 | `result-track:e767a77ed3ec6ebbdd1f1a5efe6a19853605436709f720ac1576368c5be1ecb4` |
| 15 | `lemma` | [map_conv_continuousLinearMap](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupConvolutionNamespaced.lean/declarations/map-conv-continuouslinearmap.md) | 154 | `result-track:d5bcbfe464847287103e99240d07e7df04609a1fa87191c50bedfb08f4fc05e4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b7aa41ff34800e977c1847fced6668418478d0c4c7b9998c47f8078304d88ac0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/Convolution/Variantfb0a713d27d15fbeee14c29e6da75b923004631f1b69c40ea630630f85e3f9a0.lean","GRWTSK/_verification/specifications/Analysis/MeasureTheory/Convolution/Variantfb0a713d27d15fbeee14c29e6da75b923004631f1b69c40ea630630f85e3f9a0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
