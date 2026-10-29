# Verification target: Attempt08

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b2ddb7dba838e3b53cf81ee723923a6cfc373099",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt08/Variant6927d21d2c6741474565db2602a0f055b1fb23b15172a1bd5ce799e864e4c852.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/Attempt08.lean/index.md) · [Full source](../../../../MeasureAndIntegration/Attempt08.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b2ddb7dba838e3b53cf81ee723923a6cfc373099`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt08/Variant6927d21d2c6741474565db2602a0f055b1fb23b15172a1bd5ce799e864e4c852.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Attempt08/Variant6927d21d2c6741474565db2602a0f055b1fb23b15172a1bd5ce799e864e4c852.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceBoundaryCubic` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ParametricIntegral` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.CauchyIntegral` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Analytic.Order` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [compactLaplace](../../../../MeasureAndIntegration/Attempt08.lean/declarations/compactlaplace.md) | 22 | `declaration-track:2b571bbfd34865a1cab23aec2e7837f712652a476e61358af9053a3e42b98679` |
| 2 | `def` | [primitiveTransform](../../../../MeasureAndIntegration/Attempt08.lean/declarations/primitivetransform.md) | 25 | `declaration-track:b2e50b071f582630a45b9d9d83c5f9e9033d8690199802f8485b183c7450e733` |
| 3 | `def` | [normalizedPrimitiveTransform](../../../../MeasureAndIntegration/Attempt08.lean/declarations/normalizedprimitivetransform.md) | 27 | `declaration-track:62cc9531382f606db880fdc18a3805eb5cc68479d855afdf2a9a6dbcc5fb95f6` |
| 4 | `theorem` | [compactLaplace_integrable](../../../../MeasureAndIntegration/Attempt08.lean/declarations/compactlaplace-integrable.md) | 30 | `result-track:c01d441cdbfaae4854ed6d9bbba5cd85c9060a3e6e7a8d18eda811868da9707c` |
| 5 | `theorem` | [complex_weighted_derivative](../../../../MeasureAndIntegration/Attempt08.lean/declarations/complex-weighted-derivative.md) | 37 | `result-track:ce3c3f630db08e4369762ae905aaccdc521131fc6f25fda884f8c49a0882938a` |
| 6 | `theorem` | [actual_complex_pole_filter](../../../../MeasureAndIntegration/Attempt08.lean/declarations/actual-complex-pole-filter.md) | 66 | `result-track:728181d8ba7f5ba36214541b9e660f5f3b040a4a013661435e032aae60033558` |
| 7 | `theorem` | [primitive_transform_normalization](../../../../MeasureAndIntegration/Attempt08.lean/declarations/primitive-transform-normalization.md) | 93 | `result-track:1d052cd59289eac486e4bd813947e46859cac988464ec64cb52cfceab492c5ec` |
| 8 | `theorem` | [boundary_transform_factored](../../../../MeasureAndIntegration/Attempt08.lean/declarations/boundary-transform-factored.md) | 103 | `result-track:887c7fe00f8c56b17d8a9b0da1269e7da5fb6caf800969ae887dfd6c074551b9` |
| 9 | `theorem` | [boundary_transform_factored_unnormalized](../../../../MeasureAndIntegration/Attempt08.lean/declarations/boundary-transform-factored-unnormalized.md) | 110 | `result-track:f7a4caba49aa1fdc2b10d33997bfd2b715ee7621dcb7b95e89c206acfde4e119` |
| 10 | `theorem` | [compactLaplace_hasDerivAt](../../../../MeasureAndIntegration/Attempt08.lean/declarations/compactlaplace-hasderivat.md) | 120 | `result-track:f8c96f3c4a5e3f3fcc67b10f9602396bbbe7e6466d6474826a108d7e831edfbb` |
| 11 | `theorem` | [compactLaplace_differentiable](../../../../MeasureAndIntegration/Attempt08.lean/declarations/compactlaplace-differentiable.md) | 165 | `result-track:a4095c1f0f70d3c6c3a2e43aed4efc3882ce3f80210ffb2d6849364edf1646f7` |
| 12 | `theorem` | [normalized_primitive_differentiable](../../../../MeasureAndIntegration/Attempt08.lean/declarations/normalized-primitive-differentiable.md) | 169 | `result-track:e27c8202cc12fb2e4643d29b544601c5fbea347d46b774e280ef774c7b00ac6d` |
| 13 | `theorem` | [primitive_differentiable](../../../../MeasureAndIntegration/Attempt08.lean/declarations/primitive-differentiable.md) | 174 | `result-track:ca664979cb807c4d36d8a53e9a9712ebf4dc14b83fb886b5b3d156ac68d0609c` |
| 14 | `theorem` | [boundary_differentiable](../../../../MeasureAndIntegration/Attempt08.lean/declarations/boundary-differentiable.md) | 182 | `result-track:8e10d482c69dd3a7763d0e2bf25342bd70936360c27e0f0c2ef0fb5e9a7b9ac0` |
| 15 | `theorem` | [normalized_primitive_half](../../../../MeasureAndIntegration/Attempt08.lean/declarations/normalized-primitive-half.md) | 191 | `result-track:e068a7b1f68c0abfd87509a4e14fad7b8835eddc259abf386025124abb61ab86` |
| 16 | `theorem` | [normalized_primitive_half_ne_zero](../../../../MeasureAndIntegration/Attempt08.lean/declarations/normalized-primitive-half-ne-zero.md) | 204 | `result-track:b638c67aa8eaa89351b5c4839dc3a627a7fa7a6be477f33640913530aee5af0e` |
| 17 | `theorem` | [primitive_analyticAt](../../../../MeasureAndIntegration/Attempt08.lean/declarations/primitive-analyticat.md) | 210 | `result-track:ed88586d16202935be74e1987e50e0d52c3e3007268e31523453e66da9a66c70` |
| 18 | `theorem` | [normalized_primitive_analyticAt](../../../../MeasureAndIntegration/Attempt08.lean/declarations/normalized-primitive-analyticat.md) | 213 | `result-track:e6295a442213b41ea895c756db487445014e8cb49fb3f31605be1efef3300341` |
| 19 | `theorem` | [boundary_analyticAt](../../../../MeasureAndIntegration/Attempt08.lean/declarations/boundary-analyticat.md) | 217 | `result-track:ebc4fc415fe5d54a4a355d9ba6e2f5597f274ffa07370b7b52a8cfd3ba291871` |
| 20 | `def` | [boundaryUnit](../../../../MeasureAndIntegration/Attempt08.lean/declarations/boundaryunit.md) | 221 | `declaration-track:d42444d65aa2740bc403006d04eaf283d8926cd72f62973b0ed85e540406eb79` |
| 21 | `theorem` | [boundaryUnit_differentiable](../../../../MeasureAndIntegration/Attempt08.lean/declarations/boundaryunit-differentiable.md) | 225 | `result-track:f8398792f728ab094ab79c4ac0bc8da1c0041e77b8ab5a3040fa629123ed956c` |
| 22 | `theorem` | [boundaryUnit_at_zero](../../../../MeasureAndIntegration/Attempt08.lean/declarations/boundaryunit-at-zero.md) | 231 | `result-track:823155554dbf17357bf9c24c5fbd39e6fa041e5292ea48b1e3654e0203980b27` |
| 23 | `theorem` | [boundaryUnit_ne_zero](../../../../MeasureAndIntegration/Attempt08.lean/declarations/boundaryunit-ne-zero.md) | 238 | `result-track:2f2cf48a48f92c7b694c8776d2e529bbbe51529a9e1bbe52f1a6cd6a027d2b48` |
| 24 | `theorem` | [boundary_cubic_factor](../../../../MeasureAndIntegration/Attempt08.lean/declarations/boundary-cubic-factor.md) | 245 | `result-track:fdc339bc4fb94901e317f2977ef60e8cd13c3eae8ebaa7c995556e0b86890b77` |
| 25 | `theorem` | [boundary_analytic_order_three](../../../../MeasureAndIntegration/Attempt08.lean/declarations/boundary-analytic-order-three.md) | 252 | `result-track:5239e7f1eb5a73a4c15d1b38a6f5a060bede861d3ce207e44e6ea780ab50e94b` |
| 26 | `theorem` | [boundary_analytic_order_nat_three](../../../../MeasureAndIntegration/Attempt08.lean/declarations/boundary-analytic-order-nat-three.md) | 260 | `result-track:eb8c19350b3ce74e1fafd9f58b03564121e8c514b453968178faf15263eef474` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c6c741c6639a153ae003f65bf3c9f9c65058dd3235e5184b1ffccd7d00c066f2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt08/Variant6927d21d2c6741474565db2602a0f055b1fb23b15172a1bd5ce799e864e4c852.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/Attempt08/Variant6927d21d2c6741474565db2602a0f055b1fb23b15172a1bd5ce799e864e4c852.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
