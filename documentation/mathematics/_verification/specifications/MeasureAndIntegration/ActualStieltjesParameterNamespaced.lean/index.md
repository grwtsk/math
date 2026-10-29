# Verification target: Actual Stieltjes Parameter Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "34a71e0915119fdc462d0e768fa6c856dfa763e3",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualStieltjesParameter/Varianta78d3663420f2ab0894944434ed9b32bdc79a1628d609dd6b8b3e1878405ee31.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/ActualStieltjesParameterNamespaced.lean/index.md) · [Full source](../../../../MeasureAndIntegration/ActualStieltjesParameterNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `34a71e0915119fdc462d0e768fa6c856dfa763e3`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualStieltjesParameter/Varianta78d3663420f2ab0894944434ed9b32bdc79a1628d609dd6b8b3e1878405ee31.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/ActualStieltjesParameter/Varianta78d3663420f2ab0894944434ed9b32bdc79a1628d609dd6b8b3e1878405ee31.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualLogCellMoment` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ParametricIntegral` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.SmoothSeries` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.PSeries` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cellKernel](../../../../MeasureAndIntegration/ActualStieltjesParameterNamespaced.lean/declarations/cellkernel.md) | 22 | `declaration-track:d27175f9f498e4b959ddcdea3d9284db42970a516544b9432839841b0314c666` |
| 2 | `def` | [cellDerivative](../../../../MeasureAndIntegration/ActualStieltjesParameterNamespaced.lean/declarations/cellderivative.md) | 23 | `declaration-track:c408b681e1c5b9eceaecd5e9480083a462a2bf7e3c0a48986f99e9569cdf2336` |
| 3 | `def` | [derivativeMajorant](../../../../MeasureAndIntegration/ActualStieltjesParameterNamespaced.lean/declarations/derivativemajorant.md) | 24 | `declaration-track:87dbc375d378d9d9df53fb2516f2d6704f4d9f01c30bff94076971d2e14f095f` |
| 4 | `theorem` | [cellKernel_integrable](../../../../MeasureAndIntegration/ActualStieltjesParameterNamespaced.lean/declarations/cellkernel-integrable.md) | 26 | `result-track:b5d325f4b03409ba4522fe41039fe41c56d0d8d9bf5b704adac30513f838e128` |
| 5 | `theorem` | [cellDerivative_integrable](../../../../MeasureAndIntegration/ActualStieltjesParameterNamespaced.lean/declarations/cellderivative-integrable.md) | 36 | `result-track:ba2756816fc1d7876574ca6c7f9edb4d5af523e4b559049f4eb8a0f801ccfef9` |
| 6 | `theorem` | [cellKernel_hasDerivAt](../../../../MeasureAndIntegration/ActualStieltjesParameterNamespaced.lean/declarations/cellkernel-hasderivat.md) | 47 | `result-track:a962e67d98298ec686fcf1a3ee83d26a61bb3dd10e67d3da6f004a6de14b1306` |
| 7 | `theorem` | [cellDerivative_bound](../../../../MeasureAndIntegration/ActualStieltjesParameterNamespaced.lean/declarations/cellderivative-bound.md) | 62 | `result-track:08ed4c739cc0d465a0dd0602d10c63a94e6bd4c5ee2e41959c7825fe073305f8` |
| 8 | `theorem` | [term_hasDerivAt](../../../../MeasureAndIntegration/ActualStieltjesParameterNamespaced.lean/declarations/term-hasderivat.md) | 82 | `result-track:d25ec1cbc4c636ef9ce1e5f88b149d867d55308fc7af7686cebfff7a50435b24` |
| 9 | `theorem` | [term_hasDerivAt_one](../../../../MeasureAndIntegration/ActualStieltjesParameterNamespaced.lean/declarations/term-hasderivat-one.md) | 107 | `result-track:d3dd1106e3bf2f48a2e660154b0c32b48601b28cf31a24a8f9ead9c6e20fe056` |
| 10 | `theorem` | [derivativeMajorant_nonneg](../../../../MeasureAndIntegration/ActualStieltjesParameterNamespaced.lean/declarations/derivativemajorant-nonneg.md) | 113 | `result-track:53a1dfc293d100b35b80c14ef0e98b10f144fc775872b475ca1f0b4e95320113` |
| 11 | `theorem` | [derivativeMajorant_le_pSeries](../../../../MeasureAndIntegration/ActualStieltjesParameterNamespaced.lean/declarations/derivativemajorant-le-pseries.md) | 118 | `result-track:f22a8ec1ba2ddbf818b452e5f25b6b060a30c2eef94f1cc6b35e39fccefafa92` |
| 12 | `theorem` | [derivativeMajorant_summable](../../../../MeasureAndIntegration/ActualStieltjesParameterNamespaced.lean/declarations/derivativemajorant-summable.md) | 140 | `result-track:be4d04af4f8428dfe1d8d7cae5c5ee1dbe14f423719172e791cda55f99348def` |
| 13 | `def` | [termDerivValue](../../../../MeasureAndIntegration/ActualStieltjesParameterNamespaced.lean/declarations/termderivvalue.md) | 148 | `declaration-track:ee577680302e58580a1cc62cabf7a856fb44042811a959457b5143565c0372dc` |
| 14 | `theorem` | [termDerivValue_bound](../../../../MeasureAndIntegration/ActualStieltjesParameterNamespaced.lean/declarations/termderivvalue-bound.md) | 151 | `result-track:83f67c02ff733686dd2dc6d75eabe5730e6225d7fc948d9f2e0dd98aa0b5cc99` |
| 15 | `theorem` | [termDerivValue_one](../../../../MeasureAndIntegration/ActualStieltjesParameterNamespaced.lean/declarations/termderivvalue-one.md) | 160 | `result-track:ccf6ed1391bc775176ece844541b20d59f03c27cf343c0c94162eb091586765b` |
| 16 | `theorem` | [termTSum_hasDerivAt](../../../../MeasureAndIntegration/ActualStieltjesParameterNamespaced.lean/declarations/termtsum-hasderivat.md) | 164 | `result-track:a6ae0bfaa4cd60ebdbb23dad1d4610331d2c031f5f18694717c55e6b95befe6d` |
| 17 | `theorem` | [termTSum_hasDerivAt_one](../../../../MeasureAndIntegration/ActualStieltjesParameterNamespaced.lean/declarations/termtsum-hasderivat-one.md) | 172 | `result-track:1f2e1ebc0ceee7c5f14f0cf143f3a447c59a1fd50be6fee293ed382ed2085724` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1b8157584ef9b12a454f8f808a33d38d24219ec1cf495f25e0cc296959f714bc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualStieltjesParameter/Varianta78d3663420f2ab0894944434ed9b32bdc79a1628d609dd6b8b3e1878405ee31.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/ActualStieltjesParameter/Varianta78d3663420f2ab0894944434ed9b32bdc79a1628d609dd6b8b3e1878405ee31.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
