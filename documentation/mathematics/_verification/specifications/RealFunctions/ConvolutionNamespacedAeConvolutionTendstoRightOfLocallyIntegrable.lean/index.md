# Verification target: Convolution Namespaced Ae Convolution Tendsto Right Of Locally Integrable

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cf0dd189f5d6211dcceebb5284a04bfca758eed6",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Convolution/Varianta21041fb0648e4e9471b4c9bd3031954a51b7e997fcada7ec695072271473f72.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../RealFunctions/ConvolutionNamespacedAeConvolutionTendstoRightOfLocallyIntegrable.lean/index.md) · [Full source](../../../../RealFunctions/ConvolutionNamespacedAeConvolutionTendstoRightOfLocallyIntegrable.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cf0dd189f5d6211dcceebb5284a04bfca758eed6`.

Source path: `GRWTSK/Topology/GeneralTopology/Convolution/Varianta21041fb0648e4e9471b4c9bd3031954a51b7e997fcada7ec695072271473f72.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Convolution/Varianta21041fb0648e4e9471b4c9bd3031954a51b7e997fcada7ec695072271473f72.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convolution` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.BumpFunction.FiniteDimension` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.BumpFunction.Normed` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Average` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Covering.Differentiation` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Covering.BesicovitchVectorSpace` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Haar.Unique` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [convolution_eq_right](../../../../RealFunctions/ConvolutionNamespacedAeConvolutionTendstoRightOfLocallyIntegrable.lean/declarations/convolution-eq-right.md) | 61 | `result-track:f1ccb285e340cf2ccd915861fa35f5fd2883b0403fd9eb6297964a4553a6fe43` |
| 2 | `theorem` | [normed_convolution_eq_right](../../../../RealFunctions/ConvolutionNamespacedAeConvolutionTendstoRightOfLocallyIntegrable.lean/declarations/normed-convolution-eq-right.md) | 69 | `result-track:702cf51c7febb9875f1d86824992f4547bb1deffff24be98781dc0b67d764da0` |
| 3 | `theorem` | [dist_normed_convolution_le](../../../../RealFunctions/ConvolutionNamespacedAeConvolutionTendstoRightOfLocallyIntegrable.lean/declarations/dist-normed-convolution-le.md) | 79 | `result-track:acdd223f47c9c4d0c262385695e9b688e160242a2eb61a7dddf26859d5116330` |
| 4 | `theorem` | [convolution_tendsto_right](../../../../RealFunctions/ConvolutionNamespacedAeConvolutionTendstoRightOfLocallyIntegrable.lean/declarations/convolution-tendsto-right.md) | 91 | `result-track:786a7e00a4cb389f749595940a1b345ef1e9f51bb8697cb34160375932770916` |
| 5 | `theorem` | [convolution_tendsto_right_of_continuous](../../../../RealFunctions/ConvolutionNamespacedAeConvolutionTendstoRightOfLocallyIntegrable.lean/declarations/convolution-tendsto-right-of-continuous.md) | 102 | `result-track:20202c4005c2c1e7332b16249ce4f0fea18b4ffb2fdc69dd928a9f20da60f2ef` |
| 6 | `theorem` | [ae_convolution_tendsto_right_of_locallyIntegrable](../../../../RealFunctions/ConvolutionNamespacedAeConvolutionTendstoRightOfLocallyIntegrable.lean/declarations/ae-convolution-tendsto-right-of-locallyintegrable.md) | 111 | `result-track:6a272a4e92889717977d43b351df87c18443e5753c0cf061b3ffcbc2c622966b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0c08a281b0634ad9b2d29e22ec5997c983fc8c9b771170d1a42a0b1f97f90910 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Convolution/Varianta21041fb0648e4e9471b4c9bd3031954a51b7e997fcada7ec695072271473f72.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Convolution/Varianta21041fb0648e4e9471b4c9bd3031954a51b7e997fcada7ec695072271473f72.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
