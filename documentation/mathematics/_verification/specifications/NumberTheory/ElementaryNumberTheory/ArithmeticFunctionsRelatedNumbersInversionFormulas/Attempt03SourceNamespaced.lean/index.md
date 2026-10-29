# Verification target: Attempt03 Source Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "081c3d8c0b45ae2a82ed7954af6022c1e0cf36ba",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt03Source/Variant62cbd2577ef0e0415c583d99137bc07444d46fe31a25238c129b70209112b4e7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/Attempt03SourceNamespaced.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/Attempt03SourceNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `081c3d8c0b45ae2a82ed7954af6022c1e0cf36ba`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt03Source/Variant62cbd2577ef0e0415c583d99137bc07444d46fe31a25238c129b70209112b4e7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt03Source/Variant62cbd2577ef0e0415c583d99137bc07444d46fe31a25238c129b70209112b4e7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceActualAdjointColumnTrace` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.ArithmeticFunction.Misc` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [finiteHalfHarmonic](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/Attempt03SourceNamespaced.lean/declarations/finitehalfharmonic.md) | 29 | `declaration-track:7630ed19eab3f7f77e11ac4c5e79553a2b267aea84cf3c6a518b0db1bf6919d3` |
| 2 | `def` | [actualCriticalMoebiusHalf](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/Attempt03SourceNamespaced.lean/declarations/actualcriticalmoebiushalf.md) | 33 | `declaration-track:8427d8e785c78839e7ccf907aa83c5f824b1faa4cd0ffcdb1fe562a54748ca79` |
| 3 | `def` | [closedCenteredHalfInventory](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/Attempt03SourceNamespaced.lean/declarations/closedcenteredhalfinventory.md) | 37 | `declaration-track:9566cea1de5e27b577dfd2a3fa3d41b02d3046ebcf7e13b6f77a2b81e7b367bf` |
| 4 | `def` | [halfMoebius](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/Attempt03SourceNamespaced.lean/declarations/halfmoebius.md) | 40 | `declaration-track:83b31aa3e434ddeffb64887b8b719707c4d1674ab96d757333a60d3a13a84cd4` |
| 5 | `def` | [halfOne](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/Attempt03SourceNamespaced.lean/declarations/halfone.md) | 43 | `declaration-track:141d02c15090173a2352c8f55a7a0f403267548fac0da4ac00e073a4b4f84c0f` |
| 6 | `theorem` | [halfMoebius_apply](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/Attempt03SourceNamespaced.lean/declarations/halfmoebius-apply.md) | 46 | `result-track:ca46f3063bd1cd4f740b19d188d0800230abdce3c5f68b1196976ecca361942d` |
| 7 | `theorem` | [halfOne_apply](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/Attempt03SourceNamespaced.lean/declarations/halfone-apply.md) | 49 | `result-track:5bdb8de2b2b0b1810d2d67c93b6568769c869357f0da2eb71ed15da9ffcf7b07` |
| 8 | `theorem` | [weighted_short_convolution](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/Attempt03SourceNamespaced.lean/declarations/weighted-short-convolution.md) | 51 | `result-track:5d996a67838f763f3fad8ffc5cc075bc8fc7e77d4a62caadc0d3924c45d94727` |
| 9 | `theorem` | [weighted_short_sum](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/Attempt03SourceNamespaced.lean/declarations/weighted-short-sum.md) | 72 | `result-track:67d3389c852208c8e336504ca8f5b96e2255a047ceeccf4553bb0ecef713411e` |
| 10 | `theorem` | [closedCenteredHalfInventory_eq_finite_harmonics](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/Attempt03SourceNamespaced.lean/declarations/closedcenteredhalfinventory-eq-finite-harmonics.md) | 104 | `result-track:cfcd0059a941efe00694386274f213aed292783f21bbdbf52ad38fbe3ca42cff` |
| 11 | `theorem` | [actualCenteredColumnHalfInventory_eq_finite_harmonics](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/Attempt03SourceNamespaced.lean/declarations/actualcenteredcolumnhalfinventory-eq-finite-harmonics.md) | 150 | `result-track:3be1e054590103f4d3bb14693a5b47ea64025b857e89a995ea65c98cc90fa357` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=aed26eb11d3fbf5346e5aa0c160d5610b259461e78065cf1a50f811793e4a2fa -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt03Source/Variant62cbd2577ef0e0415c583d99137bc07444d46fe31a25238c129b70209112b4e7.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt03Source/Variant62cbd2577ef0e0415c583d99137bc07444d46fe31a25238c129b70209112b4e7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
