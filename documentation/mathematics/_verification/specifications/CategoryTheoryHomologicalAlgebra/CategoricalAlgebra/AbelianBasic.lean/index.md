# Verification target: Abelian Basic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a4cf1ee9d88e62618593153621d96ac586c8b8f2",
  "lexical_observation_count": 66,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8820b6a14711a3c41a8da9a1cf85367595f182c423d875bc0ec23f52c230b926.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianBasic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianBasic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a4cf1ee9d88e62618593153621d96ac586c8b8f2`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8820b6a14711a3c41a8da9a1cf85367595f182c423d875bc0ec23f52c230b926.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8820b6a14711a3c41a8da9a1cf85367595f182c423d875bc0ec23f52c230b926.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Constructions.Pullbacks` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Preadditive.Biproducts` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Shapes.Kernels` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Images` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Constructions.LimitsOfProductsAndEqualizers` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Abelian.NonPreadditive` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Abelian](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianBasic.lean/declarations/abelian.md) | 107 | `declaration-track:13afbf45f34bc65652b9a57312181f38ad688426059c6a1da12dfdeab3510ed3` |
| 2 | `def` | [imageMonoFactorisation](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianBasic.lean/declarations/imagemonofactorisation.md) | 136 | `declaration-track:ada08e5967e12d48d7b72c66020e0be837645e34e2b9c9b693e996d02990beac` |
| 3 | `theorem` | [imageMonoFactorisation_e'](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianBasic.lean/declarations/imagemonofactorisation-e.md) | 143 | `result-track:17ec59bbfe38130131f232b13ad0c550be57261765fe8257c0b8bfd31fbe6436` |
| 4 | `def` | [imageFactorisation](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianBasic.lean/declarations/imagefactorisation.md) | 152 | `declaration-track:7cfcda70e59d49334a61df2eb816ef481b7dc73ab0ab8712a0423637e699cba0` |
| 5 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianBasic.lean/declarations/instance-source-edition-7.md) | 164 | `declaration-track:a2d1696964c8b43c80c37cfc5af8c605ee8d56b3454a27a0a8d971b7d2325f6e` |
| 6 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianBasic.lean/declarations/instance-source-edition-4.md) | 169 | `declaration-track:7004933bf00ccf96609bc6ffd5188ab8e7f179d5d647e14005b39f2dd70ecd8c` |
| 7 | `theorem` | [hasImages](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianBasic.lean/declarations/hasimages.md) | 176 | `result-track:3b5fa20c3718c68277401f3965d228fec07db290676740bdb3c575281889d287` |
| 8 | `lemma` | [isNormalMonoCategory](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianBasic.lean/declarations/isnormalmonocategory.md) | 186 | `result-track:5dedea4bff70da95c7e30a67fe331fb9fb3df587e4fc98773951dd38f606d5a8` |
| 9 | `lemma` | [isNormalEpiCategory](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianBasic.lean/declarations/isnormalepicategory.md) | 211 | `result-track:b4313ff6f4ff62dcb5ee8c797fc0f0504e3c314c9eaabad190051e60c5374c3b` |
| 10 | `def` | [ofCoimageImageComparisonIsIso](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianBasic.lean/declarations/ofcoimageimagecomparisonisiso.md) | 248 | `declaration-track:f9bb594b52ce6fcb5ea8144ca592b6f2f32d28ae7923f1a63c0508eadb05551d` |
| 11 | `theorem` | [hasFiniteBiproducts](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianBasic.lean/declarations/hasfinitebiproducts.md) | 263 | `result-track:69596a935f8b6be9fa0e234dbb9f8352b872bb52c8cf55988ea62b1aee578860` |
| 12 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianBasic.lean/declarations/instance-source-edition-9.md) | 268 | `declaration-track:ae9ac3f010801cb9e2b61f144a19e55444f0c527eaf10293b92fc38296559a4c` |
| 13 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianBasic.lean/declarations/instance-source-edition-2.md) | 271 | `declaration-track:3862b77286f90507bd9acdd291a4cad7785f49217f558e83e5b5d689b9a99c9b` |
| 14 | `def` | [nonPreadditiveAbelian](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianBasic.lean/declarations/nonpreadditiveabelian.md) | 277 | `declaration-track:5006f9dd01b766016cd0b4b7a1b78777464a4e4c7f0027276cfefc3385a9675d` |
| 15 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianBasic.lean/declarations/instance-source-edition-14.md) | 292 | `declaration-track:ff061324b66c6bce132fe052a1580f5ab9bf7d363bfdb5c108f3b64da479472c` |
| 16 | `instance` | [isIso_factorThruImage](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianBasic.lean/declarations/isiso-factorthruimage.md) | 294 | `declaration-track:3a25386b368cf377a64298a0af59312d8a189db4500137ab2240430f6227637c` |
| 17 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianBasic.lean/declarations/instance-source-edition-5.md) | 297 | `declaration-track:90f99ae58193666b036ce5bc7bb95cffb895a9fc0ddf205db23ceffbc2200417` |
| 18 | `instance` | [isIso_factorThruCoimage](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianBasic.lean/declarations/isiso-factorthrucoimage.md) | 299 | `declaration-track:0cbfd8cbe7052d79a37eb3c1742fc14859ca53ff990851e5634b99158059f6c6` |
| 19 | `theorem` | [mono_of_kernel_ι_eq_zero](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianBasic.lean/declarations/mono-of-kernel-eq-zero.md) | 311 | `result-track:ac9a3d9cec5929754d9a80a1205aacc50d31b0ed06dafb2726f44c1655a6f6c3` |
| 20 | `theorem` | [epi_of_cokernel_π_eq_zero](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianBasic.lean/declarations/epi-of-cokernel-eq-zero.md) | 314 | `result-track:b5110cc41c4ee3b9b4353f14b05c099d68bdb25f4ec5447c6f14aba2adce1ad0` |
| 21 | `theorem` | [image_ι_comp_eq_zero](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianBasic.lean/declarations/image-comp-eq-zero.md) | 325 | `result-track:843a24a39caec365c73d618270f9ddb04fe9440ab8034327572ca8d39b4642d5` |
| 22 | `theorem` | [comp_coimage_π_eq_zero](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianBasic.lean/declarations/comp-coimage-eq-zero.md) | 328 | `result-track:22bafffe8c2faa9deb67f1dc6265c23e39f2d4f0c6e43e0191f2925c0f910a92` |
| 23 | `def` | [imageStrongEpiMonoFactorisation](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianBasic.lean/declarations/imagestrongepimonofactorisation.md) | 335 | `declaration-track:f65fd878edb78a9bb59235d17703d80b21becfb91614361c647d07d166219353` |
| 24 | `def` | [coimageStrongEpiMonoFactorisation](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianBasic.lean/declarations/coimagestrongepimonofactorisation.md) | 344 | `declaration-track:00e6a03706610a2b13b8b74f0098954f4f67748122f16d394e9585fa8035de8f` |
| 25 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianBasic.lean/declarations/instance-source-edition-11.md) | 356 | `declaration-track:df417e3caf2ce127d58b3defc3ea9b415a0cb54da30d471a6d3c61d0f1bb8554` |
| 26 | `example` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianBasic.lean/declarations/example.md) | 360 | `declaration-track:78068c8299a8f8131c607948c075c18707662b1c87d8fd2304ec90a7a9442b3e` |
| 27 | `example` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianBasic.lean/declarations/example-source-edition-2.md) | 362 | `declaration-track:abc51b1a28565e6d6a7b9ade89a5487e794371df627ef4ac6e03e08814d1b424` |
| 28 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianBasic.lean/declarations/instance-source-edition-10.md) | 373 | `declaration-track:d9855bd9a08af98c169edcc8ec5530808e088d8d9300040f3186515209ea3982` |
| 29 | `abbrev` | [coimageIsoImage](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianBasic.lean/declarations/coimageisoimage-source-edition-2.md) | 384 | `declaration-track:dcef63a67b0b64ce51d2bda31cdc916b68792f078c2fe5521668147112cc3ed0` |
| 30 | `abbrev` | [coimageIsoImage'](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianBasic.lean/declarations/coimageisoimage.md) | 389 | `declaration-track:156ec21db50b0abc3e96ef9c53fdfc7de4f7ba6f5432fa6313c9476ce5882174` |
| 31 | `theorem` | [coimageIsoImage'_hom](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianBasic.lean/declarations/coimageisoimage-hom.md) | 392 | `result-track:c208d8e31268c951891885e3ea8c68dad8146faf1acd52c863feb3d087742bb4` |
| 32 | `theorem` | [factorThruImage_comp_coimageIsoImage'_inv](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianBasic.lean/declarations/factorthruimage-comp-coimageisoimage-inv.md) | 400 | `result-track:789d1459633e24b0859e375cd71dfa91d2f18ced54530cec1479e41c3591123e` |
| 33 | `abbrev` | [imageIsoImage](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianBasic.lean/declarations/imageisoimage.md) | 407 | `declaration-track:aaaa6dd32db583b80349e1fbbf8153af90be380396f50c87cbd2750f62146410` |
| 34 | `theorem` | [imageIsoImage_hom_comp_image_ι](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianBasic.lean/declarations/imageisoimage-hom-comp-image.md) | 410 | `result-track:c3196ecb24d5187f9975c1e1f6efb275170e86c67c91df1abfdb03b0c99c0fbd` |
| 35 | `theorem` | [imageIsoImage_inv](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianBasic.lean/declarations/imageisoimage-inv.md) | 413 | `result-track:093502ec8ec4cb6704c68bd33351423e9aa5a81c38732e05934e482143672dd7` |
| 36 | `def` | [epiIsCokernelOfKernel](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianBasic.lean/declarations/epiiscokernelofkernel.md) | 432 | `declaration-track:0d52b6d9e7d6763d37e2bb37c6c692f679c4f008b4ed2cfcc3f6de0800a905c3` |
| 37 | `def` | [monoIsKernelOfCokernel](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianBasic.lean/declarations/monoiskernelofcokernel.md) | 439 | `declaration-track:2dd81c2b34b259b304e29c862a593c57a2d5c4327df6ae94b0d35409f105f8b2` |
| 38 | `def` | [epiDesc](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianBasic.lean/declarations/epidesc.md) | 447 | `declaration-track:f42243d7e471ef23678eb1bde5ef9645e1e094f89fc0d84ec38ba1ba46459c4a` |
| 39 | `theorem` | [comp_epiDesc](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianBasic.lean/declarations/comp-epidesc.md) | 451 | `result-track:66cdb3caa95aba2eb72e5bf6456a1c46daf10730ef862396ab64c6b96d1e2656` |
| 40 | `def` | [monoLift](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianBasic.lean/declarations/monolift.md) | 457 | `declaration-track:999052abecf32a4ac1478cb2ab18201204eb06db77754cfc8ac65bae1bf3d5da` |
| 41 | `theorem` | [monoLift_comp](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianBasic.lean/declarations/monolift-comp.md) | 461 | `result-track:1530016c7ce45567b135f1dff49e21ff18b966426780e91d2734500034645ac6` |
| 42 | `def` | [isLimitMapConeOfKernelForkOfι](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianBasic.lean/declarations/islimitmapconeofkernelforkof.md) | 473 | `declaration-track:f65fcf12ef391e3be504022831e5305a759cf3da3242bd5b8974000c34e326a4` |
| 43 | `def` | [isColimitMapCoconeOfCokernelCoforkOfπ](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianBasic.lean/declarations/iscolimitmapcoconeofcokernelcoforkof.md) | 489 | `declaration-track:67665a74b3f63fde2b47e7be30dd9ba17418c6cbbd2a5ded93ac591e523f1879` |
| 44 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianBasic.lean/declarations/instance-source-edition-6.md) | 508 | `declaration-track:a003af5b82a13bff06f71292243573759ce59527f98d0f520d4e56f182a56356` |
| 45 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianBasic.lean/declarations/instance-source-edition-13.md) | 512 | `declaration-track:f3616bb251c9fe741ef207674d4985c008d1be16f0ad6100998c4e9496f79222` |
| 46 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianBasic.lean/declarations/instance-source-edition-8.md) | 519 | `declaration-track:aa37bbdd132c6e04c84f875796ab32a31cc5a575f7b8e96417078e243c694cc7` |
| 47 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianBasic.lean/declarations/instance-source-edition-3.md) | 523 | `declaration-track:5378c4591db1e7a3793d31f20be5af8690cfc435fd8f1d10ad9919d42980d680` |
| 48 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianBasic.lean/declarations/instance-source-edition-12.md) | 526 | `declaration-track:e3d6b464efad570ee360980bcaaca4a41f63aa16177655e0faf9dd0851ca66ee` |
| 49 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianBasic.lean/declarations/instance.md) | 529 | `declaration-track:01c403b95c6d75b38691eedc4d35fcc361063204eb1f4f438fe4c54dd0e548f4` |
| 50 | `abbrev` | [pullbackToBiproduct](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianBasic.lean/declarations/pullbacktobiproduct.md) | 543 | `declaration-track:61486a184dca49f6125f1852f5cdb5e75eeaa3c748f3f14b646edc623a0c633f` |
| 51 | `abbrev` | [pullbackToBiproductFork](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianBasic.lean/declarations/pullbacktobiproductfork.md) | 550 | `declaration-track:ef3cdac91d1a3b31ea293ba415dbf49f8c78e22ddf4b5b8c512d3c3db923dc54` |
| 52 | `def` | [isLimitPullbackToBiproduct](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianBasic.lean/declarations/islimitpullbacktobiproduct.md) | 556 | `declaration-track:5f90bb4ac226a166cf35b8cdfdd887028be4396c2181ec5c8d4510daf3a7eb22` |
| 53 | `abbrev` | [biproductToPushout](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianBasic.lean/declarations/biproducttopushout.md) | 576 | `declaration-track:6cc154bee3e027e0f6f9a6b340f774026d21bfd766caee016fb8c793582fb3b8` |
| 54 | `abbrev` | [biproductToPushoutCofork](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianBasic.lean/declarations/biproducttopushoutcofork.md) | 581 | `declaration-track:42d9e32ce488902431a6cd819c40afa180d903d912f4fe796eaba72a9aecbf71` |
| 55 | `def` | [isColimitBiproductToPushout](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianBasic.lean/declarations/iscolimitbiproducttopushout.md) | 587 | `declaration-track:bf3214ac217b68ab4861db5e4de46fb0d468ba0ec455c61ee67a526718b3c782` |
| 56 | `instance` | [epi_pullback_of_epi_f](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianBasic.lean/declarations/epi-pullback-of-epi-f.md) | 605 | `declaration-track:3d6bfb0c77c55606b7cca8a05a3de0cd739f62441af83beb30b5fbfdbec185c4` |
| 57 | `instance` | [epi_pullback_of_epi_g](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianBasic.lean/declarations/epi-pullback-of-epi-g.md) | 637 | `declaration-track:e9e1639e82bb8595c08bb4b58a1007e02bae2b34a1f1f63688aeac20e6f589f4` |
| 58 | `theorem` | [epi_snd_of_isLimit](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianBasic.lean/declarations/epi-snd-of-islimit.md) | 668 | `result-track:d4dd542dcd7bcfd02a6188f496d82ce07c9922008a2edc9b7ca7e3f12b920bb8` |
| 59 | `theorem` | [epi_fst_of_isLimit](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianBasic.lean/declarations/epi-fst-of-islimit.md) | 673 | `result-track:41b41e308539676ded0a76983c9888b3559e93f0c3a5cf85902e0d0b30e9663f` |
| 60 | `theorem` | [epi_fst_of_factor_thru_epi_mono_factorization](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianBasic.lean/declarations/epi-fst-of-factor-thru-epi-mono-factorization.md) | 681 | `result-track:de1c1e0b2d6c41db495a141f57b4a7f1738a0f4b212ba9a57e7c213cebbe38b7` |
| 61 | `instance` | [mono_pushout_of_mono_f](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianBasic.lean/declarations/mono-pushout-of-mono-f.md) | 692 | `declaration-track:cbaf429977c6b2e335c75804eb67869b326ef20317ef02a0f2771449d001614a` |
| 62 | `instance` | [mono_pushout_of_mono_g](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianBasic.lean/declarations/mono-pushout-of-mono-g.md) | 714 | `declaration-track:6c88accf4c152b5fdde4d337dc9bbead1bc2e494cc273f72878b332306e1faf8` |
| 63 | `theorem` | [mono_inr_of_isColimit](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianBasic.lean/declarations/mono-inr-of-iscolimit.md) | 736 | `result-track:ba9708f48db4adc623a348d30642f173644ca041ac556cbf3695431add82b883` |
| 64 | `theorem` | [mono_inl_of_isColimit](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianBasic.lean/declarations/mono-inl-of-iscolimit.md) | 742 | `result-track:65ba33b904ff6ff6476221e39d03a9ac071f44b84047a53ad3b7a86d928c24be` |
| 65 | `theorem` | [mono_inl_of_factor_thru_epi_mono_factorization](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianBasic.lean/declarations/mono-inl-of-factor-thru-epi-mono-factorization.md) | 751 | `result-track:576e24d6cdbd1db10dbe508d8c564d3abc06f7d386dfb7c77f2f7cef2aeec3be` |
| 66 | `def` | [abelian](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianBasic.lean/declarations/abelian-source-edition-2.md) | 765 | `declaration-track:7fc9c8625c8ea151b67cf3402d4c8f2c003bb16ea149d0a8b53ddee8edd74832` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f85ca653489930961f5d00b8645906396b254ba3321f50a8604083091fcb45a5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8820b6a14711a3c41a8da9a1cf85367595f182c423d875bc0ec23f52c230b926.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8820b6a14711a3c41a8da9a1cf85367595f182c423d875bc0ec23f52c230b926.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
