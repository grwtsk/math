# Verification target: Proper Power Asymptotic Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bde122be347ab09f8a7836333b37098c4b5916a5",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ProperPowerAsymptotic/Variant2421f9e2d4eb87780f8f696d11062c38cfd93b2013b63e478efd020d0b2314ba.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ProperPowerAsymptoticNamespaced.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ProperPowerAsymptoticNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bde122be347ab09f8a7836333b37098c4b5916a5`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ProperPowerAsymptotic/Variant2421f9e2d4eb87780f8f696d11062c38cfd93b2013b63e478efd020d0b2314ba.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ProperPowerAsymptotic/Variant2421f9e2d4eb87780f8f696d11062c38cfd93b2013b63e478efd020d0b2314ba.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.PrimeSquareAsymptotic` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.HigherPowerAsymptotic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [properPowerConstant](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ProperPowerAsymptoticNamespaced.lean/declarations/properpowerconstant.md) | 32 | `declaration-track:d768efab39597f548d5c755809da6e9c89a15bff87eb014b8e64e9a6873f9d57` |
| 2 | `def` | [properPowerBudget](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ProperPowerAsymptoticNamespaced.lean/declarations/properpowerbudget.md) | 35 | `declaration-track:06b75ebd8de7379dd8321a959ebb38d1703d8a27eccf7f8666288f3bd1550392` |
| 3 | `def` | [properPowerError](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ProperPowerAsymptoticNamespaced.lean/declarations/properpowererror.md) | 38 | `declaration-track:1da35c072a71c9628d4d20a79b70fb02b45b91bad49e24495dda7a72e4891275` |
| 4 | `def` | [sourcePowerRemainder](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ProperPowerAsymptoticNamespaced.lean/declarations/sourcepowerremainder.md) | 42 | `declaration-track:7ca300794291c5f64020ec8cc5b28794565d35ac89f07cacc9767858d6283f2f` |
| 5 | `theorem` | [properPowerBudget_nonneg](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ProperPowerAsymptoticNamespaced.lean/declarations/properpowerbudget-nonneg.md) | 44 | `result-track:af282616f9ec5141b1ac844294de76fc7a8cd049c099010d0d236b56f1d04e5a` |
| 6 | `theorem` | [properPowerError_abs_le](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ProperPowerAsymptoticNamespaced.lean/declarations/properpowererror-abs-le.md) | 47 | `result-track:1826a13ab8267dfdc4f9c990ca4fe410624f85d6f75ca0d9625c908d2dc7f528` |
| 7 | `theorem` | [properPrimePowerContribution_eq_main_add_error](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ProperPowerAsymptoticNamespaced.lean/declarations/properprimepowercontribution-eq-main-add-error.md) | 58 | `result-track:841a090fe15083b2cfb3af128ab4fe96ce70c2fe1ef8226c37b3592b8ec299f2` |
| 8 | `theorem` | [properPrimePowerContribution_asymptotic_bound](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ProperPowerAsymptoticNamespaced.lean/declarations/properprimepowercontribution-asymptotic-bound.md) | 67 | `result-track:3ab2a90ed8962d5352e87bc1a30aa000b2dbd2202774956eb395f18844b28855` |
| 9 | `theorem` | [actual_properPower_signed_asymptotic](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ProperPowerAsymptoticNamespaced.lean/declarations/actual-properpower-signed-asymptotic.md) | 79 | `result-track:5a79e062998ca0e20309284353efa7eccb2558a5f2cdcb6fe22571c5437ba561` |
| 10 | `theorem` | [sourcePowerRemainder_abs_le](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ProperPowerAsymptoticNamespaced.lean/declarations/sourcepowerremainder-abs-le.md) | 100 | `result-track:3779749cd7e07c58f421b56278da4b2e26546af269def8d546f4ef218a248188` |
| 11 | `theorem` | [sourceQuadraticValue_exact_prime_remainder](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ProperPowerAsymptoticNamespaced.lean/declarations/sourcequadraticvalue-exact-prime-remainder.md) | 108 | `result-track:ed302f6c2f43a05356b8d19b3ab79f2efa9314a267eabcccc3b58a5b667e64cf` |
| 12 | `theorem` | [sourceQuadraticValue_prime_remainder_bound](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ProperPowerAsymptoticNamespaced.lean/declarations/sourcequadraticvalue-prime-remainder-bound.md) | 118 | `result-track:29e35f5ad05b4eaaadd5ea0cea61e59d1776729bf1a511aaccd4aed3d7aff89e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=52bdd4f46def79354254450e9732cd2c7548a24a28b9186c6991e1853f6cbf75 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ProperPowerAsymptotic/Variant2421f9e2d4eb87780f8f696d11062c38cfd93b2013b63e478efd020d0b2314ba.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ProperPowerAsymptotic/Variant2421f9e2d4eb87780f8f696d11062c38cfd93b2013b63e478efd020d0b2314ba.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
