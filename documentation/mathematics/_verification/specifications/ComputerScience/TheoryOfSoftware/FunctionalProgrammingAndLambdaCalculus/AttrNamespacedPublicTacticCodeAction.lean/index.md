# Verification target: Attr Namespaced Public Tactic Code Action

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "31accedf065bb210d8e8606226a58db3f541715c",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variant38a8456c71520b8de7d7503d64273eb7b3f8ab69dd384e6c850d80c53c569c6f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AttrNamespacedPublicTacticCodeAction.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AttrNamespacedPublicTacticCodeAction.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `31accedf065bb210d8e8606226a58db3f541715c`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variant38a8456c71520b8de7d7503d64273eb7b3f8ab69dd384e6c850d80c53c569c6f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variant38a8456c71520b8de7d7503d64273eb7b3f8ab69dd384e6c850d80c53c569c6f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [TacticCodeAction](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AttrNamespacedPublicTacticCodeAction.lean/declarations/tacticcodeaction.md) | 35 | `declaration-track:34acff3ef87e7c811a31425b05311a688a07366fdd37b41f6d0c2edf20c7eb1e` |
| 2 | `abbrev` | [TacticSeqCodeAction](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AttrNamespacedPublicTacticCodeAction.lean/declarations/tacticseqcodeaction.md) | 41 | `declaration-track:1c3f63c01b3f1f74980c1bedc1e3e497a3fabd44b8a3403716c1f9db50571d54` |
| 3 | `def` | [mkTacticCodeAction](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AttrNamespacedPublicTacticCodeAction.lean/declarations/mktacticcodeaction.md) | 47 | `declaration-track:1678d7c4c7ae4e1ae73414fdf6c542bfea390d851774fc9d0e5e001bd78130bf` |
| 4 | `def` | [mkTacticSeqCodeAction](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AttrNamespacedPublicTacticCodeAction.lean/declarations/mktacticseqcodeaction.md) | 52 | `declaration-track:174811bab442c22e7ffc415a9923aa0dd075cb82ecc1331c21b3d3f4b18275f0` |
| 5 | `structure` | [TacticCodeActionEntry](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AttrNamespacedPublicTacticCodeAction.lean/declarations/tacticcodeactionentry.md) | 57 | `declaration-track:7c0e496ca1a672207eca32b7ee1f3852f8b667c3e695a4239b73db6dad7c9500` |
| 6 | `structure` | [TacticCodeActions](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AttrNamespacedPublicTacticCodeAction.lean/declarations/tacticcodeactions.md) | 65 | `declaration-track:f781483b865e1a1f08b68f16c19a8e7f1cb48321cdc57157f7019242a62a646f` |
| 7 | `def` | [TacticCodeActions.insert](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AttrNamespacedPublicTacticCodeAction.lean/declarations/tacticcodeactions-insert.md) | 73 | `declaration-track:d4924305fc7b1f45f729eee7775ac5742bb3250b7a29ef0640a8266742d63753` |
| 8 | `initialize` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AttrNamespacedPublicTacticCodeAction.lean/declarations/initialize.md) | 82 | `declaration-track:3ca7707f6e12edc5dbcb6baa1198d954be11939e097191b0f00adf4261b9be38` |
| 9 | `initialize` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AttrNamespacedPublicTacticCodeAction.lean/declarations/initialize-source-edition-3.md) | 94 | `declaration-track:e5e6ddaf051229f6bb1f36329030045a47a257113622f4b09035ec9fc0c5f404` |
| 10 | `syntax` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AttrNamespacedPublicTacticCodeAction.lean/declarations/syntax.md) | 121 | `declaration-track:a5593d7a765fca7bffd1595e093aa75767446c3db91977abbb4fd2c5ef2ea8b4` |
| 11 | `initialize` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AttrNamespacedPublicTacticCodeAction.lean/declarations/initialize-source-edition-2.md) | 123 | `declaration-track:67573e1b5221b72b37552934f0505e2ab3462f3d3f0dab3f9c611c8577302b55` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=174db1f4c91eb8be4b3c086b4f793a5a8800a08b844ce023418086e75e3fefff -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variant38a8456c71520b8de7d7503d64273eb7b3f8ab69dd384e6c850d80c53c569c6f.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variant38a8456c71520b8de7d7503d64273eb7b3f8ab69dd384e6c850d80c53c569c6f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
