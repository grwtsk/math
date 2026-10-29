# Verification target: Linter Unused Tactic Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2f2a7e343989871da3f524721d2bd2855c84ea53",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnusedTactic/Variantddd32d49369e437fc0ca224c1b29ce7d353b1dc177dbb2284b51cad214970094.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinterUnusedTacticNamespaced.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinterUnusedTacticNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2f2a7e343989871da3f524721d2bd2855c84ea53`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnusedTactic/Variantddd32d49369e437fc0ca224c1b29ce7d353b1dc177dbb2284b51cad214970094.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnusedTactic/Variantddd32d49369e437fc0ca224c1b29ce7d353b1dc177dbb2284b51cad214970094.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Parser.Syntax` — import line 12; external provider; requires a separately pinned dependency.
- `Batteries.Tactic.Unreachable` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linter.Header` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linter.UnusedTacticExtension` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `register_option` | [linter.unusedTactic](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinterUnusedTacticNamespaced.lean/declarations/linter-unusedtactic.md) | 70 | `declaration-track:d62d602a37630a9d07147f7bd08f1d1f8961a7e6c9847861c72dcf0d44f66bb7` |
| 2 | `abbrev` | [M](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinterUnusedTacticNamespaced.lean/declarations/m.md) | 78 | `declaration-track:fae6dbc2c83d6c6e6b03ea72c105c1efa53f2faee8d36398d2e8edc607f6bb9a` |
| 3 | `initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinterUnusedTacticNamespaced.lean/declarations/initialize-source-edition-2.md) | 96 | `declaration-track:87f12ccfc6b491191bffa5c5d245c03aa0b5d20d597abe7fb98f5857e6abf758` |
| 4 | `def` | [isIgnoreTacticKind](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinterUnusedTacticNamespaced.lean/declarations/isignoretactickind.md) | 121 | `declaration-track:e50cc20aa6223b95abcc9c28f57762492f906b8403437e3f66004ce2ac209f01` |
| 5 | `def` | [addIgnoreTacticKind](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinterUnusedTacticNamespaced.lean/declarations/addignoretactickind.md) | 131 | `declaration-track:637c3e14cdd4f957719fc6ca5e0430c5020d7a7d4ba6c6c7639acdb30fe8998c` |
| 6 | `def` | [getTactics](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinterUnusedTacticNamespaced.lean/declarations/gettactics.md) | 136 | `declaration-track:8a6e106f055eef585c1c86cba3235b0774861139956c12505be8c2a3ceae06e9` |
| 7 | `def` | [getNames](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinterUnusedTacticNamespaced.lean/declarations/getnames.md) | 146 | `declaration-track:e4ced3edff5995754d1bfcd41bf0614d30278af2305c60649e006b99db6aae7c` |
| 8 | `def` | [eraseUsedTacticsList](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinterUnusedTacticNamespaced.lean/declarations/eraseusedtacticslist.md) | 154 | `declaration-track:d7e7edd6fafed18ab11dc84c83ac377f095776b8ea782d4bac90efab464db1ab` |
| 9 | `def` | [eraseUsedTactics](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinterUnusedTacticNamespaced.lean/declarations/eraseusedtactics.md) | 160 | `declaration-track:f46fc9c09c5d4d733559423a98fd02f69411d8594ee1f8418fd49a16ae478fa0` |
| 10 | `def` | [unusedTacticLinter](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinterUnusedTacticNamespaced.lean/declarations/unusedtacticlinter.md) | 186 | `declaration-track:7980ecf72d436748a8b01620169490ba3c49df00118d69b7c77026fc97474622` |
| 11 | `initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinterUnusedTacticNamespaced.lean/declarations/initialize.md) | 215 | `declaration-track:0c10f268caa44d63fae74ad63df34ce960fe9581f008c5c558e85d5ef6d12c35` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d4cd96bda5f4ebe1f9c651b9903be32a9215b158f48a4524f5f780c793b0e68c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnusedTactic/Variantddd32d49369e437fc0ca224c1b29ce7d353b1dc177dbb2284b51cad214970094.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnusedTactic/Variantddd32d49369e437fc0ca224c1b29ce7d353b1dc177dbb2284b51cad214970094.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
