# Verification target: Gate Tseitin Equivalence

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5e0866a9d1248e7cdad68db226a44b98952c7c49",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/PropositionalLogic/Satisfiability/FiniteBooleanCNF/Variant9cbcf4e6d3c10e19/GateTseitinEquivalence.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/GateTseitinEquivalence.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/GateTseitinEquivalence.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5e0866a9d1248e7cdad68db226a44b98952c7c49`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/PropositionalLogic/Satisfiability/FiniteBooleanCNF/Variant9cbcf4e6d3c10e19/GateTseitinEquivalence.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/PropositionalLogic/Satisfiability/FiniteBooleanCNF/Variant9cbcf4e6d3c10e19/GateTseitinEquivalence.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fintype.Pi` — import line 20; external provider; requires a separately pinned dependency.
- `Lean.Elab.Tactic.Omega` — import line 21; external provider; requires a separately pinned dependency.
- [Input And CNFSemantics](../../../../../MathematicalLogicAndFoundations/GeneralLogic/InputAndCNFSemantics.lean/index.md) — import line 23; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Gate](../../../../../MathematicalLogicAndFoundations/GeneralLogic/GateTseitinEquivalence.lean/declarations/gate.md) | 56 | `declaration-track:063f9bf09c10f9f372c1828826ee0fec887eba4a6d6d2cec54de6f3d0904e8fe` |
| 2 | `def` | [eval](../../../../../MathematicalLogicAndFoundations/GeneralLogic/GateTseitinEquivalence.lean/declarations/eval.md) | 68 | `declaration-track:a2af3a5a9e4743ad558cfc589335b79389dfe0e126b385c467b48b34569663fe` |
| 3 | `def` | [clauseCount](../../../../../MathematicalLogicAndFoundations/GeneralLogic/GateTseitinEquivalence.lean/declarations/clausecount.md) | 77 | `declaration-track:5983bf7f6fb7c89f39d923c888cd93738ad493a6d6aeac3c2e8b1b7a4ab3cb73` |
| 4 | `def` | [inputs](../../../../../MathematicalLogicAndFoundations/GeneralLogic/GateTseitinEquivalence.lean/declarations/inputs.md) | 86 | `declaration-track:645645662f86c95797ed0c97a0e2fe9a59468995e51eca7cf22067004f596383` |
| 5 | `def` | [InputsBelow](../../../../../MathematicalLogicAndFoundations/GeneralLogic/GateTseitinEquivalence.lean/declarations/inputsbelow.md) | 95 | `declaration-track:f95d328456da721d0eae99132bffd65454266fbc59a1cef3b0b6294f9e49a89e` |
| 6 | `theorem` | [clauseCount_le_four](../../../../../MathematicalLogicAndFoundations/GeneralLogic/GateTseitinEquivalence.lean/declarations/clausecount-le-four.md) | 99 | `result-track:afd81c3a8f6fd6ec39848b68325b136dd4f05f4a2402789c1322370f4136bdb9` |
| 7 | `def` | [encodeGate](../../../../../MathematicalLogicAndFoundations/GeneralLogic/GateTseitinEquivalence.lean/declarations/encodegate.md) | 110 | `declaration-track:a923f225f7d16a474720e076093badbeeaaae5221630d318ef05abab4fb36ac0` |
| 8 | `theorem` | [encodeGate_length](../../../../../MathematicalLogicAndFoundations/GeneralLogic/GateTseitinEquivalence.lean/declarations/encodegate-length.md) | 134 | `result-track:c41303a84e7bd6fea6cb27576122e04e98aa25fbd4d378914bd25e00f4b5c2ed` |
| 9 | `theorem` | [encodeGate_correct](../../../../../MathematicalLogicAndFoundations/GeneralLogic/GateTseitinEquivalence.lean/declarations/encodegate-correct.md) | 139 | `result-track:c53625a9345af33df0a0bdc8a615ad9a4d31ebe7deccaf3ac8d3bfcea8aa1d40` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=42465a414e10d08abf2c69432000bf1772bc1a5c1f3aeb5c8353079ce8b8765a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/PropositionalLogic/Satisfiability/FiniteBooleanCNF/Variant9cbcf4e6d3c10e19/GateTseitinEquivalence.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/PropositionalLogic/Satisfiability/FiniteBooleanCNF/Variant9cbcf4e6d3c10e19/GateTseitinEquivalence.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
