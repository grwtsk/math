# Verification target: Equivalence From Supplied Bijectivity

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2a45098e0f2dc6ecced24d1d4f650e64ab00e1dc",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/SimpleTypeTheory/FunctionTypes/FunctionPredicatesAndConditionalEquivalences/Varianta4b8b3fa057b7df9/EquivalenceFromSuppliedBijectivity.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivalenceFromSuppliedBijectivity.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivalenceFromSuppliedBijectivity.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2a45098e0f2dc6ecced24d1d4f650e64ab00e1dc`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/SimpleTypeTheory/FunctionTypes/FunctionPredicatesAndConditionalEquivalences/Varianta4b8b3fa057b7df9/EquivalenceFromSuppliedBijectivity.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/TypeTheory/SimpleTypeTheory/FunctionTypes/FunctionPredicatesAndConditionalEquivalences/Varianta4b8b3fa057b7df9/EquivalenceFromSuppliedBijectivity.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Comparison.Core` — import line 19; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Defs` — import line 20; external provider; requires a separately pinned dependency.
- [Comparison Predicates And Composition](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ComparisonPredicatesAndComposition.lean/index.md) — import line 22; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toEquiv](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivalenceFromSuppliedBijectivity.lean/declarations/toequiv.md) | 38 | `declaration-track:b744d33fb73892ac65787a0a7254b50c954c04600767a7c92f3023edf02d7da6` |
| 2 | `theorem` | [toEquiv_apply](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivalenceFromSuppliedBijectivity.lean/declarations/toequiv-apply.md) | 42 | `result-track:c933b2bafbfdb3b4b8bc017aed311cbbb756caf30dce7dd20102ea1d9640c6cb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d98e89a5e0e95c3b97c4e78147d43b2e348d2b66b396650503e6bdb1c146108e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/SimpleTypeTheory/FunctionTypes/FunctionPredicatesAndConditionalEquivalences/Varianta4b8b3fa057b7df9/EquivalenceFromSuppliedBijectivity.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/TypeTheory/SimpleTypeTheory/FunctionTypes/FunctionPredicatesAndConditionalEquivalences/Varianta4b8b3fa057b7df9/EquivalenceFromSuppliedBijectivity.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
