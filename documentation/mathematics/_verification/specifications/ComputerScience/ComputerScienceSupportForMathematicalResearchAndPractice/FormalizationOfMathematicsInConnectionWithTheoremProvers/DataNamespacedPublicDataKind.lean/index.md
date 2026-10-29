# Verification target: Data Namespaced Public Data Kind

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "eee17ab4e413267e75d1a86088c079c27fe08925",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Data/Variant22d249d838bef811d92897660b848b757af61367a04cc4359cd846b3c3d85395.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DataNamespacedPublicDataKind.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DataNamespacedPublicDataKind.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `eee17ab4e413267e75d1a86088c079c27fe08925`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Data/Variant22d249d838bef811d92897660b848b757af61367a04cc4359cd846b3c3d85395.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Data/Variant22d249d838bef811d92897660b848b757af61367a04cc4359cd846b3c3d85395.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lake.Util.Name` — import line 21; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `opaque` | [DataType](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DataNamespacedPublicDataKind.lean/declarations/datatype.md) | 41 | `declaration-track:175b9f6826f6b8ae56a3591385db0e7a84758100b1dd232e67f6fb68f1c95107` |
| 2 | `class` | [DataKind](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DataNamespacedPublicDataKind.lean/declarations/datakind.md) | 44 | `declaration-track:31507ade032be33633f27bb3e1a3754d396280eef10936d35cb07baaef1cc14a` |
| 3 | `class` | [OptDataKind](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DataNamespacedPublicDataKind.lean/declarations/optdatakind.md) | 54 | `declaration-track:a5c8d88d634a80a9eba5f8a48299afe4e31a808b2fb9986b55d5b1d87e2481dc` |
| 4 | `def` | [anonymous](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DataNamespacedPublicDataKind.lean/declarations/anonymous.md) | 63 | `declaration-track:c9c55c0d4e66113b7afd926869fd296d837b8a689cbd41f9ac04130fe493eec2` |
| 5 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DataNamespacedPublicDataKind.lean/declarations/instance-source-edition-2.md) | 67 | `declaration-track:2694d690ebca41967abf25f2653fce5604042da68a5563f406d6d2cc524d9275` |
| 6 | `def` | [isAnonymous](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DataNamespacedPublicDataKind.lean/declarations/isanonymous.md) | 69 | `declaration-track:0cdccba96265fb5858aaa5044e57cf1a66c7170923b0b61cd586a8e9b9e72128` |
| 7 | `theorem` | [isAnonymous_iff_name_isAnonymous](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DataNamespacedPublicDataKind.lean/declarations/isanonymous-iff-name-isanonymous.md) | 72 | `result-track:f078cf0290195547d32e6419ed85f2d5bde22d8c90cef55a7a00d46b931773f0` |
| 8 | `theorem` | [eq_data_type](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DataNamespacedPublicDataKind.lean/declarations/eq-data-type.md) | 75 | `result-track:70b382081f9978530903e34596cbeb2f7a9e6004ba8693a0abac8af59f9a50d3` |
| 9 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DataNamespacedPublicDataKind.lean/declarations/instance-source-edition-3.md) | 79 | `declaration-track:2ee96d06b2b9422f4b03028ddbd61cb7e82c903d028a65cb92b8aa6c6dcd8acf` |
| 10 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DataNamespacedPublicDataKind.lean/declarations/instance-source-edition-4.md) | 83 | `declaration-track:40552d45fee936e4f8c0d85f04575cc590c4b074437e3bc739694087e149b146` |
| 11 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DataNamespacedPublicDataKind.lean/declarations/instance-source-edition-12.md) | 84 | `declaration-track:cdb524b79c4179c08967e5c422d9f6e84770681006d2c0556257e724acde26b1` |
| 12 | `opaque` | [FacetOut](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DataNamespacedPublicDataKind.lean/declarations/facetout.md) | 95 | `declaration-track:ec43a5ec68aace00b60054ba2f204d3b80e5943781262278015a7b9a9ef74f59` |
| 13 | `abbrev` | [FacetData](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DataNamespacedPublicDataKind.lean/declarations/facetdata.md) | 104 | `declaration-track:b0e0ac377cb5bec208fec76adb73432ff2469e632daa26f30d4cc07089dd7f68` |
| 14 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DataNamespacedPublicDataKind.lean/declarations/instance-source-edition-6.md) | 106 | `declaration-track:766938391901b4e04fc00620ab93d0b72f8dc8ec7b8ff9177e1e9a3b983e28dd` |
| 15 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DataNamespacedPublicDataKind.lean/declarations/instance-source-edition-13.md) | 109 | `declaration-track:dd996e7093c9e5d14cb09a88d586d9d0a18f8927e765cb5c0b4d1a4234001cc1` |
| 16 | `abbrev` | [ModuleData](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DataNamespacedPublicDataKind.lean/declarations/moduledata.md) | 119 | `declaration-track:c9cf4b59b3040da0b5290c89271eb707b3640b08c36dda92874b4d238d47d86a` |
| 17 | `abbrev` | [PackageData](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DataNamespacedPublicDataKind.lean/declarations/packagedata.md) | 128 | `declaration-track:b7b965fce70e0be77f5b92de3083add9f23e92b965167f85b37fcaadafbe9212` |
| 18 | `abbrev` | [LibraryData](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DataNamespacedPublicDataKind.lean/declarations/librarydata.md) | 137 | `declaration-track:1371be4dcb20fb467e637d77dc13bc1c502fb44c7208b027be7bc5c325520ce2` |
| 19 | `abbrev` | [LeanLibData](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DataNamespacedPublicDataKind.lean/declarations/leanlibdata.md) | 140 | `declaration-track:a037d8e76ad7de1373faa7f12d0c1be043ee5eecdea0746382563fb4244ea3ee` |
| 20 | `opaque` | [CustomOut](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DataNamespacedPublicDataKind.lean/declarations/customout.md) | 149 | `declaration-track:f3d9bf478cf18af8bc3436e03f10f08d021d1809096aa2abd0215b994b1a59bd` |
| 21 | `abbrev` | [CustomData](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DataNamespacedPublicDataKind.lean/declarations/customdata.md) | 157 | `declaration-track:1fa2a0f8ff3e802735b4e08a956d9b4133963600965126137d5df29f3bea2c1d` |
| 22 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DataNamespacedPublicDataKind.lean/declarations/instance-source-edition-15.md) | 159 | `declaration-track:e9ed5b1e4a244a6414a56592309dd30e2193f2038be856fc8e3aa56c55ebbae0` |
| 23 | `abbrev` | [BuildData](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DataNamespacedPublicDataKind.lean/declarations/builddata.md) | 171 | `declaration-track:5cee36dfc8e2b9a2070a43f4747c6a1e18a8836c497df3b14a4950692f8f7aaa` |
| 24 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DataNamespacedPublicDataKind.lean/declarations/instance-source-edition-8.md) | 178 | `declaration-track:ae9e9887d46b53ff19e7286b3b05483e36629869e439d2d5eb2eecf7c6eabc2e` |
| 25 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DataNamespacedPublicDataKind.lean/declarations/instance-source-edition-9.md) | 179 | `declaration-track:b216ed987e24bec3ad92c1825d8bc50de9eef46bf15158fcd9045bbde4444d06` |
| 26 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DataNamespacedPublicDataKind.lean/declarations/instance-source-edition-16.md) | 181 | `declaration-track:fca60c6941ac0801668d04d929d5e49469dc16c2a445586c4b5ccaa07edf5233` |
| 27 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DataNamespacedPublicDataKind.lean/declarations/instance-source-edition-10.md) | 185 | `declaration-track:b587dd6f75326680d4041af96705ca6e43e08320d9c4d25e9370ed922d5ca2d0` |
| 28 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DataNamespacedPublicDataKind.lean/declarations/instance.md) | 189 | `declaration-track:035d0ee6418748db1564dba35b273c588fdeaab0186d1f8169f34330acb208b7` |
| 29 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DataNamespacedPublicDataKind.lean/declarations/instance-source-edition-7.md) | 193 | `declaration-track:7d3e9a1b034ee73ba23ff2912663a98992c38103e0d8849097e6431aaa6f5c1e` |
| 30 | `macro` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DataNamespacedPublicDataKind.lean/declarations/macro-source-edition-2.md) | 202 | `declaration-track:2cfd025f6c0435ebaa2341dae974bed7142f3ac2ba57f16185ee5af3909d626e` |
| 31 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DataNamespacedPublicDataKind.lean/declarations/instance-source-edition-11.md) | 209 | `declaration-track:c857ef97dc68000f569632c3cc74ee2ea53209629d1a84600832b456aeddcc08` |
| 32 | `macro` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DataNamespacedPublicDataKind.lean/declarations/macro-source-edition-7.md) | 217 | `declaration-track:c1d75b28fe0b87a08ae0e7513d647f86804e6379c2fc8984bf6b00400aa969d7` |
| 33 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DataNamespacedPublicDataKind.lean/declarations/instance-source-edition-14.md) | 243 | `declaration-track:e00ae84670b01dca1c5be2be7cba5e91c0239b99752cbca253f4775201d6a8be` |
| 34 | `macro` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DataNamespacedPublicDataKind.lean/declarations/macro.md) | 248 | `declaration-track:1389ad703449c8b83699d811f02ea2d1275c11f20e8a2186400bc78e348ac31e` |
| 35 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DataNamespacedPublicDataKind.lean/declarations/instance-source-edition-5.md) | 258 | `declaration-track:72893034cd2ea1cd337e0b2bae5341a299eda2057a829167453060d582e09ee3` |
| 36 | `macro` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DataNamespacedPublicDataKind.lean/declarations/macro-source-edition-3.md) | 262 | `declaration-track:85b78bb19d2a8a029681a50e49cdec1e6c4268d3a612b575972e4386912c6523` |
| 37 | `macro` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DataNamespacedPublicDataKind.lean/declarations/macro-source-edition-4.md) | 267 | `declaration-track:b57b8bd53a030d81146ff28d635f98699edc7f953b85302cd21c39e783b96396` |
| 38 | `macro` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DataNamespacedPublicDataKind.lean/declarations/macro-source-edition-5.md) | 272 | `declaration-track:b6861c3a0ef72fde356bf489a2dbe20308f3963648c38db1ca01586ad360c018` |
| 39 | `macro` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DataNamespacedPublicDataKind.lean/declarations/macro-source-edition-6.md) | 277 | `declaration-track:c16a632570efb341659a41bc265575263226c9c8c34fe2d1e4f5ccbba7a7bdb4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=910bd893976d2ddb273d91986cfc54123e136a53e6178fca72b4dcd77bc39881 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Data/Variant22d249d838bef811d92897660b848b757af61367a04cc4359cd846b3c3d85395.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Data/Variant22d249d838bef811d92897660b848b757af61367a04cc4359cd846b3c3d85395.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
