# Verification target: Check Imports Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a0f2942c64226dcd086ce670cc5e5509774a0477",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CheckImports/Variant23c623fc52f471cef9f93d3d089fb5086bd0e748978d08e03bd15d37245b1605.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CheckImportsNamespaced.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CheckImportsNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a0f2942c64226dcd086ce670cc5e5509774a0477`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CheckImports/Variant23c623fc52f471cef9f93d3d089fb5086bd0e748978d08e03bd15d37245b1605.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CheckImports/Variant23c623fc52f471cef9f93d3d089fb5086bd0e748978d08e03bd15d37245b1605.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Batteries` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [LogIO](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CheckImportsNamespaced.lean/declarations/logio.md) | 31 | `declaration-track:3ca11968aa4fcfb3af0c15334dd65b209fb9e27153f601b9a71ccefcb62ef34a` |
| 2 | `def` | [runLogIO](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CheckImportsNamespaced.lean/declarations/runlogio.md) | 33 | `declaration-track:ab01c65e15911df0e66bbfff6978bfa654630d3c0cfcc4da762654f1d205e2ad` |
| 3 | `def` | [warn](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CheckImportsNamespaced.lean/declarations/warn.md) | 38 | `declaration-track:454848e7b68b4d487cac0df66901c718bb8aa89fee018b7180f868739463305d` |
| 4 | `def` | [getWarningInfo](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CheckImportsNamespaced.lean/declarations/getwarninginfo.md) | 43 | `declaration-track:07f6dba147e4024161895168db8c5e9edf86430ae133c8bcf6ef55fcb5cdd315` |
| 5 | `def` | [createModuleHashmap](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CheckImportsNamespaced.lean/declarations/createmodulehashmap.md) | 45 | `declaration-track:76d136cb14705d8f89b754d94f4a19f130ee6a23fbc5de3eb08e3674c0e3d10b` |
| 6 | `def` | [addModulesIn](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CheckImportsNamespaced.lean/declarations/addmodulesin.md) | 54 | `declaration-track:6e1b4cedba28b043ce9b237ef661d4632f2fca7a9d4559bd4fda2474e2fb3228` |
| 7 | `def` | [modulePath](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CheckImportsNamespaced.lean/declarations/modulepath.md) | 67 | `declaration-track:88fc27e0eb3d390d2a987b261b60d696a00461f4869edea6f64bfa2b3aaca3a4` |
| 8 | `def` | [writeImportModule](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CheckImportsNamespaced.lean/declarations/writeimportmodule.md) | 71 | `declaration-track:d0b595f5f8af35b5e525f2923a3b4b58d80c26f2d19b8acf3159a4ac03f03a25` |
| 9 | `def` | [checkMissingImports](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CheckImportsNamespaced.lean/declarations/checkmissingimports.md) | 79 | `declaration-track:1afaf3e65f1f5da18ee999414e256d80a7a15459d1913f108eb4e23d615c2364` |
| 10 | `def` | [checkBatteriesDataDir](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CheckImportsNamespaced.lean/declarations/checkbatteriesdatadir.md) | 90 | `declaration-track:dead946e07d3f62e91f5557c288d21260eb74eccb3d4d05180a9e3e00458f893` |
| 11 | `def` | [expectedBatteriesImports](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CheckImportsNamespaced.lean/declarations/expectedbatteriesimports.md) | 117 | `declaration-track:763e031ad6ad9a755f1bd4d5fcbfc6a5a644e543a4e24e28422351f408ebe424` |
| 12 | `def` | [checkBatteriesDataImports](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CheckImportsNamespaced.lean/declarations/checkbatteriesdataimports.md) | 132 | `declaration-track:a18f77e5e2d79174c00bb1fa3038b5b83563eab24ef62af46b2ef34ddd367e86` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6bc4e80f060278f1972b889b98b3d67cda3c25a8bc90cab749a4926854fb6713 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CheckImports/Variant23c623fc52f471cef9f93d3d089fb5086bd0e748978d08e03bd15d37245b1605.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CheckImports/Variant23c623fc52f471cef9f93d3d089fb5086bd0e748978d08e03bd15d37245b1605.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
