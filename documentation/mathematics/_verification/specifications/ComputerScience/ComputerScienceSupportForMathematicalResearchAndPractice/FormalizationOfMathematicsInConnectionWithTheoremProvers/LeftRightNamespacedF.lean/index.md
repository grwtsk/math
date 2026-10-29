# Verification target: Left Right Namespaced F

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6e0b5e4103e7d6b57223e5f130134573eae64bc1",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeftRight/Variante878e1a3b7e3f5f8b77bb084afadf8da0073204cc952ca82f4a4d9d8f9fe7d2f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LeftRightNamespacedF.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LeftRightNamespacedF.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6e0b5e4103e7d6b57223e5f130134573eae64bc1`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeftRight/Variante878e1a3b7e3f5f8b77bb084afadf8da0073204cc952ca82f4a4d9d8f9fe7d2f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeftRight/Variante878e1a3b7e3f5f8b77bb084afadf8da0073204cc952ca82f4a4d9d8f9fe7d2f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Std.Tactic.LeftRight` — import line 6; external provider; requires a separately pinned dependency.
- `Std.Tactic.GuardMsgs` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [zero](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LeftRightNamespacedF.lean/declarations/zero.md) | 13 | `declaration-track:4cce027abf14b5c37a07678bc2cdd7bb0d126293a4f50d7ff2ef8bd8a51374a8` |
| 2 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LeftRightNamespacedF.lean/declarations/example-source-edition-2.md) | 16 | `declaration-track:2157de88052facad9db3b997ed90c41c67e33e51815bca7c8c3778f7ab3f6503` |
| 3 | `def` | [two](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LeftRightNamespacedF.lean/declarations/two.md) | 19 | `declaration-track:0fa2a73966c2ec2d2b64537344fea22a335801a962c2983182f0b44abb869a3d` |
| 4 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LeftRightNamespacedF.lean/declarations/example-source-edition-10.md) | 23 | `declaration-track:d8510b1218b670b42550116efafb98001b286ac6dea308642d48f6a921ba0bb5` |
| 5 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LeftRightNamespacedF.lean/declarations/example-source-edition-8.md) | 33 | `declaration-track:c16c15908de5db82274f2551b134101f512a2054895ab2d429b20c2ab301d829` |
| 6 | `inductive` | [F](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LeftRightNamespacedF.lean/declarations/f.md) | 36 | `declaration-track:9ef043481e2f7292f77c8197ecf953bde61a60d05310af19de536e753b02efc3` |
| 7 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LeftRightNamespacedF.lean/declarations/example-source-edition-7.md) | 45 | `declaration-track:b3345e1c6669cf18e193ee358047ad27b5a72075e41805b02d24cc7eaa7d8d40` |
| 8 | `def` | [G](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LeftRightNamespacedF.lean/declarations/g.md) | 48 | `declaration-track:7eab5afd4a61923b863646bd65c5f392ad87963a9c7ea0eb6951a99c016e28b5` |
| 9 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LeftRightNamespacedF.lean/declarations/example-source-edition-5.md) | 51 | `declaration-track:8945427ec3923d391ef98ef8ce1faf0c99d6cba349f9c6099cede8e231ffecd4` |
| 10 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LeftRightNamespacedF.lean/declarations/example.md) | 59 | `declaration-track:0791bd49afef517612db90d934b80bb2c5060f33372f26c78efd9611048e3958` |
| 11 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LeftRightNamespacedF.lean/declarations/example-source-edition-4.md) | 62 | `declaration-track:691d6f6910f10c7031c2ca74d27fb088a808fc2b2cc4409e6ff3c1ad80daecfe` |
| 12 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LeftRightNamespacedF.lean/declarations/example-source-edition-9.md) | 66 | `declaration-track:d4aab1fe9331d7604850b520159345ef3af26c5d5b38ae87f99dd2c4939b839e` |
| 13 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LeftRightNamespacedF.lean/declarations/example-source-edition-6.md) | 70 | `declaration-track:8e8e6aeac6aa52097139484a815eb0d31765b16cc257c90f13fc8a6faf0ca165` |
| 14 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LeftRightNamespacedF.lean/declarations/example-source-edition-3.md) | 74 | `declaration-track:216e131fdc09d15332196b7fc87e549af7366f674da15ddac714d560b7f2e302` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8b4734bf674ec6def3a28cff80385c2667d615c4b63cfcc02f8896dfbb9c6963 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeftRight/Variante878e1a3b7e3f5f8b77bb084afadf8da0073204cc952ca82f4a4d9d8f9fe7d2f.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeftRight/Variante878e1a3b7e3f5f8b77bb084afadf8da0073204cc952ca82f4a4d9d8f9fe7d2f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
