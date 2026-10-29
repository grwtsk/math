# Verification target: Comparison Predicates And Composition

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "006687f50d009091a932175bce23cafc024fe954",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/SimpleTypeTheory/FunctionTypes/FunctionPredicatesAndConditionalEquivalences/Varianta4b8b3fa057b7df9/ComparisonPredicatesAndComposition.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ComparisonPredicatesAndComposition.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ComparisonPredicatesAndComposition.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `006687f50d009091a932175bce23cafc024fe954`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/SimpleTypeTheory/FunctionTypes/FunctionPredicatesAndConditionalEquivalences/Varianta4b8b3fa057b7df9/ComparisonPredicatesAndComposition.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/TypeTheory/SimpleTypeTheory/FunctionTypes/FunctionPredicatesAndConditionalEquivalences/Varianta4b8b3fa057b7df9/ComparisonPredicatesAndComposition.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Comparison.Core` — import line 19; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Defs` — import line 20; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsInjective](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ComparisonPredicatesAndComposition.lean/declarations/isinjective.md) | 33 | `declaration-track:29d25d503fac1603289b32824ab70b8460e30d2f42276ebe9722c7cf59be93e3` |
| 2 | `def` | [IsSurjective](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ComparisonPredicatesAndComposition.lean/declarations/issurjective.md) | 36 | `declaration-track:3e6887a4016c908973040d5fa0ac85938580118806268aeac34e94d1a5d18727` |
| 3 | `def` | [IsBijective](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ComparisonPredicatesAndComposition.lean/declarations/isbijective.md) | 39 | `declaration-track:57ac025c1732c00462bd153316a4de7c2335470676379f1058c0748c4e46b308` |
| 4 | `def` | [IsLeftInverseOf](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ComparisonPredicatesAndComposition.lean/declarations/isleftinverseof.md) | 42 | `declaration-track:52be07d9b82a1861b727e1438a1ffbb4c7644f9f6bc38cb44ae83e9d756c1b89` |
| 5 | `def` | [IsRightInverseOf](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ComparisonPredicatesAndComposition.lean/declarations/isrightinverseof.md) | 45 | `declaration-track:8174fcf77a6707fa339e65a8ab8107d8baa3779ec2d76486c631155511dd6029` |
| 6 | `def` | [IsInverseOf](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ComparisonPredicatesAndComposition.lean/declarations/isinverseof.md) | 48 | `declaration-track:ba0390dd7af8a121c791611faef24f62b0f16c058fb9fcbdc4e2233b069fcc48` |
| 7 | `theorem` | [isInjective_comp](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ComparisonPredicatesAndComposition.lean/declarations/isinjective-comp.md) | 51 | `result-track:2b1872ed23ca0ae7cffa21de3bcc592e7d954b2af215158934856bd2046f76df` |
| 8 | `theorem` | [isSurjective_comp](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ComparisonPredicatesAndComposition.lean/declarations/issurjective-comp.md) | 57 | `result-track:cf11ea5e226ec622819540e2d4739d830787425a02b6bbda3a9aa8697b7ab59e` |
| 9 | `theorem` | [isBijective_comp](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ComparisonPredicatesAndComposition.lean/declarations/isbijective-comp.md) | 63 | `result-track:18c3c02948a31d482e31846c280761cd01da3c97d94e81479f3b658b1d487fea` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=94caf16c80eb5dfa1597a8dbca561204d24b1ffb262c332acc3d2f445a09010f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/SimpleTypeTheory/FunctionTypes/FunctionPredicatesAndConditionalEquivalences/Varianta4b8b3fa057b7df9/ComparisonPredicatesAndComposition.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/TypeTheory/SimpleTypeTheory/FunctionTypes/FunctionPredicatesAndConditionalEquivalences/Varianta4b8b3fa057b7df9/ComparisonPredicatesAndComposition.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
