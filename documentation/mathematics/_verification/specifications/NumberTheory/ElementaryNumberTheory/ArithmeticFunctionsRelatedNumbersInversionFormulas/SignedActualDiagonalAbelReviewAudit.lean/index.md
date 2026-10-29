# Verification target: Signed Actual Diagonal Abel Review Audit

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "836a964b6ea5236c610cbf0217307c7e764d08a0",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SignedActualDiagonalAbelReviewAudit/Variant3db78139e07478bf07a1339dc45b253528afa5b30dede604ca5ee8c94d35d964.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SignedActualDiagonalAbelReviewAudit.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SignedActualDiagonalAbelReviewAudit.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `836a964b6ea5236c610cbf0217307c7e764d08a0`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SignedActualDiagonalAbelReviewAudit/Variant3db78139e07478bf07a1339dc45b253528afa5b30dede604ca5ee8c94d35d964.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SignedActualDiagonalAbelReviewAudit/Variant3db78139e07478bf07a1339dc45b253528afa5b30dede604ca5ee8c94d35d964.lean.json)

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
| 1 | `def` | [inventoryPrimeDiagonal](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SignedActualDiagonalAbelReviewAudit.lean/declarations/inventoryprimediagonal.md) | 31 | `declaration-track:155ae3e173a7f887645b626919692f550cb3cfe9c83647b04f34e7c78a02cc45` |
| 2 | `theorem` | [diagonal_coefficient_error_le](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SignedActualDiagonalAbelReviewAudit.lean/declarations/diagonal-coefficient-error-le.md) | 35 | `result-track:38094b03d4da8d19cca4021182f6db9c968132f7e651148082f1de345429f2a6` |
| 3 | `theorem` | [actual_diagonal_minus_inventory_prime_bounded](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SignedActualDiagonalAbelReviewAudit.lean/declarations/actual-diagonal-minus-inventory-prime-bounded.md) | 55 | `result-track:130fb85d354698535c062ff516daf0289fa04920f6dfde67413945a291c9c81a` |
| 4 | `theorem` | [inventoryPrimeDiagonal_eq_retainedPrimeDiagonal](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SignedActualDiagonalAbelReviewAudit.lean/declarations/inventoryprimediagonal-eq-retainedprimediagonal.md) | 102 | `result-track:e014cab55722b52a149a462f0988feb0363d0f4e18c9c9f49a5322e392f01443` |
| 5 | `theorem` | [actual_diagonal_integral_error](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SignedActualDiagonalAbelReviewAudit.lean/declarations/actual-diagonal-integral-error.md) | 136 | `result-track:636aa37ec055bd0aa067aaa754d51a8ccb1f546fbe24b99493435daa0ce94b86` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4c72c4dc1e56aaf61cd2177943c131d2546be3d3f483c5a820536284a13e00ad -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SignedActualDiagonalAbelReviewAudit/Variant3db78139e07478bf07a1339dc45b253528afa5b30dede604ca5ee8c94d35d964.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SignedActualDiagonalAbelReviewAudit/Variant3db78139e07478bf07a1339dc45b253528afa5b30dede604ca5ee8c94d35d964.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
