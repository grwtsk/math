# Verification target: Lint Style Namespaced Find Imports

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bbebb11ba1907c4f84ceadb3f716161efd21c712",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LintStyle/Variant9026d0730e48d31316535f213d399accf63c772859e52aea9d8568d6250e6218.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/LintStyleNamespacedFindImports.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/LintStyleNamespacedFindImports.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bbebb11ba1907c4f84ceadb3f716161efd21c712`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LintStyle/Variant9026d0730e48d31316535f213d399accf63c772859e52aea9d8568d6250e6218.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LintStyle/Variant9026d0730e48d31316535f213d399accf63c772859e52aea9d8568d6250e6218.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lake.CLI.Main` — import line 12; external provider; requires a separately pinned dependency.
- `Lean.Elab.ParseImportsFast` — import line 13; external provider; requires a separately pinned dependency.
- `Batteries.Data.String.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linter.TextBased` — import line 15; external provider; requires a separately pinned dependency.
- `Cli.Basic` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [findImports](../../../../../ComputerScience/AlgorithmsInComputerScience/LintStyleNamespacedFindImports.lean/declarations/findimports.md) | 37 | `declaration-track:a467631f6e63ee8bed35a0cacd820e2d5d61b8a84ff699ab8223d6eab090612c` |
| 2 | `def` | [explicitImports](../../../../../ComputerScience/AlgorithmsInComputerScience/LintStyleNamespacedFindImports.lean/declarations/explicitimports.md) | 42 | `declaration-track:c7e0ed66b17b917e2dd2c384d73a0183ff491242c07fd3e68e76972e1bd0a7e5` |
| 3 | `def` | [eraseExplicitImports](../../../../../ComputerScience/AlgorithmsInComputerScience/LintStyleNamespacedFindImports.lean/declarations/eraseexplicitimports.md) | 45 | `declaration-track:3fde68d39cb3d4056c5704be6b2e61b5b7a1ea02619402df9b726e3607a2d0e5` |
| 4 | `def` | [getWorkspaceRoot](../../../../../ComputerScience/AlgorithmsInComputerScience/LintStyleNamespacedFindImports.lean/declarations/getworkspaceroot.md) | 49 | `declaration-track:513c9e52756a0805a145df9f4fda7aef0c8fdcbfef15a1d208ad8a5002efa2fa` |
| 5 | `def` | [toLeanOptions](../../../../../ComputerScience/AlgorithmsInComputerScience/LintStyleNamespacedFindImports.lean/declarations/toleanoptions.md) | 57 | `declaration-track:60b0f8a7659db3c0aa185264c2960e630896112ce2604752de5270d489c70096` |
| 6 | `def` | [getLakefileLeanOptions](../../../../../ComputerScience/AlgorithmsInComputerScience/LintStyleNamespacedFindImports.lean/declarations/getlakefileleanoptions.md) | 73 | `declaration-track:ecdb45e46f921108af03558d5e6cb910cb066109f9544317da79402091d8dd29` |
| 7 | `register_option` | [linter.checkInitImports](../../../../../ComputerScience/AlgorithmsInComputerScience/LintStyleNamespacedFindImports.lean/declarations/linter-checkinitimports.md) | 89 | `declaration-track:35d9c98e405337dc63e549ddc442994394eda969bd2cbc6d450ac81ef90430bf` |
| 8 | `def` | [missingInitImports](../../../../../ComputerScience/AlgorithmsInComputerScience/LintStyleNamespacedFindImports.lean/declarations/missinginitimports.md) | 96 | `declaration-track:d14623eb36ea900dd2015350c085a57431275ecb9d52d10957e05cd33d0b9a87` |
| 9 | `register_option` | [linter.allScriptsDocumented](../../../../../ComputerScience/AlgorithmsInComputerScience/LintStyleNamespacedFindImports.lean/declarations/linter-allscriptsdocumented.md) | 140 | `declaration-track:880fb4dd147800ac382bb75cd0e000fe70de6f5e91cf5ac932474e59947e414a` |
| 10 | `def` | [undocumentedScripts](../../../../../ComputerScience/AlgorithmsInComputerScience/LintStyleNamespacedFindImports.lean/declarations/undocumentedscripts.md) | 144 | `declaration-track:c20855267c18cc37a83cd201fb41880542d07cc7cf719203ed8ea7ba0ab8182f` |
| 11 | `def` | [lintStyleCli](../../../../../ComputerScience/AlgorithmsInComputerScience/LintStyleNamespacedFindImports.lean/declarations/lintstylecli.md) | 165 | `declaration-track:cdfbac8db7d8c01a9affcdcf2cd6d1c756a8094c456cf7dde7a03b5c7b7cbe36` |
| 12 | `def` | [lintStyle](../../../../../ComputerScience/AlgorithmsInComputerScience/LintStyleNamespacedFindImports.lean/declarations/lintstyle.md) | 228 | `declaration-track:9005fa730a85a9c8f30959b0952dea9af77c73ca9c732be495ffccf11abdcbf3` |
| 13 | `def` | [main](../../../../../ComputerScience/AlgorithmsInComputerScience/LintStyleNamespacedFindImports.lean/declarations/main.md) | 244 | `declaration-track:a2649d6e90ad9c8a332eca2dffc49532de38e7c9f9e4d2c40756828c49370429` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7f0e44cf917847dfc891205e1fd7f5e5eb7facf141cef3d07a117fd0dc08840d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LintStyle/Variant9026d0730e48d31316535f213d399accf63c772859e52aea9d8568d6250e6218.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LintStyle/Variant9026d0730e48d31316535f213d399accf63c772859e52aea9d8568d6250e6218.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
