# Verification target: Case Filter Tag

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "906458e106ecb7ed6c9dab6705aa79cc9bf17b65",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Case/Variant0ddb32e766faa895d9d9058026b7bbb1637a64d23bbb1153084436c5e54ce107.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CaseFilterTag.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CaseFilterTag.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `906458e106ecb7ed6c9dab6705aa79cc9bf17b65`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Case/Variant0ddb32e766faa895d9d9058026b7bbb1637a64d23bbb1153084436c5e54ce107.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Case/Variant0ddb32e766faa895d9d9058026b7bbb1637a64d23bbb1153084436c5e54ce107.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Elab.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `syntax` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CaseFilterTag.lean/declarations/syntax-source-edition-3.md) | 22 | `declaration-track:8ec06c30967a0525c19fa501a7b830a9341d5e37d32567a4a73c1f11a01514ef` |
| 2 | `syntax` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CaseFilterTag.lean/declarations/syntax.md) | 25 | `declaration-track:2bca2d6973e059a3bcd2670652a9a831d501732f0d34aebd7633b6a1505c3ed4` |
| 3 | `syntax` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CaseFilterTag.lean/declarations/syntax-source-edition-2.md) | 28 | `declaration-track:71ac70e0d201bfb3494dd466fc37bf330e61a7db3afce2ce1c1bfff7104dd5d4` |
| 4 | `syntax` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CaseFilterTag.lean/declarations/syntax-source-edition-6.md) | 31 | `declaration-track:e5b4cdaebf5e5e115c547272636639e10bcd85a0d83b3907c0e22b908ac1700c` |
| 5 | `syntax` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CaseFilterTag.lean/declarations/syntax-source-edition-4.md) | 60 | `declaration-track:a90c4b85930831a931cb45780bc107af3bbde88525233fed5594c1e8fd6e8c37` |
| 6 | `macro_rules` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CaseFilterTag.lean/declarations/macro-rules.md) | 63 | `declaration-track:8ea76ca82e09db42a5720d3004c607137bff370d9162413104b6152f9a68b22b` |
| 7 | `syntax` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CaseFilterTag.lean/declarations/syntax-source-edition-5.md) | 72 | `declaration-track:ba48326e01b121e0e4bb57d3e8cf013cd0cc02f012b714d29ad9c0017b73d0da` |
| 8 | `def` | [filterTag](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CaseFilterTag.lean/declarations/filtertag.md) | 79 | `declaration-track:030886c9db4203aae1fb620bd5537fd0a67953978c0c345cb7b5603037d04907` |
| 9 | `def` | [findGoalOfPatt](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CaseFilterTag.lean/declarations/findgoalofpatt.md) | 99 | `declaration-track:4ec338c31ed65569b844e37e6bd49a251d29094c22c59e89b832dac1897cbdc1` |
| 10 | `def` | [processCasePattBody](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CaseFilterTag.lean/declarations/processcasepattbody.md) | 136 | `declaration-track:885a59e8c05886c02b1ceeee772670362bb4ea049960adf3691b757d5084cd5f` |
| 11 | `def` | [evalCase](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CaseFilterTag.lean/declarations/evalcase.md) | 145 | `declaration-track:8cb8b7a206a5f2aa5bcd026a79fd2e555182f7065f3f68ff7794cea5965171fd` |
| 12 | `elab_rules` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CaseFilterTag.lean/declarations/elab-rules-source-edition-2.md) | 187 | `declaration-track:de3c9a57ea8dd8fe92492f5975ef250f5e2707a757e51a47ad9a15b5b3ba8634` |
| 13 | `elab_rules` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CaseFilterTag.lean/declarations/elab-rules.md) | 191 | `declaration-track:4e2b6ec8e9d4ce91670bd6ba0694273f08fb78605a86b8f840b93115cc9bc97f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e7c748294f8fe5e33ca1f6ddf1f79f02e0fbce917df8860842055d9b9f831b7f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Case/Variant0ddb32e766faa895d9d9058026b7bbb1637a64d23bbb1153084436c5e54ce107.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Case/Variant0ddb32e766faa895d9d9058026b7bbb1637a64d23bbb1153084436c5e54ce107.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
