# Verification target: Module Cat Presheaf Map Smul

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a89c6a3e14901f1712e0a43d40766f3e1e593def",
  "lexical_observation_count": 54,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant7c11c47d49175084b5930c46c09556e383f375b89da111492f633a1c58ac066a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatPresheafMapSmul.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatPresheafMapSmul.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a89c6a3e14901f1712e0a43d40766f3e1e593def`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant7c11c47d49175084b5930c46c09556e383f375b89da111492f633a1c58ac066a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant7c11c47d49175084b5930c46c09556e383f375b89da111492f633a1c58ac066a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.ModuleCat.ChangeOfRings` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.Ring.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PresheafOfModules](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatPresheafMapSmul.lean/declarations/presheafofmodules.md) | 39 | `declaration-track:9a6bea6c83a1a232808831a66a1c370fbdb5064c5e45a22568cd047107e7ac5f` |
| 2 | `lemma` | [map_smul](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatPresheafMapSmul.lean/declarations/map-smul.md) | 60 | `result-track:eec983acdc408ca36c9e3c2827b8b1eec1f4f1ad7aad99141c5a6ea7bdec6847` |
| 3 | `lemma` | [congr_map_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatPresheafMapSmul.lean/declarations/congr-map-apply.md) | 63 | `result-track:21e2541822da4c24e3ec8ea5c240f06a9421a4507088539379f005b4f67f1b14` |
| 4 | `structure` | [Hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatPresheafMapSmul.lean/declarations/hom.md) | 69 | `declaration-track:a488f5ab9af93ac5a8835c9574624c28f49787afc7d4bb28784eb5d2e5ef37ca` |
| 5 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatPresheafMapSmul.lean/declarations/instance-source-edition-6.md) | 78 | `declaration-track:79c0eb23c63b8e46b984f1b8a140c78a408c76265966fb0c3fd83e6a880cf06b` |
| 6 | `lemma` | [hom_ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatPresheafMapSmul.lean/declarations/hom-ext.md) | 86 | `result-track:be0ea5dea16e3f0c216005bb075ab8452fe726fdc5de336347523487eb6a3f37` |
| 7 | `lemma` | [id_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatPresheafMapSmul.lean/declarations/id-app.md) | 90 | `result-track:9a70515a987080282f0069337f5b3ae9cec690e6d45e4d9ff62cd99660a9ea1d` |
| 8 | `lemma` | [comp_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatPresheafMapSmul.lean/declarations/comp-app.md) | 94 | `result-track:b57722c5c392b0e3225c92d4e254ca86681fced17f8743373c264e12d7d8a1fe` |
| 9 | `lemma` | [naturality_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatPresheafMapSmul.lean/declarations/naturality-apply.md) | 98 | `result-track:f03e4e9a11339c92ffa9a0632e757fcbc870a5a342f3f2a673e8428cc4b6c2d2` |
| 10 | `def` | [isoMk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatPresheafMapSmul.lean/declarations/isomk.md) | 104 | `declaration-track:80935848e3446d5ff038d96a29b4651944fbe9f7b76981468899e279959af381` |
| 11 | `def` | [presheaf](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatPresheafMapSmul.lean/declarations/presheaf.md) | 116 | `declaration-track:a9c669eb935a00f00360082f1ba139384f84467789366d050cf3ec9b0746e24f` |
| 12 | `lemma` | [presheaf_obj_coe](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatPresheafMapSmul.lean/declarations/presheaf-obj-coe.md) | 121 | `result-track:bc64474c5dae0e876cce127750a41b08532c3442aae6e5be0d41de71822db2c5` |
| 13 | `lemma` | [presheaf_map_apply_coe](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatPresheafMapSmul.lean/declarations/presheaf-map-apply-coe.md) | 125 | `result-track:b92549e2cba6605fc02a7a605094b36ea01121f4639e45f1763fb0d75fc40bcc` |
| 14 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatPresheafMapSmul.lean/declarations/instance-source-edition-8.md) | 128 | `declaration-track:a337b2eeb825ccada31a74a7783178417a4358c256eacc5787cd1807702853f5` |
| 15 | `def` | [toPresheaf](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatPresheafMapSmul.lean/declarations/topresheaf.md) | 134 | `declaration-track:263a7eff1e7b505e8551e5538b13f60cb92c190588e94c159d53f21307aa1392` |
| 16 | `lemma` | [toPresheaf_obj_coe](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatPresheafMapSmul.lean/declarations/topresheaf-obj-coe.md) | 141 | `result-track:7acd7b37d19ac3f8d1cd786d7dd93a4f80d2b174e48237b4e5c009a78f271e56` |
| 17 | `lemma` | [toPresheaf_map_app_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatPresheafMapSmul.lean/declarations/topresheaf-map-app-apply.md) | 145 | `result-track:97f54451f16963bd335f81b396fab6c4c45da079dd3a1ca57b7e9e8970614ac4` |
| 18 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatPresheafMapSmul.lean/declarations/instance-source-edition-10.md) | 149 | `declaration-track:f20b84f67121bf62b9b8f0d5a0e272ef051bebf3f1caa88cc597709ec2bbb282` |
| 19 | `def` | [ofPresheaf](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatPresheafMapSmul.lean/declarations/ofpresheaf.md) | 165 | `declaration-track:ef6e2a9fac4fd94c921458a75c5aa827633fd42c146446d8efe326f926c5fd15` |
| 20 | `lemma` | [ofPresheaf_presheaf](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatPresheafMapSmul.lean/declarations/ofpresheaf-presheaf.md) | 176 | `result-track:5a531e8932303f11b119f598eb3a8c4cf49ba10115cc8d28a533b165e263a7cd` |
| 21 | `def` | [homMk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatPresheafMapSmul.lean/declarations/hommk.md) | 184 | `declaration-track:7d5952d837c410fd5de6adbbaa8b4f43f1948187c44bd05d52c263b380715383` |
| 22 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatPresheafMapSmul.lean/declarations/instance-source-edition-7.md) | 195 | `declaration-track:7b15d93f3ad52d1241aec4d8b9a48e172486fa176de6e3999b7a4fc581a0d77f` |
| 23 | `lemma` | [zero_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatPresheafMapSmul.lean/declarations/zero-app.md) | 199 | `result-track:d59ce909500e012872428439aa80a0171be1adb0527b3b3d1da92c51b9c2c0b2` |
| 24 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatPresheafMapSmul.lean/declarations/instance-source-edition-11.md) | 201 | `declaration-track:f9d78258e2779b14156c04d3672215c50024413d7e3ad189924e09e282a8b1b6` |
| 25 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatPresheafMapSmul.lean/declarations/instance.md) | 208 | `declaration-track:00be2a0e0ad9581ae83f4d1da6f0e8cc78c833627137a4e42f869577b05bfd19` |
| 26 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatPresheafMapSmul.lean/declarations/instance-source-edition-5.md) | 215 | `declaration-track:5a794f3d4232cff3f530acb78bbe6bbe3d18ad69ba611d91788c28c9b9113b65` |
| 27 | `lemma` | [neg_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatPresheafMapSmul.lean/declarations/neg-app.md) | 222 | `result-track:0fcf36228c10b2d4ca64f369dfc86eb27726e578382673dcfe75936dcac5c4db` |
| 28 | `lemma` | [add_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatPresheafMapSmul.lean/declarations/add-app.md) | 223 | `result-track:b558ec185612301e8d4b723360089506940beace47f8cc6533f26698a0b22911` |
| 29 | `lemma` | [sub_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatPresheafMapSmul.lean/declarations/sub-app.md) | 224 | `result-track:cfa864fae36b95ef4e4351b8067678832373f75b1634afcd327b20b3cfac86ab` |
| 30 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatPresheafMapSmul.lean/declarations/instance-source-edition-2.md) | 226 | `declaration-track:0480db2100f9ca8703f23711e19efd80662afbc616b0c995eceab523e6b07cfd` |
| 31 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatPresheafMapSmul.lean/declarations/instance-source-edition-4.md) | 236 | `declaration-track:4aac4645635110d1fe896ffc2f0023d7fc2129c7e1366276b9b3d5cbdbdeab28` |
| 32 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatPresheafMapSmul.lean/declarations/instance-source-edition-9.md) | 238 | `declaration-track:d3e918162e22839ed0e2ddf6fad0481ac13c4aa31209a25d4cdcd98ae903a630` |
| 33 | `lemma` | [zsmul_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatPresheafMapSmul.lean/declarations/zsmul-app.md) | 240 | `result-track:51f10a68d7d4d9e166075384a0dd5a9cfa8045e659305f3430d7797790d83f31` |
| 34 | `def` | [evaluation](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatPresheafMapSmul.lean/declarations/evaluation.md) | 251 | `declaration-track:159986722c892d26808ce7f69de65bde5153b2c06b4bd57c3d86ce6421f4627e` |
| 35 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatPresheafMapSmul.lean/declarations/instance-source-edition-3.md) | 255 | `declaration-track:367927d261f611358a52bbb408b9bacff86cd378ec87ae73a98ed39d2b4094f8` |
| 36 | `def` | [restriction](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatPresheafMapSmul.lean/declarations/restriction.md) | 260 | `declaration-track:52a4f33da72dff7cb6d058391ae84405d5babc92a1d4db9a30a371d87741ed25` |
| 37 | `def` | [unit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatPresheafMapSmul.lean/declarations/unit.md) | 265 | `declaration-track:6159664ed091b15a268d2bb72c5e70627639f4dbd33446251b41843c5e44e18d` |
| 38 | `lemma` | [unit_map_one](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatPresheafMapSmul.lean/declarations/unit-map-one.md) | 275 | `result-track:3fd24f3d85b716f6217854e2a0b062a51f3385474599bfe6a1d1e1b644f05b62` |
| 39 | `def` | [sections](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatPresheafMapSmul.lean/declarations/sections.md) | 281 | `declaration-track:1698b6f0a275593ba70f6f8ad5bf7b57edbddf05806aae5108e0be19cc7a5f7a` |
| 40 | `abbrev` | [sections.eval](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatPresheafMapSmul.lean/declarations/sections-eval.md) | 285 | `declaration-track:fe988384b4265703cbcf782df39bb1f622091a309ca9b03cc349233d47044613` |
| 41 | `lemma` | [sections_property](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatPresheafMapSmul.lean/declarations/sections-property.md) | 288 | `result-track:3a8030808e2548ff88b999bd94e78ad54ea0835f37b051b11ca166bf96377575` |
| 42 | `def` | [sectionsMk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatPresheafMapSmul.lean/declarations/sectionsmk.md) | 293 | `declaration-track:3b4253a90fe03228fc45bcf5d763a3f25c1552c3425ac2878a693e1a9ca791f5` |
| 43 | `lemma` | [sections_ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatPresheafMapSmul.lean/declarations/sections-ext.md) | 299 | `result-track:67adedede819eea35d2e246f95143467332a1deda29abd797e7c3ab02cf93807` |
| 44 | `def` | [sectionsMap](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatPresheafMapSmul.lean/declarations/sectionsmap.md) | 305 | `declaration-track:2206fbc4f7c6e4110b8ba2af7cd87425d7b7315149c003af0f10f6637147768e` |
| 45 | `lemma` | [sectionsMap_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatPresheafMapSmul.lean/declarations/sectionsmap-comp.md) | 310 | `result-track:72ca0af658792978eb925f56d88ad834f200a5dd765c943ea1ee44929c93954c` |
| 46 | `lemma` | [sectionsMap_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatPresheafMapSmul.lean/declarations/sectionsmap-id.md) | 314 | `result-track:40eb3b41f5a12ceec3fec8e7bff7c636156f93b3d496cfdf2640e30afebc0937` |
| 47 | `def` | [unitHomEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatPresheafMapSmul.lean/declarations/unithomequiv.md) | 319 | `declaration-track:5dd07e69958bb818a86c9d302429905873e0d10bfb9ec9be7f90def1ac718c60` |
| 48 | `abbrev` | [forgetToPresheafModuleCatObjObj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatPresheafMapSmul.lean/declarations/forgettopresheafmodulecatobjobj.md) | 354 | `declaration-track:d0d561ed1250fd67dc4f7382606480e2440b51df3e35637ed92cf4e5d5855882` |
| 49 | `lemma` | [forgetToPresheafModuleCatObjObj_coe](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatPresheafMapSmul.lean/declarations/forgettopresheafmodulecatobjobj-coe.md) | 359 | `result-track:1b58ce0e5a6f9eaa63beacb551f5d658de755e472b1a3517356589602b0bea51` |
| 50 | `def` | [forgetToPresheafModuleCatObjMap](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatPresheafMapSmul.lean/declarations/forgettopresheafmodulecatobjmap.md) | 363 | `declaration-track:9db550df953e7db6df94b9d0ef6312a9844f96227404bcdc0b9da89cd0e66b7d` |
| 51 | `lemma` | [forgetToPresheafModuleCatObjMap_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatPresheafMapSmul.lean/declarations/forgettopresheafmodulecatobjmap-apply.md) | 378 | `result-track:0a0acc709cbcbcb3729f8094dca4e4f539709900170e74639e086aa32ae061e9` |
| 52 | `def` | [forgetToPresheafModuleCatObj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatPresheafMapSmul.lean/declarations/forgettopresheafmodulecatobj.md) | 390 | `declaration-track:3340e3ed1ee647c78ca60f11e090f0685d46548af0131af42e394ad09475dd76` |
| 53 | `def` | [forgetToPresheafModuleCatMap](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatPresheafMapSmul.lean/declarations/forgettopresheafmodulecatmap.md) | 406 | `declaration-track:450216704b2118a60343a00e5bcc4a8d1b1a64396bab123b99152220ec2c81aa` |
| 54 | `def` | [forgetToPresheafModuleCat](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatPresheafMapSmul.lean/declarations/forgettopresheafmodulecat.md) | 428 | `declaration-track:f4dd01f61061da01f8a77c1f874588896661a48443ba18d1b63c2c1022875f44` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3e0d1075ee1a0e85ec9d63a573a9b2600c6721b0d03fab158ca2dd1acb419e4a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant7c11c47d49175084b5930c46c09556e383f375b89da111492f633a1c58ac066a.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant7c11c47d49175084b5930c46c09556e383f375b89da111492f633a1c58ac066a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
