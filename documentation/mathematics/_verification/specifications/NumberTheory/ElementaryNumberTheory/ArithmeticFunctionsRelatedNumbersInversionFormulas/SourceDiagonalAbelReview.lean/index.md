# Verification target: Source Diagonal Abel Review

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "85b823590a9499054ba84533b8da944aadec051f",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceDiagonalAbelReview/Variant71c0c1785e8c22a9e3e0392d22a40a4d78be4802555893a8a76c2ef3b53dcf0e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceDiagonalAbelReview.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceDiagonalAbelReview.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `85b823590a9499054ba84533b8da944aadec051f`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceDiagonalAbelReview/Variant71c0c1785e8c22a9e3e0392d22a40a4d78be4802555893a8a76c2ef3b53dcf0e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceDiagonalAbelReview/Variant71c0c1785e8c22a9e3e0392d22a40a4d78be4802555893a8a76c2ef3b53dcf0e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceDiagonalPrimeAbel` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateVaughanTranslationGate` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [inventoryPrimeDiagonal](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceDiagonalAbelReview.lean/declarations/inventoryprimediagonal.md) | 31 | `declaration-track:a43346d7cf408a29719623c8aeda705eb5e9e6786f53566a7aa1100d5ecaceee` |
| 2 | `theorem` | [diagonal_coefficient_error_le](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceDiagonalAbelReview.lean/declarations/diagonal-coefficient-error-le.md) | 35 | `result-track:5d5f3943a446be9ce6b8dd7c217df4c6ff328be1503f678b30ab444b5c2e0d7e` |
| 3 | `theorem` | [actual_diagonal_minus_inventory_prime_bounded](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceDiagonalAbelReview.lean/declarations/actual-diagonal-minus-inventory-prime-bounded.md) | 55 | `result-track:fa9fb9986178697c8984ce6e53521c7b0a2fdd7599c1a48430d54d1498aab517` |
| 4 | `theorem` | [inventoryPrimeDiagonal_eq_retainedPrimeDiagonal](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceDiagonalAbelReview.lean/declarations/inventoryprimediagonal-eq-retainedprimediagonal.md) | 102 | `result-track:d2d0bf7306a710eba8636e6b5338c1784d7a5accc57f826e7901a7c96839f22c` |
| 5 | `theorem` | [actual_diagonal_integral_error](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceDiagonalAbelReview.lean/declarations/actual-diagonal-integral-error.md) | 136 | `result-track:1caecb08927d95cdc5544fc2d1ec895ee975475fad427cdedd5d0c6b50f8c1f4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5f14f28455896b972f7dcc4830f73c739edaf35a965107022f36dfc431038b32 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceDiagonalAbelReview/Variant71c0c1785e8c22a9e3e0392d22a40a4d78be4802555893a8a76c2ef3b53dcf0e.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceDiagonalAbelReview/Variant71c0c1785e8c22a9e3e0392d22a40a4d78be4802555893a8a76c2ef3b53dcf0e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
