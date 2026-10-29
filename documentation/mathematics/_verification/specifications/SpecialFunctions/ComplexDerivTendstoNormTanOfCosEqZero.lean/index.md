# Verification target: Complex Deriv Tendsto Norm Tan Of Cos Eq Zero

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "51ab87b5e5d5ccf5f0e1478a9b3719322f9f4257",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ComplexDeriv/Variant46c3635a74d83f1bc8509993c4cc2d2203756d36131e01cf607b6f96b9f3e07b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../SpecialFunctions/ComplexDerivTendstoNormTanOfCosEqZero.lean/index.md) · [Full source](../../../../SpecialFunctions/ComplexDerivTendstoNormTanOfCosEqZero.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `51ab87b5e5d5ccf5f0e1478a9b3719322f9f4257`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ComplexDeriv/Variant46c3635a74d83f1bc8509993c4cc2d2203756d36131e01cf607b6f96b9f3e07b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/ComplexDeriv/Variant46c3635a74d83f1bc8509993c4cc2d2203756d36131e01cf607b6f96b9f3e07b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Complex` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Deriv` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [hasStrictDerivAt_tan](../../../../SpecialFunctions/ComplexDerivTendstoNormTanOfCosEqZero.lean/declarations/hasstrictderivat-tan.md) | 24 | `result-track:629eda10088208941517f9f2b85d803ab07f9ddca418e120e1135aadc68364ed` |
| 2 | `theorem` | [hasDerivAt_tan](../../../../SpecialFunctions/ComplexDerivTendstoNormTanOfCosEqZero.lean/declarations/hasderivat-tan.md) | 29 | `result-track:7216a84b88d9302233fc904ddee71ff207848dd1f3fac5bd1d702a5bebd0f59e` |
| 3 | `theorem` | [tendsto_norm_tan_of_cos_eq_zero](../../../../SpecialFunctions/ComplexDerivTendstoNormTanOfCosEqZero.lean/declarations/tendsto-norm-tan-of-cos-eq-zero.md) | 34 | `result-track:612d9bf8c24f18e16f4ab2194ba70f4a44b631d6b03bc9e43ac29442155e434d` |
| 4 | `theorem` | [tendsto_norm_tan_atTop](../../../../SpecialFunctions/ComplexDerivTendstoNormTanOfCosEqZero.lean/declarations/tendsto-norm-tan-attop.md) | 43 | `result-track:9cf3c773a21161a5e05ec6b8b1fbe9c59a09b98943a9314384c0d28ab2e457f5` |
| 5 | `theorem` | [continuousAt_tan](../../../../SpecialFunctions/ComplexDerivTendstoNormTanOfCosEqZero.lean/declarations/continuousat-tan.md) | 52 | `result-track:f56d0ca3e4a30330effb40c51573b6d93795f293d90d3be03edb64946b70192c` |
| 6 | `theorem` | [differentiableAt_tan](../../../../SpecialFunctions/ComplexDerivTendstoNormTanOfCosEqZero.lean/declarations/differentiableat-tan.md) | 58 | `result-track:1e863c1df459de998f9121a7eb46e7132a0def0d9b5e2ed0e5a86ee97b37c697` |
| 7 | `theorem` | [deriv_tan](../../../../SpecialFunctions/ComplexDerivTendstoNormTanOfCosEqZero.lean/declarations/deriv-tan.md) | 62 | `result-track:fb2e1f094afd6812d2300708142a7d3601c18440671a4e812bb59c0b1b48c154` |
| 8 | `theorem` | [contDiffAt_tan](../../../../SpecialFunctions/ComplexDerivTendstoNormTanOfCosEqZero.lean/declarations/contdiffat-tan.md) | 69 | `result-track:2de22acb54533c596091983dc47d3365931494cac828371b045ca2ac4bc86cbb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c479a5bb019caff0722a1854787e35ce4e082d7c9eea6ce4e0a8547eb3c253ab -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ComplexDeriv/Variant46c3635a74d83f1bc8509993c4cc2d2203756d36131e01cf607b6f96b9f3e07b.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/ComplexDeriv/Variant46c3635a74d83f1bc8509993c4cc2d2203756d36131e01cf607b6f96b9f3e07b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
