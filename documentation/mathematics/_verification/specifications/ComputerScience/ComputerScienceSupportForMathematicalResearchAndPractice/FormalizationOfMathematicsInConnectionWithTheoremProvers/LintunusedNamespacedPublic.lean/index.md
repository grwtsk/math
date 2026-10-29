# Verification target: Lintunused Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f3d1d07aaf9bc4a9da6c8c5c01c8165284da70a1",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lintunused/Variant7d67ebb50f0f836b9a0c6e609197724e39ae73e503f17b9eb7fef36c01c6f421.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LintunusedNamespacedPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LintunusedNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f3d1d07aaf9bc4a9da6c8c5c01c8165284da70a1`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lintunused/Variant7d67ebb50f0f836b9a0c6e609197724e39ae73e503f17b9eb7fef36c01c6f421.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lintunused/Variant7d67ebb50f0f836b9a0c6e609197724e39ae73e503f17b9eb7fef36c01c6f421.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Batteries.Tactic.Lint` — import line 8; external provider; requires a separately pinned dependency.
- `Batteries.Util.ProofWanted` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [foo](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LintunusedNamespacedPublic.lean/declarations/foo-source-edition-2.md) | 19 | `declaration-track:b0f070380311e30933aa45f109ac1d51e199aaa145ea7b89ebda3d7c97efe4ef` |
| 2 | `def` | [foo'](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LintunusedNamespacedPublic.lean/declarations/foo.md) | 22 | `declaration-track:49af4359c2ed85ec7f739c2656cdca2c546426e4aa328460b51ee862c496c8a2` |
| 3 | `def` | [fooBad](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LintunusedNamespacedPublic.lean/declarations/foobad.md) | 26 | `declaration-track:edf8da7b2d1277d89cdf912eb31b181e58bd13797c5d48c8a978cac240fc6a88` |
| 4 | `theorem` | [foo1_ok](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LintunusedNamespacedPublic.lean/declarations/foo1-ok.md) | 28 | `result-track:ad340985fd73dd7de6a22f806c335d74694124a194e52f99449b1deeede8a497` |
| 5 | `theorem` | [foo2_bad](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LintunusedNamespacedPublic.lean/declarations/foo2-bad.md) | 31 | `result-track:b0ebdf91a6f77bd2cc87ac5fa760cab7c7eebf3e028c51b791f608a56d77dd1e` |
| 6 | `theorem` | [foo3_bad](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LintunusedNamespacedPublic.lean/declarations/foo3-bad.md) | 33 | `result-track:67f1002d6c7a8c6c8befe825c5fc95a42ca4c48dff92ce943ccdd57f79fb0388` |
| 7 | `theorem` | [foo4_bad](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LintunusedNamespacedPublic.lean/declarations/foo4-bad.md) | 36 | `result-track:7d5d9c4cd949caee2b737cf7a7355119d535e7528e86b38aabfe6da212093627` |
| 8 | `theorem` | [foo5_ok](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LintunusedNamespacedPublic.lean/declarations/foo5-ok.md) | 38 | `result-track:4f77b21a9b2793451e2d70ed42bb6c35ffdc23162b0dac70fcf771a8ac6b163c` |
| 9 | `theorem` | [foo6_ok](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LintunusedNamespacedPublic.lean/declarations/foo6-ok-source-edition-2.md) | 40 | `result-track:9e79f8636f41e827df25e26869ce27ad668360b9b50321d9d785d8e1e04a8e7e` |
| 10 | `theorem` | [foo7_bad](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LintunusedNamespacedPublic.lean/declarations/foo7-bad.md) | 43 | `result-track:4f7750b2c10651b530da95a9656509d58bf7eb7b482b0e30173a272a88376a42` |
| 11 | `theorem` | [foo6_ok'](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LintunusedNamespacedPublic.lean/declarations/foo6-ok.md) | 47 | `result-track:894fe3a5debdba544a36c2bffa59ef6d105f844da5118a6ee4031de1dcd3b5c8` |
| 12 | `theorem` | [foo8_bad](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LintunusedNamespacedPublic.lean/declarations/foo8-bad.md) | 50 | `result-track:8a731207b90a3a99fc5e346e7b3351d8369b18bb03a4f4ef164d999250c4855a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2e712e16fec7eb51aa6aad1cc348daf938abe591740c0ff3aec7cfe370a5f4d7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lintunused/Variant7d67ebb50f0f836b9a0c6e609197724e39ae73e503f17b9eb7fef36c01c6f421.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lintunused/Variant7d67ebb50f0f836b9a0c6e609197724e39ae73e503f17b9eb7fef36c01c6f421.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
