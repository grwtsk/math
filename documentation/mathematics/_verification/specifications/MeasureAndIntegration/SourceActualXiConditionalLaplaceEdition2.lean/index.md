# Verification target: Source Actual Xi Conditional Laplace Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a2d1c98f67f0f29e235027d5809b51554f7352b6",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualXiConditionalLaplace/Variantae390203e655e6feaf37c9098fa88ecf5fd391d23489137dbef86a6f8f6b1b11.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/SourceActualXiConditionalLaplaceEdition2.lean/index.md) · [Full source](../../../../MeasureAndIntegration/SourceActualXiConditionalLaplaceEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a2d1c98f67f0f29e235027d5809b51554f7352b6`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceActualXiConditionalLaplace/Variantae390203e655e6feaf37c9098fa88ecf5fd391d23489137dbef86a6f8f6b1b11.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceActualXiConditionalLaplace/Variantae390203e655e6feaf37c9098fa88ecf5fd391d23489137dbef86a6f8f6b1b11.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `RootActualXiExponentialEnvelope` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Asymptotics` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [actualXiAbsoluteCumulative](../../../../MeasureAndIntegration/SourceActualXiConditionalLaplaceEdition2.lean/declarations/actualxiabsolutecumulative.md) | 20 | `declaration-track:5a50ff860fd041b42b86363309db486570a12ef7c2d7de9ebdfa615bf52d08b7` |
| 2 | `def` | [actualXiConditionalLaplaceBudget](../../../../MeasureAndIntegration/SourceActualXiConditionalLaplaceEdition2.lean/declarations/actualxiconditionallaplacebudget.md) | 24 | `declaration-track:cc892f60eb11b4da72aa9fdf9e0ec88e2e31f29320ae18b9d0dd46ff3abaa3b4` |
| 3 | `theorem` | [lower_nonneg](../../../../MeasureAndIntegration/SourceActualXiConditionalLaplaceEdition2.lean/declarations/lower-nonneg.md) | 27 | `result-track:407e342adbdde4d06a13cc053f07fb8a61072573b1812fb8d53aed83cdba9c53` |
| 4 | `theorem` | [actual_abs_intervalIntegrable](../../../../MeasureAndIntegration/SourceActualXiConditionalLaplaceEdition2.lean/declarations/actual-abs-intervalintegrable.md) | 29 | `result-track:82925663257773950604f1a03e9ad3ae80ce54184daa2f5f87d267c7327bdaaf` |
| 5 | `theorem` | [actualXiAbsoluteCumulative_at_lower](../../../../MeasureAndIntegration/SourceActualXiConditionalLaplaceEdition2.lean/declarations/actualxiabsolutecumulative-at-lower.md) | 34 | `result-track:ab2e6f430780c13719eb627d5154e12665867dad7b45682d076259a5769f7a59` |
| 6 | `theorem` | [actualXiAbsoluteCumulative_nonneg](../../../../MeasureAndIntegration/SourceActualXiConditionalLaplaceEdition2.lean/declarations/actualxiabsolutecumulative-nonneg.md) | 39 | `result-track:f5cb69e1f3067f3746900b1a4a367ac360804d6516b1f425babfaee7af02e1f7` |
| 7 | `theorem` | [actualXiAbsoluteCumulative_absolutelyContinuous](../../../../MeasureAndIntegration/SourceActualXiConditionalLaplaceEdition2.lean/declarations/actualxiabsolutecumulative-absolutelycontinuous.md) | 44 | `result-track:be84b01d6314610f1b620428195ee8c2284c6d22805f9bcb2659a305f4ab5731` |
| 8 | `theorem` | [actualXiAbsoluteCumulative_ae_hasDerivAt](../../../../MeasureAndIntegration/SourceActualXiConditionalLaplaceEdition2.lean/declarations/actualxiabsolutecumulative-ae-hasderivat.md) | 50 | `result-track:5e17a3c3329a0ecf27abf753c96f2d88c01f3208808d3aedc9e1c5e7646c751d` |
| 9 | `theorem` | [cumulative_weight_intervalIntegrable](../../../../MeasureAndIntegration/SourceActualXiConditionalLaplaceEdition2.lean/declarations/cumulative-weight-intervalintegrable.md) | 56 | `result-track:49ff35bb72ed9353c3a42cdd270ad6336e4c6261d2da0a15ac0a0d914d5a3735` |
| 10 | `theorem` | [absolute_weight_intervalIntegrable](../../../../MeasureAndIntegration/SourceActualXiConditionalLaplaceEdition2.lean/declarations/absolute-weight-intervalintegrable.md) | 63 | `result-track:3da0af018c0bb03aacdb99909e3907f803a725bef5be0be8270ec4ec361295de` |
| 11 | `theorem` | [actualXiLaplace_finite_abel](../../../../MeasureAndIntegration/SourceActualXiConditionalLaplaceEdition2.lean/declarations/actualxilaplace-finite-abel.md) | 70 | `result-track:1fb0d04359abb6f70e2f8879bfb9c44c295c5fd5083f01773c84bb591e3ae9f3` |
| 12 | `theorem` | [actualXiAbsoluteCumulative_le_future_envelope](../../../../MeasureAndIntegration/SourceActualXiConditionalLaplaceEdition2.lean/declarations/actualxiabsolutecumulative-le-future-envelope.md) | 104 | `result-track:d6e9a852cb4e57e8e73dd8b64478dfa7c590222b5d667b26de22df49f1e8ab85` |
| 13 | `theorem` | [polynomial_exponential_bound](../../../../MeasureAndIntegration/SourceActualXiConditionalLaplaceEdition2.lean/declarations/polynomial-exponential-bound.md) | 117 | `result-track:772b873c8cb49a2cae03321696d7f7dded4da1033e17378892312730e75bc31a` |
| 14 | `theorem` | [cumulative_weight_norm_bound](../../../../MeasureAndIntegration/SourceActualXiConditionalLaplaceEdition2.lean/declarations/cumulative-weight-norm-bound.md) | 143 | `result-track:4f3f46e2d629b732cab52f66bd65a273f376a341ec5fa7f237d08c3aedd0b977` |
| 15 | `theorem` | [actualXiCumulativeLaplace_integrableOn](../../../../MeasureAndIntegration/SourceActualXiConditionalLaplaceEdition2.lean/declarations/actualxicumulativelaplace-integrableon.md) | 163 | `result-track:0f5a12743d16ff80eced681620548913a9a4f8c293c9bcd511bb71a447c96ef6` |
| 16 | `theorem` | [actualXiCumulativeLaplace_tendsto_zero](../../../../MeasureAndIntegration/SourceActualXiConditionalLaplaceEdition2.lean/declarations/actualxicumulativelaplace-tendsto-zero.md) | 180 | `result-track:f9edc10162fc3419d10f2e59dc94c00b2af52e03101029cdd676d5b8445c2701` |
| 17 | `theorem` | [absolute_laplace_finite_tendsto](../../../../MeasureAndIntegration/SourceActualXiConditionalLaplaceEdition2.lean/declarations/absolute-laplace-finite-tendsto.md) | 194 | `result-track:6e415e7eb7c094dc3b06349a6b868abbfaf60170772661d7542dca109eef35e6` |
| 18 | `theorem` | [actualXiLaplace_integrableOn_of_future_average](../../../../MeasureAndIntegration/SourceActualXiConditionalLaplaceEdition2.lean/declarations/actualxilaplace-integrableon-of-future-average.md) | 211 | `result-track:9a210d0620a805dd876617aac643ebc13195194dab7ebad5d3ef7035c426384f` |
| 19 | `theorem` | [actualXiLaplace_integral_norm_eq](../../../../MeasureAndIntegration/SourceActualXiConditionalLaplaceEdition2.lean/declarations/actualxilaplace-integral-norm-eq.md) | 229 | `result-track:0ddcd02cdb92ea804f7dafbf6baec6f4bacd0765721c325801f902b0008c7f4f` |
| 20 | `theorem` | [actualXiLaplace_integral_norm_le](../../../../MeasureAndIntegration/SourceActualXiConditionalLaplaceEdition2.lean/declarations/actualxilaplace-integral-norm-le.md) | 240 | `result-track:71835f5e3daa550507cc22c3652cfbcac20b40bd35765b41a4aef7462501c279` |
| 21 | `theorem` | [actualXiLaplace_norm_le](../../../../MeasureAndIntegration/SourceActualXiConditionalLaplaceEdition2.lean/declarations/actualxilaplace-norm-le.md) | 270 | `result-track:d1c9a6dff30ae8bb43dfb332c64755efc53edd5901603ef12a7b64181ca1a52d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f727d881fd495729285f55f9bef76fff96cc567ac0da03425aa781fac25b72be -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/SourceActualXiConditionalLaplace/Variantae390203e655e6feaf37c9098fa88ecf5fd391d23489137dbef86a6f8f6b1b11.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/SourceActualXiConditionalLaplace/Variantae390203e655e6feaf37c9098fa88ecf5fd391d23489137dbef86a6f8f6b1b11.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
