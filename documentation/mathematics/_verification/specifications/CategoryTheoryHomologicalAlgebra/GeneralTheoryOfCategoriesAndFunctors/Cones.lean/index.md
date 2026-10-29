# Verification target: Cones

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2336d0efb66a3a1c205eefef1e14299a139b6924",
  "lexical_observation_count": 98,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Cones/Variantc4d7ae447d57b1f1eb23af7861a46934c8d752e74b6cc32c44b00876443726a8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cones.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cones.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2336d0efb66a3a1c205eefef1e14299a139b6924`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Cones/Variantc4d7ae447d57b1f1eb23af7861a46934c8d752e74b6cc32c44b00876443726a8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Cones/Variantc4d7ae447d57b1f1eb23af7861a46934c8d752e74b6cc32c44b00876443726a8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Functor.Const` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.DiscreteCategory` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Yoneda` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Functor.ReflectsIso` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cones](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cones.lean/declarations/cones-source-edition-2.md) | 71 | `declaration-track:9e6d9387d8a3d6c0ebf451d7c12aa4f37e2d0591eb4c80fc157e8fa2de931ddb` |
| 2 | `def` | [cocones](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cones.lean/declarations/cocones-source-edition-2.md) | 80 | `declaration-track:b075a4ad6ed574e3a925f347025fe75a72a90d0c0a43a318e91064df830a6397` |
| 3 | `def` | [cones](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cones.lean/declarations/cones.md) | 94 | `declaration-track:0ead5868d2e61c4e6f1f2248d9def8d1bee51c8e27ee88025efc8543af38ed37` |
| 4 | `def` | [cocones](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cones.lean/declarations/cocones.md) | 103 | `declaration-track:528d5d5cce11d5ac9008f18c39626945cb797dbf06858f9710b1abac1e63c881` |
| 5 | `structure` | [Cone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cones.lean/declarations/cone.md) | 124 | `declaration-track:ff37c87027eab6d468a2e6efe209eadbb6d06e2d3638430d4f17ca4fa4ab110a` |
| 6 | `instance` | [inhabitedCone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cones.lean/declarations/inhabitedcone.md) | 133 | `declaration-track:d2042a9852a5aa2930513250cefd3810a97bdbb00399b30a93e30b222be7f1ab` |
| 7 | `theorem` | [Cone.w](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cones.lean/declarations/cone-w.md) | 146 | `result-track:c20ef57337593c4a39b19823c090c70bd788dc73439e72260f35aa3f10839a8e` |
| 8 | `structure` | [Cocone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cones.lean/declarations/cocone.md) | 162 | `declaration-track:952b9b5f9f2dff3e5d76d55c88281f9d9cac5bf205f9022d638ef3f022c2c815` |
| 9 | `instance` | [inhabitedCocone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cones.lean/declarations/inhabitedcocone.md) | 171 | `declaration-track:34700fc1b71ab285057d7d5c36dbc5b19ba36bd59cc3525c37e02809054c3ca3` |
| 10 | `theorem` | [Cocone.w](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cones.lean/declarations/cocone-w.md) | 184 | `result-track:85d03eaf2d1d6a8a8463be46f04cf2bb06782a9d72fd32c75664bc772c444d0d` |
| 11 | `def` | [equiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cones.lean/declarations/equiv-source-edition-2.md) | 200 | `declaration-track:f22ec816343007128f8c5fcfc85ac6c65885235cfdf94cfc390e3b9caa2c88a1` |
| 12 | `def` | [extensions](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cones.lean/declarations/extensions-source-edition-2.md) | 217 | `declaration-track:e43d59e321fd7c449c964adb93ad90dbf67aeefbc7223fd7973a39cb20a3b081` |
| 13 | `def` | [extend](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cones.lean/declarations/extend-source-edition-2.md) | 223 | `declaration-track:8ad6074974fd65de1e1e4e1890e567f1f522095810f018274a0e625a46b0424d` |
| 14 | `def` | [whisker](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cones.lean/declarations/whisker.md) | 230 | `declaration-track:9dbc327ce0a4573ea1fa5394e1db5723136c61bc5ee344ea0c446e18ca185bb4` |
| 15 | `def` | [equiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cones.lean/declarations/equiv.md) | 240 | `declaration-track:8a77c1eef8859acc735ea9e6be29f47facd2d223f239c5f358534f82373c0e91` |
| 16 | `def` | [extensions](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cones.lean/declarations/extensions.md) | 257 | `declaration-track:e10ae9d188ca21efdd7f3425468fd343716f2fe61c6278ce9a569210bee16404` |
| 17 | `def` | [extend](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cones.lean/declarations/extend.md) | 263 | `declaration-track:0f734f5e37b275901894ce777819638a01f191f8f0c2b55b15336d5199df61c4` |
| 18 | `def` | [whisker](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cones.lean/declarations/whisker-source-edition-2.md) | 272 | `declaration-track:b185256bd4e3f824d86c703bb17e0ff1dc30d37bbed3524a23125d135b951ea5` |
| 19 | `structure` | [ConeMorphism](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cones.lean/declarations/conemorphism.md) | 281 | `declaration-track:053272e00f02f594e15527b060af8a44bb92ba211f5d839c4088ecd4990e1199` |
| 20 | `instance` | [inhabitedConeMorphism](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cones.lean/declarations/inhabitedconemorphism.md) | 291 | `declaration-track:60d487be6629690b983f63642eb022748e50e30c1a1f518a6f88880bc3d0f845` |
| 21 | `instance` | [Cone.category](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cones.lean/declarations/cone-category.md) | 297 | `declaration-track:ecbc7bada204b7a544be73dfc0c066377dbf923ab7211f00f4c0a77d3d49fe62` |
| 22 | `theorem` | [ConeMorphism.ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cones.lean/declarations/conemorphism-ext.md) | 307 | `result-track:1393c5b46b9d15846848ef5c99e6579f711dc20889b53bb87d3d98d6849daae0` |
| 23 | `def` | [ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cones.lean/declarations/ext-source-edition-2.md) | 319 | `declaration-track:f261f46524c9b33a5a6ee6897b3244ce976d55c2068a2ba590a2dac8d44c5cb2` |
| 24 | `def` | [eta](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cones.lean/declarations/eta-source-edition-2.md) | 329 | `declaration-track:c61f6fe2dfcc8a73e114c84f25dc2d6b0f1585a549be34ffdd1e6f46980de683` |
| 25 | `theorem` | [cone_iso_of_hom_iso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cones.lean/declarations/cone-iso-of-hom-iso.md) | 336 | `result-track:3ff345988eb0c3d387c1d47e835bbebd05b3eaee1203e63022c104536c031e49` |
| 26 | `def` | [postcompose](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cones.lean/declarations/postcompose.md) | 345 | `declaration-track:2906f5b7b4182afe951190572e3b3422f14b11234c9732bf8571031297158ca3` |
| 27 | `def` | [postcomposeComp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cones.lean/declarations/postcomposecomp.md) | 355 | `declaration-track:744a673f45a16c4341d43438778e6b3cdf5b0b89d7376d635496f4b4ef903a9e` |
| 28 | `def` | [postcomposeId](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cones.lean/declarations/postcomposeid.md) | 362 | `declaration-track:861a63523f83f389466352932b650e3a487ffe87aec04f9d86e2def814562965` |
| 29 | `def` | [postcomposeEquivalence](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cones.lean/declarations/postcomposeequivalence.md) | 370 | `declaration-track:540877933a5fd8a29347e17db85e05cfb8932b562404509f586fe17beebb089e` |
| 30 | `def` | [whiskering](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cones.lean/declarations/whiskering-source-edition-2.md) | 380 | `declaration-track:631277caf6b51f0d22d35275f75036aa0d19cc7827d92c304aae11aa2e5e2b66` |
| 31 | `def` | [whiskeringEquivalence](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cones.lean/declarations/whiskeringequivalence.md) | 388 | `declaration-track:e9898107a191f5be330e5ea77b06f8f9eb8e6b0a60a3c8fc050f18643f5e11d2` |
| 32 | `def` | [equivalenceOfReindexing](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cones.lean/declarations/equivalenceofreindexing-source-edition-2.md) | 405 | `declaration-track:57355a82d209bf6b44e84d4b05d1e414845e226b29bf6b1015fff7ea9407a3b8` |
| 33 | `def` | [forget](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cones.lean/declarations/forget.md) | 415 | `declaration-track:9905da3bec40a313eb37b3d64fc64a0bc50f9981ab5329111150191726615a2a` |
| 34 | `def` | [functoriality](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cones.lean/declarations/functoriality-source-edition-2.md) | 424 | `declaration-track:239035a07153371b22c427217d2956b3818d1927889b1c3b15ab2b14d8a122e6` |
| 35 | `instance` | [functorialityFull](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cones.lean/declarations/functorialityfull.md) | 435 | `declaration-track:a3229ab4e44d57e400516396a1cf9ad74cb476389f58439b7583409123c60229` |
| 36 | `instance` | [functorialityFaithful](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cones.lean/declarations/functorialityfaithful.md) | 441 | `declaration-track:0bcc2bfc3ab061598034a533698d203b9527227e612a8a707fef6db2dce167cf` |
| 37 | `def` | [functorialityEquivalence](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cones.lean/declarations/functorialityequivalence-source-edition-2.md) | 452 | `declaration-track:e9c9795745a8717d6589e5765cc6208788a3fb19eab1390912dbcc46cfae42d4` |
| 38 | `instance` | [reflects_cone_isomorphism](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cones.lean/declarations/reflects-cone-isomorphism.md) | 465 | `declaration-track:3174cd12d1ca19246272d861745dd909f571a09a6047ad2bb33274cec89f07a8` |
| 39 | `structure` | [CoconeMorphism](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cones.lean/declarations/coconemorphism.md) | 481 | `declaration-track:e7cd13b429d8fd1271cf1031485ec03dd47ef2e07650c09c585442c2dbd24431` |
| 40 | `instance` | [inhabitedCoconeMorphism](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cones.lean/declarations/inhabitedcoconemorphism.md) | 489 | `declaration-track:69ca16dd00a5ec02ca4f7651b3a3c00db3b4cd4062d3e04e182f3b4fe41f3182` |
| 41 | `instance` | [Cocone.category](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cones.lean/declarations/cocone-category.md) | 496 | `declaration-track:10f8de8fbf00e4d560f25382285320a8a5d7d7f1a9751016bad5634700af6d23` |
| 42 | `theorem` | [CoconeMorphism.ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cones.lean/declarations/coconemorphism-ext.md) | 506 | `result-track:67f024032c2dc0caaaafabfbdfd66898b018455c7fb6e13944acd4b47da21cef` |
| 43 | `def` | [ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cones.lean/declarations/ext.md) | 518 | `declaration-track:9a8bccaa98f04b07b6f9518920faf92b4af89b8ef4331d618ffede30c88220a2` |
| 44 | `def` | [eta](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cones.lean/declarations/eta.md) | 528 | `declaration-track:72abf2314e47ab61e14a2521f67ee22c7c6f7c98fdc21d6c5201a7ca9b1d74cf` |
| 45 | `theorem` | [cocone_iso_of_hom_iso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cones.lean/declarations/cocone-iso-of-hom-iso.md) | 535 | `result-track:4c9082db7404f6c3b6c8602a1c5615fa33d410269234e1a13c35150118cb4ee8` |
| 46 | `def` | [precompose](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cones.lean/declarations/precompose.md) | 544 | `declaration-track:a7239fcc4bc0a0699399890ef8489db5a6341025cfbab79e254013da3b028008` |
| 47 | `def` | [precomposeComp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cones.lean/declarations/precomposecomp.md) | 553 | `declaration-track:8ed0480907992d25228d194d8191d2d195b3831930a82f4be78649b51c7684b4` |
| 48 | `def` | [precomposeId](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cones.lean/declarations/precomposeid.md) | 559 | `declaration-track:143ff578e1613c34216161c554fbf4a079b9cddc01d44b39e3b0c146252dd952` |
| 49 | `def` | [precomposeEquivalence](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cones.lean/declarations/precomposeequivalence.md) | 567 | `declaration-track:fd00d0368955c03ba2ef828fab7e01474340a1a861d86774096bd6f8442eb81c` |
| 50 | `def` | [whiskering](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cones.lean/declarations/whiskering.md) | 577 | `declaration-track:1e92e03650164b1ca25ff521893b519c679b2581a91c17569e145b2585a19ba9` |
| 51 | `def` | [whiskeringEquivalence](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cones.lean/declarations/whiskeringequivalence-source-edition-2.md) | 585 | `declaration-track:f455e8db236e865a70c982fdcd43d4d7353e60097c48bfd0357feaa2635af90c` |
| 52 | `def` | [equivalenceOfReindexing](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cones.lean/declarations/equivalenceofreindexing.md) | 602 | `declaration-track:4b26736c544736e347997164888da96e454a4c01fede852ac73aa1be817f6f98` |
| 53 | `def` | [forget](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cones.lean/declarations/forget-source-edition-2.md) | 612 | `declaration-track:db5dae035a25804ad1978ba5b8735e166ab7b537b33b812bde8cf952081d8672` |
| 54 | `def` | [functoriality](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cones.lean/declarations/functoriality.md) | 621 | `declaration-track:16d7ecc8e7dae6df2005e5dcd504c378c693bec6b82198854e8059827be74e0c` |
| 55 | `instance` | [functorialityFull](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cones.lean/declarations/functorialityfull-source-edition-2.md) | 632 | `declaration-track:ca21e9b77e50139a9497e72af8d4573cd84c7995146100e1ca8c468ba8d240c2` |
| 56 | `instance` | [functoriality_faithful](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cones.lean/declarations/functoriality-faithful.md) | 638 | `declaration-track:c8577d7f412b5e0bb04982a9af92f9758c911384a3e367f3d13a4efea7357f4e` |
| 57 | `def` | [functorialityEquivalence](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cones.lean/declarations/functorialityequivalence.md) | 649 | `declaration-track:795f09de7a3cd9ce2f2d61cc9857d2e6a159ebb4358618024aedb0d2b0385675` |
| 58 | `instance` | [reflects_cocone_isomorphism](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cones.lean/declarations/reflects-cocone-isomorphism.md) | 666 | `declaration-track:fb61b396b02dc3ce9ce4704b6fa463ec445b80c28c77a68f9ae1db5c34561d13` |
| 59 | `def` | [mapCone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cones.lean/declarations/mapcone.md) | 690 | `declaration-track:41e1f5a37a18f4a8113baea72074ffdba9080bc3f2b2c99f8b9dfc083a73190e` |
| 60 | `def` | [mapCocone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cones.lean/declarations/mapcocone.md) | 696 | `declaration-track:11356a8ec7b01f0bc37ea5dc09f96c95eb08ff98d96a5e7fd0f4bec03f8bc14e` |
| 61 | `def` | [mapConeMorphism](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cones.lean/declarations/mapconemorphism.md) | 701 | `declaration-track:fa673c520e4f580e9da7131003b072771beab50890c38c0efc9fe3b1aa1a3e03` |
| 62 | `def` | [mapCoconeMorphism](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cones.lean/declarations/mapcoconemorphism.md) | 707 | `declaration-track:d0142d0962f3ab6fede8230fc8bfd61115433e2ecf2479fd83b1de557da99387` |
| 63 | `def` | [mapConeInv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cones.lean/declarations/mapconeinv.md) | 713 | `declaration-track:cf0c923bd45ba28170c1e23abebf2948139e2c1568ac6869ae401d0bbbc5374b` |
| 64 | `def` | [mapConeMapConeInv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cones.lean/declarations/mapconemapconeinv.md) | 718 | `declaration-track:79e64c9368ac582f294930596641759cae859b98dcccabecdeb751dcbbebc153` |
| 65 | `def` | [mapConeInvMapCone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cones.lean/declarations/mapconeinvmapcone.md) | 724 | `declaration-track:1f0ecf391a2b178c0af15462ebeceaa7910eae70a012a7f2fd65b35c0d4cc1b2` |
| 66 | `def` | [mapCoconeInv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cones.lean/declarations/mapcoconeinv.md) | 731 | `declaration-track:0e372a42c22799838120bd7b50f8859b5ded9d67a9f44b440b56d701fe2294e7` |
| 67 | `def` | [mapCoconeMapCoconeInv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cones.lean/declarations/mapcoconemapcoconeinv.md) | 736 | `declaration-track:102a2aeef80796cf9db0b8663b1827efbd5cc4fe9175a501b80b2458700a6156` |
| 68 | `def` | [mapCoconeInvMapCocone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cones.lean/declarations/mapcoconeinvmapcocone.md) | 742 | `declaration-track:1aff8ad33d512f0eabf1a102ef00809bd9987513999c4b23c9fc53b035a33230` |
| 69 | `def` | [functorialityCompPostcompose](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cones.lean/declarations/functorialitycomppostcompose.md) | 749 | `declaration-track:8ad898698a8fbc34ef5197ec9d28f795250b87d42247bcbc5fd9372f25ebcdeb` |
| 70 | `def` | [postcomposeWhiskerLeftMapCone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cones.lean/declarations/postcomposewhiskerleftmapcone.md) | 759 | `declaration-track:557aa0b9f3ef4effaf54c51bc69b7fae99cea83d3889b79960ca8e598cb38c18` |
| 71 | `def` | [mapConePostcompose](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cones.lean/declarations/mapconepostcompose.md) | 770 | `declaration-track:d5e03e6ccc67d150b6474777ad0c48d8b80e676cf1f5bfc97279576f1fac9801` |
| 72 | `def` | [mapConePostcomposeEquivalenceFunctor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cones.lean/declarations/mapconepostcomposeequivalencefunctor.md) | 779 | `declaration-track:7b2b9eabf9d1669d1c0c9d9412198da46c5ddc819b0f4c81406ba126ca4ba9a4` |
| 73 | `def` | [functorialityCompPrecompose](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cones.lean/declarations/functorialitycompprecompose.md) | 787 | `declaration-track:c2a12a2ade10b688eed7ee5927cdf6fa26e28c28ee5cf73c6214252f2653984f` |
| 74 | `def` | [precomposeWhiskerLeftMapCocone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cones.lean/declarations/precomposewhiskerleftmapcocone.md) | 799 | `declaration-track:94ea6b1b5f7ada9bf6ce0fbbb8e627a81b3922a79d8d6edcfe6cc2d2615f8e8c` |
| 75 | `def` | [mapCoconePrecompose](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cones.lean/declarations/mapcoconeprecompose.md) | 809 | `declaration-track:3380b98f26dc0c938743817106ad817aedf62b452dc292f0be20863053a12e71` |
| 76 | `def` | [mapCoconePrecomposeEquivalenceFunctor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cones.lean/declarations/mapcoconeprecomposeequivalencefunctor.md) | 818 | `declaration-track:e929ca512e92acf89457d35e2b1af155628318740337f3676b47e03a0ff8e456` |
| 77 | `def` | [mapConeWhisker](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cones.lean/declarations/mapconewhisker.md) | 827 | `declaration-track:ca05b860b39d5c0b8eac81c7d31b73b9e4cb40a7fc33c41cb471b906fb4b93f0` |
| 78 | `def` | [mapCoconeWhisker](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cones.lean/declarations/mapcoconewhisker.md) | 834 | `declaration-track:8f41eb0ba826e2e94dda812bff6d1727ca08607c5b11d12bd387d2e913071fc1` |
| 79 | `def` | [Cocone.op](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cones.lean/declarations/cocone-op.md) | 851 | `declaration-track:33eddab5b041449cec6409a6eefd963c22e5cdf8cdbbf149bdd26607399a16cc` |
| 80 | `def` | [Cone.op](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cones.lean/declarations/cone-op.md) | 858 | `declaration-track:a7742f4420d2576f0030cd62714fab48e8bd456afc4e431f95979dc8ba150053` |
| 81 | `def` | [Cocone.unop](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cones.lean/declarations/cocone-unop.md) | 865 | `declaration-track:383c4ac11b0d428c1866ec3a534a10bf0aecba1a608c2f9c3919f222455afaf2` |
| 82 | `def` | [Cone.unop](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cones.lean/declarations/cone-unop.md) | 872 | `declaration-track:45f78549dfc7998f6a49d38fd7e75b4c927f3b5298f08817ac3259fe20cc7206` |
| 83 | `def` | [coconeEquivalenceOpConeOp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cones.lean/declarations/coconeequivalenceopconeop.md) | 883 | `declaration-track:8f89d178d9e7f3ead39ab7f19122565bec87479a92785b44784ea0ba33d23aea` |
| 84 | `def` | [coneOfCoconeLeftOp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cones.lean/declarations/coneofcoconeleftop.md) | 927 | `declaration-track:20626f74778d8869c9917f7f4fe3116e15c19f834abab567aec8bf3567088f80` |
| 85 | `def` | [coconeLeftOpOfCone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cones.lean/declarations/coconeleftopofcone.md) | 934 | `declaration-track:8cb3550c3baaff60e472a9fc910509aa0593ad2cdbf2f2dd81b8b39800442659` |
| 86 | `def` | [coconeOfConeLeftOp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cones.lean/declarations/coconeofconeleftop.md) | 944 | `declaration-track:338cdc32bd1e7c6ccbc8efc3eb48198556342e72794d43eb432b0c16a76baaf9` |
| 87 | `theorem` | [coconeOfConeLeftOp_ι_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cones.lean/declarations/coconeofconeleftop-app.md) | 950 | `result-track:29939a733b3b80609059561e3a3c011e514d6b7544a924f432083b02bbf8b728` |
| 88 | `def` | [coneLeftOpOfCocone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cones.lean/declarations/coneleftopofcocone.md) | 958 | `declaration-track:fc293bfd3b05396a007202ee441adaede3b83bf9f603d58c99e50605573e79e4` |
| 89 | `def` | [coneOfCoconeRightOp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cones.lean/declarations/coneofcoconerightop.md) | 971 | `declaration-track:eaf215843889e68a0497096079e102e32dc3b9d29012793c986be23f299fa0f6` |
| 90 | `def` | [coconeRightOpOfCone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cones.lean/declarations/coconerightopofcone.md) | 978 | `declaration-track:e3d92fb77e13e8cca51abc08984ebee404a1a3dd8c989c95f8c3b09b6a14c661` |
| 91 | `def` | [coconeOfConeRightOp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cones.lean/declarations/coconeofconerightop.md) | 985 | `declaration-track:f6a281e2e1b0b3717902ad3fa8b55c834f301da78cf71d6f5e16893bc922d50d` |
| 92 | `def` | [coneRightOpOfCocone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cones.lean/declarations/conerightopofcocone.md) | 992 | `declaration-track:6afadc9a999ee46b789e5fb73752752c7cf52e84f0ca8e89d88359c146925d8d` |
| 93 | `def` | [coneOfCoconeUnop](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cones.lean/declarations/coneofcoconeunop.md) | 1005 | `declaration-track:e5ad1d2f2d36fe5403bde268611acf22e7cd18d3b2c154060d7080c61713a804` |
| 94 | `def` | [coconeUnopOfCone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cones.lean/declarations/coconeunopofcone.md) | 1012 | `declaration-track:a80d07d0e8ef22b4e1562bb2dfff574efed2cb872636089ae40131e9dcb5b300` |
| 95 | `def` | [coconeOfConeUnop](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cones.lean/declarations/coconeofconeunop.md) | 1019 | `declaration-track:f1a45e59220c605e11f4097b3000db8a84df25b1229465db8cc7f779f20dd571` |
| 96 | `def` | [coneUnopOfCocone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cones.lean/declarations/coneunopofcocone.md) | 1026 | `declaration-track:f7088decb517efc40e94b179d3f92ad8f0f286433883b5e09dbb6ba5636870fd` |
| 97 | `def` | [mapConeOp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cones.lean/declarations/mapconeop.md) | 1048 | `declaration-track:5eef3c351d7d54d4e7f948739b71ae82a80d2a01d2cb9133bb05a0b403d3db4b` |
| 98 | `def` | [mapCoconeOp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cones.lean/declarations/mapcoconeop.md) | 1055 | `declaration-track:39b553f01b60b8129061fbce078f5928b0e01a526e06e6fc83de223cd8e51c9b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0cdb48eba90713ec85ba48b309e6c3e54a2ce70c8ac926a7b46699e5927bda1b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Cones/Variantc4d7ae447d57b1f1eb23af7861a46934c8d752e74b6cc32c44b00876443726a8.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Cones/Variantc4d7ae447d57b1f1eb23af7861a46934c8d752e74b6cc32c44b00876443726a8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
