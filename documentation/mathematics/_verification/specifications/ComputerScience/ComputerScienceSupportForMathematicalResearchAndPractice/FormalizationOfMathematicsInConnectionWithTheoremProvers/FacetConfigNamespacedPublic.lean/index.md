# Verification target: Facet Config Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f4984e5c85cd567325956c5d491e4c8cd447b5d6",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FacetConfig/Variant3db719c9308d6020a757f3598368fc7e764b492d50fd93305c50b7a907a4d03e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FacetConfigNamespacedPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FacetConfigNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f4984e5c85cd567325956c5d491e4c8cd447b5d6`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FacetConfig/Variant3db719c9308d6020a757f3598368fc7e764b492d50fd93305c50b7a907a4d03e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FacetConfig/Variant3db719c9308d6020a757f3598368fc7e764b492d50fd93305c50b7a907a4d03e.lean.json)

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
| 1 | `structure` | [FacetConfig](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FacetConfigNamespacedPublic.lean/declarations/facetconfig.md) | 23 | `declaration-track:4008dedd487e6488db5c1b4234a414e2a1a971ba7da372a05804396f5faa9589` |
| 2 | `abbrev` | [FacetConfigMap](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FacetConfigNamespacedPublic.lean/declarations/facetconfigmap.md) | 39 | `declaration-track:88af094189c041127a8c9286570df9501f714c30bd94127865739657377ef5af` |
| 3 | `def` | [FacetConfigMap.get?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FacetConfigNamespacedPublic.lean/declarations/facetconfigmap-get.md) | 45 | `declaration-track:5ac9d398aec35e1145c2db2e1b55fbd7e0edd9d2a272f563f25c2440c786dabf` |
| 4 | `def` | [FacetConfigMap.insert](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FacetConfigNamespacedPublic.lean/declarations/facetconfigmap-insert.md) | 49 | `declaration-track:d0efba5051c146dca80518a2195f1ebf1739840bd55d4369dc9d851942b6c3e7` |
| 5 | `abbrev` | [FacetConfig.name](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FacetConfigNamespacedPublic.lean/declarations/facetconfig-name.md) | 52 | `declaration-track:b915d097faddebcde5120c4041f41e324501fa6d05b94740e3d47284ccc781f0` |
| 6 | `structure` | [KFacetConfig](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FacetConfigNamespacedPublic.lean/declarations/kfacetconfig.md) | 54 | `declaration-track:53357ef63525c6fd2bda10391a45a707008e55c5c495b4940fd04be516774162` |
| 7 | `abbrev` | [FacetConfig.toKind](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FacetConfigNamespacedPublic.lean/declarations/facetconfig-tokind-source-edition-2.md) | 58 | `declaration-track:dc4106f6e7d1c2d75d7e94b5a3fa05a6bb6ddd916d2056af2784c0aa01a121e1` |
| 8 | `def` | [FacetConfig.toKind?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FacetConfigNamespacedPublic.lean/declarations/facetconfig-tokind.md) | 62 | `declaration-track:54804d7f9b9c3680250d5389841adf36771f5e97a52f12064e80e40b87b66918` |
| 9 | `def` | [KFacetConfig.run](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FacetConfigNamespacedPublic.lean/declarations/kfacetconfig-run.md) | 69 | `declaration-track:1e5f7f2d0ec4a77aa38b861669d9946971e23276d4f072ad25e4502d09e28043` |
| 10 | `def` | [mkFacetJobConfig](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FacetConfigNamespacedPublic.lean/declarations/mkfacetjobconfig.md) | 77 | `declaration-track:ad97f8322f6ddce8db6760efe5d6be97a00063e36262399f8cff5cb4510a2af7` |
| 11 | `structure` | [NamedConfigDecl](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FacetConfigNamespacedPublic.lean/declarations/namedconfigdecl.md) | 91 | `declaration-track:dd16829f927ed4647592a1af3c1b802bf07ecc6fefff09bf0bc73f5cdc8300bd` |
| 12 | `abbrev` | [FacetDecl](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FacetConfigNamespacedPublic.lean/declarations/facetdecl.md) | 96 | `declaration-track:c40089845e947415ffd7c98fac2208661bb370734ae8ee58fb780a2d905bc8c5` |
| 13 | `abbrev` | [ModuleFacetConfig](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FacetConfigNamespacedPublic.lean/declarations/modulefacetconfig.md) | 99 | `declaration-track:3050646121ea67cc89939225027babba7eff4c821c99540bbfc69123301934b2` |
| 14 | `abbrev` | [ModuleFacetDecl](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FacetConfigNamespacedPublic.lean/declarations/modulefacetdecl.md) | 102 | `declaration-track:a9cfd561a620e4abc1a6b3a30422f445473ad6370c78d0a2dc1a95e4fc9ef3eb` |
| 15 | `abbrev` | [PackageFacetConfig](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FacetConfigNamespacedPublic.lean/declarations/packagefacetconfig.md) | 105 | `declaration-track:5ba523173bf33471f1dd74f98710f6bc7465d24f2ba40f7ab07a90fec69aafa9` |
| 16 | `abbrev` | [PackageFacetDecl](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FacetConfigNamespacedPublic.lean/declarations/packagefacetdecl.md) | 108 | `declaration-track:bd49fbdb92a4cf3e4319fa9b9dc543fa6b05abd722e46e02c1eb6646d1324e5f` |
| 17 | `abbrev` | [LibraryFacetConfig](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FacetConfigNamespacedPublic.lean/declarations/libraryfacetconfig.md) | 111 | `declaration-track:679ed5f11fe4ae4791fa0ab18861122fc415e4b092c38f84f390c3ae0989feea` |
| 18 | `abbrev` | [LibraryFacetDecl](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FacetConfigNamespacedPublic.lean/declarations/libraryfacetdecl.md) | 114 | `declaration-track:212115c5f3b99fd7b9d7e43168ce60e7a5c2a3a67067ba4ccc1f66af2180bc7b` |
| 19 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FacetConfigNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 116 | `declaration-track:dcc4cb388b3e156e4483bb23c4b72d3c03ff0a96976152b1d6f7cc5d64448541` |
| 20 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FacetConfigNamespacedPublic.lean/declarations/instance.md) | 117 | `declaration-track:04f2c600de796222e6f7d927af5a4e56eea78b1aeebd6b07d85373f06a956bd6` |
| 21 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FacetConfigNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 118 | `declaration-track:b3dde53883b5ad3d10ea7acac3b23e7faf5f78cfd7d4b7b52825ad3ddb05d893` |
| 22 | `abbrev` | [LeanLibFacetConfig](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FacetConfigNamespacedPublic.lean/declarations/leanlibfacetconfig.md) | 121 | `declaration-track:a63cf43264445869e1c1bcbb3642af90b20dd590fd801b434499faab3914e228` |
| 23 | `abbrev` | [LeanExeFacetConfig](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FacetConfigNamespacedPublic.lean/declarations/leanexefacetconfig.md) | 124 | `declaration-track:9100a3102a79d39f21f74d23dad7679c5113b2dcc81282c794d6e2d81a253ad3` |
| 24 | `abbrev` | [ExternLibFacetConfig](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FacetConfigNamespacedPublic.lean/declarations/externlibfacetconfig.md) | 127 | `declaration-track:0c9ca0ca6c898a7c532ac26a5567bbdacd0d4d354fa819b91ae8e9151a0929d9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ed6222046f444b8d72b558c172b91480949b88d8863025f4db0857f5a565615d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FacetConfig/Variant3db719c9308d6020a757f3598368fc7e764b492d50fd93305c50b7a907a4d03e.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FacetConfig/Variant3db719c9308d6020a757f3598368fc7e764b492d50fd93305c50b7a907a4d03e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
