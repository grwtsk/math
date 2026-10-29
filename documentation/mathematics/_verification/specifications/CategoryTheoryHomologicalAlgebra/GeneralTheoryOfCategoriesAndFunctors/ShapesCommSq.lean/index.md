# Verification target: Shapes Comm Sq

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c095f5d742d6fd51df32656687f120cfba7dcdfa",
  "lexical_observation_count": 115,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CommSq/Variant291f1e75a9ca59ce52589f175f2e01d1b6356abc653af17ae81f0cccc8ba81e9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSq.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSq.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c095f5d742d6fd51df32656687f120cfba7dcdfa`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CommSq/Variant291f1e75a9ca59ce52589f175f2e01d1b6356abc653af17ae81f0cccc8ba81e9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/CommSq/Variant291f1e75a9ca59ce52589f175f2e01d1b6356abc653af17ae81f0cccc8ba81e9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.CommSq` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Opposites` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Biproducts` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.ZeroMorphisms` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Constructions.BinaryProducts` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Constructions.ZeroObjects` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSq.lean/declarations/cone-source-edition-2.md) | 67 | `declaration-track:b1ed1647a67ace1fa8cdeb56ca2a14a9178ea56f80e31c1d699f87320763f70a` |
| 2 | `def` | [cocone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSq.lean/declarations/cocone-source-edition-2.md) | 74 | `declaration-track:7fdf77ee3c3133969440952108630da2a8631d87a1d14ba1617bde249a01e3a0` |
| 3 | `theorem` | [cone_fst](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSq.lean/declarations/cone-fst-source-edition-2.md) | 79 | `result-track:59bd5b060e4e91bd2e3ec5ac123513dc91fb1355d1edc9d75161ba670b166bd9` |
| 4 | `theorem` | [cone_snd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSq.lean/declarations/cone-snd-source-edition-2.md) | 84 | `result-track:a131d0b03044ec2ee2826f8f3bebf0a98f104ed5c267bddd20921feafb5515d5` |
| 5 | `theorem` | [cocone_inl](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSq.lean/declarations/cocone-inl-source-edition-2.md) | 89 | `result-track:c38ac2109bbd514006141cd31fcd7b8030f5eb815fb71c01ff5067092ceaf8fb` |
| 6 | `theorem` | [cocone_inr](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSq.lean/declarations/cocone-inr.md) | 94 | `result-track:2d17a7296c9e184582de6c56320e2819fe4f16358a0581708bed2d3ab93f7aed` |
| 7 | `def` | [coneOp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSq.lean/declarations/coneop.md) | 101 | `declaration-track:43d847932ea2a619f6fd5d0549aa3d098f1282b4aa188accf155dcf5655d6464` |
| 8 | `def` | [coconeOp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSq.lean/declarations/coconeop.md) | 108 | `declaration-track:a1a893523297222faa89ba62770c07fe1ea2dd85341472d406a4f8035b2ef311` |
| 9 | `def` | [coneUnop](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSq.lean/declarations/coneunop.md) | 115 | `declaration-track:e568b7019cfe734f7f4f32baca383bf779f3ddcd9f8a91b2d388fa92dbb4acf8` |
| 10 | `def` | [coconeUnop](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSq.lean/declarations/coconeunop.md) | 123 | `declaration-track:b87fc16a64067a6be7451c5494e301a49442067b71b161d08e9c9c0edeb42a5f` |
| 11 | `structure` | [IsPullback](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSq.lean/declarations/ispullback.md) | 142 | `declaration-track:922b34d6161863d525b892fb40d7941629272d241d12f62c39b663ef5f329768` |
| 12 | `structure` | [IsPushout](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSq.lean/declarations/ispushout.md) | 160 | `declaration-track:8e94dafb4da5fafcac09e673db1a04f91d8f287487bf9f90a93ff03592738cb7` |
| 13 | `structure` | [BicartesianSq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSq.lean/declarations/bicartesiansq.md) | 180 | `declaration-track:4ea4c3e228ac510294fc23f311e935f5a10d9859f376542017b0d65385c0e98e` |
| 14 | `def` | [cone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSq.lean/declarations/cone.md) | 202 | `declaration-track:492d7e374b3e3038776fff3eb311b48a952b6484ccd4c689f93d5c92231e8481` |
| 15 | `theorem` | [cone_fst](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSq.lean/declarations/cone-fst.md) | 207 | `result-track:1e9233c3c74bdc5e68e152e7f5146de52cd2b6113fe402440ae6dff2e4b5e430` |
| 16 | `theorem` | [cone_snd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSq.lean/declarations/cone-snd.md) | 212 | `result-track:7a2fcef317f50cc4b41280bcb0a4f0da7a5b4681821fdfa96172300eb784f4b6` |
| 17 | `def` | [isLimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSq.lean/declarations/islimit.md) | 218 | `declaration-track:79d4ff675d4f578d55e6bcda84ed9b4e3f94888cecc3db7cbba8c7c135f5fb14` |
| 18 | `theorem` | [of_isLimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSq.lean/declarations/of-islimit.md) | 223 | `result-track:a6d38464fe87b3e6cd70cb2ad18326324f61409fc6062ef20902d0e4bc8177ed` |
| 19 | `theorem` | [of_isLimit'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSq.lean/declarations/of-islimit-source-edition-2.md) | 230 | `result-track:bf68d437cb943389026f8194dee2aaa7fbd7a368fb8c981a9ead3e069f68b43f` |
| 20 | `theorem` | [of_hasPullback](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSq.lean/declarations/of-haspullback.md) | 236 | `result-track:62b9c035d8e022b9d6e71f31c6c24eeaba97c5f31f7321b0ee170d18909f1b16` |
| 21 | `theorem` | [of_is_product](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSq.lean/declarations/of-is-product-source-edition-2.md) | 244 | `result-track:dae93339cd67b0a1e9b3a1d5e3f77e98105c182bc081888d7d6303e2a2fe0caa` |
| 22 | `theorem` | [of_is_product'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSq.lean/declarations/of-is-product.md) | 257 | `result-track:6590caa7f37ed90cf8bd563415d0553f2e32dd666373bc6ec37316f16c9d7857` |
| 23 | `theorem` | [of_hasBinaryProduct'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSq.lean/declarations/of-hasbinaryproduct-source-edition-2.md) | 264 | `result-track:dff55c06b5ae725b78ec067dc90a4f42cc5463873790d44efdd4409ca0148030` |
| 24 | `theorem` | [of_hasBinaryProduct](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSq.lean/declarations/of-hasbinaryproduct.md) | 271 | `result-track:0b689885175088aedbbd40344bd94db6a496904251d29d48d67cdfab8c8e6267` |
| 25 | `def` | [isoPullback](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSq.lean/declarations/isopullback.md) | 280 | `declaration-track:f582db22d226f0b504f7d5796da57c773394ccd340af63b517b8526dca4215e6` |
| 26 | `theorem` | [isoPullback_hom_fst](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSq.lean/declarations/isopullback-hom-fst.md) | 285 | `result-track:87a71012ebdef09a44e7dd4b0c23ddc38d61b8ea7e22715d3f33cabca23d9b2c` |
| 27 | `theorem` | [isoPullback_hom_snd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSq.lean/declarations/isopullback-hom-snd.md) | 292 | `result-track:c3c0c18bd9627ed247ca94a852025a4e8d994616dc278bb841d560d7c4042cc7` |
| 28 | `theorem` | [isoPullback_inv_fst](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSq.lean/declarations/isopullback-inv-fst.md) | 299 | `result-track:1afa64702b5dd591d0e8c8398fc2ea9963b84cd014d01c2f2d0ff5905c155396` |
| 29 | `theorem` | [isoPullback_inv_snd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSq.lean/declarations/isopullback-inv-snd.md) | 304 | `result-track:1b725b5d3b02f0da92246d8ed4048d408a9cab5459639dcdb8326d55a524b4d1` |
| 30 | `theorem` | [of_iso_pullback](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSq.lean/declarations/of-iso-pullback.md) | 308 | `result-track:941cb5cbb726157adf8833d329c5796421bb735276ab105baeb9092f316c0fe5` |
| 31 | `theorem` | [of_horiz_isIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSq.lean/declarations/of-horiz-isiso-source-edition-2.md) | 315 | `result-track:d396630b0f3336778b208feff0944ea4cc68e3d3cff575a6f6097695bb30c5cd` |
| 32 | `def` | [cocone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSq.lean/declarations/cocone.md) | 333 | `declaration-track:44068c897bf4bfc66544760a3d8d05598410a79a63231416b00ccb1084e92637` |
| 33 | `theorem` | [cocone_inl](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSq.lean/declarations/cocone-inl.md) | 338 | `result-track:8c61408ba2236a065d1073f6bcab96326d2efaabb3795420351a97fdc0aa254c` |
| 34 | `theorem` | [cocone_inr](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSq.lean/declarations/cocone-inr-source-edition-2.md) | 343 | `result-track:6d1a7953d5570efe61129127ae316e4510ca5ec73495e46dab12c627fabf0a30` |
| 35 | `def` | [isColimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSq.lean/declarations/iscolimit.md) | 349 | `declaration-track:18640ca503ccf35b078eaf0aa92de51da8783d1428c653ecc0421450d012a1f0` |
| 36 | `theorem` | [of_isColimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSq.lean/declarations/of-iscolimit.md) | 354 | `result-track:e1327d5240fe072be8be71208f85a8cabcc3ac95f9d0cf388825f3e1dce36703` |
| 37 | `theorem` | [of_isColimit'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSq.lean/declarations/of-iscolimit-source-edition-2.md) | 362 | `result-track:f8010fb59a31f4572cda4fcd9654bbe6c0d39c88f37988b97baf168558c29350` |
| 38 | `theorem` | [of_hasPushout](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSq.lean/declarations/of-haspushout.md) | 368 | `result-track:b49ce27e917ef8d029e2eb52e276eced2de1400b184c1c9fba3092d7efb4d468` |
| 39 | `theorem` | [of_is_coproduct](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSq.lean/declarations/of-is-coproduct-source-edition-2.md) | 376 | `result-track:eacadbff115d6b931723614de16a0bd01ef47cb849deae113d0d93d804cbfc08` |
| 40 | `theorem` | [of_is_coproduct'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSq.lean/declarations/of-is-coproduct.md) | 389 | `result-track:83f99fa53f0c0be7948eee064bf8559b4e36f395e9f18e22043b1039eb23954d` |
| 41 | `theorem` | [of_hasBinaryCoproduct'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSq.lean/declarations/of-hasbinarycoproduct.md) | 396 | `result-track:e79f72a2771e2b5f5269556b0eca8d8264185d00beabfd8de434112f75fcf8b6` |
| 42 | `theorem` | [of_hasBinaryCoproduct](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSq.lean/declarations/of-hasbinarycoproduct-source-edition-2.md) | 403 | `result-track:f58565f6920d9742add7f53c7d818aeab1c759ac991d53923d7718c6d9ab7cb9` |
| 43 | `def` | [isoPushout](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSq.lean/declarations/isopushout.md) | 412 | `declaration-track:b6765a5b0632274081af92abb7bb7559027310155b11d9aef729ed7e6abe6c9c` |
| 44 | `theorem` | [inl_isoPushout_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSq.lean/declarations/inl-isopushout-inv.md) | 417 | `result-track:99f75a1a9314251d15301146fd1bf19195096993ba8353b7fd126063e6685ed0` |
| 45 | `theorem` | [inr_isoPushout_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSq.lean/declarations/inr-isopushout-inv.md) | 424 | `result-track:e15d3e570e1701eb57c4e168fe4472aaede3b80b9c6a9c9fc4b8045a8a65ee04` |
| 46 | `theorem` | [inl_isoPushout_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSq.lean/declarations/inl-isopushout-hom.md) | 431 | `result-track:a59f0a53c58fe55ed32d7fd8004df27787983c010da702f6165434d1bdf53549` |
| 47 | `theorem` | [inr_isoPushout_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSq.lean/declarations/inr-isopushout-hom.md) | 436 | `result-track:b77e6c33ec7ec03de083a453314f9ddca35de9ecee37f4b316e3e984c04c3181` |
| 48 | `theorem` | [of_iso_pushout](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSq.lean/declarations/of-iso-pushout.md) | 440 | `result-track:6be5996a90fc152062b8fa14db86adc67083cc73f19067a4e64a871a6f1152f4` |
| 49 | `theorem` | [flip](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSq.lean/declarations/flip.md) | 453 | `result-track:9f78c6989c813afe742e0356f5377bf7bcba855d9ffa0e4aebf1b9ceefe6a4c0` |
| 50 | `theorem` | [flip_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSq.lean/declarations/flip-iff.md) | 457 | `result-track:08fa806de7c59474c529b42574125fdfa7ff185e4344babfd96acb3e57c59dca` |
| 51 | `theorem` | [zero_left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSq.lean/declarations/zero-left.md) | 469 | `result-track:489c5eeea19e905283ef01c595fc24f4a559a7b0f93bb19df1d2626c604c3342` |
| 52 | `theorem` | [zero_top](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSq.lean/declarations/zero-top-source-edition-2.md) | 481 | `result-track:f6c01696c2112add2654483f2a41a329d1168b32534171e6efc8c1bfb863af99` |
| 53 | `theorem` | [zero_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSq.lean/declarations/zero-right.md) | 487 | `result-track:1c3696dc89ebbb726cd7e2808ecde3154422817a5bde8eb91ae50fb385e27a02` |
| 54 | `theorem` | [zero_bot](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSq.lean/declarations/zero-bot.md) | 494 | `result-track:5fa589eaeb5c6bf398d4a8afc29c558cb351264d9aadbdbced1a31c53de8653e` |
| 55 | `theorem` | [paste_vert](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSq.lean/declarations/paste-vert.md) | 504 | `result-track:6d15f2b65686886182accc361de45a88ad7eddd16afcb005156213772f1ab0b4` |
| 56 | `theorem` | [paste_horiz](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSq.lean/declarations/paste-horiz-source-edition-2.md) | 512 | `result-track:ae590abbeefc1da1e8164ac2c97ba84ad81c691fe5b262c240fc95b296e11c38` |
| 57 | `theorem` | [of_bot](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSq.lean/declarations/of-bot-source-edition-2.md) | 521 | `result-track:d77cb1c954b8848c7b8c8cc6802ea900ac360a1e8a394bb521a8aaddc339d535` |
| 58 | `theorem` | [of_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSq.lean/declarations/of-right-source-edition-2.md) | 530 | `result-track:c72e335802c740b9eb016c29f2ab36d213c206e3263e8dd9b9100a6653685930` |
| 59 | `theorem` | [paste_vert_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSq.lean/declarations/paste-vert-iff.md) | 537 | `result-track:2a81215274cc52d824561409f9c19da9c1c68cc7270686119d1f8a7b085b9a78` |
| 60 | `theorem` | [paste_horiz_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSq.lean/declarations/paste-horiz-iff.md) | 544 | `result-track:45d8f28b06098cffc33b5723b7fd6f1d3020e23bd54e816eff83e22ef1876957` |
| 61 | `theorem` | [of_isBilimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSq.lean/declarations/of-isbilimit-source-edition-2.md) | 557 | `result-track:c9f01b82b739a3032af69a2db20e80a220303e5f1762ce92441a39065e516eb7` |
| 62 | `theorem` | [of_has_biproduct](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSq.lean/declarations/of-has-biproduct-source-edition-2.md) | 563 | `result-track:c3a72046440721fc8fc85de55cca3b5160a9143527f1f41654ca1bb35560a2b5` |
| 63 | `theorem` | [inl_snd'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSq.lean/declarations/inl-snd-source-edition-3.md) | 568 | `result-track:bed3a8de5996d7abe3ee9bde99cd89b17c26fcd7a6d7f467b26506e95355f928` |
| 64 | `theorem` | [inl_snd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSq.lean/declarations/inl-snd-source-edition-4.md) | 586 | `result-track:f9712f94a0cea57a111f590dc129d1ca2badf39e26553211d0b7c423f75e8ff7` |
| 65 | `theorem` | [inr_fst'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSq.lean/declarations/inr-fst.md) | 591 | `result-track:455f029590f61b82bc37e584458650a4f0fc9b5b934b6985e6a986e7fcd89133` |
| 66 | `theorem` | [inr_fst](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSq.lean/declarations/inr-fst-source-edition-3.md) | 610 | `result-track:7fcc74d180d899805a6f5b1b3ceff053065c1972ec1ff8c1131aac0c43dc08eb` |
| 67 | `theorem` | [of_is_bilimit'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSq.lean/declarations/of-is-bilimit.md) | 615 | `result-track:434d9edd49b0d5c1bf30ff1428dcf6c6e7ffade427757d548dd62990f4dc5f97` |
| 68 | `theorem` | [of_hasBinaryBiproduct](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSq.lean/declarations/of-hasbinarybiproduct.md) | 621 | `result-track:382927a140779d0ef4fb3d251452dfb0425f803510f48ff689a4e4ebb5de6a5f` |
| 69 | `instance` | [hasPullback_biprod_fst_biprod_snd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSq.lean/declarations/haspullback-biprod-fst-biprod-snd.md) | 626 | `declaration-track:79d1de867fc540829be70920c9f47654f6572aa9468683e81b4a9b8c2f6f34f7` |
| 70 | `def` | [pullbackBiprodInlBiprodInr](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSq.lean/declarations/pullbackbiprodinlbiprodinr.md) | 632 | `declaration-track:9e7f2795c19eac1b263d76aecdc7dd1d0adc3f445af9b3bd09e1e8c2b31f920f` |
| 71 | `theorem` | [op](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSq.lean/declarations/op.md) | 639 | `result-track:7aa3a30c4f941b3bcb498148c2ee9d08bbeb175964dd60a115dabf2d5770d2fc` |
| 72 | `theorem` | [unop](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSq.lean/declarations/unop.md) | 645 | `result-track:3069042c2333e4f3531aea2e017679b2cb467505a44f6c15b2d00fdee06a2c23` |
| 73 | `theorem` | [of_vert_isIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSq.lean/declarations/of-vert-isiso-source-edition-2.md) | 653 | `result-track:427f1f29d500557da0e4e15e109366cc9635f61b23eeec6e142574f544751c2c` |
| 74 | `theorem` | [flip](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSq.lean/declarations/flip-source-edition-3.md) | 663 | `result-track:e56ecf9925c70a5ba24fb6c31768f9126991dea5ef382d2fe8159b0c46c133c4` |
| 75 | `theorem` | [flip_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSq.lean/declarations/flip-iff-source-edition-2.md) | 667 | `result-track:ad3c6c9e7fe7a77b707ede00cccc36b48383f60116d51df204c24a3ae01799ac` |
| 76 | `theorem` | [zero_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSq.lean/declarations/zero-right-source-edition-2.md) | 679 | `result-track:ad20a20d9926add91423475140b9be68659f5c769c5df0488c8fbd51cbc55897` |
| 77 | `theorem` | [zero_bot](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSq.lean/declarations/zero-bot-source-edition-2.md) | 693 | `result-track:d1acded8c844b528cc8efeb0b84423690129477013944f67ad4f74818f488860` |
| 78 | `theorem` | [zero_left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSq.lean/declarations/zero-left-source-edition-2.md) | 699 | `result-track:d49296e51700304bffd463b5cd0104348efb8139c02f0282abc1afaf32fb1f2c` |
| 79 | `theorem` | [zero_top](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSq.lean/declarations/zero-top.md) | 706 | `result-track:dd0cc279f45ca3a6695fc15a9bcbb34731f57f8915c13eceb0251a3f11fbd682` |
| 80 | `theorem` | [paste_vert](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSq.lean/declarations/paste-vert-source-edition-2.md) | 716 | `result-track:d9d68f137286983d563e246549903ba446b3a718dd375616bc42e5e802d1eec1` |
| 81 | `theorem` | [paste_horiz](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSq.lean/declarations/paste-horiz.md) | 724 | `result-track:6513d535e1ab10063b71ce790440dfb5cf4e25d0e508e390672c77a62cf0ec10` |
| 82 | `theorem` | [of_bot](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSq.lean/declarations/of-bot.md) | 733 | `result-track:627715e54e5c0a5cb3fab38bd349d24657e124a48021c4f8d393a57616b5b977` |
| 83 | `theorem` | [of_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSq.lean/declarations/of-right.md) | 742 | `result-track:374467436b3b627fced81fd2d36ea24e56d1701dd1a8895363c18ab50592a571` |
| 84 | `theorem` | [paste_vert_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSq.lean/declarations/paste-vert-iff-source-edition-2.md) | 749 | `result-track:a7b5ac69b10bb473a1cd46e6dc5abad50698c8a685958047d99d8068a02e5ec6` |
| 85 | `theorem` | [paste_horiz_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSq.lean/declarations/paste-horiz-iff-source-edition-2.md) | 756 | `result-track:d8faf49d19c90c9f779c0f70a72aaa671f4207c28a7aac3940056893b1187408` |
| 86 | `theorem` | [of_isBilimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSq.lean/declarations/of-isbilimit.md) | 769 | `result-track:5b572929d0fa64aae2853e48d28cdb997ddfe985cd859c5c96f671419d79bacb` |
| 87 | `theorem` | [of_has_biproduct](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSq.lean/declarations/of-has-biproduct-source-edition-4.md) | 775 | `result-track:f482ce9f6d43dba5663e2cd5301e3a8ddaa05f60ebc08e9dc7a3b39faa27104d` |
| 88 | `theorem` | [inl_snd'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSq.lean/declarations/inl-snd-source-edition-2.md) | 780 | `result-track:9a942aa9e67f114b0bd3291fa2a886edbecbcf46bdaf63aa479b47f87948bac7` |
| 89 | `theorem` | [inl_snd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSq.lean/declarations/inl-snd.md) | 798 | `result-track:51cdfb94f940dc6834ccb605ab5a349c9d757f3fbb06081349bbd359dd39fcc4` |
| 90 | `theorem` | [inr_fst'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSq.lean/declarations/inr-fst-source-edition-2.md) | 803 | `result-track:7744c1c635aa75032ff5e73780cc06d96503607887914d003e765a3c8e2ad6fc` |
| 91 | `theorem` | [inr_fst](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSq.lean/declarations/inr-fst-source-edition-4.md) | 820 | `result-track:dcb93390a3dc362e1310fded96239257caded55a839ebdd37c34a5f0db608c9a` |
| 92 | `theorem` | [of_is_bilimit'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSq.lean/declarations/of-is-bilimit-source-edition-2.md) | 825 | `result-track:b8d850c1ca97f8cc8b4e59f6d182f9b39d1672bc74986f70e4fa37943c3e5c6c` |
| 93 | `theorem` | [of_hasBinaryBiproduct](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSq.lean/declarations/of-hasbinarybiproduct-source-edition-2.md) | 831 | `result-track:d8ddfa132f9fb26db4fdf8f43b785e4d454268c8220a07251474b247d038842a` |
| 94 | `instance` | [hasPushout_biprod_fst_biprod_snd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSq.lean/declarations/haspushout-biprod-fst-biprod-snd.md) | 836 | `declaration-track:cfce2ebcccaaa2882d4ff4ea0cf703b5a2006c6ba9b61eefae4f9bbabe9e1805` |
| 95 | `def` | [pushoutBiprodFstBiprodSnd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSq.lean/declarations/pushoutbiprodfstbiprodsnd.md) | 842 | `declaration-track:ba396305ac4f3064bc48071e3d2f29536c0ae50198e28283fcb6898771263d97` |
| 96 | `theorem` | [op](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSq.lean/declarations/op-source-edition-2.md) | 849 | `result-track:9e283cb4915c47427c6e523a67bf7699eb04a25a042ea048d47fdef3c2e2d2eb` |
| 97 | `theorem` | [unop](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSq.lean/declarations/unop-source-edition-2.md) | 856 | `result-track:648d7f7c23762d2e161b118e618af7285f0247b580ff94b29f25b7c1605570a5` |
| 98 | `theorem` | [of_horiz_isIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSq.lean/declarations/of-horiz-isiso.md) | 864 | `result-track:27e5adc97cc785a060ca16b58378db53dcffe663a00939c723c3c5d8874bf0c7` |
| 99 | `theorem` | [of_vert_isIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSq.lean/declarations/of-vert-isiso.md) | 873 | `result-track:09a2fb55ce940572d9e09573d82f503f8d850e8be33aecb087c3a90dfab59c3d` |
| 100 | `def` | [IsPullback.isLimitFork](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSq.lean/declarations/ispullback-islimitfork.md) | 885 | `declaration-track:c6cf4d4715d2acbffa01ec6bc2b4094710e40209bb4592c3a8ae07e7c90b52da` |
| 101 | `def` | [IsPushout.isLimitFork](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSq.lean/declarations/ispushout-islimitfork.md) | 896 | `declaration-track:8249c36134a925b5b920da9a709f21e77090bc7920762d1474e0b228c5f069ed` |
| 102 | `theorem` | [of_isPullback_isPushout](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSq.lean/declarations/of-ispullback-ispushout.md) | 912 | `result-track:c01963d514b0ee986a0182280d6295f0e7e81b0c5a48d29f2c9a76a8e94e978b` |
| 103 | `theorem` | [flip](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSq.lean/declarations/flip-source-edition-2.md) | 917 | `result-track:ccfa2f87d96c61d8458e6a52b99f5b3a5ff8755f0aeddaf72ae5c7921207294a` |
| 104 | `theorem` | [of_is_biproduct₁](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSq.lean/declarations/of-is-biproduct.md) | 935 | `result-track:061652fe20086b4f09caa55f67f5dda97f685ddd053ee12978f8e7babafc5220` |
| 105 | `theorem` | [of_is_biproduct₂](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSq.lean/declarations/of-is-biproduct-source-edition-2.md) | 950 | `result-track:ef67adf6d33bd0e5aaa73aaf03f969591421e70f994364f43dbc0fc3e9ddc8d3` |
| 106 | `theorem` | [of_has_biproduct₁](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSq.lean/declarations/of-has-biproduct.md) | 966 | `result-track:0c66aec1e81524ccfbb87a4ffa93e949289b3dea54dfe1a594c8a8c212d50cfa` |
| 107 | `theorem` | [of_has_biproduct₂](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSq.lean/declarations/of-has-biproduct-source-edition-3.md) | 982 | `result-track:c5a26555afe1668394ba893d6e10ace95e5cafd006fe77a9246eb3815f551295` |
| 108 | `theorem` | [Functor.map_isPullback](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSq.lean/declarations/functor-map-ispullback.md) | 995 | `result-track:4d3fbab342aa92786b67b18ede0359398656a48cae80bdbf8c9af1d9a28c64e4` |
| 109 | `theorem` | [Functor.map_isPushout](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSq.lean/declarations/functor-map-ispushout.md) | 1008 | `result-track:e7dad8a8911597bcf7bf9ad89530c6956aa4c0641315d501aacd6e181c95e49f` |
| 110 | `theorem` | [IsPullback.of_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSq.lean/declarations/ispullback-of-map.md) | 1025 | `result-track:162ec4b8caad7571445805a84fe89227ce98cd540d303393e2efcbfcaf2e096d` |
| 111 | `theorem` | [IsPullback.of_map_of_faithful](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSq.lean/declarations/ispullback-of-map-of-faithful.md) | 1035 | `result-track:997bae3d3a61b307f706786010f9f1243e9a6f86d9cb21791cd020939983cabd` |
| 112 | `theorem` | [IsPullback.map_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSq.lean/declarations/ispullback-map-iff.md) | 1040 | `result-track:f73bad04e9f64434cb6a07211477fbc16efd24f09caed42c863470d6812c1d05` |
| 113 | `theorem` | [IsPushout.of_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSq.lean/declarations/ispushout-of-map.md) | 1046 | `result-track:623a0df62e3d9fff09b45ef00d8feb3da092a270b5e24aecb80f57cc3046abcd` |
| 114 | `theorem` | [IsPushout.of_map_of_faithful](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSq.lean/declarations/ispushout-of-map-of-faithful.md) | 1056 | `result-track:b719114597bff1c33db1efeb4657b4d7957cad7ee0f11f04ecf522dec3258212` |
| 115 | `theorem` | [IsPushout.map_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSq.lean/declarations/ispushout-map-iff.md) | 1061 | `result-track:a808396fadf65d23bb00195fa50e132e55e84d1980117e90b89102c60665195e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f21ee39224358581b8b53d40e04f3d424df5f52915e1ee31a876c1a99e7ff317 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CommSq/Variant291f1e75a9ca59ce52589f175f2e01d1b6356abc653af17ae81f0cccc8ba81e9.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/CommSq/Variant291f1e75a9ca59ce52589f175f2e01d1b6356abc653af17ae81f0cccc8ba81e9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
