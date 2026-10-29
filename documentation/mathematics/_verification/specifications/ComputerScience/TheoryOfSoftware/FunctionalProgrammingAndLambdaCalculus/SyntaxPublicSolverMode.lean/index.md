# Verification target: Syntax Public Solver Mode

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f24890a3e28d68cda9aede7962278db9a044299a",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant122f01e2c8a75b2e3b8a5b1782f045c1bed925753b16907b6f240b4f765444fc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SyntaxPublicSolverMode.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SyntaxPublicSolverMode.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f24890a3e28d68cda9aede7962278db9a044299a`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant122f01e2c8a75b2e3b8a5b1782f045c1bed925753b16907b6f240b4f765444fc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant122f01e2c8a75b2e3b8a5b1782f045c1bed925753b16907b6f240b4f765444fc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Nat.Bitwise.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [SolverMode](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SyntaxPublicSolverMode.lean/declarations/solvermode.md) | 23 | `declaration-track:1f6be1e7ec8420809dde9de5a6d9c90338800dc72ca1fd3f5162c695964da6e7` |
| 2 | `structure` | [BVDecideConfig](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SyntaxPublicSolverMode.lean/declarations/bvdecideconfig.md) | 40 | `declaration-track:5d71768e909363ce15811e744ccf006543f21c1b82160fef353d97a9c447f341` |
| 3 | `syntax` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SyntaxPublicSolverMode.lean/declarations/syntax-source-edition-4.md) | 114 | `declaration-track:d38c4b1a1b2673e4030f875c798eb915a0187de3f3c745ae4e760be067c191a5` |
| 4 | `syntax` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SyntaxPublicSolverMode.lean/declarations/syntax-source-edition-5.md) | 117 | `declaration-track:e5d21fe7de974fa69ee422fb43cdb58375d5467b8075e3316fcacb811aa42184` |
| 5 | `syntax` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SyntaxPublicSolverMode.lean/declarations/syntax-source-edition-2.md) | 121 | `declaration-track:8f6c4bf9e9c38e2bcacb8733b30909ec00f36774e3ecca4bf99f3106e57deda4` |
| 6 | `syntax` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SyntaxPublicSolverMode.lean/declarations/syntax-source-edition-3.md) | 124 | `declaration-track:906a61152aca40925855b90d85932d2726f1a9e4d94352f7270253fb9677372b` |
| 7 | `syntax` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SyntaxPublicSolverMode.lean/declarations/syntax-source-edition-6.md) | 132 | `declaration-track:f45bc4813300e2efca758cf8dbe31cb128400fe0e3a334e415460ecd1b130fe4` |
| 8 | `syntax` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SyntaxPublicSolverMode.lean/declarations/syntax.md) | 137 | `declaration-track:5bb83014bafb7fd9b885182bdd4073cf902cf89e889ab95ef995ba758da07862` |
| 9 | `macro_rules` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SyntaxPublicSolverMode.lean/declarations/macro-rules.md) | 139 | `declaration-track:935eda6197896a6752878f5a6278ea90fa4e248e284bb9422a688eed6b7d02db` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8374a02b89daf66d925a3aac3826c2cdae9e88e51e86b948545092d9b4c0193c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant122f01e2c8a75b2e3b8a5b1782f045c1bed925753b16907b6f240b4f765444fc.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant122f01e2c8a75b2e3b8a5b1782f045c1bed925753b16907b6f240b4f765444fc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
