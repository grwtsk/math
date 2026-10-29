# Verification target: Coprime Count

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0eb571df40a8e091bf9bb31cb8ee0689712fd4d4",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/CoprimeCount/Variant772ab08d62e5932b85755a900bbc20526558055c0a84630c3a614e5f241b22b0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CoprimeCount.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CoprimeCount.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0eb571df40a8e091bf9bb31cb8ee0689712fd4d4`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/CoprimeCount/Variant772ab08d62e5932b85755a900bbc20526558055c0a84630c3a614e5f241b22b0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/CoprimeCount/Variant772ab08d62e5932b85755a900bbc20526558055c0a84630c3a614e5f241b22b0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.MobiusRatio` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Factorization.Basic` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Cast.Field` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Floor.Semifield` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Archimedean.Real.Basic` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [coprimeCount](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CoprimeCount.lean/declarations/coprimecount.md) | 19 | `declaration-track:0d4fbcf27a786f752226e296433bb671c3e0e3f3870783ed89138a5ba0678dc1` |
| 2 | `def` | [coprimeDensity](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CoprimeCount.lean/declarations/coprimedensity.md) | 23 | `declaration-track:06b08e4e47f89cc44a682bb935dcc5ce578c40c77aa64f32afa82771d885e24c` |
| 3 | `theorem` | [sum_moebius_divisors](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CoprimeCount.lean/declarations/sum-moebius-divisors.md) | 27 | `result-track:a6d1dac5bd5ab0c4e27a8c147d3b8d0e9a2ddc194c7020427c41e76f3581b8c1` |
| 4 | `theorem` | [coprime_indicator_eq](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CoprimeCount.lean/declarations/coprime-indicator-eq.md) | 35 | `result-track:a01061e07638a761a200cc56b3dffe71471e1a3393b0605af5669172c1eff5f6` |
| 5 | `theorem` | [positive_multiples_card](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CoprimeCount.lean/declarations/positive-multiples-card.md) | 51 | `result-track:33feae320bb8a76efef447fd2a900b0be90e52e1ac1234331d366e50fcb55f14` |
| 6 | `theorem` | [coprimeCount_eq_moebius_floor](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CoprimeCount.lean/declarations/coprimecount-eq-moebius-floor.md) | 61 | `result-track:13a94d524772c39c96c1b70b923f3f6b52791c4f1214c1e9b5b2ee05dfe103d8` |
| 7 | `theorem` | [natural_division_error](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CoprimeCount.lean/declarations/natural-division-error.md) | 77 | `result-track:3832c696078b1114018f99c0d671df612ea9b32e6a4d8808f60580d2bce5c628` |
| 8 | `theorem` | [coprimeCount_error_le](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CoprimeCount.lean/declarations/coprimecount-error-le.md) | 87 | `result-track:11562ddb5c5063bbaf69a64378c68626e202b2a721c05d8b1ea5e664f1da2742` |
| 9 | `theorem` | [coprimeCount_period](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CoprimeCount.lean/declarations/coprimecount-period.md) | 112 | `result-track:d4f0a01d66d3ac37a20c9869cfc889062ad74bb1576832744f18ec2cc6f1bc41` |
| 10 | `theorem` | [coprimeCount_le](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CoprimeCount.lean/declarations/coprimecount-le.md) | 121 | `result-track:c16e0e55cba54c1e529e00a2f57a044cf392c78778f5ec1d45383c069e59a510` |
| 11 | `theorem` | [coprimeDensity_nonneg](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CoprimeCount.lean/declarations/coprimedensity-nonneg.md) | 128 | `result-track:d99f963a57007abbe4ae732293f28969e6aa64e146d90b9304f8b67ad1936201` |
| 12 | `theorem` | [coprimeDensity_le_one](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CoprimeCount.lean/declarations/coprimedensity-le-one.md) | 135 | `result-track:8470146d6fe6fcfd64ab80784f4e503682dc6d6e4222977a47c13adf73d43154` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f1eac356b335811898f454ba3a9ff120d950aa4c7a1985191423a8b09cd0e76f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/CoprimeCount/Variant772ab08d62e5932b85755a900bbc20526558055c0a84630c3a614e5f241b22b0.lean","GRWTSK/_verification/specifications/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/CoprimeCount/Variant772ab08d62e5932b85755a900bbc20526558055c0a84630c3a614e5f241b22b0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
