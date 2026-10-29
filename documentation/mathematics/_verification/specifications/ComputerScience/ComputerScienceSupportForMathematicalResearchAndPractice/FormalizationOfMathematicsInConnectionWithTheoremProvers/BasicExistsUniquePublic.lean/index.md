# Verification target: Basic Exists Unique Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "75053fb087909647a7f2dc1d7078e9bd574b9bff",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ExistsUnique/Variant2f770285d2302f5733f27d8a12412a4067776d7f9a7ca7fada9998ed8a99391b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicExistsUniquePublic.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicExistsUniquePublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `75053fb087909647a7f2dc1d7078e9bd574b9bff`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ExistsUnique/Variant2f770285d2302f5733f27d8a12412a4067776d7f9a7ca7fada9998ed8a99391b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/ExistsUnique/Variant2f770285d2302f5733f27d8a12412a4067776d7f9a7ca7fada9998ed8a99391b.lean.json)

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
| 1 | `def` | [ExistsUnique](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicExistsUniquePublic.lean/declarations/existsunique.md) | 22 | `declaration-track:94bb8e292081be04b87371bcaa35111283d86a748defe0e0a0f694a77c9b56ea` |
| 2 | `def` | [isExplicitBinderSingular](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicExistsUniquePublic.lean/declarations/isexplicitbindersingular.md) | 28 | `declaration-track:dacf22a5a71a5abbc50ebef48da1d24c0b1d9600e16f931cfd1e2686f07ce108` |
| 3 | `macro` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicExistsUniquePublic.lean/declarations/macro.md) | 43 | `declaration-track:e4f4ec7fd46e397f3534b08a05294998c9b35d4a237fb6b50f0b85a3324fd986` |
| 4 | `def` | [unexpandExistsUnique](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicExistsUniquePublic.lean/declarations/unexpandexistsunique.md) | 58 | `declaration-track:7abb041fc01fdc4d1cbe70a9c23cccb60fb628268e656cc14294f3764c8e0be8` |
| 5 | `syntax` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicExistsUniquePublic.lean/declarations/syntax.md) | 69 | `declaration-track:7426e87f2a6d29be742075d4229e262d66aa35d8979592ae585182d7c6f7c846` |
| 6 | `macro_rules` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicExistsUniquePublic.lean/declarations/macro-rules.md) | 71 | `declaration-track:a4f6fecee439cbf757ff0ecaac0003735048e53389489b2e7c036b3978a04398` |
| 7 | `theorem` | [ExistsUnique.intro](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicExistsUniquePublic.lean/declarations/existsunique-intro-source-edition-2.md) | 78 | `result-track:ec1ce1c472f99333d0200206b2a502d7ee028a5d8589367a4ea05ddacbe64155` |
| 8 | `theorem` | [ExistsUnique.elim](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicExistsUniquePublic.lean/declarations/existsunique-elim-source-edition-2.md) | 81 | `result-track:87182973ce030a38a6e855c60cbf824051e2a60a20f33ef24e678565ea42a3b2` |
| 9 | `theorem` | [existsUnique_of_exists_of_unique](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicExistsUniquePublic.lean/declarations/existsunique-of-exists-of-unique.md) | 85 | `result-track:e59febd36797c04285f1877c5401ac97c13dcaa28d247e295574e7a2ec68432e` |
| 10 | `theorem` | [ExistsUnique.exists](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicExistsUniquePublic.lean/declarations/existsunique-exists-source-edition-2.md) | 89 | `result-track:36d8f73021b0aec0b11562dd76719402fe6d7726724be4930f7bc3bb89055465` |
| 11 | `theorem` | [ExistsUnique.unique](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicExistsUniquePublic.lean/declarations/existsunique-unique.md) | 91 | `result-track:6df24fa2423a887f75ec71b91495d5e058c65ea680c4d719765c024c79b8ee34` |
| 12 | `theorem` | [ExistsUnique.choose_eq_iff](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicExistsUniquePublic.lean/declarations/existsunique-choose-eq-iff.md) | 95 | `result-track:ed75d7de97e5ec1a0c61c2157ff6b579a9262a737769a10e6508fba2cdc4e237` |
| 13 | `theorem` | [existsUnique_congr](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicExistsUniquePublic.lean/declarations/existsunique-congr.md) | 104 | `result-track:1dbb53eee538a4626dec9a0514288deeee17bee95b535d7e57adb116115fc8c0` |
| 14 | `theorem` | [existsUnique_iff_exists](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicExistsUniquePublic.lean/declarations/existsunique-iff-exists.md) | 107 | `result-track:a718a2be4f36db67d149a7691cb2a3d0a0c674b64a7253cebf239b07e35d260b` |
| 15 | `theorem` | [existsUnique_const](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicExistsUniquePublic.lean/declarations/existsunique-const.md) | 111 | `result-track:fba7524e8638234e69a52a9997d9578f92ca6961e77ad565c1415a4fcca1c193` |
| 16 | `theorem` | [existsUnique_eq](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicExistsUniquePublic.lean/declarations/existsunique-eq.md) | 114 | `result-track:4f89203feb9a80f470aad4d62f2838cdb860890e93f70f7762e35ae8abae88ef` |
| 17 | `theorem` | [existsUnique_eq'](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicExistsUniquePublic.lean/declarations/existsunique-eq-source-edition-2.md) | 118 | `result-track:806f4222c71b80a42c8a27dd513b2217625330403f806c18a0b55479daf34396` |
| 18 | `theorem` | [existsUnique_prop](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicExistsUniquePublic.lean/declarations/existsunique-prop.md) | 121 | `result-track:52503d2665a829b4290fb8dc201b7d4dc6e791be10b87415c0203a7f4e2658ec` |
| 19 | `theorem` | [existsUnique_false](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicExistsUniquePublic.lean/declarations/existsunique-false.md) | 123 | `result-track:5419c710453d14a8c2738842cce645191736e98b5ecf60c52b39fe7ac1204df5` |
| 20 | `theorem` | [existsUnique_prop_of_true](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicExistsUniquePublic.lean/declarations/existsunique-prop-of-true.md) | 125 | `result-track:6264c610478e6479787d599460e1350275e0bf664594fdd4da322d80de4d79ba` |
| 21 | `theorem` | [ExistsUnique.elim₂](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicExistsUniquePublic.lean/declarations/existsunique-elim.md) | 128 | `result-track:7a77e7a2e53ab75a5f395ffea75dd34dfa775a0debf10de63258feabf08a7e46` |
| 22 | `theorem` | [ExistsUnique.intro₂](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicExistsUniquePublic.lean/declarations/existsunique-intro.md) | 135 | `result-track:22d56912138576191e22de75ed8e25159e75da275c7bab1b87a69f6ce8c48f41` |
| 23 | `theorem` | [ExistsUnique.exists₂](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicExistsUniquePublic.lean/declarations/existsunique-exists.md) | 141 | `result-track:10aaccf51874f4e391bca492db69a520d4e4c8c174d9b0661e3eeb8a2d5ad25b` |
| 24 | `theorem` | [ExistsUnique.unique₂](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicExistsUniquePublic.lean/declarations/existsunique-unique-source-edition-2.md) | 145 | `result-track:9b7924a394227d63f2b013a5325fc64ab02ca198ac8f2566fd5596b9d11c5461` |
| 25 | `instance` | [List.decidableBExistsUnique](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicExistsUniquePublic.lean/declarations/list-decidablebexistsunique.md) | 152 | `declaration-track:cfd5d4fab819e62a76b407970b47cbb7ea0092b792aa599f801e6c4851a6400a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=98a6e2a662c519ff80894c3cad49ea88c5e639537901c3ca79910a87863209bd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ExistsUnique/Variant2f770285d2302f5733f27d8a12412a4067776d7f9a7ca7fada9998ed8a99391b.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/ExistsUnique/Variant2f770285d2302f5733f27d8a12412a4067776d7f9a7ca7fada9998ed8a99391b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
