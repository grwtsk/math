# Verification target: Deriving Countable Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1b0e421ae24ba8075bb7d96eb2294c071267edac",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DerivingCountable/Varianta31d7da667a3b22f988909efc050205636d6810f3fccedc2195ca2bcb2af3670.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DerivingCountableNamespaced.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DerivingCountableNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1b0e421ae24ba8075bb7d96eb2294c071267edac`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DerivingCountable/Varianta31d7da667a3b22f988909efc050205636d6810f3fccedc2195ca2bcb2af3670.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DerivingCountable/Varianta31d7da667a3b22f988909efc050205636d6810f3fccedc2195ca2bcb2af3670.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.DeriveCountable` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Countable.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.List` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [S](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DerivingCountableNamespaced.lean/declarations/s.md) | 22 | `declaration-track:e834d6d703999d7f1b52a694b9371cd7e3a6497322330428a3773f14da07b946` |
| 2 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DerivingCountableNamespaced.lean/declarations/example-source-edition-7.md) | 27 | `declaration-track:b6b86c54bbc622d6f73a1a2b13797aaee26c3d66a85de3bd405bf0a8cc6c90bf` |
| 3 | `inductive` | [T](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DerivingCountableNamespaced.lean/declarations/t.md) | 32 | `declaration-track:0772b88cec06d29e0321a0f888f48bfe8bfa695b62a073135699f309d9f1ea81` |
| 4 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DerivingCountableNamespaced.lean/declarations/example-source-edition-2.md) | 38 | `declaration-track:0f50c66bcb3b2e85d3834cb93171e81967c687bd17a84726527756d38cb011d3` |
| 5 | `inductive` | [PreCantor'](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DerivingCountableNamespaced.lean/declarations/precantor.md) | 43 | `declaration-track:13320f4790c3e28fa3159101c73c3761103cb2b3fcbc441cd8767e7a5601d6e7` |
| 6 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DerivingCountableNamespaced.lean/declarations/example-source-edition-6.md) | 48 | `declaration-track:9597a7fac05ef1377a05a672434026e807d91e3ff909e8de1024664e0cf726eb` |
| 7 | `inductive` | [PList](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DerivingCountableNamespaced.lean/declarations/plist.md) | 53 | `declaration-track:493180c01f104cfc22f172865f7fc13cb2b353f1c910958c03e48fc812bf514d` |
| 8 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DerivingCountableNamespaced.lean/declarations/example-source-edition-5.md) | 58 | `declaration-track:8de21ae72e8f636f590441bff7ddb0d5e08d5dafc4acf04a1e48735ce9138135` |
| 9 | `inductive` | [I](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DerivingCountableNamespaced.lean/declarations/i.md) | 64 | `declaration-track:02ddaac81689d3da223508ccf95d2dffeea4fb0045db778914ac2760a955ef71` |
| 10 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DerivingCountableNamespaced.lean/declarations/example-source-edition-3.md) | 69 | `declaration-track:10bd9276bbb0059696445ce8de7a5b8ae025ff3041ae729e62b79406de5217c0` |
| 11 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DerivingCountableNamespaced.lean/declarations/example-source-edition-4.md) | 70 | `declaration-track:14fdb59da876c1c1ce528d844fc826dadfcbcace60291306dd178dd707581330` |
| 12 | `inductive` | [T1](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DerivingCountableNamespaced.lean/declarations/t1.md) | 76 | `declaration-track:c6b605cd9a020e2216d762f21f62ffc9bcb322b38a41365e160de3481a1067e8` |
| 13 | `inductive` | [T2](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DerivingCountableNamespaced.lean/declarations/t2.md) | 80 | `declaration-track:2f0a2541999c0318778530fd77ccf390b654170f0934531baa506014790493bb` |
| 14 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DerivingCountableNamespaced.lean/declarations/example-source-edition-8.md) | 86 | `declaration-track:e5901ae274d623b4d5d02876b259bd44442201e8f64e8b86c855703d5650e65b` |
| 15 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DerivingCountableNamespaced.lean/declarations/example.md) | 87 | `declaration-track:0cef353128f6c3737887a0f7d22a788ca4ff8d0927b7a74b8c3fad1bc927d18f` |
| 16 | `inductive` | [Nested](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DerivingCountableNamespaced.lean/declarations/nested.md) | 97 | `declaration-track:af60ca811222204e49cee877cdbddd52c591266c340f2443e28d6082c7c16c21` |
| 17 | `inductive` | [Reflex](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DerivingCountableNamespaced.lean/declarations/reflex.md) | 108 | `declaration-track:54e54831ac4c3bad364fd73ae3ffcc28c1043aae93d4658d2540b34044381af0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d9b92e569f7e1e54eb27ec04827669da9fb87f788bfa8d8373058e72e0de6971 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DerivingCountable/Varianta31d7da667a3b22f988909efc050205636d6810f3fccedc2195ca2bcb2af3670.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DerivingCountable/Varianta31d7da667a3b22f988909efc050205636d6810f3fccedc2195ca2bcb2af3670.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
