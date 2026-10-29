# Verification target: Dict Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "80c9c1661df4e3ea569189d93e61f2def2f6476c",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Dict/Variante57afc2411e8b8c51e9e79947410556323d78bdba732beb8553c5d00bdb61f6b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DictPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DictPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `80c9c1661df4e3ea569189d93e61f2def2f6476c`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Dict/Variante57afc2411e8b8c51e9e79947410556323d78bdba732beb8553c5d00bdb61f6b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Dict/Variante57afc2411e8b8c51e9e79947410556323d78bdba732beb8553c5d00bdb61f6b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Nat.Fold` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [RBDict](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DictPublic.lean/declarations/rbdict.md) | 23 | `declaration-track:def8f38cde125fc8bf259433ae2911616c6346a4319b2c1629afa1d38f95f991` |
| 2 | `abbrev` | [NameDict](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DictPublic.lean/declarations/namedict.md) | 28 | `declaration-track:d956103d5f9f301d3c60e4a0823f99ddaa00a178d4e703ef26d5c8de101007d3` |
| 3 | `def` | [empty](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DictPublic.lean/declarations/empty.md) | 32 | `declaration-track:3ca91889c72530c7095c0351ca631e101ca52a424fa7418407b392c2d74eef49` |
| 4 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DictPublic.lean/declarations/instance-source-edition-3.md) | 35 | `declaration-track:7b38c0fb15d257809582e48e41145282d48a67d1526915831e92b51de442014b` |
| 5 | `def` | [mkEmpty](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DictPublic.lean/declarations/mkempty.md) | 37 | `declaration-track:88d262156c793ce71ffb54ca582d3275e9682992df9a9a2141d75a8d0469bb49` |
| 6 | `def` | [ofArray](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DictPublic.lean/declarations/ofarray.md) | 40 | `declaration-track:bf6ff5491e251780f05dcc048f233b72d3fd59e5c9835ad71d2b9a497f740eea` |
| 7 | `def` | [beq](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DictPublic.lean/declarations/beq.md) | 45 | `declaration-track:6f49ef1978b2d017661dd640026b1672be4d737e8c8d70df14c2c96f8e7c87cd` |
| 8 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DictPublic.lean/declarations/instance.md) | 48 | `declaration-track:015893469a6e0bee40220e3fe0269aa3acb9bc18dba8e7a3844e8a70fa291acf` |
| 9 | `abbrev` | [size](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DictPublic.lean/declarations/size.md) | 50 | `declaration-track:b2ab711a17d22d24997bcc7265c1a55cd05bf1766eb764ae1cd5e922ee1a7d55` |
| 10 | `abbrev` | [isEmpty](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DictPublic.lean/declarations/isempty.md) | 53 | `declaration-track:58069f3269e8585628ac29fc47b46096002c6360f0dc22186ae7c31b82d02c09` |
| 11 | `def` | [keys](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DictPublic.lean/declarations/keys.md) | 56 | `declaration-track:fadd7a90c4f9f28c9462dc49b439964a0dd4a21cfdfa54a1d0cfd31689ea5c42` |
| 12 | `def` | [values](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DictPublic.lean/declarations/values.md) | 59 | `declaration-track:920d07d620c793093abe79ca8fce81abc8c96140ec8a8aa1c3a5f10710d3fe7a` |
| 13 | `def` | [contains](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DictPublic.lean/declarations/contains.md) | 62 | `declaration-track:7cb8d80502756e9173e8c5643290d5510568954e3ef30f39d45a8a2764a2a5a6` |
| 14 | `def` | [findIdx?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DictPublic.lean/declarations/findidx.md) | 65 | `declaration-track:76e09b60d5c325014bd67313b733e1f308aad410ede13c7d47bed7180b382d00` |
| 15 | `def` | [findEntry?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DictPublic.lean/declarations/findentry.md) | 68 | `declaration-track:55f129a695217e9da469f704db5625c4abeaca15a12cdf99dc916a5b61fb2364` |
| 16 | `def` | [find?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DictPublic.lean/declarations/find.md) | 71 | `declaration-track:64f259a2d0f24019b92c3757bc8ae5b3dde6d6c14146c11cba6bda51e768f6ae` |
| 17 | `def` | [push](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DictPublic.lean/declarations/push.md) | 74 | `declaration-track:da498366a4c6a1835a802379be1218e1b5750f5e4881e014cb9701c11629dba0` |
| 18 | `def` | [alter](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DictPublic.lean/declarations/alter.md) | 77 | `declaration-track:5726537a6af9eac7ec50dc2e33828d6e75fdc62a9e196f010edd10fba10daa3a` |
| 19 | `def` | [insert](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DictPublic.lean/declarations/insert.md) | 83 | `declaration-track:668c4055b0af123e918f0cb27597a5b386c353398da68097364486fc16301881` |
| 20 | `def` | [insertIf](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DictPublic.lean/declarations/insertif.md) | 93 | `declaration-track:995e16fff9437e3fb1a2753b4b76419991e151f908766b8efbd3d8e461091343` |
| 21 | `def` | [insertUnless](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DictPublic.lean/declarations/insertunless.md) | 97 | `declaration-track:1cd31cd5cfd10f033a542278ae7b59c6767a93778002478df10cbb5a697fafb6` |
| 22 | `def` | [insertSome](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DictPublic.lean/declarations/insertsome.md) | 101 | `declaration-track:03e53584e5f75cee257c3dd118c242776bf1eba953115d8a3c41e7ada9ec6514` |
| 23 | `def` | [appendArray](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DictPublic.lean/declarations/appendarray.md) | 104 | `declaration-track:90b4205c66566c7f4566d9c5eb598c452260051e6df3520650c381e3aebdf9c2` |
| 24 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DictPublic.lean/declarations/instance-source-edition-2.md) | 107 | `declaration-track:3ecced1ebfec639563566a387193ac1d8938cbab2dbc5518f51a79f6c93b40cd` |
| 25 | `def` | [append](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DictPublic.lean/declarations/append.md) | 109 | `declaration-track:c712b43eb37079d72bd64018ea03c4142d73b82a46ecc22133fe1d42ad00e702` |
| 26 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DictPublic.lean/declarations/instance-source-edition-4.md) | 112 | `declaration-track:a3d0ae5a98b73a65b2af894835a303ae021d7a931adcc90cccca6851b3991e6d` |
| 27 | `def` | [map](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DictPublic.lean/declarations/map.md) | 114 | `declaration-track:a54d2ef13d63bac2ac8ae9e4e541eaa9b0817f7313707da8786ca76e2da56fd0` |
| 28 | `def` | [filter](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DictPublic.lean/declarations/filter.md) | 117 | `declaration-track:010faf220c9904ec10b0aca644118d0a8399a8e2471d72da24dcb31cf7aa6940` |
| 29 | `def` | [filterMap](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DictPublic.lean/declarations/filtermap.md) | 120 | `declaration-track:80e8b83f30479c3d0e303ef53ad0b0e949a5d68a801487ef964394dfb50db0fc` |
| 30 | `def` | [foldM](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DictPublic.lean/declarations/foldm.md) | 123 | `declaration-track:0052856373c052eea9b8874450b69727705556785e5ed7ec9aa16e86a0594234` |
| 31 | `def` | [fold](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DictPublic.lean/declarations/fold.md) | 126 | `declaration-track:06f5642d204580044fe9ac8561d6a3c7b74a9ae767462b42de694892e910eddc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7e7e556cc6b629c1a3e396840819fbf67900736ca61976bfe336997e00bcb385 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Dict/Variante57afc2411e8b8c51e9e79947410556323d78bdba732beb8553c5d00bdb61f6b.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Dict/Variante57afc2411e8b8c51e9e79947410556323d78bdba732beb8553c5d00bdb61f6b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
