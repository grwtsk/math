# Verification target: Wide Equalizers Namespaced Aligned

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3c4490622a4d20d367185dc7b609b40ea0dbf6ef",
  "lexical_observation_count": 88,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/WideEqualizers/Variant077a96bd4acca38224d8794788525df9bbdc8e1dea0bf14e6173393e1b15c945.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersNamespacedAligned.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersNamespacedAligned.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3c4490622a4d20d367185dc7b609b40ea0dbf6ef`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/WideEqualizers/Variant077a96bd4acca38224d8794788525df9bbdc8e1dea0bf14e6173393e1b15c945.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/WideEqualizers/Variant077a96bd4acca38224d8794788525df9bbdc8e1dea0bf14e6173393e1b15c945.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.HasLimits` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Equalizers` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [WalkingParallelFamily](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersNamespacedAligned.lean/declarations/walkingparallelfamily.md) | 66 | `declaration-track:2c5f9da28aae073a70adea9ccb1e87bfd02a3b35db92adb628cc411ffba724b0` |
| 2 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersNamespacedAligned.lean/declarations/instance.md) | 73 | `declaration-track:0114607e1fbade8a98972a9b69335a6745aad2e219aa5c887b58af74ffe6e52b` |
| 3 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersNamespacedAligned.lean/declarations/instance-source-edition-3.md) | 79 | `declaration-track:9f1c8be809016980fa073ac83047cf84b836645b2d9c2e3f431e29aac509c823` |
| 4 | `inductive` | [WalkingParallelFamily.Hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersNamespacedAligned.lean/declarations/walkingparallelfamily-hom.md) | 83 | `declaration-track:b6829d303a2a8a21a0d1aba370751dd2ad6fbe65f17f5ba1d93f4527413b72bd` |
| 5 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersNamespacedAligned.lean/declarations/instance-source-edition-5.md) | 93 | `declaration-track:c1e8d5ba45a13a817a557209a960d2de3cfd72b9ea61260e1f702e16c20b15a7` |
| 6 | `def` | [WalkingParallelFamily.Hom.comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersNamespacedAligned.lean/declarations/walkingparallelfamily-hom-comp.md) | 98 | `declaration-track:816053412cb5efd3410e3ec1c6b687f9f07ff2dbe054bfd7f1df6938661fdff1` |
| 7 | `instance` | [WalkingParallelFamily.category](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersNamespacedAligned.lean/declarations/walkingparallelfamily-category.md) | 109 | `declaration-track:a83d9cbd74360660287fccd74893dc9a1892080a6103fdeed777cca23fc90ba2` |
| 8 | `theorem` | [WalkingParallelFamily.hom_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersNamespacedAligned.lean/declarations/walkingparallelfamily-hom-id.md) | 120 | `result-track:cbc65fb9381948e935953054bebcb4ae05d2b1f2427a6f6fd01a8416c1e72dd7` |
| 9 | `def` | [parallelFamily](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersNamespacedAligned.lean/declarations/parallelfamily.md) | 134 | `declaration-track:99b6d95e4c8937e54de740df8bf7b7fd1dcef040b549aa0758369ba55ff2f06b` |
| 10 | `theorem` | [parallelFamily_obj_zero](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersNamespacedAligned.lean/declarations/parallelfamily-obj-zero.md) | 146 | `result-track:16040cb7753aaf8108be57417f15b8dd4034c0b2842fe89184667b1f2dd8c956` |
| 11 | `theorem` | [parallelFamily_obj_one](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersNamespacedAligned.lean/declarations/parallelfamily-obj-one.md) | 151 | `result-track:6aa4b8214527e6ca682d2c74a2e8e4e86d36e778767f6af691f8e70752f821c7` |
| 12 | `theorem` | [parallelFamily_map_left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersNamespacedAligned.lean/declarations/parallelfamily-map-left.md) | 156 | `result-track:b17a9e27c51edadae219ed38831968ef7a507a154b10dca23162d8999113c9ad` |
| 13 | `def` | [diagramIsoParallelFamily](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersNamespacedAligned.lean/declarations/diagramisoparallelfamily.md) | 165 | `declaration-track:b8dccfc2c996ab8d00b5feb6332dc3a3c8b9a1d483e2ef67a24e7497f94599d7` |
| 14 | `def` | [walkingParallelFamilyEquivWalkingParallelPair](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersNamespacedAligned.lean/declarations/walkingparallelfamilyequivwalkingparallelpair.md) | 176 | `declaration-track:d2ce1bd8aeffddf7dc52c0024a0af0d192c81c7683cd83c87ac794858ea2a63a` |
| 15 | `abbrev` | [Trident](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersNamespacedAligned.lean/declarations/trident.md) | 191 | `declaration-track:be0e86af4b2eaef6ae4f02b6314e4ccbea820918f1a3feb7123d02e63d079398` |
| 16 | `abbrev` | [Cotrident](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersNamespacedAligned.lean/declarations/cotrident.md) | 196 | `declaration-track:9a64e3cb926256dd8b8e041fdd3d5a16052e8d9c349ed60deaab2423faf4de5e` |
| 17 | `abbrev` | [Trident.ι](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersNamespacedAligned.lean/declarations/trident-source-edition-2.md) | 205 | `declaration-track:ff91cd62c91be7ff4ba79a19b8e4bf7e5e1b838b66a4ce1eee993f96a5034c98` |
| 18 | `abbrev` | [Cotrident.π](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersNamespacedAligned.lean/declarations/cotrident-source-edition-2.md) | 212 | `declaration-track:a32fc742fe7219a3a0eb4ab9bbf2355d58bef69665ae784b239469a85a218933` |
| 19 | `theorem` | [Trident.ι_eq_app_zero](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersNamespacedAligned.lean/declarations/trident-eq-app-zero.md) | 217 | `result-track:9385a75772b6bf4056ccf3356f8a3edb42d30129849729851d97bc1c3d6e4131` |
| 20 | `theorem` | [Cotrident.π_eq_app_one](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersNamespacedAligned.lean/declarations/cotrident-eq-app-one.md) | 222 | `result-track:fcaf87c257d460140f9b2b87c0781cfd0913e50e9aa383613e8adbd5397293f4` |
| 21 | `theorem` | [Trident.app_zero](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersNamespacedAligned.lean/declarations/trident-app-zero.md) | 227 | `result-track:5c1ac1fe6b7b225e094423e9fe737ded529ff95a0215be3f8fa36155bde4547c` |
| 22 | `theorem` | [Cotrident.app_one](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersNamespacedAligned.lean/declarations/cotrident-app-one.md) | 232 | `result-track:073eeffefafe95c4c3c63b8012640ae9689eeec5e3651e92c8df7d22eed859f5` |
| 23 | `def` | [Trident.ofι](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersNamespacedAligned.lean/declarations/trident-of.md) | 240 | `declaration-track:a6723eb12f93be8960a3953c44fc72bb2fff40d39896c61c0207a012c59f937e` |
| 24 | `def` | [Cotrident.ofπ](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersNamespacedAligned.lean/declarations/cotrident-of.md) | 256 | `declaration-track:4e4d4c8b16f4217bcf6b597a6fcca1162b2fdc4047b6d8336295bd4de5fa305f` |
| 25 | `theorem` | [Trident.ι_ofι](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersNamespacedAligned.lean/declarations/trident-of-source-edition-2.md) | 269 | `result-track:bb121bd107a718cac122a775bf98ab3d6be4602ba8aecc8afd0cfc3ff144eec9` |
| 26 | `theorem` | [Cotrident.π_ofπ](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersNamespacedAligned.lean/declarations/cotrident-of-source-edition-2.md) | 274 | `result-track:6c29786e9913761248a09e058000f4143045f5165bd3a84595ab9c45f119a0b9` |
| 27 | `theorem` | [Trident.condition](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersNamespacedAligned.lean/declarations/trident-condition.md) | 280 | `result-track:4a4aae7a75042af306878b32dc1877a35c01523254b995d3104b23635ddda697` |
| 28 | `theorem` | [Cotrident.condition](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersNamespacedAligned.lean/declarations/cotrident-condition.md) | 285 | `result-track:702fb9db0210fed1b630fea249280e696a6acac992b84db3284e682885d4a6be` |
| 29 | `theorem` | [Trident.equalizer_ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersNamespacedAligned.lean/declarations/trident-equalizer-ext.md) | 291 | `result-track:39c114432c116e18abc9652018e9e6320d9907ba390023b688b9e0e35f7a4b17` |
| 30 | `theorem` | [Cotrident.coequalizer_ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersNamespacedAligned.lean/declarations/cotrident-coequalizer-ext.md) | 299 | `result-track:2c56db70225d385b55d963e93c96b2dba821b0fc974c12ce8e94d3b5a10e48e7` |
| 31 | `theorem` | [Trident.IsLimit.hom_ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersNamespacedAligned.lean/declarations/trident-islimit-hom-ext.md) | 307 | `result-track:46759b154e4f7d6488cc89454df59811dbb3a02fa538b1f449eebbf43e47c282` |
| 32 | `theorem` | [Cotrident.IsColimit.hom_ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersNamespacedAligned.lean/declarations/cotrident-iscolimit-hom-ext.md) | 312 | `result-track:1dcd7ad611a1ecca6e40cebed26786392906238720a642c731773398f8f816c5` |
| 33 | `def` | [Trident.IsLimit.lift'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersNamespacedAligned.lean/declarations/trident-islimit-lift.md) | 322 | `declaration-track:f10858430a78a2d76f67de5778da23f8c4cec0631a53e5fa2c4a3321f4c71a86` |
| 34 | `def` | [Cotrident.IsColimit.desc'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersNamespacedAligned.lean/declarations/cotrident-iscolimit-desc.md) | 330 | `declaration-track:8a0da238b17fb34d1e3e07d9da57e9f261e753160b312b63af08dfd533d8284c` |
| 35 | `def` | [Trident.IsLimit.mk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersNamespacedAligned.lean/declarations/trident-islimit-mk-source-edition-2.md) | 339 | `declaration-track:7ae7473039f9af350d6ea9b7b66f618197662fabe045f7a023938f5d2074fe59` |
| 36 | `def` | [Trident.IsLimit.mk'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersNamespacedAligned.lean/declarations/trident-islimit-mk.md) | 355 | `declaration-track:54425bb168fd86ebe0efffb93ec5d02bc3818c1aa2da54524ded0a69ea90fa5e` |
| 37 | `def` | [Cotrident.IsColimit.mk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersNamespacedAligned.lean/declarations/cotrident-iscolimit-mk-source-edition-2.md) | 364 | `declaration-track:3461ddbd8615f885136b327de4eeeeb21245ae9d0960ee57e2decc145b9e9c60` |
| 38 | `def` | [Cotrident.IsColimit.mk'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersNamespacedAligned.lean/declarations/cotrident-iscolimit-mk.md) | 380 | `declaration-track:1cbc43d0285aa774c75d8417a0c104a477ba1ce37457eaa2c44be887e8c00586` |
| 39 | `def` | [Trident.IsLimit.homIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersNamespacedAligned.lean/declarations/trident-islimit-homiso.md) | 394 | `declaration-track:107282c0bedd4c87de7a8b29b10f399e6db7990734a774fd3bdcb51e321b49bd` |
| 40 | `theorem` | [Trident.IsLimit.homIso_natural](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersNamespacedAligned.lean/declarations/trident-islimit-homiso-natural.md) | 403 | `result-track:a9e1d36e6d56bd96cc6c96ffaa6a962a086c9f673b85a2bee59ff3de09c8fb97` |
| 41 | `def` | [Cotrident.IsColimit.homIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersNamespacedAligned.lean/declarations/cotrident-iscolimit-homiso.md) | 418 | `declaration-track:97bf4a7654bbdcd193c3430110f91f2f3bb8f2e7aa47238911928fa425e03863` |
| 42 | `theorem` | [Cotrident.IsColimit.homIso_natural](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersNamespacedAligned.lean/declarations/cotrident-iscolimit-homiso-natural.md) | 429 | `result-track:f263ceea938ddfaf098fac39cc318d5e84619fc82f9f222a0b54856cb35e65ec` |
| 43 | `def` | [Cone.ofTrident](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersNamespacedAligned.lean/declarations/cone-oftrident-source-edition-2.md) | 446 | `declaration-track:6b91b4b92ea9e56be47539aa36120ea24a6e1ea1b743ca69e3f6a5fc05607a27` |
| 44 | `def` | [Cocone.ofCotrident](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersNamespacedAligned.lean/declarations/cocone-ofcotrident.md) | 462 | `declaration-track:6672b5761d31ce03f54700bed2317fc2b4a783d9eace02328aec479a5eb28ec8` |
| 45 | `theorem` | [Cone.ofTrident_π](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersNamespacedAligned.lean/declarations/cone-oftrident.md) | 471 | `result-track:5fbc4ae6f61c57e828e80c37f2d3f7aa339dca166bc755ddb65c34f594523963` |
| 46 | `theorem` | [Cocone.ofCotrident_ι](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersNamespacedAligned.lean/declarations/cocone-ofcotrident-source-edition-2.md) | 477 | `result-track:f2a9f2fa641e760a3daf2a3f22accc339ed034bf53a43e16b656a1215716f97f` |
| 47 | `def` | [Trident.ofCone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersNamespacedAligned.lean/declarations/trident-ofcone-source-edition-2.md) | 486 | `declaration-track:7670b3334287a6ddbe550f49fd62a4e8dedddc43fffa5fb8516c2a119f4eebbf` |
| 48 | `def` | [Cotrident.ofCocone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersNamespacedAligned.lean/declarations/cotrident-ofcocone-source-edition-2.md) | 497 | `declaration-track:e94d12fc4c19b3d32a778cbb2c0c8c2ac5aed491e51a1fd4f7470c6e1c6ffb1b` |
| 49 | `theorem` | [Trident.ofCone_π](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersNamespacedAligned.lean/declarations/trident-ofcone.md) | 506 | `result-track:73eadfc21ec128017fa5660b7ff68bf773676aa74b93285b15bc1f2b7c18e0a3` |
| 50 | `theorem` | [Cotrident.ofCocone_ι](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersNamespacedAligned.lean/declarations/cotrident-ofcocone.md) | 512 | `result-track:a6ecd2d5553e70e28301d7f4746a22ef1ca843747b8c7d056fb4da09b4dc4bcd` |
| 51 | `def` | [Trident.mkHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersNamespacedAligned.lean/declarations/trident-mkhom.md) | 520 | `declaration-track:6f088f866ecd6ebd8e7464ee669f29feffb8d582f7c41cebef3815bffbb6c640` |
| 52 | `def` | [Trident.ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersNamespacedAligned.lean/declarations/trident-ext.md) | 534 | `declaration-track:97faadc116db3e31ded97e9fb30a69d4d70d15135329adf1feb0cd80a6a2bcfb` |
| 53 | `def` | [Cotrident.mkHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersNamespacedAligned.lean/declarations/cotrident-mkhom.md) | 543 | `declaration-track:006c62a1dc779a525b137e3763ed32796bf7a08c6d4f8f6892e892d43e5846ec` |
| 54 | `def` | [Cotrident.ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersNamespacedAligned.lean/declarations/cotrident-ext.md) | 556 | `declaration-track:71fd44c68f966ed661ba7a1dba198348ff63dc15c742cc5a3d16569c4ddfc91f` |
| 55 | `abbrev` | [HasWideEqualizer](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersNamespacedAligned.lean/declarations/haswideequalizer.md) | 570 | `declaration-track:ca9177dbd7a1224ef4cfe3d9fe10ada08abab4211371227e6ac92834a635ccab` |
| 56 | `abbrev` | [wideEqualizer](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersNamespacedAligned.lean/declarations/wideequalizer.md) | 578 | `declaration-track:59f65bc54c92f85d56708c56df21a4e4d08f2663c6873138dee153670b7df334` |
| 57 | `abbrev` | [wideEqualizer.ι](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersNamespacedAligned.lean/declarations/wideequalizer-source-edition-2.md) | 584 | `declaration-track:65898140123e389ad6f2d428ccf83f1c323e0dc51dfe1600b0bc94cef9d4220d` |
| 58 | `abbrev` | [wideEqualizer.trident](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersNamespacedAligned.lean/declarations/wideequalizer-trident.md) | 590 | `declaration-track:39e1bdb254ea3b8520616b73c0b0350aa83ae96d2a257757eaaede1640dc81a7` |
| 59 | `theorem` | [wideEqualizer.trident_ι](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersNamespacedAligned.lean/declarations/wideequalizer-trident-source-edition-2.md) | 595 | `result-track:8ed15184921c76261c102fca21ed895ad329e2b86aa2a4f5d2264d561eae1b0f` |
| 60 | `theorem` | [wideEqualizer.trident_π_app_zero](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersNamespacedAligned.lean/declarations/wideequalizer-trident-app-zero.md) | 600 | `result-track:352eecffe67c459051e5ee8723085574ec2cefc25950e049928e327f6f48b31f` |
| 61 | `theorem` | [wideEqualizer.condition](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersNamespacedAligned.lean/declarations/wideequalizer-condition.md) | 608 | `result-track:b6a57785810369c57e82f1a83bcea23e869107ad8115ab36860a9a12f0007f3d` |
| 62 | `def` | [wideEqualizerIsWideEqualizer](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersNamespacedAligned.lean/declarations/wideequalizeriswideequalizer.md) | 613 | `declaration-track:48381a3140aca9818836acad2853ba06618583f5593ced02a35c759909b92cf2` |
| 63 | `abbrev` | [wideEqualizer.lift](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersNamespacedAligned.lean/declarations/wideequalizer-lift-source-edition-2.md) | 624 | `declaration-track:399201165ff5c2319b8f214787d2af6fa63d1a4b83415c57d394bac0c512d824` |
| 64 | `theorem` | [wideEqualizer.lift_ι](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersNamespacedAligned.lean/declarations/wideequalizer-lift.md) | 630 | `result-track:00fe112ae693b35c815f7399960a965f481eb4551cc964cc12bf9897f835c91a` |
| 65 | `def` | [wideEqualizer.lift'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersNamespacedAligned.lean/declarations/wideequalizer-lift-source-edition-3.md) | 638 | `declaration-track:8b57a1f3ea5f987a43df0aae2387af2467e744d8125f8cd6386c5ab7bd623bf0` |
| 66 | `theorem` | [wideEqualizer.hom_ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersNamespacedAligned.lean/declarations/wideequalizer-hom-ext.md) | 646 | `result-track:893b1703cccbacbb884b9a8230be21dc26da4d25a15d80b989142c223718bc16` |
| 67 | `instance` | [wideEqualizer.ι_mono](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersNamespacedAligned.lean/declarations/wideequalizer-mono.md) | 652 | `declaration-track:dbc957a51234e822ab3bfb7b6b490fde3244a77c5f9d8e9b1364fea88a508d02` |
| 68 | `theorem` | [mono_of_isLimit_parallelFamily](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersNamespacedAligned.lean/declarations/mono-of-islimit-parallelfamily.md) | 663 | `result-track:b898ce573586b683e99904484fb6a43027ba603ce6186c70818e96824ce6ccf6` |
| 69 | `abbrev` | [HasWideCoequalizer](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersNamespacedAligned.lean/declarations/haswidecoequalizer.md) | 677 | `declaration-track:7e0afd756f50c473dcaaff3fb98a186e1ae20d5828e7e8bd139219c68ae01b15` |
| 70 | `abbrev` | [wideCoequalizer](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersNamespacedAligned.lean/declarations/widecoequalizer.md) | 685 | `declaration-track:1b9d85e298de8c59b78b65a0be5ea5ff42e8298d8dd0b996516f536afb058024` |
| 71 | `abbrev` | [wideCoequalizer.π](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersNamespacedAligned.lean/declarations/widecoequalizer-source-edition-2.md) | 691 | `declaration-track:3b155f91eebf3b977c85a548384df73e6b3241b3a1bef1aaa1acfbab762032ae` |
| 72 | `abbrev` | [wideCoequalizer.cotrident](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersNamespacedAligned.lean/declarations/widecoequalizer-cotrident-source-edition-2.md) | 697 | `declaration-track:da30e09f671efe4b0fd6f0be84664fffcd22a392f8d06e4868486797954f2197` |
| 73 | `theorem` | [wideCoequalizer.cotrident_π](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersNamespacedAligned.lean/declarations/widecoequalizer-cotrident.md) | 704 | `result-track:a8b36cfaa00d89fa32373ecee1ce96a327d24da2db5cf3ba61c5c8883cf2dc0d` |
| 74 | `theorem` | [wideCoequalizer.cotrident_ι_app_one](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersNamespacedAligned.lean/declarations/widecoequalizer-cotrident-app-one.md) | 711 | `result-track:7a5700a77926da822b12440fe9c74839d8208111bd8b0cec0a170ee774828e9a` |
| 75 | `theorem` | [wideCoequalizer.condition](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersNamespacedAligned.lean/declarations/widecoequalizer-condition.md) | 719 | `result-track:a534fe7b3852bc97a9126b12b38ffde00293cbb47d82f503dfee8f04442d3772` |
| 76 | `def` | [wideCoequalizerIsWideCoequalizer](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersNamespacedAligned.lean/declarations/widecoequalizeriswidecoequalizer.md) | 727 | `declaration-track:782e47a15c6b2007fb770992d9e34b015e0f61b87df040aee5639c651cba4d96` |
| 77 | `abbrev` | [wideCoequalizer.desc](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersNamespacedAligned.lean/declarations/widecoequalizer-desc.md) | 738 | `declaration-track:21ad5acb9d3c1b580370ff37a2365dd5af204d26f8bfdf863deb6db1cfa6674d` |
| 78 | `theorem` | [wideCoequalizer.π_desc](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersNamespacedAligned.lean/declarations/widecoequalizer-desc-source-edition-3.md) | 744 | `result-track:f4b7600eee96e59407680e87159a0a5bd7ca92cbc4f64e9b5da4b239a0086489` |
| 79 | `def` | [wideCoequalizer.desc'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersNamespacedAligned.lean/declarations/widecoequalizer-desc-source-edition-2.md) | 752 | `declaration-track:5c3614caa3c11553da1b99450b6870fcc4c32d946b50a8da12d237d95bdab838` |
| 80 | `theorem` | [wideCoequalizer.hom_ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersNamespacedAligned.lean/declarations/widecoequalizer-hom-ext.md) | 760 | `result-track:0baf5386638c715e100c286ba8c11e538a72cfdb0403128e261fe59f1aff508d` |
| 81 | `instance` | [wideCoequalizer.π_epi](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersNamespacedAligned.lean/declarations/widecoequalizer-epi.md) | 766 | `declaration-track:a25ccf4722ef4d70b022af06212a8edcb0679231578bbac61b992b12929f3e75` |
| 82 | `theorem` | [epi_of_isColimit_parallelFamily](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersNamespacedAligned.lean/declarations/epi-of-iscolimit-parallelfamily.md) | 777 | `result-track:614aaa002f79887367faaf72d9df7305c59c8cccef4d8327153e777d3f6b7cf7` |
| 83 | `abbrev` | [HasWideEqualizers](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersNamespacedAligned.lean/declarations/haswideequalizers.md) | 789 | `declaration-track:bfaedd76f19a472d25ea43857d59e62cb15a27dd79e99eeab7d176075760d50a` |
| 84 | `abbrev` | [HasWideCoequalizers](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersNamespacedAligned.lean/declarations/haswidecoequalizers.md) | 794 | `declaration-track:4d0b05342800c943fb755ddc1b0ae3f476da491d266601061a8b342bb2166073` |
| 85 | `theorem` | [hasWideEqualizers_of_hasLimit_parallelFamily](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersNamespacedAligned.lean/declarations/haswideequalizers-of-haslimit-parallelfamily.md) | 799 | `result-track:e3ea686bf253d769375654f227d28063995edbfebb5e9ef9ba9a12a885bf29e5` |
| 86 | `theorem` | [hasWideCoequalizers_of_hasColimit_parallelFamily](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersNamespacedAligned.lean/declarations/haswidecoequalizers-of-hascolimit-parallelfamily.md) | 808 | `result-track:cb035a907784e0e6b5099856ed1d7656bf68e2701aebd599766df59d7bcc96a5` |
| 87 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersNamespacedAligned.lean/declarations/instance-source-edition-2.md) | 816 | `declaration-track:2c6943df9955c581767f5f12f01dff8abe09001bc1d029eed01d87848f8e427f` |
| 88 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersNamespacedAligned.lean/declarations/instance-source-edition-4.md) | 823 | `declaration-track:ba7e6ccc984760d82ef320660a1cf914531a1e1e5fea704768be60d914bbceab` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6dc8dff782971040f1e408f2eb5b6064befa1dab7cf6cc800bab9ca75c4991a3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/WideEqualizers/Variant077a96bd4acca38224d8794788525df9bbdc8e1dea0bf14e6173393e1b15c945.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/WideEqualizers/Variant077a96bd4acca38224d8794788525df9bbdc8e1dea0bf14e6173393e1b15c945.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
