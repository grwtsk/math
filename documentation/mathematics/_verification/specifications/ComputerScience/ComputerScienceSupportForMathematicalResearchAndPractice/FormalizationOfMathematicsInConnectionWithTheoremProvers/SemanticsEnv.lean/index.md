# Verification target: Semantics Env

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3999e157c7b019262e1df611c9de2aab2032be7e",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Semantics/Variant95f40e53db04aff4b44490114d080e4650e5ea3f860c180b90473ead3e927a5b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SemanticsEnv.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SemanticsEnv.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3999e157c7b019262e1df611c9de2aab2032be7e`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Semantics/Variant95f40e53db04aff4b44490114d080e4650e5ea3f860c180b90473ead3e927a5b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Semantics/Variant95f40e53db04aff4b44490114d080e4650e5ea3f860c180b90473ead3e927a5b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Boolean.Syntax` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Env](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SemanticsEnv.lean/declarations/env.md) | 19 | `declaration-track:18885ccefdf82b9c0b3452aa90ec380769d3f9f7f438995cd462430de981049b` |
| 2 | `def` | [eval](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SemanticsEnv.lean/declarations/eval.md) | 23 | `declaration-track:8a7fb30e906dbb0a991ea6f7062898f74d8ed39dac5234e0cc193837c6ed7a53` |
| 3 | `theorem` | [eval_var](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SemanticsEnv.lean/declarations/eval-var.md) | 33 | `result-track:67c0c3c338b77719883930c62125b2e93691679d8f56e6d4e331b5310a2bea75` |
| 4 | `theorem` | [eval_tru](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SemanticsEnv.lean/declarations/eval-tru.md) | 38 | `result-track:e72eed73fca80ebdeaabb232d423127f52976c596a3e2b388a5fb6b0c3c68d2a` |
| 5 | `theorem` | [eval_fls](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SemanticsEnv.lean/declarations/eval-fls.md) | 43 | `result-track:2f45bf41256b67386133a23e588b5bfdd7a41bda93f5c4160fc03dfb5f719fab` |
| 6 | `theorem` | [eval_not](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SemanticsEnv.lean/declarations/eval-not.md) | 48 | `result-track:248f6da2e9dc4c780f8ad78d6e2236269be5e96e0506ace7b103f14a82cd671c` |
| 7 | `theorem` | [eval_and](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SemanticsEnv.lean/declarations/eval-and.md) | 53 | `result-track:8f5b47bb7253c1ec349c2ea30d634acba8c7f4c12449d8a3cabf20c7fa69adce` |
| 8 | `theorem` | [eval_or](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SemanticsEnv.lean/declarations/eval-or.md) | 58 | `result-track:fc791135a56e18907bd1456b3d76e99933b8a494bd4149425ef7e415bdb2ddb3` |
| 9 | `theorem` | [eval_xor](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SemanticsEnv.lean/declarations/eval-xor.md) | 63 | `result-track:6f8e573fa3d8c69947547b493fe3fc2466abaea3c29524f2616cb1cfc9ab1dcb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3eded5ac451fba9fbcaee09ac2b5f9c6ddb7bc839f5324525293efe0dbe9e09b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Semantics/Variant95f40e53db04aff4b44490114d080e4650e5ea3f860c180b90473ead3e927a5b.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Semantics/Variant95f40e53db04aff4b44490114d080e4650e5ea3f860c180b90473ead3e927a5b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
