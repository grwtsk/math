# Verification target: Limits Shapes Products Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7fc68ad1cd44a9e31166371073f80e6f2f493b0c",
  "lexical_observation_count": 86,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variantb9651ff9397cf58446f5c98353449254018c6d4b69bf83ced693ce1df3e2d541.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7fc68ad1cd44a9e31166371073f80e6f2f493b0c`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variantb9651ff9397cf58446f5c98353449254018c6d4b69bf83ced693ce1df3e2d541.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variantb9651ff9397cf58446f5c98353449254018c6d4b69bf83ced693ce1df3e2d541.lean.json)

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
| 1 | `abbrev` | [Fan](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsPublic.lean/declarations/fan.md) | 54 | `declaration-track:b4a9c6eb04ccdd7c3a760de7a3fb4964565be6d44333d23b18a145a00a32f855` |
| 2 | `def` | [Fan.mk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsPublic.lean/declarations/fan-mk.md) | 60 | `declaration-track:4c2ce840c8cdae8d40abc848fbeaf0968e1b37ab71f8c63874463b0e203efe09` |
| 3 | `def` | [Fan.proj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsPublic.lean/declarations/fan-proj.md) | 69 | `declaration-track:66ee3675325444a235593d63178f036b23a1960eb661b3123a3e5661b138fc11` |
| 4 | `theorem` | [fan_mk_proj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsPublic.lean/declarations/fan-mk-proj.md) | 73 | `result-track:7c2d922720503de0704f38b861d4349433da4c5de99f6a5172577ca71ce2e66a` |
| 5 | `abbrev` | [HasProduct](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsPublic.lean/declarations/hasproduct.md) | 78 | `declaration-track:12f8f29939cd1f83904716833dff6168dfe8a890adfd5b83fe0a30c248efa730` |
| 6 | `lemma` | [hasCoproduct_of_equiv_of_iso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsPublic.lean/declarations/hascoproduct-of-equiv-of-iso.md) | 82 | `result-track:141b9d1943ecc341a41c33d8a91b30ed3ebdd2395847645e87f01d08d5746108` |
| 7 | `def` | [Fan.IsLimit.mk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsPublic.lean/declarations/fan-islimit-mk.md) | 95 | `declaration-track:79f37496c98fad7f1851a149b12f684b58eb434c85fc200bc6742ff6f4c09b3e` |
| 8 | `def` | [Fan.IsLimit.lift](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsPublic.lean/declarations/fan-islimit-lift.md) | 108 | `declaration-track:d55e1c80ce3f48cd807e4bd1aec41dc973fb04e7e5cd5b26ea0bfa11bb2e5357` |
| 9 | `lemma` | [Fan.IsLimit.fac](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsPublic.lean/declarations/fan-islimit-fac.md) | 113 | `result-track:164fdf8213334ec0e219fe33b19a2f55755c288c7d6eda7ef61a34a09ca1e51b` |
| 10 | `lemma` | [Fan.IsLimit.lift_proj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsPublic.lean/declarations/fan-islimit-lift-proj.md) | 119 | `result-track:49b7855271834b6974f95633d16ba1c015a65851c78511add5ac7bbc06f632e2` |
| 11 | `lemma` | [Fan.IsLimit.hom_ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsPublic.lean/declarations/fan-islimit-hom-ext.md) | 124 | `result-track:9b40ac14705472cd26a93ab5cd718794eb3a0cca446355bb8a1c18c5b78f74b6` |
| 12 | `abbrev` | [HasProductsOfShape](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsPublic.lean/declarations/hasproductsofshape.md) | 134 | `declaration-track:362f8e744c9b08bf3ba18e585c0a3d5290b297cda504b3bd191b50e2c483dbe4` |
| 13 | `abbrev` | [piObj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsPublic.lean/declarations/piobj.md) | 144 | `declaration-track:dbd72c301cb243f0cc0e992b1e970e91126041a867cfd885280fbd0c78521640` |
| 14 | `abbrev` | [Pi.π](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsPublic.lean/declarations/pi.md) | 158 | `declaration-track:7c2368056cc3fce84fafbfc19b70495252feb0092042184d49ab9ffc2195b0b6` |
| 15 | `lemma` | [Pi.hom_ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsPublic.lean/declarations/pi-hom-ext.md) | 166 | `result-track:cb124d26d8740b5206e096dcf72d22b454c1db8a67eed884ccd65d4b19ea493c` |
| 16 | `def` | [productIsProduct](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsPublic.lean/declarations/productisproduct-source-edition-2.md) | 171 | `declaration-track:d90dbfc15675500c42757a109919a817b6596d267c439d9c25bb7a85edaf9445` |
| 17 | `def` | [coproductIsCoproduct](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsPublic.lean/declarations/coproductiscoproduct.md) | 177 | `declaration-track:8b40d75f186ab11da4a452f409435ccadb6672b31b4d6aa8cd8ed096f0e480b0` |
| 18 | `theorem` | [Pi.π_comp_eqToHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsPublic.lean/declarations/pi-comp-eqtohom.md) | 183 | `result-track:c17c22caa8ef3ff8a41b849a56be42154ab23ac345ade700f8db3c8ddec2300c` |
| 19 | `abbrev` | [Pi.lift](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsPublic.lean/declarations/pi-lift-source-edition-2.md) | 191 | `declaration-track:e7cfa7bd03943963b505888b17bad9d06530304ef4ecc545ab1dc732bdaf9ee0` |
| 20 | `theorem` | [Pi.lift_π](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsPublic.lean/declarations/pi-lift.md) | 195 | `result-track:4b6272b6382dcc9efbf8e346d908f4954c3080718cc8c3b47ba51c0e620b2c04` |
| 21 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsPublic.lean/declarations/instance.md) | 199 | `declaration-track:41cf2563ea203c240096557e323562d317e5b17e9468fa01ebc3df56046c7db5` |
| 22 | `theorem` | [Pi.lift_comp_π](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsPublic.lean/declarations/pi-lift-comp.md) | 203 | `result-track:9472b15228c6d6eff3b0a0289160a58331fd802d80a402987b5ad9f3edfe722d` |
| 23 | `def` | [Fan.ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsPublic.lean/declarations/fan-ext.md) | 215 | `declaration-track:b250e9a4863f21767b13acbe5944e3a4dd88b61feff2f5a6bdb2edb27ef681b3` |
| 24 | `def` | [Fan.extInv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsPublic.lean/declarations/fan-extinv.md) | 221 | `declaration-track:24b29b61c75e6e53829c85a29fa561198c6d3857cd12a18a4042af57de6f20f5` |
| 25 | `def` | [Fan.isLimitOfIsIsoPiLift](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsPublic.lean/declarations/fan-islimitofisisopilift.md) | 228 | `declaration-track:cb9392d86c74905d32d0acfc9b74854c0f5390204e14b49c84d6007b87c471fc` |
| 26 | `lemma` | [Fan.nonempty_isLimit_iff_isIso_piLift](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsPublic.lean/declarations/fan-nonempty-islimit-iff-isiso-pilift.md) | 234 | `result-track:404df2cd786a0cf3b36acd5eb76f4618fc2fec79972800690372d7a4f36edf56` |
| 27 | `def` | [Cofan.isColimitTrans](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsPublic.lean/declarations/cofan-iscolimittrans.md) | 239 | `declaration-track:64a3eb4637dd4d9f3c1369a1fd82832a643060be6a7d80691242dae5dd622b52` |
| 28 | `def` | [Pi.map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsPublic.lean/declarations/pi-map-source-edition-2.md) | 262 | `declaration-track:331d3f4672d86b785cd8064537b499724fbcba7593933135113f644ab1130bd4` |
| 29 | `lemma` | [Pi.map_π](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsPublic.lean/declarations/pi-map-source-edition-3.md) | 266 | `result-track:48f58b120cb632c018d03434027e23ab558d3be7e5cf8216f2650b2de9ffd6cf` |
| 30 | `lemma` | [Pi.map_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsPublic.lean/declarations/pi-map-id-source-edition-2.md) | 270 | `result-track:fa79782b79c526c207e8933e0944f8abb5cba24ed9ecd91c1df22bccd0cb3370` |
| 31 | `lemma` | [Pi.map_comp_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsPublic.lean/declarations/pi-map-comp-map-source-edition-4.md) | 274 | `result-track:c0214a8ff14029eb8480709894778760b1e3839375d3074aadade2b61875ba2c` |
| 32 | `instance` | [Pi.map_mono](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsPublic.lean/declarations/pi-map-mono.md) | 280 | `declaration-track:b4ebc3a00ca15d5e52b7d775e390c6a0fe6293237ebd4779cf8a90dd9f02293a` |
| 33 | `def` | [Pi.map'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsPublic.lean/declarations/pi-map.md) | 290 | `declaration-track:017f4cdad2a63bec10a26f712d3e9ac005dfc864891b8a95990ba4e28a40fa5d` |
| 34 | `lemma` | [Pi.map'_comp_π](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsPublic.lean/declarations/pi-map-comp.md) | 295 | `result-track:50118803b1895da17ee959600f56205152de2f18886e7e7ab28a84376faf4c27` |
| 35 | `lemma` | [Pi.map'_id_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsPublic.lean/declarations/pi-map-id-id.md) | 300 | `result-track:41c7b6c95e79fa5e654c0bd7f2566fa3af1edd380795cb32acd1ca0b36218c62` |
| 36 | `lemma` | [Pi.map'_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsPublic.lean/declarations/pi-map-id.md) | 304 | `result-track:9206592c19c17c5bcd5225245eadf7e7b14afeed9c1095929a4ab8fcca1f5045` |
| 37 | `lemma` | [Pi.map'_comp_map'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsPublic.lean/declarations/pi-map-comp-map.md) | 309 | `result-track:10b5a8f1da38606a3ce1542751edbb1d01f918937e08a78ed67e8c8f41d9edb8` |
| 38 | `lemma` | [Pi.map'_comp_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsPublic.lean/declarations/pi-map-comp-map-source-edition-2.md) | 316 | `result-track:80e8b073b510ee3397143990dab39de328e69d13eea9c67426953b4a925cadb1` |
| 39 | `lemma` | [Pi.map_comp_map'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsPublic.lean/declarations/pi-map-comp-map-source-edition-3.md) | 322 | `result-track:9f371fe3ef911f743ee79120748d7a692f8e3f39478b550c68ee3c961e88f471` |
| 40 | `lemma` | [Pi.map'_eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsPublic.lean/declarations/pi-map-eq.md) | 328 | `result-track:18c8264c9a700ef4672766bbc1ebaa1575d6473b43678e46b239fc2c61959def` |
| 41 | `def` | [Pi.mapIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsPublic.lean/declarations/pi-mapiso.md) | 340 | `declaration-track:65ff5f7c5f18c9bab775ea9c0de2f7ae4b9cc84dac8aefd28f0775132f9a510f` |
| 42 | `lemma` | [Pi.mapIso_hom_π](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsPublic.lean/declarations/pi-mapiso-hom.md) | 344 | `result-track:3448c88e83de125e71f27ccded4f8874bc4059cfe32c9e458fde26a15fe0f1c6` |
| 43 | `lemma` | [Pi.mapIso_inv_π](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsPublic.lean/declarations/pi-mapiso-inv.md) | 349 | `result-track:d8e76849fcaea10aea7b9fb598cb2234d6d2a116003032bc100bf7a6da13631b` |
| 44 | `instance` | [Pi.map_isIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsPublic.lean/declarations/pi-map-isiso.md) | 354 | `declaration-track:c9d42c0fa1acdd791bd122a1bb412f9173e10444737478b1c79997832a06f506` |
| 45 | `def` | [Pi.cone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsPublic.lean/declarations/pi-cone.md) | 370 | `declaration-track:715030b07d884fe8bd519c522a537d0c00c11708e49178bc38d16dc2db313f45` |
| 46 | `def` | [productIsProduct'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsPublic.lean/declarations/productisproduct.md) | 377 | `declaration-track:2613a290f2e00b0e170378fb6e943fe6d6c0e6e6c889b777beae95e9b1679672` |
| 47 | `def` | [Pi.isoLimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsPublic.lean/declarations/pi-isolimit.md) | 391 | `declaration-track:bda622b927b1d6d417edbadd581c2299f85d5b84af3ac6aa504f8f93c2bb652d` |
| 48 | `lemma` | [Pi.isoLimit_inv_π](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsPublic.lean/declarations/pi-isolimit-inv.md) | 395 | `result-track:fa57e7045e18fad8884a9a861e87d8f45968f399a1adad76fe8e14f16ea32147` |
| 49 | `lemma` | [Pi.isoLimit_hom_π](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsPublic.lean/declarations/pi-isolimit-hom.md) | 400 | `result-track:1c9a531debb0e99810e235ee777a113ea00f0ba23493efec9070748f5947f1e5` |
| 50 | `def` | [Pi.whiskerEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsPublic.lean/declarations/pi-whiskerequiv.md) | 413 | `declaration-track:54fe14730784a3c3f3d82c790d26765cf5ab6edbb67f87a771a8cc6cb1683b86` |
| 51 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsPublic.lean/declarations/instance-source-edition-3.md) | 419 | `declaration-track:55480e117cd4ad1e77439ad028c37e2258ce3a4f12711aa5876e0eaef82fd812` |
| 52 | `def` | [piPiIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsPublic.lean/declarations/pipiiso.md) | 431 | `declaration-track:712d9001aae2ce508c002ad02625044f94a980841b54387d6bf3e6c6daa8b7aa` |
| 53 | `def` | [piComparison](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsPublic.lean/declarations/picomparison.md) | 447 | `declaration-track:5ca050247aac5b2ae74d963c5d4cc1c4ae5fc1d353ee53085701e2384b7a0f5d` |
| 54 | `theorem` | [piComparison_comp_π](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsPublic.lean/declarations/picomparison-comp.md) | 452 | `result-track:7132a060674dbc2b5fc1f268803baab98af6179a8ae849dec26ec37b0f0c6ce7` |
| 55 | `theorem` | [map_lift_piComparison](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsPublic.lean/declarations/map-lift-picomparison.md) | 457 | `result-track:dac9316c79ace7f63950966dffce07b495c7c386a543afe9a0468ae94b988847` |
| 56 | `def` | [Fan.isLimitMapConeEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsPublic.lean/declarations/fan-islimitmapconeequiv.md) | 466 | `declaration-track:756d80a2dac639251f6b8012ef875a033574982247b41b3d6415c4f42e593ea6` |
| 57 | `abbrev` | [HasProducts](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsPublic.lean/declarations/hasproducts.md) | 476 | `declaration-track:f5a74aa1556d9dba89aaf6eeb8685efe3702959abbf6fc6eb376eab7b6ff93bd` |
| 58 | `lemma` | [hasProducts_shrink](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsPublic.lean/declarations/hasproducts-shrink.md) | 480 | `result-track:f7f0cce36fa4a7c260943e5e15ae3d4563b40b22f6cfe5c116bda84e03feb0d9` |
| 59 | `theorem` | [has_smallest_products_of_hasProducts](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsPublic.lean/declarations/has-smallest-products-of-hasproducts.md) | 484 | `result-track:b6c0900bf96629d6c48d623b705ac48cd4f223514c8e158d56cb9ccd7f14efdc` |
| 60 | `theorem` | [hasProducts_of_limit_fans](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsPublic.lean/declarations/hasproducts-of-limit-fans.md) | 488 | `result-track:c96f041eae535a2b1e1028901486c0e6ec745d324409be021a94be99ca17cd92` |
| 61 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsPublic.lean/declarations/instance-source-edition-5.md) | 497 | `declaration-track:d63e6a06a9c5d9441b60700827773f193c21bd64ee97cb971ef838d443b8707f` |
| 62 | `def` | [piConst](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsPublic.lean/declarations/piconst.md) | 503 | `declaration-track:81448fc40848268f64aac0e5de18541173b76ca38a4b1416d909be51c4072b19` |
| 63 | `def` | [piConstAdj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsPublic.lean/declarations/piconstadj.md) | 508 | `declaration-track:a1ebefc4f9d622620299b2df4b38f75033caff3837a36dc9e3eb7039e0c7435e` |
| 64 | `def` | [sigmaConst](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsPublic.lean/declarations/sigmaconst.md) | 520 | `declaration-track:65771f8717dd20fd630525e9cb43f47940977ab6fc5f4e8746a6e6bd1ea3f29c` |
| 65 | `def` | [sigmaConstAdj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsPublic.lean/declarations/sigmaconstadj.md) | 525 | `declaration-track:8b516241eb32c024cad178831b8258943a95a47699c1a01d35d1edafa06a46aa` |
| 66 | `def` | [limitConeOfUnique](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsPublic.lean/declarations/limitconeofunique.md) | 540 | `declaration-track:50380b9582eae194a67aa407053f362a698e9ebeccb726b776a1ed582193b66d` |
| 67 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsPublic.lean/declarations/instance-source-edition-4.md) | 557 | `declaration-track:d58090f5f272804fbc25337febe7d37b47b05e4e88437e654c931b588481c1dd` |
| 68 | `def` | [productUniqueIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsPublic.lean/declarations/productuniqueiso.md) | 564 | `declaration-track:e0ddb23db7e189e7a1c79ad7b5e658fc450cadb213de7075a3dbae0ce7b9ab4a` |
| 69 | `lemma` | [productUniqueIso_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsPublic.lean/declarations/productuniqueiso-hom.md) | 568 | `result-track:7abc6caf35a912d75c17a54ebecc3cce65b2e64f7f09936dde14f50f40ac6201` |
| 70 | `lemma` | [productUniqueIso_inv_π](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsPublic.lean/declarations/productuniqueiso-inv.md) | 572 | `result-track:6c972dbf9399586172edc092a8ff0dfb72cb701397edc5f4ef4140249cf6367e` |
| 71 | `def` | [Fan.isLimitMkOfUnique](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsPublic.lean/declarations/fan-islimitmkofunique.md) | 582 | `declaration-track:cce3ffa60cdf973f7cbbd5fbbcea2a40f9e04927e78746a4444a974722f268c1` |
| 72 | `def` | [Pi.reindex](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsPublic.lean/declarations/pi-reindex.md) | 597 | `declaration-track:810ee8a532e2bc681613bb2322f1f9432154bc464a8bb19a5688fce1ceab3f66` |
| 73 | `theorem` | [Pi.reindex_inv_π](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsPublic.lean/declarations/pi-reindex-inv.md) | 601 | `result-track:20cd3e1cdc724e3d34f8174711eec98f81bddadc4483c8e95d90f6b2716bee05` |
| 74 | `theorem` | [Pi.reindex_hom_π](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsPublic.lean/declarations/pi-reindex-hom.md) | 605 | `result-track:3079b883523b522ffbbad9658fb34a354e137af2ab105894ac48f3214d19a28a` |
| 75 | `def` | [Fan.isLimitEquivOfEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsPublic.lean/declarations/fan-islimitequivofequiv.md) | 611 | `declaration-track:ce9cb0f0eab9a8966a77d176bbff349184f351f03577fff9716d7ad8530dcdcc` |
| 76 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsPublic.lean/declarations/instance-source-edition-2.md) | 622 | `declaration-track:4d4cbdbf007574a3db3f41ed10b5e7a44ac688d2b60a699e4c2344fcf42d86ba` |
| 77 | `def` | [isLimitEquivFanOfIsThin](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsPublic.lean/declarations/islimitequivfanofisthin.md) | 638 | `declaration-track:045bf66ddd9710fe4493a3ce6552c949d46bcf7e999dbea3aa4cd5e65529ccff` |
| 78 | `def` | [Fan.IsLimit.prod](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsPublic.lean/declarations/fan-islimit-prod.md) | 651 | `declaration-track:1e1b578dac56e7ef9825c235411035ae93b5481b6f7107cf9b30b2ed530e3a15` |
| 79 | `def` | [Pi.functor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsPublic.lean/declarations/pi-functor.md) | 665 | `declaration-track:adeca9b987473d4cf7bf770691b5678cedd649d5c0d0356c92f7d8d876a30467` |
| 80 | `def` | [Pi.functorπ](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsPublic.lean/declarations/pi-functor-source-edition-2.md) | 672 | `declaration-track:c80f011c6630eef295494b652e2dd69a3590770bf9ed088c12ff6d4315a737ae` |
| 81 | `def` | [piEquivalenceFunctorDiscreteCompLim](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsPublic.lean/declarations/piequivalencefunctordiscretecomplim.md) | 682 | `declaration-track:2ff2324a832a0073c30b6d478ce39686267352ce8fb1261b2d9153391c117b4b` |
| 82 | `lemma` | [piEquivalenceFunctorDiscreteCompLim_comp_functorπ](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsPublic.lean/declarations/piequivalencefunctordiscretecomplim-comp-functor.md) | 688 | `result-track:e61d87fa4a0ceb61e3619b165433349653585c25ffd7d5c0a1117f16eb106e69` |
| 83 | `lemma` | [piEquivalenceFunctorDiscrete_functor_comp_lim](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsPublic.lean/declarations/piequivalencefunctordiscrete-functor-comp-lim.md) | 695 | `result-track:b9d64bacc3937854f3575f51aec2d79b484886c5fcc176db2b76d38c9386220c` |
| 84 | `def` | [Pi.constCompPiIsoConst](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsPublic.lean/declarations/pi-constcomppiisoconst.md) | 705 | `declaration-track:66e72fcbe07a328c7904844084615fe1948c7592dc2afdf036175affb5bb9a85` |
| 85 | `def` | [piFunctor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsPublic.lean/declarations/pifunctor.md) | 714 | `declaration-track:bef0bcd36c3ee3b8a4786faf2d3e75599c378b572e13f725c0c24ca2a877ed5d` |
| 86 | `def` | [sigmaFunctor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsPublic.lean/declarations/sigmafunctor.md) | 724 | `declaration-track:53c8c0124a2386fbf502c81e244ff860ec1615b99dce6f6847a83e56fdf61898` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=129727ce1fd61f3633658706e9bfe71763f450b3d5a4ce3d87cf8000bb7c4c48 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variantb9651ff9397cf58446f5c98353449254018c6d4b69bf83ced693ce1df3e2d541.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variantb9651ff9397cf58446f5c98353449254018c6d4b69bf83ced693ce1df3e2d541.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
