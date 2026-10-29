# Verification target: Abelian Basic Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7f9b9fa1702bacda407e8a5d126090d46cfdac41",
  "lexical_observation_count": 73,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant824a6beaa541a440797778d7ac22e10d49fb2f67301c241dee96e64ce9d9c2f9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianBasicNamespacedPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianBasicNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7f9b9fa1702bacda407e8a5d126090d46cfdac41`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant824a6beaa541a440797778d7ac22e10d49fb2f67301c241dee96e64ce9d9c2f9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant824a6beaa541a440797778d7ac22e10d49fb2f67301c241dee96e64ce9d9c2f9.lean.json)

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
| 1 | `class` | [Abelian](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianBasicNamespacedPublic.lean/declarations/abelian-source-edition-2.md) | 120 | `declaration-track:9ee6068060f6750995061d0a2e663ff6fdf05077e7f8c1234f3c9f21f0125b4b` |
| 2 | `def` | [imageMonoFactorisation](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianBasicNamespacedPublic.lean/declarations/imagemonofactorisation.md) | 150 | `declaration-track:af8010c460b33389a19ac48ce58f6d9783baeab7aadacf915c2fc72ee5d24933` |
| 3 | `theorem` | [imageMonoFactorisation_e'](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianBasicNamespacedPublic.lean/declarations/imagemonofactorisation-e.md) | 158 | `result-track:f35740a60e6485ec7d8944ca35e5a1e103e2aced10552f80aa38212fdcdcb14b` |
| 4 | `def` | [imageFactorisation](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianBasicNamespacedPublic.lean/declarations/imagefactorisation.md) | 168 | `declaration-track:68e8ad81f71b0cfa7800f1b8c9d4f7b474c40da68f5195b7b903e6919f146d9e` |
| 5 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianBasicNamespacedPublic.lean/declarations/instance-source-edition-5.md) | 181 | `declaration-track:89b6325568485843bff85d0d6579507beb9b29a28efe3ec3a04f10b0f9a7accb` |
| 6 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianBasicNamespacedPublic.lean/declarations/instance-source-edition-13.md) | 187 | `declaration-track:ff746b7ef19935825389ab2c87f78199cab46075f54cd554462994b5e44de4c4` |
| 7 | `theorem` | [hasImages](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianBasicNamespacedPublic.lean/declarations/hasimages.md) | 194 | `result-track:3c13045e20664623266ff94413898536208b1bf053ce3ba23978dbe0ed59cecc` |
| 8 | `lemma` | [isNormalMonoCategory](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianBasicNamespacedPublic.lean/declarations/isnormalmonocategory.md) | 205 | `result-track:b83cd583ffda69d66d78b16933a2131932573ca6829afbc75e3874a352b2a690` |
| 9 | `lemma` | [isNormalEpiCategory](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianBasicNamespacedPublic.lean/declarations/isnormalepicategory.md) | 230 | `result-track:0b1b50c5664cee9811eea9cf8ba4d81da27f9ee27dc67b4c297d7ed326bc95d5` |
| 10 | `def` | [ofCoimageImageComparisonIsIso](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianBasicNamespacedPublic.lean/declarations/ofcoimageimagecomparisonisiso.md) | 268 | `declaration-track:7411f564fd2317230b22050eb10e48a2b3aab6ded30d3ca19e7f868892958c9a` |
| 11 | `theorem` | [hasFiniteBiproducts](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianBasicNamespacedPublic.lean/declarations/hasfinitebiproducts.md) | 283 | `result-track:7cdc8f5aeda3b3c39fa43d5cf07cb8076788a2c049595afa95805d745c1d088c` |
| 12 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianBasicNamespacedPublic.lean/declarations/instance-source-edition-12.md) | 288 | `declaration-track:fd44ee75ca7df4e20e088c560ad4d717ff2109913263c3df4401514131a71e63` |
| 13 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianBasicNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 291 | `declaration-track:467afe47fdbbf0e3f9b24f7d0634178f7a9f5979c55b521b543d90063a779194` |
| 14 | `def` | [nonPreadditiveAbelian](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianBasicNamespacedPublic.lean/declarations/nonpreadditiveabelian.md) | 298 | `declaration-track:30bece57e14be9b1da97ac435837b8b233dcbd9d65025f8ef1db21e854ffe847` |
| 15 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianBasicNamespacedPublic.lean/declarations/instance-source-edition-6.md) | 313 | `declaration-track:9afa26f0cf0c768e51edecaa4d553f313bb637a3f98284c2c84e9550c8f52ff9` |
| 16 | `instance` | [isIso_factorThruImage](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianBasicNamespacedPublic.lean/declarations/isiso-factorthruimage.md) | 315 | `declaration-track:5584702db1d0b04a122112dbe8ef95a196d5809d42099de86566ba3668f0d722` |
| 17 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianBasicNamespacedPublic.lean/declarations/instance-source-edition-11.md) | 318 | `declaration-track:e1214fb4c5128e95bcb54152acce4cd2bd58b0016d4c88dc8e4be5ec9e85c6d7` |
| 18 | `instance` | [isIso_factorThruCoimage](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianBasicNamespacedPublic.lean/declarations/isiso-factorthrucoimage.md) | 320 | `declaration-track:cf6ec46d7dc1bc2e8af1c1392b23613cd5652947b0e89e63bd5a7057f2d79388` |
| 19 | `theorem` | [mono_of_kernel_ι_eq_zero](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianBasicNamespacedPublic.lean/declarations/mono-of-kernel-eq-zero.md) | 332 | `result-track:b095fbe8f2dacddf0610e7d3722d8aebc9a72026a9dfe73e9980388b4bb06426` |
| 20 | `theorem` | [epi_of_cokernel_π_eq_zero](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianBasicNamespacedPublic.lean/declarations/epi-of-cokernel-eq-zero.md) | 335 | `result-track:715b55322214acabaa28dfab5e17d2194c512cd4471a393b0d1b2ed0db8e78a6` |
| 21 | `theorem` | [image_ι_comp_eq_zero](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianBasicNamespacedPublic.lean/declarations/image-comp-eq-zero-source-edition-2.md) | 344 | `result-track:a71252f6465b02b089678fad5bd0f76a3a9ef1119b677ee97dc8330ff68d0ffd` |
| 22 | `theorem` | [comp_coimage_π_eq_zero](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianBasicNamespacedPublic.lean/declarations/comp-coimage-eq-zero.md) | 347 | `result-track:ac88b58eb34842b2f9eaa40872265d30d4d8506960b3578d0c14e1081b4d2218` |
| 23 | `def` | [imageStrongEpiMonoFactorisation](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianBasicNamespacedPublic.lean/declarations/imagestrongepimonofactorisation.md) | 354 | `declaration-track:a0d85d05fb1e12ef1361119c109903982383fa69dcf4f89ac222928506a46bde` |
| 24 | `def` | [coimageStrongEpiMonoFactorisation](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianBasicNamespacedPublic.lean/declarations/coimagestrongepimonofactorisation.md) | 363 | `declaration-track:038c4784edb880f5e7605fa21226b21a30461ce3031460e1be1755071d364a2d` |
| 25 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianBasicNamespacedPublic.lean/declarations/instance-source-edition-10.md) | 375 | `declaration-track:d927cfd10af095ee4fc95eee5de5f6312d58aca7cd107a8d10fa1944480248e0` |
| 26 | `example` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianBasicNamespacedPublic.lean/declarations/example.md) | 379 | `declaration-track:56154f0a540886a587b1795e1ccdd377817e41c8129041cadc7f3dd84c8f75d5` |
| 27 | `example` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianBasicNamespacedPublic.lean/declarations/example-source-edition-2.md) | 381 | `declaration-track:9e927f7e84c67493da43c75fe964fd0db8a46d825d21ce5e7ef45aa044eac7c3` |
| 28 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianBasicNamespacedPublic.lean/declarations/instance-source-edition-8.md) | 393 | `declaration-track:cce47bed379e22cc3dd8a18cda6096bb48c13bff2e56058d3cb98a9abd018012` |
| 29 | `abbrev` | [coimageIsoImage](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianBasicNamespacedPublic.lean/declarations/coimageisoimage-source-edition-2.md) | 404 | `declaration-track:ccdaa563a2262e944c0b3b138bab17a3dfb30c37ff5189bd84eba922ec6c1c99` |
| 30 | `abbrev` | [coimageIsoImage'](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianBasicNamespacedPublic.lean/declarations/coimageisoimage.md) | 409 | `declaration-track:3bd9d29dce228f8c6e73c323b3d24ae0d866765eaf1ce79170fc5a902be476ce` |
| 31 | `theorem` | [coimageIsoImage'_hom](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianBasicNamespacedPublic.lean/declarations/coimageisoimage-hom.md) | 413 | `result-track:cddda5d4073b970422478cf0ab7196adfbb4f4691ab19967aff636deca1165ee` |
| 32 | `theorem` | [factorThruImage_comp_coimageIsoImage'_inv](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianBasicNamespacedPublic.lean/declarations/factorthruimage-comp-coimageisoimage-inv.md) | 422 | `result-track:0121999944f6b83f37d854d5c846c637a69c0024367fa6a2fa18e6d3d1f2001f` |
| 33 | `lemma` | [image.ι_comp_eq_zero](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianBasicNamespacedPublic.lean/declarations/image-comp-eq-zero.md) | 429 | `result-track:8fb936201f3f24b062415bfef4b1f320c91145108a354bbd95698bf0d77083a5` |
| 34 | `lemma` | [coimage.comp_π_eq_zero](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianBasicNamespacedPublic.lean/declarations/coimage-comp-eq-zero.md) | 432 | `result-track:33d9598fcf878a1ae99a5d4ba2cc5d434692715e3d543e7164f0a2f56c66ae56` |
| 35 | `def` | [im](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianBasicNamespacedPublic.lean/declarations/im.md) | 437 | `declaration-track:e706d928de005497312fa91fcbe6f45ea7eee83455af78bd019f3e189ba2db15` |
| 36 | `def` | [coim](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianBasicNamespacedPublic.lean/declarations/coim.md) | 443 | `declaration-track:7805ca19dbe666de0d63f62859b39326042c55b1f18f33880f7b52a54f547f4e` |
| 37 | `def` | [coimIsoIm](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianBasicNamespacedPublic.lean/declarations/coimisoim.md) | 451 | `declaration-track:1f2df2a83002fd8ec77d46d43f30eee8d1b01950186656db9174415d458640d8` |
| 38 | `abbrev` | [imageIsoImage](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianBasicNamespacedPublic.lean/declarations/imageisoimage.md) | 456 | `declaration-track:1571b25d26fa73ff7198d74a078e9abda5762b677445f25666611d7a8e663cad` |
| 39 | `theorem` | [imageIsoImage_hom_comp_image_ι](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianBasicNamespacedPublic.lean/declarations/imageisoimage-hom-comp-image.md) | 460 | `result-track:7262f66841cd6c92de787b28ee66affc8940feeafa4b7e0f89ccd41ba7d673ea` |
| 40 | `theorem` | [imageIsoImage_inv](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianBasicNamespacedPublic.lean/declarations/imageisoimage-inv.md) | 464 | `result-track:d4bd5a91468aefd8f0836d1f3552ba523daaef164b732c8e6d02ee5aea3c1f03` |
| 41 | `def` | [epiIsCokernelOfKernel](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianBasicNamespacedPublic.lean/declarations/epiiscokernelofkernel.md) | 483 | `declaration-track:b44d20623d1c92f6587800e76d0e21ec098c0d4241a34653ac1b3fdd0c81d70f` |
| 42 | `def` | [monoIsKernelOfCokernel](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianBasicNamespacedPublic.lean/declarations/monoiskernelofcokernel.md) | 490 | `declaration-track:3d9fa822e5e3c76dfed92dc80777d13703de850bf657fc4271ef5e32a6fb24cd` |
| 43 | `def` | [epiDesc](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianBasicNamespacedPublic.lean/declarations/epidesc.md) | 498 | `declaration-track:d4adf9716df75f87209906780729605ef5bf20151d1364f380bee810667e7d01` |
| 44 | `theorem` | [comp_epiDesc](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianBasicNamespacedPublic.lean/declarations/comp-epidesc.md) | 502 | `result-track:b924b2d56884386cccc0c4f2d51e8c5db004140b2f4b6377a01dd09cac89685b` |
| 45 | `def` | [monoLift](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianBasicNamespacedPublic.lean/declarations/monolift.md) | 508 | `declaration-track:ff0d072e9758fc7a0340a8fbcb1fac92bf67627cf473039449e617564770225f` |
| 46 | `theorem` | [monoLift_comp](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianBasicNamespacedPublic.lean/declarations/monolift-comp.md) | 512 | `result-track:f5bbdc1e7d726ed1e062c4e23cd4837f4625eea40d39b75082ee809a3c194030` |
| 47 | `def` | [isLimitMapConeOfKernelForkOfι](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianBasicNamespacedPublic.lean/declarations/islimitmapconeofkernelforkof.md) | 524 | `declaration-track:d1b78e8791d1c11226e19cc0db4529eca274d0633269586fe5d5a0a0b2367f04` |
| 48 | `def` | [isColimitMapCoconeOfCokernelCoforkOfπ](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianBasicNamespacedPublic.lean/declarations/iscolimitmapcoconeofcokernelcoforkof.md) | 540 | `declaration-track:a00ea8939038bd993d1afca5ab8eb0909100f51e9640d02a601dcccde3e149f0` |
| 49 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianBasicNamespacedPublic.lean/declarations/instance-source-edition-7.md) | 559 | `declaration-track:aac392dbbc2131ed71400b6c84f05c426b2c8f3ba6f3bdfab0ab991dcc28fb3c` |
| 50 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianBasicNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 563 | `declaration-track:3fd44375571a5df082edebe2550870693a3d22eec4f47a0d52a01ef6e0327f8d` |
| 51 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianBasicNamespacedPublic.lean/declarations/instance-source-edition-9.md) | 570 | `declaration-track:d5add3a6e9134cd83d11c6312380e5b9c7034e6c460e42bf15dc695707aad217` |
| 52 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianBasicNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 574 | `declaration-track:38f27cbe0429c2d24f16492f7617262adceb01fdd669d62f7bd62469934f779c` |
| 53 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianBasicNamespacedPublic.lean/declarations/instance-source-edition-14.md) | 577 | `declaration-track:fff9d12b734db670b4c626a713485bd26001339fd2452bf0bccd1cf9be155d2f` |
| 54 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianBasicNamespacedPublic.lean/declarations/instance.md) | 580 | `declaration-track:0fe65cbf96125f639639329629c698c50971f5f5dd7edd4bce4e19bc085cd2b1` |
| 55 | `abbrev` | [pullbackToBiproduct](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianBasicNamespacedPublic.lean/declarations/pullbacktobiproduct.md) | 594 | `declaration-track:6efb634844ba2e029cf4147f2cafc4694adb05ffaee3a3718cc1d7979f34b9fe` |
| 56 | `abbrev` | [pullbackToBiproductFork](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianBasicNamespacedPublic.lean/declarations/pullbacktobiproductfork.md) | 601 | `declaration-track:8d197c95699b965d94cfdd20e4bd55d4265314a739b555b3b7de1c339ae7fe84` |
| 57 | `def` | [isLimitPullbackToBiproduct](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianBasicNamespacedPublic.lean/declarations/islimitpullbacktobiproduct.md) | 608 | `declaration-track:4ff1f2bbff60bbdd93e319c26f66c681bbd18701bafb67a89481a8622506d2dd` |
| 58 | `abbrev` | [biproductToPushout](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianBasicNamespacedPublic.lean/declarations/biproducttopushout.md) | 628 | `declaration-track:fe820b32b2c87462472e96ad597410d6a0f2b6cd8a10e0815454b97b1a470b5c` |
| 59 | `abbrev` | [biproductToPushoutCofork](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianBasicNamespacedPublic.lean/declarations/biproducttopushoutcofork.md) | 633 | `declaration-track:3cf590f0be84ea898e166e25dc29727af0135ea987fb3e5100562026467f6cb9` |
| 60 | `def` | [isColimitBiproductToPushout](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianBasicNamespacedPublic.lean/declarations/iscolimitbiproducttopushout.md) | 640 | `declaration-track:b277f70403c409f52778becf85f3a19239de0aa961c18621759149a1acec3d7d` |
| 61 | `instance` | [epi_pullback_of_epi_f](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianBasicNamespacedPublic.lean/declarations/epi-pullback-of-epi-f.md) | 658 | `declaration-track:0c43d9af2e3ac6ddcdbb63951005834db5e46eef0cfedab838d49c196f6252a3` |
| 62 | `instance` | [epi_pullback_of_epi_g](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianBasicNamespacedPublic.lean/declarations/epi-pullback-of-epi-g.md) | 690 | `declaration-track:e6b9bf6e2cb8c04699a47aca2616225c89254b6e5fed403962a54e6441eb3232` |
| 63 | `theorem` | [epi_snd_of_isLimit](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianBasicNamespacedPublic.lean/declarations/epi-snd-of-islimit.md) | 721 | `result-track:4c8e9324be82b2d66cc844fa8e3ed8c1784fbb10e1f1af19c522cbfbd25b7ab9` |
| 64 | `theorem` | [epi_fst_of_isLimit](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianBasicNamespacedPublic.lean/declarations/epi-fst-of-islimit.md) | 726 | `result-track:023b8d781fe1a70bd0fb3cbaa7c306b785b151a68bbce948bd013c7424f78620` |
| 65 | `theorem` | [epi_fst_of_factor_thru_epi_mono_factorization](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianBasicNamespacedPublic.lean/declarations/epi-fst-of-factor-thru-epi-mono-factorization.md) | 734 | `result-track:3bcf9c3836e77c0ddcfeee894fcd56b1a073273bd405676f47ea0c5f72526ef2` |
| 66 | `instance` | [mono_pushout_of_mono_f](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianBasicNamespacedPublic.lean/declarations/mono-pushout-of-mono-f.md) | 745 | `declaration-track:c6cf6257c3624c9460cce11bb11a92a76198a6704344b51bf776ff9cbaf82532` |
| 67 | `instance` | [mono_pushout_of_mono_g](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianBasicNamespacedPublic.lean/declarations/mono-pushout-of-mono-g.md) | 767 | `declaration-track:0f9dcb9899c76d4b0f98da9ef69454cca9c186685ce3adc840041415b34a4865` |
| 68 | `theorem` | [mono_inr_of_isColimit](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianBasicNamespacedPublic.lean/declarations/mono-inr-of-iscolimit.md) | 789 | `result-track:58a1ad1b9ca77c5da343f388f626acb507157996936d40859c5c9fe05719afb4` |
| 69 | `theorem` | [mono_inl_of_isColimit](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianBasicNamespacedPublic.lean/declarations/mono-inl-of-iscolimit.md) | 795 | `result-track:b56f1136f7bc7f778b2d5426f5039e7c025e761b9c09ac2a1b1b6f98e039bf46` |
| 70 | `theorem` | [mono_inl_of_factor_thru_epi_mono_factorization](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianBasicNamespacedPublic.lean/declarations/mono-inl-of-factor-thru-epi-mono-factorization.md) | 804 | `result-track:0b82e32cb1a1693a05df488fcb1ad065edcf1ec55def8f30d1cbedcfa185687b` |
| 71 | `def` | [abelian](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianBasicNamespacedPublic.lean/declarations/abelian.md) | 819 | `declaration-track:6f96d715e4182f0939ee51805d81d81b0b14e5d812af835ab65e44ce464eb414` |
| 72 | `structure` | [AbelianStruct](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianBasicNamespacedPublic.lean/declarations/abelianstruct.md) | 832 | `declaration-track:4fac54754cfe456eb993d744a6a4ab53456b4004d3ca93db47cf6da0c7c5c04d` |
| 73 | `def` | [mk'](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianBasicNamespacedPublic.lean/declarations/mk.md) | 867 | `declaration-track:a3783d788e1a47be391019288a768724977fb3b4cc693c1a6c4f6360e6a58e4d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=73788073f5fecc792785b201ce73500fc95c943e12cecc2918e3f8510b4c9b86 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant824a6beaa541a440797778d7ac22e10d49fb2f67301c241dee96e64ce9d9c2f9.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant824a6beaa541a440797778d7ac22e10d49fb2f67301c241dee96e64ce9d9c2f9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
