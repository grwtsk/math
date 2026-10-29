# Verification target: Basic Basic Namespaced Public Float Array

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2344742d624a64fcb4b530782a08f63aeefd7dbc",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant8ae1b05fe74b12d150fba9b3ee6dd9b76d9fa20237775a86daa6a1364854a5e6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicNamespacedPublicFloatArray.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicNamespacedPublicFloatArray.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2344742d624a64fcb4b530782a08f63aeefd7dbc`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant8ae1b05fe74b12d150fba9b3ee6dd9b76d9fa20237775a86daa6a1364854a5e6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant8ae1b05fe74b12d150fba9b3ee6dd9b76d9fa20237775a86daa6a1364854a5e6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Ext` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [FloatArray](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicNamespacedPublicFloatArray.lean/declarations/floatarray.md) | 25 | `declaration-track:7dd03b2fb0effb84294c0dc5e7d31168fc032c8ab2cb98f5861b11c91037457c` |
| 2 | `def` | [emptyWithCapacity](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicNamespacedPublicFloatArray.lean/declarations/emptywithcapacity.md) | 38 | `declaration-track:008216018284b468ba159cfe6e215d5fd5b43bcd5b17f8529baa5dab95308e71` |
| 3 | `def` | [empty](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicNamespacedPublicFloatArray.lean/declarations/empty.md) | 41 | `declaration-track:192e8e74ab75bbbb39196664dc94a59d495c1f49a48ecda019bf4c9b3243f1f0` |
| 4 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicNamespacedPublicFloatArray.lean/declarations/instance-source-edition-2.md) | 44 | `declaration-track:4bbb77cd9964c909f3f2e1c030d8dc6ad8fe1ce6106fc3ac0894a69c2853bf04` |
| 5 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicNamespacedPublicFloatArray.lean/declarations/instance-source-edition-6.md) | 47 | `declaration-track:e82249522c03489a904455580ce6f502b3d93c5d8f71b41dc3cdbb65319cc993` |
| 6 | `def` | [push](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicNamespacedPublicFloatArray.lean/declarations/push.md) | 51 | `declaration-track:1569435915b2909eca0a4dd492aace6a7f0b5075a6f73c44760dfc9be0c591da` |
| 7 | `def` | [size](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicNamespacedPublicFloatArray.lean/declarations/size.md) | 55 | `declaration-track:51765c913177b83827c452c019b447f972a0a1add86a36b7fb731daa520c8a00` |
| 8 | `def` | [usize](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicNamespacedPublicFloatArray.lean/declarations/usize.md) | 59 | `declaration-track:8ffec0b900b2657cc9e620b8a5f8d6b88d4e8b92735c522931c6eab664cab049` |
| 9 | `def` | [uget](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicNamespacedPublicFloatArray.lean/declarations/uget.md) | 63 | `declaration-track:6fe619b764a4605f5dd19a47defafc101cab41761a410edba397b6123fd80833` |
| 10 | `def` | [get](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicNamespacedPublicFloatArray.lean/declarations/get.md) | 67 | `declaration-track:4816b7133f69ba98969654c50ccab63966522e5b3dcdc9273ac99b3c5060b854` |
| 11 | `def` | [get!](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicNamespacedPublicFloatArray.lean/declarations/get-source-edition-3.md) | 71 | `declaration-track:d299b9780098a2acd55b424964cf6f1eeb00b88109d2528c390e2d85f0e60ad0` |
| 12 | `def` | [get?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicNamespacedPublicFloatArray.lean/declarations/get-source-edition-2.md) | 74 | `declaration-track:6f6d0ea6e8543baab617ff39e13cbf395e7c2c28b7c2b4308c363682d67fc592` |
| 13 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicNamespacedPublicFloatArray.lean/declarations/instance-source-edition-4.md) | 80 | `declaration-track:975ce2579ddc71a63f3690e3034c69bc2cdcd74ce879d9c16c49af042648ccec` |
| 14 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicNamespacedPublicFloatArray.lean/declarations/instance.md) | 83 | `declaration-track:2a7a04c0f6ce1986293279e38545e48264b439fb681cc83dadfff0d78e2873cc` |
| 15 | `def` | [uset](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicNamespacedPublicFloatArray.lean/declarations/uset.md) | 87 | `declaration-track:03808a50b04d7d9a384813fa3d1f9e7cc3587daa3ba76b32869743f75301455c` |
| 16 | `def` | [set](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicNamespacedPublicFloatArray.lean/declarations/set.md) | 91 | `declaration-track:6e7ec57e0d1f6d30b8443c4ec5f82a726d8d988956a6f88cea41cbe5118d9bb2` |
| 17 | `def` | [set!](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicNamespacedPublicFloatArray.lean/declarations/set-source-edition-2.md) | 95 | `declaration-track:7194ece211e0d7128a957c1297a76fa82337a4a3e8e91c7817ac8bc814b444da` |
| 18 | `def` | [isEmpty](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicNamespacedPublicFloatArray.lean/declarations/isempty.md) | 98 | `declaration-track:43bb95a51341a97f8881e8a307278fa687f8f7642ecfe0bd7d6098addcf56f54` |
| 19 | `def` | [toList](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicNamespacedPublicFloatArray.lean/declarations/tolist.md) | 101 | `declaration-track:1d1a484eaa941b1a336fe9c88904c123b94d93ee06ba3bafd526164c9a74e97c` |
| 20 | `def` | [forInUnsafe](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicNamespacedPublicFloatArray.lean/declarations/forinunsafe.md) | 114 | `declaration-track:c5f6c27aa01786b0f56782021a26fda1ab0ad50e651d67e34433fc667cfe8980` |
| 21 | `def` | [forIn](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicNamespacedPublicFloatArray.lean/declarations/forin.md) | 128 | `declaration-track:fbff4bc38baa4bc83a75f08073e97eb47eb3fd3884f181b4c60e829371c40c68` |
| 22 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicNamespacedPublicFloatArray.lean/declarations/instance-source-edition-3.md) | 141 | `declaration-track:591a8c800cb8f62967d40e9311189c186b96f1c02a1a2813781380a539d9bcf7` |
| 23 | `def` | [foldlMUnsafe](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicNamespacedPublicFloatArray.lean/declarations/foldlmunsafe.md) | 147 | `declaration-track:ed5fe605c9a2aa8ba9ea0c233e580a944530a911bd3bfb2d38705f9f808ca13e` |
| 24 | `def` | [foldlM](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicNamespacedPublicFloatArray.lean/declarations/foldlm.md) | 165 | `declaration-track:b5a096ab9c9ae5851a5d241939b74719b38b1c65a26dd78d925720cc5b12547d` |
| 25 | `def` | [foldl](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicNamespacedPublicFloatArray.lean/declarations/foldl.md) | 182 | `declaration-track:6c1791fff501d4a7224588846a997f7dea67140825680c77489297092a3ad425` |
| 26 | `def` | [List.toFloatArray](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicNamespacedPublicFloatArray.lean/declarations/list-tofloatarray.md) | 190 | `declaration-track:e54769f780ac917393071f9ba7eb76636912e68d298a0277ecb61aa4d8439775` |
| 27 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicNamespacedPublicFloatArray.lean/declarations/instance-source-edition-5.md) | 197 | `declaration-track:99381ac33f219e3e4a9827d91bba951c495b401766a43436fd809456c512cf92` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=25f737277bae8dff79487a4fb304d2897941156e89807c50afdf8d2fc7caafd9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant8ae1b05fe74b12d150fba9b3ee6dd9b76d9fa20237775a86daa6a1364854a5e6.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant8ae1b05fe74b12d150fba9b3ee6dd9b76d9fa20237775a86daa6a1364854a5e6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
