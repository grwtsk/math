# Verification target: GRWTSK.NumberTheory.FunctionFieldArithmetic.TruncatedMoebiusCoefficients

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "236252d146e430f352d2ceb3593a322f947ac84c",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/FunctionFieldArithmetic/TruncatedMoebiusCoefficients.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/TruncatedMoebiusCoefficientsHistoricalSourceEdition2.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/TruncatedMoebiusCoefficientsHistoricalSourceEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `236252d146e430f352d2ceb3593a322f947ac84c`.

Source path: `GRWTSK/NumberTheory/FunctionFieldArithmetic/TruncatedMoebiusCoefficients.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/FunctionFieldArithmetic/TruncatedMoebiusCoefficients.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.FunctionFieldArithmetic.MoebiusTruncation`](../../../../../../CommutativeAlgebra/MoebiusTruncationHistoricalSourceEdition2.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [lowMoebiusCoefficient](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/TruncatedMoebiusCoefficientsHistoricalSourceEdition2.lean/declarations/lowmoebiuscoefficient.md) | 19 | `declaration-track:9ee5c153ae79fa4c6f721123f661ab5ba174e190ae8f1fc5262909c03e7a81f0` |
| 2 | `def` | [highMoebiusCoefficient](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/TruncatedMoebiusCoefficientsHistoricalSourceEdition2.lean/declarations/highmoebiuscoefficient.md) | 23 | `declaration-track:a4b34f99d89cb0952c76274866524a074c7d0b3b04753c19d8a43a2ffa7c4eab` |
| 3 | `theorem` | [moebius_low_high_coefficient_return](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/TruncatedMoebiusCoefficientsHistoricalSourceEdition2.lean/declarations/moebius-low-high-coefficient-return.md) | 27 | `result-track:a8eb06d499847d4b155adbc970671c9c2e9b42e57e79568b02be596a90518e9a` |
| 4 | `theorem` | [high_coefficient_three_thirty](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/TruncatedMoebiusCoefficientsHistoricalSourceEdition2.lean/declarations/high-coefficient-three-thirty.md) | 42 | `result-track:7856dc6466a153839865ecde34b000da4f285b45db030b2ea60b7b1dc2b9ade1` |
| 5 | `theorem` | [high_coefficient_four_fortynine](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/TruncatedMoebiusCoefficientsHistoricalSourceEdition2.lean/declarations/high-coefficient-four-fortynine.md) | 46 | `result-track:15694a67e7860f19fac110fbc8d6399260485bbbef7e865cd82a325901ddd22d` |
| 6 | `theorem` | [low_coefficient_three_thirty](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/TruncatedMoebiusCoefficientsHistoricalSourceEdition2.lean/declarations/low-coefficient-three-thirty.md) | 50 | `result-track:3944259b5863cf37840837bff149a76d94989e745a946a1abf0e88d27dbbfdda` |
| 7 | `theorem` | [low_coefficient_four_fortynine](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/TruncatedMoebiusCoefficientsHistoricalSourceEdition2.lean/declarations/low-coefficient-four-fortynine.md) | 54 | `result-track:ca1a1df944c5e34bb27379e86e04d3337f1b3cbbfd09d6d83c668ad28fc7de10` |
| 8 | `theorem` | [high_moebius_coefficients_have_both_signs](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/TruncatedMoebiusCoefficientsHistoricalSourceEdition2.lean/declarations/high-moebius-coefficients-have-both-signs.md) | 57 | `result-track:ce1ec2adbaba57df5f67a47b8b06a8e3c51a0f40f6dc7ca432caaf8be3cc04d9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=356daa40c12ce5398f7c318dec8aa4c75b0c33e0fc3f31c0cd5a38446069a739 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/FunctionFieldArithmetic/TruncatedMoebiusCoefficients.lean","GRWTSK/_verification/specifications/NumberTheory/FunctionFieldArithmetic/TruncatedMoebiusCoefficients.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
