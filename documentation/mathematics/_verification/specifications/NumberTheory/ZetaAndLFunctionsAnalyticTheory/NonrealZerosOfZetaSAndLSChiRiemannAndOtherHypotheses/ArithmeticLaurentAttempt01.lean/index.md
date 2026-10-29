# Verification target: Arithmetic Laurent Attempt01

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "782d6eec9fe838d08811263e2e21f695ce5cbabf",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ArithmeticLaurentAttempt01/Variantb25eb5ec75d0688ed4d5283b51030ddb6024095717058ef25ae148ee30905509.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ArithmeticLaurentAttempt01.lean/index.md) · [Full source](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ArithmeticLaurentAttempt01.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `782d6eec9fe838d08811263e2e21f695ce5cbabf`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ArithmeticLaurentAttempt01/Variantb25eb5ec75d0688ed4d5283b51030ddb6024095717058ef25ae148ee30905509.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ArithmeticLaurentAttempt01/Variantb25eb5ec75d0688ed4d5283b51030ddb6024095717058ef25ae148ee30905509.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualLaurentSlope` — import line 1; external provider; requires a separately pinned dependency.
- `ActualFirstStieltjesDerivative` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [actual_regular_negative_derivative](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ArithmeticLaurentAttempt01.lean/declarations/actual-regular-negative-derivative.md) | 14 | `result-track:b5ce91e12ec6f1198ce32ec2d1ced5678d0a30b06b2da35da5b2da1de655771c` |
| 2 | `theorem` | [actual_regular_negative_slope](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ArithmeticLaurentAttempt01.lean/declarations/actual-regular-negative-slope.md) | 21 | `result-track:de4a4d21b03fcd5f31fe3ab21a246815b0b4cad1e5b621e3c580868ef3b4e065` |
| 3 | `theorem` | [actual_negative_log_laurent_slope](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ArithmeticLaurentAttempt01.lean/declarations/actual-negative-log-laurent-slope.md) | 29 | `result-track:ee151f4a6af50a41ab334d295e0e42403a6e60721d011cf7c991f58f0102270b` |
| 4 | `theorem` | [actual_vonMangoldt_series_laurent_slope](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ArithmeticLaurentAttempt01.lean/declarations/actual-vonmangoldt-series-laurent-slope.md) | 38 | `result-track:877b379efa5a62f0bc82271e831bbb5d792715bc444c37b26c4582963322b940` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b85b06b9eeebff551a30a60d6d613c68f7d25f419d3b4f6e8156f819f5cffa78 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ArithmeticLaurentAttempt01/Variantb25eb5ec75d0688ed4d5283b51030ddb6024095717058ef25ae148ee30905509.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ArithmeticLaurentAttempt01/Variantb25eb5ec75d0688ed4d5283b51030ddb6024095717058ef25ae148ee30905509.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
