# Verification target: Convolution Ae Convolution Tendsto Right Of Locally Integrable Aligned

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f10b97172c82f66a75cf2ddd2ff5661444185b67",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Convolution/Variantfd573e15f78e590a5e8645a1a843879e023268376dac1e4f5f6868d4681c7b0c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../RealFunctions/ConvolutionAeConvolutionTendstoRightOfLocallyIntegrableAligned.lean/index.md) · [Full source](../../../../RealFunctions/ConvolutionAeConvolutionTendstoRightOfLocallyIntegrableAligned.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f10b97172c82f66a75cf2ddd2ff5661444185b67`.

Source path: `GRWTSK/Topology/GeneralTopology/Convolution/Variantfd573e15f78e590a5e8645a1a843879e023268376dac1e4f5f6868d4681c7b0c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Convolution/Variantfd573e15f78e590a5e8645a1a843879e023268376dac1e4f5f6868d4681c7b0c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convolution` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.BumpFunction.Normed` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Average` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Covering.Differentiation` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Covering.BesicovitchVectorSpace` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [convolution_eq_right](../../../../RealFunctions/ConvolutionAeConvolutionTendstoRightOfLocallyIntegrableAligned.lean/declarations/convolution-eq-right.md) | 53 | `result-track:60c8337a3d0bf62055627d68af35b1aaa02fc21026e715933c2e88c00eb8aed3` |
| 2 | `theorem` | [normed_convolution_eq_right](../../../../RealFunctions/ConvolutionAeConvolutionTendstoRightOfLocallyIntegrableAligned.lean/declarations/normed-convolution-eq-right.md) | 65 | `result-track:6b1dbf3b5549825b0ea341ced9db6e9e4e3c09d5f98b28f82aeb55e29e303c2b` |
| 3 | `theorem` | [dist_normed_convolution_le](../../../../RealFunctions/ConvolutionAeConvolutionTendstoRightOfLocallyIntegrableAligned.lean/declarations/dist-normed-convolution-le.md) | 75 | `result-track:2cec9e1fafdfc028edd05a30d5303f851d92d30992936f52beeec26b9a686438` |
| 4 | `theorem` | [convolution_tendsto_right](../../../../RealFunctions/ConvolutionAeConvolutionTendstoRightOfLocallyIntegrableAligned.lean/declarations/convolution-tendsto-right.md) | 88 | `result-track:068b31795f98fb5e2d593ddaba55f201cb004b505bcf24e1a28e67ad6e877d5c` |
| 5 | `theorem` | [convolution_tendsto_right_of_continuous](../../../../RealFunctions/ConvolutionAeConvolutionTendstoRightOfLocallyIntegrableAligned.lean/declarations/convolution-tendsto-right-of-continuous.md) | 100 | `result-track:35db03b5176721d1eb821a78b47a88623b81907fba319d45e07de96a3cc5bed0` |
| 6 | `macro_rules` | [(anonymous)](../../../../RealFunctions/ConvolutionAeConvolutionTendstoRightOfLocallyIntegrableAligned.lean/declarations/macro-rules.md) | 107 | `declaration-track:f861fb75c2c70cb27bc54f76aee569725fb2c06341bff94700d2722474c5e0a8` |
| 7 | `theorem` | [ae_convolution_tendsto_right_of_locally_integrable](../../../../RealFunctions/ConvolutionAeConvolutionTendstoRightOfLocallyIntegrableAligned.lean/declarations/ae-convolution-tendsto-right-of-locally-integrable.md) | 112 | `result-track:475262d45912fea2cabf68272e5748763cfb7cb12c7d919560b6a539ea5bed0b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8aaf353e4b4063d478e74702d8c1a165a1f2dbc2e210b8aac19a94090711b970 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Convolution/Variantfd573e15f78e590a5e8645a1a843879e023268376dac1e4f5f6868d4681c7b0c.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Convolution/Variantfd573e15f78e590a5e8645a1a843879e023268376dac1e4f5f6868d4681c7b0c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
