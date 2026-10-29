# Verification target: Frontend Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9d9fd3824554a343c4e6b96b13113b3c1ccc8611",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Varianta9fa9e3b6bf50d71bd8f3e50073d0c239d6146bc440431e8ed7bfde3e5d7ca97.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FrontendEdition1.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FrontendEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9d9fd3824554a343c4e6b96b13113b3c1ccc8611`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Varianta9fa9e3b6bf50d71bd8f3e50073d0c239d6146bc440431e8ed7bfde3e5d7ca97.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Varianta9fa9e3b6bf50d71bd8f3e50073d0c239d6146bc440431e8ed7bfde3e5d7ca97.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Util.Paths` — import line 6; external provider; requires a separately pinned dependency.
- `Lean.Elab.Command` — import line 7; external provider; requires a separately pinned dependency.
- `Batteries.Tactic.Lint.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Batteries.Tactic.OpenPrivate` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [LintVerbosity](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FrontendEdition1.lean/declarations/lintverbosity.md) | 59 | `declaration-track:d82982cc6740d022bc45f958671de723e6d2ea8a2b89bc2027c8f9bd4c6cfa9f` |
| 2 | `def` | [getChecks](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FrontendEdition1.lean/declarations/getchecks.md) | 76 | `declaration-track:87927bbe75af37a079faf8e3c4bdee72dd8dd8704f8c8c19b52b48b3091a4f2d` |
| 3 | `def` | [lintCore](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FrontendEdition1.lean/declarations/lintcore.md) | 96 | `declaration-track:e1d96834b74ecedb88c885b22c6490b25153d789b8519b8b68379e177c3e8eab` |
| 4 | `def` | [sortResults](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FrontendEdition1.lean/declarations/sortresults.md) | 121 | `declaration-track:753fba6cf7e1000875928474db0148b4d9a9f1f3d0bd5f73c507dc173836d0d3` |
| 5 | `def` | [printWarning](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FrontendEdition1.lean/declarations/printwarning.md) | 129 | `declaration-track:b7a54cb41b7c41ddd5d9652f28d2a3930e6871a1abea503974dfca88e7190744` |
| 6 | `def` | [printWarnings](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FrontendEdition1.lean/declarations/printwarnings.md) | 140 | `declaration-track:fea15959e5e165a389723c587bcef07ea7db28b5e5cee175f5eaee7fb6c078fb` |
| 7 | `def` | [groupedByFilename](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FrontendEdition1.lean/declarations/groupedbyfilename.md) | 150 | `declaration-track:d4f39498fc56d017287075dc2df09649e0c0fa3409920d7fa932896153982f34` |
| 8 | `def` | [formatLinterResults](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FrontendEdition1.lean/declarations/formatlinterresults.md) | 173 | `declaration-track:d71f48360db06f469a4dbe9d022c8cdfc20a10219f358d30e311d663a01345e6` |
| 9 | `def` | [getDeclsInCurrModule](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FrontendEdition1.lean/declarations/getdeclsincurrmodule.md) | 204 | `declaration-track:1b2b336bdb5c2a9cdada59d32c4cb0380253ea5a1d3163499d00038671784e59` |
| 10 | `def` | [getAllDecls](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FrontendEdition1.lean/declarations/getalldecls.md) | 208 | `declaration-track:b1a10a153abc2409badd37ae3a945437a4474c535fbdbd61521e538d17cbc678` |
| 11 | `def` | [getDeclsInPackage](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FrontendEdition1.lean/declarations/getdeclsinpackage.md) | 212 | `declaration-track:0398251667c78c83a5d4d1260755022cf342ac5efbea3b438b180f680553b8dc` |
| 12 | `syntax` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FrontendEdition1.lean/declarations/syntax.md) | 222 | `declaration-track:724f4faf1d496cfe92dfd2661f6bd1242ede31f1e1820224a6f1a69a791b2eef` |
| 13 | `elab` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FrontendEdition1.lean/declarations/elab-source-edition-2.md) | 228 | `declaration-track:e0cea1e144741b56a901508e263ea2e0b2aec97699ca294970c679314bb7939c` |
| 14 | `elab` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FrontendEdition1.lean/declarations/elab.md) | 271 | `declaration-track:d7e6625acfdf623e3a4dbb36b513c19052c8e62eaf323cdb89198216a8d847f7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9a7821b5f0a12f59aa398a3fefd450d727b3e46356e77b39e8387ebb632486ce -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Varianta9fa9e3b6bf50d71bd8f3e50073d0c239d6146bc440431e8ed7bfde3e5d7ca97.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Varianta9fa9e3b6bf50d71bd8f3e50073d0c239d6146bc440431e8ed7bfde3e5d7ca97.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
