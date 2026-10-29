# Verification target: Package Factories Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "61847d5701875a777a106c652cabd4acfbb87ca4",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PackageFactories/Varianta955d22de4f4f8bb48e84dc7b698dea71b3557f65fa4c0c624c7fa7dea688fc0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PackageFactoriesPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PackageFactoriesPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `61847d5701875a777a106c652cabd4acfbb87ca4`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PackageFactories/Varianta955d22de4f4f8bb48e84dc7b698dea71b3557f65fa4c0c624c7fa7dea688fc0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PackageFactories/Varianta955d22de4f4f8bb48e84dc7b698dea71b3557f65fa4c0c624c7fa7dea688fc0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Bool` — import line 12; external provider; requires a separately pinned dependency.
- `Init.Data.Order.Lemmas` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [PreorderPackage](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PackageFactoriesPublic.lean/declarations/preorderpackage.md) | 31 | `declaration-track:7ef6bfc397e4c91b64b2a83ad0e9e93d8aa836359feb613f16301a4102f23c62` |
| 2 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PackageFactoriesPublic.lean/declarations/instance-source-edition-2.md) | 36 | `declaration-track:6b6704f9f8abb458413543f5a826688171946a6995867bad3448dbf53277a23f` |
| 3 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PackageFactoriesPublic.lean/declarations/instance.md) | 37 | `declaration-track:0818f84e8bac360954385a58d6c33be5665c0e596e905ad0c51c394ce5aaaac5` |
| 4 | `instance` | [beqOfDecidableLE](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PackageFactoriesPublic.lean/declarations/beqofdecidablele.md) | 41 | `declaration-track:971281d2d87f46fbf7beef87da4c54d0b6da4751d608d4f258a372f3fd0b76d4` |
| 5 | `instance` | [instLawfulOrderBEqOfDecidableLE](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PackageFactoriesPublic.lean/declarations/instlawfulorderbeqofdecidablele.md) | 45 | `declaration-track:2a78f8650e64d4237582eb376de245298165d203362a92d90536039ecb9b19bf` |
| 6 | `def` | [decidableLTOfLE](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PackageFactoriesPublic.lean/declarations/decidableltofle.md) | 51 | `declaration-track:4c1bad77eb984478b278334168ff329ba6f3642df6908244038b4ef2aabf7c26` |
| 7 | `structure` | [Packages.PreorderOfLEArgs](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PackageFactoriesPublic.lean/declarations/packages-preorderofleargs.md) | 64 | `declaration-track:8776edf77d4bab4540898bd12cbeebf247d1fbecf26faa2d475d982d50bbeed2` |
| 8 | `def` | [PreorderPackage.ofLE](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PackageFactoriesPublic.lean/declarations/preorderpackage-ofle.md) | 175 | `declaration-track:a56291ea31771203a278dad89f421eff0478a294b1656dbc87a88e8770f9eaaf` |
| 9 | `class` | [PartialOrderPackage](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PackageFactoriesPublic.lean/declarations/partialorderpackage.md) | 195 | `declaration-track:0090004b28c3baa97b906ad01cee8f342f9769454afe40195322ea9f63fba760` |
| 10 | `structure` | [Packages.PartialOrderOfLEArgs](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PackageFactoriesPublic.lean/declarations/packages-partialorderofleargs.md) | 203 | `declaration-track:0e273c6871c574212a38aa5cc913448890df32aac0d572bb20e43299c3ea5a83` |
| 11 | `def` | [PartialOrderPackage.ofLE](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PackageFactoriesPublic.lean/declarations/partialorderpackage-ofle.md) | 260 | `declaration-track:3de95cbde3ff0c4b576dc8a5e461412b33a0ade3d60b7847fb40a477ecc4e1cb` |
| 12 | `instance` | [instOrdOfDecidableLE](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PackageFactoriesPublic.lean/declarations/instordofdecidablele.md) | 269 | `declaration-track:1ba1258e46505fa74c98479ac990887120dd3b219e54064875bc4a559d1a7806` |
| 13 | `theorem` | [isLE_compare](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PackageFactoriesPublic.lean/declarations/isle-compare.md) | 273 | `result-track:ea40499813101a78ac510c256851c8fb878d667267c1472422b6de6129cd90ad` |
| 14 | `theorem` | [isGE_compare](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PackageFactoriesPublic.lean/declarations/isge-compare.md) | 280 | `result-track:359c00b20a830542a4b9726357aec3ac5061da3d501357f29bf0914f281101c7` |
| 15 | `instance` | [instLawfulOrderOrdOfDecidableLE](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PackageFactoriesPublic.lean/declarations/instlawfulorderordofdecidablele.md) | 289 | `declaration-track:c7e55d708ef43d3a8a9d772e676c7ab97863e66fad476d7e2ac04d12fe5ffa43` |
| 16 | `class` | [LinearPreorderPackage](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PackageFactoriesPublic.lean/declarations/linearpreorderpackage.md) | 301 | `declaration-track:1918c98ae735cc7dd86e2964c087602102372eb94f879bba33f869356738489e` |
| 17 | `structure` | [Packages.LinearPreorderOfLEArgs](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PackageFactoriesPublic.lean/declarations/packages-linearpreorderofleargs.md) | 309 | `declaration-track:031e0319361be9f3903abdab722824473f7afd835bb5a1ad7c7ebc41c370e088` |
| 18 | `def` | [LinearPreorderPackage.ofLE](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PackageFactoriesPublic.lean/declarations/linearpreorderpackage-ofle.md) | 389 | `declaration-track:3dd916e42fb1dbf4bde9767a4444b28a6ee9797fc1996c04c3aaceb80bc2d16a` |
| 19 | `class` | [LinearOrderPackage](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PackageFactoriesPublic.lean/declarations/linearorderpackage.md) | 401 | `declaration-track:0ae9b90c50b8debfc997e74b2abaa46a4646a65430e45bfab5601a8e6aaa5c81` |
| 20 | `structure` | [Packages.LinearOrderOfLEArgs](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PackageFactoriesPublic.lean/declarations/packages-linearorderofleargs.md) | 410 | `declaration-track:e45cf74d76748c969566a65352672f1d1cdad7e292186f696a6782f10078580b` |
| 21 | `def` | [LinearOrderPackage.ofLE](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PackageFactoriesPublic.lean/declarations/linearorderpackage-ofle.md) | 491 | `declaration-track:5894c256e3e6f7dfab55ccf6f4046fbc1236ad53c5d4b5a025ed193b383c8b0a` |
| 22 | `theorem` | [_root_.Std.OrientedCmp.of_gt_iff_lt](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PackageFactoriesPublic.lean/declarations/root-std-orientedcmp-of-gt-iff-lt.md) | 516 | `result-track:7a82903792e4bad722c6e18de544e702218bee36cb8dc026ead06f0f89bb8345` |
| 23 | `structure` | [Packages.LinearPreorderOfOrdArgs](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PackageFactoriesPublic.lean/declarations/packages-linearpreorderofordargs.md) | 536 | `declaration-track:9e252a55b3909550f0d36405814e51b1b47ce0aa3cc8afd7b605c9ece47340a9` |
| 24 | `def` | [LinearPreorderPackage.ofOrd](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PackageFactoriesPublic.lean/declarations/linearpreorderpackage-oford.md) | 651 | `declaration-track:244372aa81ca30645959140bb55446e3e8945fdc1cb54fa522cbf8239fa56551` |
| 25 | `instance` | [instMinOfOrd](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PackageFactoriesPublic.lean/declarations/instminoford.md) | 681 | `declaration-track:0d8e8409c0f172b378ac2bfe107bf169997c522a0115e96eac2b38a3a21d1f1e` |
| 26 | `instance` | [instMaxOfOrd](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PackageFactoriesPublic.lean/declarations/instmaxoford.md) | 685 | `declaration-track:6c9614b9499f74839e9b66dbb433c03105a0994992da58fdfa03ede2c852b861` |
| 27 | `instance` | [instLawfulOrderLeftLeaningMinOfOrd](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PackageFactoriesPublic.lean/declarations/instlawfulorderleftleaningminoford.md) | 689 | `declaration-track:04aac2519b779fc1339171709c6a8ae6ecfa6a62f7a0d7cb58d329f177cd6002` |
| 28 | `instance` | [instLawfulOrderLeftLeaningMaxOfOrd](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PackageFactoriesPublic.lean/declarations/instlawfulorderleftleaningmaxoford.md) | 695 | `declaration-track:12e656b53aaaae9067b9d010c8d8178ef677faa222e59d8842791dc7e75cc016` |
| 29 | `structure` | [Packages.LinearOrderOfOrdArgs](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PackageFactoriesPublic.lean/declarations/packages-linearorderofordargs.md) | 708 | `declaration-track:145008d0f04252546368bb2fcee239e60c59ecb1fec3d96c2a4921b0b81a445f` |
| 30 | `def` | [LinearOrderPackage.ofOrd](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PackageFactoriesPublic.lean/declarations/linearorderpackage-oford.md) | 797 | `declaration-track:17b178216d03941f815e67129a54bc02fb098feaf84e0348d9ff58f7d3a1c713` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=536b7e76609681067749057515796975b7e613b6103531004b0f71281489c8a5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PackageFactories/Varianta955d22de4f4f8bb48e84dc7b698dea71b3557f65fa4c0c624c7fa7dea688fc0.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PackageFactories/Varianta955d22de4f4f8bb48e84dc7b698dea71b3557f65fa4c0c624c7fa7dea688fc0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
