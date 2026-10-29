# Verification target: Damped Divisor Taylor Statements

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0d111b550e6a0288d80710feaeb9ab9c098e24bc",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DampedDivisorTaylorStatements/Variant14545ddb6e0078a356739a24f853a37d7e6ba43c4549cf33d8081ce0b5eb2ae0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DampedDivisorTaylorStatements.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DampedDivisorTaylorStatements.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0d111b550e6a0288d80710feaeb9ab9c098e24bc`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DampedDivisorTaylorStatements/Variant14545ddb6e0078a356739a24f853a37d7e6ba43c4549cf33d8081ce0b5eb2ae0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DampedDivisorTaylorStatements/Variant14545ddb6e0078a356739a24f853a37d7e6ba43c4549cf33d8081ce0b5eb2ae0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.DampedDivisorPrimePower` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.DivisorFloorTransport` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.ArithmeticFunction.VonMangoldt` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exp_negative_remainder](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DampedDivisorTaylorStatements.lean/declarations/exp-negative-remainder.md) | 14 | `result-track:d22baa3fa516c5809f46f4c8781ddb6dea0fbeef519a68951c40f6a9847a497a` |
| 2 | `theorem` | [dampedDivisorCoefficient_first_order](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DampedDivisorTaylorStatements.lean/declarations/dampeddivisorcoefficient-first-order.md) | 31 | `result-track:355e6118b2b01486fc0ef5c78e3d3408e63810eed407d439a3e25a3a6640a0b8` |
| 3 | `theorem` | [dampedDivisorCoefficient_prefix_first_order](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DampedDivisorTaylorStatements.lean/declarations/dampeddivisorcoefficient-prefix-first-order.md) | 60 | `result-track:8d58712cf4b8b0b0e7e12c41cd99917892e0863164cece9bed3ca399f93ee253` |
| 4 | `theorem` | [dampedDivisorCoefficient_real_prefix_first_order](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DampedDivisorTaylorStatements.lean/declarations/dampeddivisorcoefficient-real-prefix-first-order.md) | 90 | `result-track:92da5969d1c7d269c56aa95ec9af6f96f21c705a99868902ae76a9557090d4c9` |
| 5 | `theorem` | [arithmeticResidual_prime_prefix_error](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DampedDivisorTaylorStatements.lean/declarations/arithmeticresidual-prime-prefix-error.md) | 107 | `result-track:2f82e7e704fb11fb433f9c6af32fa5fca9100336077d3926ffb6268ea8e10bad` |
| 6 | `example` | [(anonymous)](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DampedDivisorTaylorStatements.lean/declarations/example-source-edition-4.md) | 131 | `declaration-track:f3a03ff35e05fa290b693b6440343329e1274252cc3051806259f8bd124e7f62` |
| 7 | `example` | [(anonymous)](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DampedDivisorTaylorStatements.lean/declarations/example.md) | 136 | `declaration-track:01f45524472e2f0139b30454210a5e36ff8e9130e767e6791da9fc8513c758b4` |
| 8 | `example` | [(anonymous)](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DampedDivisorTaylorStatements.lean/declarations/example-source-edition-3.md) | 142 | `declaration-track:a36931e7f6121adbb63784bea7f7eae1348f1ea852daa1dba512715ea7ca802a` |
| 9 | `example` | [(anonymous)](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DampedDivisorTaylorStatements.lean/declarations/example-source-edition-2.md) | 148 | `declaration-track:3f85144ef6290ac8b64c4adfd2b42403979b57e84f4e6523260151954d68f1d3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9992fd0bd06180c07af668c7f2aa0f02ba4894f5d4d8ce056bf408a9ba94491f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DampedDivisorTaylorStatements/Variant14545ddb6e0078a356739a24f853a37d7e6ba43c4549cf33d8081ce0b5eb2ae0.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DampedDivisorTaylorStatements/Variant14545ddb6e0078a356739a24f853a37d7e6ba43c4549cf33d8081ce0b5eb2ae0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
