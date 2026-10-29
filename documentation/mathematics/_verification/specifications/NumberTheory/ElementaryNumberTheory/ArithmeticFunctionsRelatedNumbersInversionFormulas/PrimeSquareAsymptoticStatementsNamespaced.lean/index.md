# Verification target: Prime Square Asymptotic Statements Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4c5d175b7b658406004e6ee589fbf38f46729700",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeSquareAsymptoticStatements/Variant2bbe780fe0db2a99011460cb597ba617f842126b4f1ed83ec31267e555decf82.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimeSquareAsymptoticStatementsNamespaced.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimeSquareAsymptoticStatementsNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4c5d175b7b658406004e6ee589fbf38f46729700`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeSquareAsymptoticStatements/Variant2bbe780fe0db2a99011460cb597ba617f842126b4f1ed83ec31267e555decf82.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeSquareAsymptoticStatements/Variant2bbe780fe0db2a99011460cb597ba617f842126b4f1ed83ec31267e555decf82.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.PrimeHarmonicRemainder` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.PrimeSquareCorrelation` — import line 7; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.PrimeSquareAbel` — import line 8; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.PrimeSquareSource` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [primeSquareError](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimeSquareAsymptoticStatementsNamespaced.lean/declarations/primesquareerror.md) | 42 | `declaration-track:83b23936eccbd6921907e3fb6093306c2bcc163d8f0d5e2bb181afe7e68597f2` |
| 2 | `def` | [primeSquareErrorBudget](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimeSquareAsymptoticStatementsNamespaced.lean/declarations/primesquareerrorbudget.md) | 47 | `declaration-track:63a3a11b8a2d98016114c037a6828957fffd286db998aa392b54b04cdedd496f` |
| 3 | `theorem` | [primeSquareErrorBudget_nonneg](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimeSquareAsymptoticStatementsNamespaced.lean/declarations/primesquareerrorbudget-nonneg.md) | 50 | `result-track:00fdfd6360283bb2cbc36c1210a1f6fbc9f7439edbb50204be517660f183634b` |
| 4 | `theorem` | [remainder_derivative_norm_bound](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimeSquareAsymptoticStatementsNamespaced.lean/declarations/remainder-derivative-norm-bound.md) | 55 | `result-track:1a708c2b4f0be15c58bd616afadbbca08c28065a7d34582d2206f065767fa0ec` |
| 5 | `theorem` | [remainder_derivative_integrable](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimeSquareAsymptoticStatementsNamespaced.lean/declarations/remainder-derivative-integrable.md) | 66 | `result-track:4ba10812555df6949cc839e4df5b92f98d5a36a1bc3655b21f175974fb806f41` |
| 6 | `theorem` | [remainder_derivative_intervalIntegrable](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimeSquareAsymptoticStatementsNamespaced.lean/declarations/remainder-derivative-intervalintegrable.md) | 79 | `result-track:20677a947e62b57f0df2cf3ed681459527740766033680c8ce485bb510182779` |
| 7 | `theorem` | [primeSquareError_abs_le](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimeSquareAsymptoticStatementsNamespaced.lean/declarations/primesquareerror-abs-le.md) | 85 | `result-track:11a4b020e5e6ef829eb437173262da00d26ecdbc99059257c5f662cc433524f9` |
| 8 | `theorem` | [primeSquareContribution_eq_main_sub_error](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimeSquareAsymptoticStatementsNamespaced.lean/declarations/primesquarecontribution-eq-main-sub-error.md) | 120 | `result-track:73b47e3a3cef90f6e6177ebfea448946756379173c8f19ac13a1fe9058c04ea1` |
| 9 | `theorem` | [primeSquareContribution_asymptotic_bound](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimeSquareAsymptoticStatementsNamespaced.lean/declarations/primesquarecontribution-asymptotic-bound.md) | 131 | `result-track:b4d9a3a5a81f67910e656a9a57de6b8f2eed7e6cbfaf11bcda9e342205badef5` |
| 10 | `theorem` | [actual_primeSquare_signed_asymptotic](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimeSquareAsymptoticStatementsNamespaced.lean/declarations/actual-primesquare-signed-asymptotic.md) | 143 | `result-track:50eb94fbbeb75082b50585486d2ac723d934785c1d1ceacaf62477f18ceed769` |
| 11 | `example` | [(anonymous)](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimeSquareAsymptoticStatementsNamespaced.lean/declarations/example-source-edition-8.md) | 176 | `declaration-track:e4b16a9dab4dfff07ce8158f26c4f7205e7121dc3583534c94d0c28e558daba0` |
| 12 | `example` | [(anonymous)](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimeSquareAsymptoticStatementsNamespaced.lean/declarations/example-source-edition-3.md) | 180 | `declaration-track:3ff8c4f294cebac30f846b44c31c1ae787190a34d0771cb9317cf62d1da7bad5` |
| 13 | `example` | [(anonymous)](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimeSquareAsymptoticStatementsNamespaced.lean/declarations/example-source-edition-9.md) | 182 | `declaration-track:ec7419c0aa186291a4e137213624f359580377fb4cfc9598209228951c91f921` |
| 14 | `example` | [(anonymous)](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimeSquareAsymptoticStatementsNamespaced.lean/declarations/example-source-edition-4.md) | 185 | `declaration-track:4f6e0ea2f8d06616a37fcc86a839e2f0679432c25d7fe3a0c12bbab4cccc2f07` |
| 15 | `example` | [(anonymous)](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimeSquareAsymptoticStatementsNamespaced.lean/declarations/example-source-edition-6.md) | 191 | `declaration-track:7d6f23143538e6ced41b1a32344347e3826c66f343ac45dc751d177278f86f3a` |
| 16 | `example` | [(anonymous)](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimeSquareAsymptoticStatementsNamespaced.lean/declarations/example-source-edition-7.md) | 196 | `declaration-track:b23c8fa5f505ed6e10a81dc4b647ef84778b4f0a0ae2e9476aa4abca6454853c` |
| 17 | `example` | [(anonymous)](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimeSquareAsymptoticStatementsNamespaced.lean/declarations/example-source-edition-2.md) | 201 | `declaration-track:3a6a95dba0baaf95fc0050f830e82ca5bb69d804e7df3b328686698f5d7b7963` |
| 18 | `example` | [(anonymous)](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimeSquareAsymptoticStatementsNamespaced.lean/declarations/example-source-edition-10.md) | 205 | `declaration-track:ef5774814029f5c001f601cf5df42b44704e227b53a328bcfe63f5f4fa8210b4` |
| 19 | `example` | [(anonymous)](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimeSquareAsymptoticStatementsNamespaced.lean/declarations/example.md) | 210 | `declaration-track:374e1414cc90fc6a60aefb68ed4c346dfac3b2d25ef2a8b1230e5d2b8ab20f83` |
| 20 | `example` | [(anonymous)](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimeSquareAsymptoticStatementsNamespaced.lean/declarations/example-source-edition-5.md) | 216 | `declaration-track:5f037f53249014e5cc71b0c21a56598c17d8fc15431a063afbb83b385286abc1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=52c33e8aa1721c4c2b161e7f9c21e2d1d169d0892b6577b24b40c4e1240e8315 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeSquareAsymptoticStatements/Variant2bbe780fe0db2a99011460cb597ba617f842126b4f1ed83ec31267e555decf82.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeSquareAsymptoticStatements/Variant2bbe780fe0db2a99011460cb597ba617f842126b4f1ed83ec31267e555decf82.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
