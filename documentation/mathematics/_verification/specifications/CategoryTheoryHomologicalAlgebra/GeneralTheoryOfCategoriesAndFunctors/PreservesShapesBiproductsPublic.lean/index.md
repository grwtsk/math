# Verification target: Preserves Shapes Biproducts Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0590c7e2e0c984ae90b986b887d4392f13fea076",
  "lexical_observation_count": 51,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variantb8dc8e1c1e91ca81c73e84f908bb7023910353e8ff0ce9c96f7a8338c5659c26.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesBiproductsPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesBiproductsPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0590c7e2e0c984ae90b986b887d4392f13fea076`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variantb8dc8e1c1e91ca81c73e84f908bb7023910353e8ff0ce9c96f7a8338c5659c26.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variantb8dc8e1c1e91ca81c73e84f908bb7023910353e8ff0ce9c96f7a8338c5659c26.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mapBicone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesBiproductsPublic.lean/declarations/mapbicone.md) | 56 | `declaration-track:c8c689cef7cdbb51d1bdf52f1b01cfbfd5b2b7dd34510d65da10e98d011f7c77` |
| 2 | `theorem` | [mapBicone_whisker](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesBiproductsPublic.lean/declarations/mapbicone-whisker.md) | 67 | `result-track:659dff57fe6f71e6c9aaf8eb51423490bccb7a6352864f925349457bba3e83cc` |
| 3 | `def` | [mapBinaryBicone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesBiproductsPublic.lean/declarations/mapbinarybicone.md) | 75 | `declaration-track:90f9715766227c480e3dbb636674266e56c90d0ac55befc21eb4a2c764965610` |
| 4 | `class` | [PreservesBiproduct](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesBiproductsPublic.lean/declarations/preservesbiproduct.md) | 92 | `declaration-track:186ef9b0e0b46edddd5709ebbce29e5ce090a758ba0481b63b19adb539cde5b4` |
| 5 | `def` | [isBilimitOfPreserves](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesBiproductsPublic.lean/declarations/isbilimitofpreserves.md) | 99 | `declaration-track:9067863e1ae7c5f7c1e2a6acdd5700f0dced3d15254bf65843610a6c3d0f157a` |
| 6 | `class` | [PreservesBiproductsOfShape](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesBiproductsPublic.lean/declarations/preservesbiproductsofshape.md) | 107 | `declaration-track:3d77f73c35bbde1c58cfc4d05aeb37087e87618955d1b46824d95ec3b4fa7245` |
| 7 | `class` | [PreservesFiniteBiproducts](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesBiproductsPublic.lean/declarations/preservesfinitebiproducts.md) | 118 | `declaration-track:3c4bbecc97bfb82fce949957318aee47fc3bda70bbe021f4aff07c61e80bc6c0` |
| 8 | `class` | [PreservesBiproducts](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesBiproductsPublic.lean/declarations/preservesbiproducts.md) | 127 | `declaration-track:b822c53503e45abcf7122a7c64a61b48ddb59ab9350cacc6e209f18885df7c3a` |
| 9 | `lemma` | [preservesBiproducts_shrink](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesBiproductsPublic.lean/declarations/preservesbiproducts-shrink.md) | 136 | `result-track:62fb5d577b1bfafcc07930b362bef757757c0f98c17be99baede52abcc9fc89f` |
| 10 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesBiproductsPublic.lean/declarations/instance.md) | 144 | `declaration-track:1b2a88ffa83b69e5ca281573f09fce8e6cc4c0f095d574d2bcd92b7749ecb14b` |
| 11 | `class` | [PreservesBinaryBiproduct](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesBiproductsPublic.lean/declarations/preservesbinarybiproduct.md) | 150 | `declaration-track:d731c9b63fc3231a254d3bc5f599f9f738d28988823e51d17c347c2c3b63d7b0` |
| 12 | `def` | [isBinaryBilimitOfPreserves](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesBiproductsPublic.lean/declarations/isbinarybilimitofpreserves.md) | 157 | `declaration-track:d7a28a6d3931dc48dc7538f54001c6e6f7d03a28de20634dc65b7b4ab10eb511` |
| 13 | `class` | [PreservesBinaryBiproducts](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesBiproductsPublic.lean/declarations/preservesbinarybiproducts.md) | 164 | `declaration-track:c1fe0191915a7eed49f7f2b892ca5bfc76b6f70648b4dee131902cec10b14de5` |
| 14 | `lemma` | [preservesBinaryBiproduct_of_preservesBiproduct](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesBiproductsPublic.lean/declarations/preservesbinarybiproduct-of-preservesbiproduct.md) | 172 | `result-track:0fcff900ce661d4cf54c143a0fa60d25b2a5ed490e09bb8fbd8623c1c9a97e2e` |
| 15 | `lemma` | [preservesBinaryBiproducts_of_preservesBiproducts](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesBiproductsPublic.lean/declarations/preservesbinarybiproducts-of-preservesbiproducts.md) | 190 | `result-track:ece1b1a54077bc8b9c19483a0085244e03af3d6c768cf30a55efbf1df7cd4bdc` |
| 16 | `def` | [biproductComparison](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesBiproductsPublic.lean/declarations/biproductcomparison-source-edition-4.md) | 212 | `declaration-track:8d8e3ef1a052f5f7d5c6ce42a5fc2f051d29fd722c37bdfeb12d44e229139be2` |
| 17 | `theorem` | [biproductComparison_π](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesBiproductsPublic.lean/declarations/biproductcomparison-source-edition-3.md) | 216 | `result-track:805a7faaa0e45605040543716da0c454546cacf5be7a286247fc5395753f80a1` |
| 18 | `def` | [biproductComparison'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesBiproductsPublic.lean/declarations/biproductcomparison.md) | 222 | `declaration-track:0140af6116d5375c3fa1cffe8939208126429d2b11c306ae1e3595550ab0e38c` |
| 19 | `theorem` | [ι_biproductComparison'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesBiproductsPublic.lean/declarations/biproductcomparison-source-edition-2.md) | 226 | `result-track:1d3bb8d43ec2ca8ab4c5cdcef24e16f1d3b46f74bb783acb728c0df11fc3ad2a` |
| 20 | `theorem` | [biproductComparison'_comp_biproductComparison](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesBiproductsPublic.lean/declarations/biproductcomparison-comp-biproductcomparison.md) | 235 | `result-track:2f79d8d3da14ed00b98c3f4181dddc077b5771fbf56314cb9bf6dd3e91b9b21d` |
| 21 | `def` | [splitEpiBiproductComparison](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesBiproductsPublic.lean/declarations/splitepibiproductcomparison.md) | 243 | `declaration-track:e3f9c70dc730afc46b225f65f41ac1440e8c48e17f259827425e07e4a340f4cd` |
| 22 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesBiproductsPublic.lean/declarations/instance-source-edition-4.md) | 247 | `declaration-track:b6826e8914856bc6ee51c670ce8725bd60620335b76e70d4fc59febfc2709e77` |
| 23 | `def` | [splitMonoBiproductComparison'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesBiproductsPublic.lean/declarations/splitmonobiproductcomparison.md) | 252 | `declaration-track:dd833f7fbfdaf488d8cde1466ff033ad0008bd069453a2f55b6057f8a93ba066` |
| 24 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesBiproductsPublic.lean/declarations/instance-source-edition-3.md) | 256 | `declaration-track:781c9906b56af2ec68dbd7d6390cdd13edfc12f472497554ebe385f9cf30b144` |
| 25 | `instance` | [hasBiproduct_of_preserves](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesBiproductsPublic.lean/declarations/hasbiproduct-of-preserves.md) | 263 | `declaration-track:478e6146825437077c80fc12d287d0e5ffb25d991014b9652b5a5131dac7d5a5` |
| 26 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesBiproductsPublic.lean/declarations/instance-source-edition-5.md) | 270 | `declaration-track:ba6ecf877b97378c732ffbc6f72d385eb8d1eddf269dfc74a9670988a3f8482f` |
| 27 | `abbrev` | [mapBiproduct](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesBiproductsPublic.lean/declarations/mapbiproduct.md) | 277 | `declaration-track:8ebad811b039db68a92b0da5ef09b3c929615027fdb87db32b54c5a4079265d7` |
| 28 | `theorem` | [mapBiproduct_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesBiproductsPublic.lean/declarations/mapbiproduct-hom.md) | 280 | `result-track:58d973442e70da702325c2cc5572060563cef9cec9d532e4144153aca3eadcfe` |
| 29 | `theorem` | [mapBiproduct_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesBiproductsPublic.lean/declarations/mapbiproduct-inv.md) | 283 | `result-track:eb2b7c049cb1e1d3fe4a13dd8bfdc70aeebc649d339c547407ea6d63d5801547` |
| 30 | `def` | [biprodComparison](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesBiproductsPublic.lean/declarations/biprodcomparison.md) | 296 | `declaration-track:350cb4a247bc7c8fb8f83e77e1324d18fdb445800ae3e462725870ce31b08607` |
| 31 | `theorem` | [biprodComparison_fst](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesBiproductsPublic.lean/declarations/biprodcomparison-fst.md) | 300 | `result-track:c8887ed6589117d688f5ceaeb07efc4347698706e09ea496a4e6cf4a8bf5ae94` |
| 32 | `theorem` | [biprodComparison_snd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesBiproductsPublic.lean/declarations/biprodcomparison-snd.md) | 304 | `result-track:3b368d616f64ede71aa36d1850ddda8eb5bc7476c9f75791376af6d38f9c2623` |
| 33 | `def` | [biprodComparison'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesBiproductsPublic.lean/declarations/biprodcomparison-source-edition-2.md) | 309 | `declaration-track:76f05fea3e650d7677d502708d249bad1bc89297e8964d637600e89024e251cd` |
| 34 | `theorem` | [inl_biprodComparison'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesBiproductsPublic.lean/declarations/inl-biprodcomparison.md) | 313 | `result-track:50c77fbc4ecaa3e2e79e2a087dba2ec4d81d82069e59fdb887bc481e46e5fc0d` |
| 35 | `theorem` | [inr_biprodComparison'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesBiproductsPublic.lean/declarations/inr-biprodcomparison.md) | 317 | `result-track:403ff1d894fbfaf660a4136d018b3983582d6aed7da61c7798a21bf44559231e` |
| 36 | `theorem` | [biprodComparison'_comp_biprodComparison](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesBiproductsPublic.lean/declarations/biprodcomparison-comp-biprodcomparison.md) | 325 | `result-track:5ce205c5fd943426a945b572031d69eada7e79f7bb1af0f304f2f75264409754` |
| 37 | `def` | [splitEpiBiprodComparison](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesBiproductsPublic.lean/declarations/splitepibiprodcomparison.md) | 331 | `declaration-track:1b0c7604341d31583d63e25e15b67f4568fdeadc81280d39626859a7dc622358` |
| 38 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesBiproductsPublic.lean/declarations/instance-source-edition-2.md) | 335 | `declaration-track:7284a1d2afb784f64a6650b1060670bb775877a5c699e0750321b124d6706b8e` |
| 39 | `def` | [splitMonoBiprodComparison'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesBiproductsPublic.lean/declarations/splitmonobiprodcomparison.md) | 340 | `declaration-track:a8eca35859122f1cc0a1a515a3155c067a223bf73a4292a8c61d807f231b7713` |
| 40 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesBiproductsPublic.lean/declarations/instance-source-edition-6.md) | 344 | `declaration-track:f5686ed2426740f3621a4513e74498bfa5fcc352b4b7a83e3a46da2b4d3025d7` |
| 41 | `instance` | [hasBinaryBiproduct_of_preserves](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesBiproductsPublic.lean/declarations/hasbinarybiproduct-of-preserves.md) | 351 | `declaration-track:fe54d4dac3022919017b087a96bbb7f5f231bafa9a7dc0d85d2025c114c26d2a` |
| 42 | `abbrev` | [mapBiprod](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesBiproductsPublic.lean/declarations/mapbiprod.md) | 358 | `declaration-track:e5c02129b81b36cb63b9f3fb01b39e68b4e9d067d30d0326702a4d245f36e283` |
| 43 | `theorem` | [mapBiprod_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesBiproductsPublic.lean/declarations/mapbiprod-hom.md) | 361 | `result-track:2a3d5e96541aafbb13a96ea28229ac9b72f4778df8ca439447349c38bb3f0945` |
| 44 | `theorem` | [mapBiprod_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesBiproductsPublic.lean/declarations/mapbiprod-inv.md) | 364 | `result-track:7e4020639e65654b2d56ac6a619403211ab61bd5e528d7d35b0f6e5bcdb98f7f` |
| 45 | `theorem` | [biproduct.map_lift_mapBiprod](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesBiproductsPublic.lean/declarations/biproduct-map-lift-mapbiprod.md) | 377 | `result-track:f5f861c79a7739dbfa7edb36a7a73ca16d306cb7261db263ddd18ea00eb57ad8` |
| 46 | `theorem` | [biproduct.mapBiproduct_inv_map_desc](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesBiproductsPublic.lean/declarations/biproduct-mapbiproduct-inv-map-desc.md) | 383 | `result-track:f8af5e875acb30ddc49632d01585656bfdc22dbc2e16f9ebea8532dcd4b261f1` |
| 47 | `theorem` | [biproduct.mapBiproduct_hom_desc](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesBiproductsPublic.lean/declarations/biproduct-mapbiproduct-hom-desc.md) | 389 | `result-track:5064f765ee90d306b2f39e2c1c1b1c5486fec6eb16e3bf6f3f3182f391c9ff17` |
| 48 | `theorem` | [biprod.map_lift_mapBiprod](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesBiproductsPublic.lean/declarations/biprod-map-lift-mapbiprod.md) | 400 | `result-track:5a6dfb861f6085a4ab584657c9270c13603e909170f157f4adb651703b5bae1a` |
| 49 | `theorem` | [biprod.lift_mapBiprod](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesBiproductsPublic.lean/declarations/biprod-lift-mapbiprod.md) | 404 | `result-track:f77e565dd7e5fbb84b2ea07ebafff8ff43c16e3eed045da29c2e9ffae8a8abe3` |
| 50 | `theorem` | [biprod.mapBiprod_inv_map_desc](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesBiproductsPublic.lean/declarations/biprod-mapbiprod-inv-map-desc.md) | 409 | `result-track:233daa963e5850f60dbde502c1a968ef6f8821b76caf3e32f03feb53db50ea98` |
| 51 | `theorem` | [biprod.mapBiprod_hom_desc](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesBiproductsPublic.lean/declarations/biprod-mapbiprod-hom-desc.md) | 413 | `result-track:24d33b30ae4afc381b24f805bccd3966ed5c2f375f1ead24416204c280526c16` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=51ec40d13a6ff34f1cceed646df70d3e2a56616f130f644def85cd77c44806ac -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variantb8dc8e1c1e91ca81c73e84f908bb7023910353e8ff0ce9c96f7a8338c5659c26.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variantb8dc8e1c1e91ca81c73e84f908bb7023910353e8ff0ce9c96f7a8338c5659c26.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
