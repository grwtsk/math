# Verification target: Shapes Comm Sq Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d4b9fe6fd8d06022d38ced6dcefae7f5490c3836",
  "lexical_observation_count": 115,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CommSq/Variant9429e77bf49e665faff465101a0baa058e33cc01b39c29465313270830d3d280.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSqNamespaced.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSqNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d4b9fe6fd8d06022d38ced6dcefae7f5490c3836`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CommSq/Variant9429e77bf49e665faff465101a0baa058e33cc01b39c29465313270830d3d280.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/CommSq/Variant9429e77bf49e665faff465101a0baa058e33cc01b39c29465313270830d3d280.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.CommSq` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Opposites` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Biproducts` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.ZeroMorphisms` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Constructions.BinaryProducts` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Constructions.ZeroObjects` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSqNamespaced.lean/declarations/cone.md) | 75 | `declaration-track:0dcecebd333d254527ca2ed4d5d8139ccbd45ece75b138e6fa99aa50ee1957bf` |
| 2 | `def` | [cocone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSqNamespaced.lean/declarations/cocone.md) | 82 | `declaration-track:17feaf469e9a317ac6323a266f67afb6e1e2c002d0e01226b374f0d5740403f3` |
| 3 | `theorem` | [cone_fst](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSqNamespaced.lean/declarations/cone-fst-source-edition-2.md) | 87 | `result-track:af9669fca37d15d2f38f16871ae6b2078ecbd66611c4e5f9c3d7ad5bfe4bfecb` |
| 4 | `theorem` | [cone_snd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSqNamespaced.lean/declarations/cone-snd-source-edition-2.md) | 92 | `result-track:936a64918dd7db069b747f66955a6e17bca44959b800ce53125cf5890fcbdba7` |
| 5 | `theorem` | [cocone_inl](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSqNamespaced.lean/declarations/cocone-inl.md) | 97 | `result-track:37ddc44ed92c7f269267a60f49b9af1acad1309970f3aacccd998b28c861ce5b` |
| 6 | `theorem` | [cocone_inr](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSqNamespaced.lean/declarations/cocone-inr-source-edition-2.md) | 102 | `result-track:7b4ed961f77d5314d76e913337447280c446b1b35be9d6028bc99b481ae3e381` |
| 7 | `def` | [coneOp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSqNamespaced.lean/declarations/coneop.md) | 109 | `declaration-track:228297343765f00679ce22af78bd826437fd4d4f51ac9294ac02efa117b4249c` |
| 8 | `def` | [coconeOp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSqNamespaced.lean/declarations/coconeop.md) | 116 | `declaration-track:26ea7f1d391ede1371030342b4a52b03f10c452054b6f10c4aab306d0ec3aadb` |
| 9 | `def` | [coneUnop](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSqNamespaced.lean/declarations/coneunop.md) | 123 | `declaration-track:4c378d9a29e09e2b5360224d638217749d17a8b901ef9a0788ffb01594aacf0b` |
| 10 | `def` | [coconeUnop](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSqNamespaced.lean/declarations/coconeunop.md) | 131 | `declaration-track:34408e5bd2e5bd53bc2cff241687c49949fb3e0674cee1c5be8f3c141572451e` |
| 11 | `structure` | [IsPullback](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSqNamespaced.lean/declarations/ispullback.md) | 150 | `declaration-track:7624e2169ed2b7de5e481fa277c79472ba1b73ee954f7f6c66b840ca9b00a33f` |
| 12 | `structure` | [IsPushout](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSqNamespaced.lean/declarations/ispushout.md) | 168 | `declaration-track:ddecd9fbd1e09749389f40e5bb4c3284b5982b811700e48596b7f6a7177ccfb1` |
| 13 | `structure` | [BicartesianSq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSqNamespaced.lean/declarations/bicartesiansq.md) | 188 | `declaration-track:e6efd8b0566ff2368e4ff14b21a8f5630edfbbdbdf32cf7fc0454fa6f00b5f03` |
| 14 | `def` | [cone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSqNamespaced.lean/declarations/cone-source-edition-2.md) | 210 | `declaration-track:70ff3393638bcc4369ccf6c8757b245e0f63c08007c90a452bbec1ce5e3c753e` |
| 15 | `theorem` | [cone_fst](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSqNamespaced.lean/declarations/cone-fst.md) | 215 | `result-track:0eb9204f6ccc133e80534c0e02ec917d64dd6c87ca6e3ed580f5d26b5b6afaac` |
| 16 | `theorem` | [cone_snd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSqNamespaced.lean/declarations/cone-snd.md) | 220 | `result-track:12fae162fe93389cc142fb995d7d6519122a98789e58f2ec992317997bbfb9d7` |
| 17 | `def` | [isLimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSqNamespaced.lean/declarations/islimit.md) | 226 | `declaration-track:5fde589996525e585b114fb0c0884673d1ca0bf0eb853510a89da69cbb9f0105` |
| 18 | `theorem` | [of_isLimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSqNamespaced.lean/declarations/of-islimit-source-edition-2.md) | 231 | `result-track:857c07585169f744d2df9a290dab3d0dcd8f935585cdb46c11822060f30b06fe` |
| 19 | `theorem` | [of_isLimit'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSqNamespaced.lean/declarations/of-islimit.md) | 238 | `result-track:199f7bb5b2120a09f028bdd4565ae5612c6743976c7e5f18c4faaac88f1d923c` |
| 20 | `theorem` | [of_hasPullback](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSqNamespaced.lean/declarations/of-haspullback.md) | 244 | `result-track:4411e289fe9d767e1bdebc708b2de60085e7c6efb680b2e46b3b0bb429f1730f` |
| 21 | `theorem` | [of_is_product](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSqNamespaced.lean/declarations/of-is-product-source-edition-2.md) | 252 | `result-track:f64ad9e04e9e147f451de1b21a07722195fd324bf1743007d24f88df39d221db` |
| 22 | `theorem` | [of_is_product'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSqNamespaced.lean/declarations/of-is-product.md) | 265 | `result-track:686a211f805515c35b79cc9a1fe88d46c581921c1a8f3ab5166dd5c0994e9d92` |
| 23 | `theorem` | [of_hasBinaryProduct'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSqNamespaced.lean/declarations/of-hasbinaryproduct-source-edition-2.md) | 272 | `result-track:c4a15a0d1e2084ded298f572712b102e4ea01705e8e47654f1e27df0475234b2` |
| 24 | `theorem` | [of_hasBinaryProduct](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSqNamespaced.lean/declarations/of-hasbinaryproduct.md) | 279 | `result-track:a0a4431bebbfb6eded3e973f5f84f01c4085ecdec25395b7becbbe2c0e9eb585` |
| 25 | `def` | [isoPullback](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSqNamespaced.lean/declarations/isopullback.md) | 288 | `declaration-track:e3e015357d67de25d74b8c5464668d8fdd7be3cb6979e75ff4f2abfe8b83c473` |
| 26 | `theorem` | [isoPullback_hom_fst](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSqNamespaced.lean/declarations/isopullback-hom-fst.md) | 293 | `result-track:cd671edea9b75d9e1273747579d32d7a967a9b352b918da0edb6dae7ed3a2f4b` |
| 27 | `theorem` | [isoPullback_hom_snd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSqNamespaced.lean/declarations/isopullback-hom-snd.md) | 300 | `result-track:b6619372d2533ef7dec01c96c634078ffcadd0609dc4400443837345c7ca5b4e` |
| 28 | `theorem` | [isoPullback_inv_fst](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSqNamespaced.lean/declarations/isopullback-inv-fst.md) | 307 | `result-track:21e0ab0e09be013b445a2af11d97d0baff44fbd8397b217fef5a389248a064cb` |
| 29 | `theorem` | [isoPullback_inv_snd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSqNamespaced.lean/declarations/isopullback-inv-snd.md) | 312 | `result-track:7de9f8f3b9eae7c93064a880832ecd57f960258b06d3e2e75cc8a766df9ab7ca` |
| 30 | `theorem` | [of_iso_pullback](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSqNamespaced.lean/declarations/of-iso-pullback.md) | 316 | `result-track:34fe060dfc533f15c40e5e30cf06f3617253a79e1adc0c50db567dbc68f90b27` |
| 31 | `theorem` | [of_horiz_isIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSqNamespaced.lean/declarations/of-horiz-isiso.md) | 323 | `result-track:5b7e022c503240d1e40afd94046f35595b98ccd3d95e982689b667232ae55aeb` |
| 32 | `def` | [cocone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSqNamespaced.lean/declarations/cocone-source-edition-2.md) | 341 | `declaration-track:fcbfbc4d341871023009884bc7f3e31be8da64c09bc9b0689f9cf2a35fc5e51c` |
| 33 | `theorem` | [cocone_inl](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSqNamespaced.lean/declarations/cocone-inl-source-edition-2.md) | 346 | `result-track:c4ed99bdde00f0ccf2ea3e2630413005cded1b2f93f8521314bb92a83c415fdc` |
| 34 | `theorem` | [cocone_inr](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSqNamespaced.lean/declarations/cocone-inr.md) | 351 | `result-track:377555f1f15fd85c318e59338747f2c9ac69564b2041c07841439452f354efb1` |
| 35 | `def` | [isColimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSqNamespaced.lean/declarations/iscolimit.md) | 357 | `declaration-track:8345c519c8051eac04b0ff7c6234a0d7f35dded6589f45ca9114a55cfa2a0de1` |
| 36 | `theorem` | [of_isColimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSqNamespaced.lean/declarations/of-iscolimit.md) | 362 | `result-track:f2d6000cb3a5679cc4372a7dd26bc78a4ded5bc83086f723179c088655d546fc` |
| 37 | `theorem` | [of_isColimit'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSqNamespaced.lean/declarations/of-iscolimit-source-edition-2.md) | 370 | `result-track:f582c56d3f47bb731abf0e49e821043df1aa37104ca3bfd2bd2727236e8008fa` |
| 38 | `theorem` | [of_hasPushout](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSqNamespaced.lean/declarations/of-haspushout.md) | 376 | `result-track:f1db2949afcfdf25677c3cc1eeb86f4cf5cb2c2489b5e5583a8165c86e09d879` |
| 39 | `theorem` | [of_is_coproduct](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSqNamespaced.lean/declarations/of-is-coproduct.md) | 384 | `result-track:8e55b0e622bd4445d92821baddbeef25a2a95be71f7e6e0c88c37d0bc08ac8b8` |
| 40 | `theorem` | [of_is_coproduct'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSqNamespaced.lean/declarations/of-is-coproduct-source-edition-2.md) | 397 | `result-track:ed1ee5f6050e4a9a8a7fa78226db62d33b93976adcf344397907d86441b10884` |
| 41 | `theorem` | [of_hasBinaryCoproduct'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSqNamespaced.lean/declarations/of-hasbinarycoproduct.md) | 404 | `result-track:e6c5d869edbce50327c0b355cc118ff9c6b5c6161baf1505a30de8734d88f5b2` |
| 42 | `theorem` | [of_hasBinaryCoproduct](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSqNamespaced.lean/declarations/of-hasbinarycoproduct-source-edition-2.md) | 411 | `result-track:e8790147791a1f31c0c67c0450c17d072910c17e8e41ab626d4bc3156c292da0` |
| 43 | `def` | [isoPushout](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSqNamespaced.lean/declarations/isopushout.md) | 420 | `declaration-track:f9185f875aeaf3f00bd6a21fb676baae0211c6cb08a3f849a4ca2de083ce63b6` |
| 44 | `theorem` | [inl_isoPushout_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSqNamespaced.lean/declarations/inl-isopushout-inv.md) | 425 | `result-track:26e6fcc6ea6bbc1ac576ba1d7da315f4ebf0cb2e318f4120df01755abff3ba0b` |
| 45 | `theorem` | [inr_isoPushout_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSqNamespaced.lean/declarations/inr-isopushout-inv.md) | 432 | `result-track:527d29d6f893ebfa4da88ea604d8d23587833029be001d772b497fc4866df6f3` |
| 46 | `theorem` | [inl_isoPushout_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSqNamespaced.lean/declarations/inl-isopushout-hom.md) | 439 | `result-track:7360274a736da6f2b497d4569784887572a164d4a56eb9ebaf480411f151f8a0` |
| 47 | `theorem` | [inr_isoPushout_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSqNamespaced.lean/declarations/inr-isopushout-hom.md) | 444 | `result-track:1cd89ebf33868206d9a14a12ec8566bf551524948b8fa0220627700406e28f1c` |
| 48 | `theorem` | [of_iso_pushout](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSqNamespaced.lean/declarations/of-iso-pushout.md) | 448 | `result-track:7a7ea047d8f0159a1e5e507281baca881edb78607567a89f9802ca0a5279e4ab` |
| 49 | `theorem` | [flip](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSqNamespaced.lean/declarations/flip-source-edition-2.md) | 461 | `result-track:88ef6c5f7fca83e6266a4e028854a61211d7cc265ef1b84ac5fabe937440306c` |
| 50 | `theorem` | [flip_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSqNamespaced.lean/declarations/flip-iff.md) | 465 | `result-track:711d790058b8be769656c29a8b62b5c73810d0b29ccbe722d95d7b6138b78a3b` |
| 51 | `theorem` | [zero_left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSqNamespaced.lean/declarations/zero-left.md) | 477 | `result-track:052676e274e9abdc87a8e84c0dd74f13c7adf7ba70a97ae8cebec3980ca54f0e` |
| 52 | `theorem` | [zero_top](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSqNamespaced.lean/declarations/zero-top.md) | 489 | `result-track:4fd59647138b7f59a12e81e9053a4f05e3f496e2dba81427444d1f80c006d711` |
| 53 | `theorem` | [zero_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSqNamespaced.lean/declarations/zero-right-source-edition-2.md) | 495 | `result-track:7d63469e91e8702700bdb746e16a2ea82288f7ee3b69d375309bda0ac64fb967` |
| 54 | `theorem` | [zero_bot](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSqNamespaced.lean/declarations/zero-bot-source-edition-2.md) | 502 | `result-track:df77ded0d97487721979d96a76160bf551312543e8086b2644fb63fa9007c530` |
| 55 | `theorem` | [paste_vert](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSqNamespaced.lean/declarations/paste-vert-source-edition-2.md) | 512 | `result-track:b7e77c67d0110b98c2a9f77c320a223b021e18ca47e0d77786b205d89b128b57` |
| 56 | `theorem` | [paste_horiz](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSqNamespaced.lean/declarations/paste-horiz-source-edition-2.md) | 520 | `result-track:d75e1673810977f6a48f09f4c455576296a6372ba87afcf246b276e4c4458b47` |
| 57 | `theorem` | [of_bot](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSqNamespaced.lean/declarations/of-bot.md) | 529 | `result-track:40afea80255a32b3e4cd47031e33a585fe0fb79d71a87cd8865ce28d2de49fb2` |
| 58 | `theorem` | [of_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSqNamespaced.lean/declarations/of-right-source-edition-2.md) | 538 | `result-track:e298484bf3e5695df5f9254472176ebfef405f3a501c82e674ad8db0cc838966` |
| 59 | `theorem` | [paste_vert_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSqNamespaced.lean/declarations/paste-vert-iff-source-edition-2.md) | 545 | `result-track:d42e04cf75d01702e2f452756dedc17179c5714586fdf0154b8d9488b1a9b364` |
| 60 | `theorem` | [paste_horiz_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSqNamespaced.lean/declarations/paste-horiz-iff-source-edition-2.md) | 552 | `result-track:63bba3f882a2034c4e9bb03607eb86d339c6a9f452c66424e833a27bf8908660` |
| 61 | `theorem` | [of_isBilimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSqNamespaced.lean/declarations/of-isbilimit-source-edition-2.md) | 565 | `result-track:e6f03b321c046ba8799e418762ea1ba83431e64659b574c6553c2d345503320e` |
| 62 | `theorem` | [of_has_biproduct](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSqNamespaced.lean/declarations/of-has-biproduct.md) | 571 | `result-track:060fa956e4d84ebffb140ce8b58d9f79fab79be04377d01fc8e1f8e482203a84` |
| 63 | `theorem` | [inl_snd'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSqNamespaced.lean/declarations/inl-snd-source-edition-4.md) | 576 | `result-track:b36af30683176f541f99c5a85c776807519453461c0d44bea2d862b462caa1ec` |
| 64 | `theorem` | [inl_snd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSqNamespaced.lean/declarations/inl-snd-source-edition-2.md) | 594 | `result-track:123c69d1e53fd605ee127f096070f77797a7671746af5fbfe177c3445076f412` |
| 65 | `theorem` | [inr_fst'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSqNamespaced.lean/declarations/inr-fst-source-edition-4.md) | 599 | `result-track:c05909489a6f531b40c3550fee4f6cc79f02124bce122e7e8cf721c3c7f3aed1` |
| 66 | `theorem` | [inr_fst](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSqNamespaced.lean/declarations/inr-fst-source-edition-2.md) | 618 | `result-track:5ed4ee709f7fc072ec75dc93bd063eb53289f928922f28f1c39b71014a1fc655` |
| 67 | `theorem` | [of_is_bilimit'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSqNamespaced.lean/declarations/of-is-bilimit.md) | 623 | `result-track:0e1d12f8657ab689aa260208bf4fbdab22b90f61d60b7bac545fdff9b994f2ed` |
| 68 | `theorem` | [of_hasBinaryBiproduct](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSqNamespaced.lean/declarations/of-hasbinarybiproduct.md) | 629 | `result-track:11b67ec8ff11c942662dff75de84c1565b30bcca7b874d53a7369e442d1e34f4` |
| 69 | `instance` | [hasPullback_biprod_fst_biprod_snd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSqNamespaced.lean/declarations/haspullback-biprod-fst-biprod-snd.md) | 634 | `declaration-track:2ba48452804789b4e9a0b22bff64dd3846f2d7afe3771abdd0e7b802ad17c8b9` |
| 70 | `def` | [pullbackBiprodInlBiprodInr](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSqNamespaced.lean/declarations/pullbackbiprodinlbiprodinr.md) | 640 | `declaration-track:5b1fadb24bbd81c1fb67601a9a21d3dba29db5129af78e3236472e8a1119d65b` |
| 71 | `theorem` | [op](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSqNamespaced.lean/declarations/op.md) | 647 | `result-track:fab00ced3b72f0a457f8e866612e2f93f37d125194d65e78e661a4304589aaad` |
| 72 | `theorem` | [unop](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSqNamespaced.lean/declarations/unop-source-edition-2.md) | 653 | `result-track:cad4d4a95470f73503ec3a00ffcb3d8e8362e6853de3aa45f44c1bc6a6f3b8f9` |
| 73 | `theorem` | [of_vert_isIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSqNamespaced.lean/declarations/of-vert-isiso.md) | 661 | `result-track:647846a6efffa9357603a3b9ede44b6bec34ff1b6b31eed9fa9873c0c7315c9e` |
| 74 | `theorem` | [flip](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSqNamespaced.lean/declarations/flip-source-edition-3.md) | 671 | `result-track:f7990d75f13b5e97cd91758e4f70e414a1046d7f04930bc9586158f1044f2a57` |
| 75 | `theorem` | [flip_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSqNamespaced.lean/declarations/flip-iff-source-edition-2.md) | 675 | `result-track:c5e4574efa50109c5c166329ba1bb08e2b7e21f601dc3da21701bb6b5617dbad` |
| 76 | `theorem` | [zero_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSqNamespaced.lean/declarations/zero-right.md) | 687 | `result-track:63e2e357944e88bc6fc02f3e9c2e9f0a2f94e13362479b18289d7fe860062af2` |
| 77 | `theorem` | [zero_bot](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSqNamespaced.lean/declarations/zero-bot.md) | 701 | `result-track:6fef3bcac0c15b2d77e1423993b41fa14d2ec0c8968f09df6d7e94a8669347e9` |
| 78 | `theorem` | [zero_left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSqNamespaced.lean/declarations/zero-left-source-edition-2.md) | 707 | `result-track:14c8a75185f849470bfbe50e279e945949cd4453724dba8fd8511cfb75ca10b4` |
| 79 | `theorem` | [zero_top](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSqNamespaced.lean/declarations/zero-top-source-edition-2.md) | 714 | `result-track:620d4b03c67c57f951e3dbd43c575fd3fdc9049325b167d27e3f35e7e89d69c9` |
| 80 | `theorem` | [paste_vert](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSqNamespaced.lean/declarations/paste-vert.md) | 724 | `result-track:1b2d7bdceda4c4f2b58e91217bf0489241a7b9df47c5f5088c563418c7e88ae4` |
| 81 | `theorem` | [paste_horiz](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSqNamespaced.lean/declarations/paste-horiz.md) | 732 | `result-track:c3b9ce931f6187ce6f2209b091483a18111c709c2c5ee5e0e5f12e13c534dc0a` |
| 82 | `theorem` | [of_bot](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSqNamespaced.lean/declarations/of-bot-source-edition-2.md) | 741 | `result-track:c448269e49f6ef06237e72835a830bd235b16890456f545c03f8384a3b599bc9` |
| 83 | `theorem` | [of_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSqNamespaced.lean/declarations/of-right.md) | 750 | `result-track:6788f0fe91cefd4d37423ae46dcad4e40729cc133ccd0e83181890aa9f74074f` |
| 84 | `theorem` | [paste_vert_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSqNamespaced.lean/declarations/paste-vert-iff.md) | 757 | `result-track:03dcbbe5dd29ae78337dce122463fa0e9965faa9194d25c512a6fb1d67d9443e` |
| 85 | `theorem` | [paste_horiz_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSqNamespaced.lean/declarations/paste-horiz-iff.md) | 764 | `result-track:2f1f488a47cb049c4894ebbeb20f1f7601ede4dfde112c82f06f9e20acb455ed` |
| 86 | `theorem` | [of_isBilimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSqNamespaced.lean/declarations/of-isbilimit.md) | 777 | `result-track:bb253e4e7f7a99c9384ddda5ba1a556c051daaad832b369ddb77d2fe990be829` |
| 87 | `theorem` | [of_has_biproduct](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSqNamespaced.lean/declarations/of-has-biproduct-source-edition-3.md) | 783 | `result-track:82f66abd0f31a113b1e7be383929987abc42c1450345704b98aa37d2e9f3fa45` |
| 88 | `theorem` | [inl_snd'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSqNamespaced.lean/declarations/inl-snd-source-edition-3.md) | 788 | `result-track:1d5e88222d86f67ce5fa77935b18d0f5cce6d0ff9c79ab13c01520c639afadb6` |
| 89 | `theorem` | [inl_snd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSqNamespaced.lean/declarations/inl-snd.md) | 806 | `result-track:00d40e6d73ae40cdc3ee999711c813b38a5738d38bea0cad3a31180c23573187` |
| 90 | `theorem` | [inr_fst'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSqNamespaced.lean/declarations/inr-fst.md) | 811 | `result-track:2990b027b2d4d228bdb58f1b6310e6989f7b266474dc8d9ca4483e229b6d1bd7` |
| 91 | `theorem` | [inr_fst](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSqNamespaced.lean/declarations/inr-fst-source-edition-3.md) | 828 | `result-track:6ef1d9a06b5dbdb475c25e914d8b26d56a71a9bf82ca7263b3721d82367717bf` |
| 92 | `theorem` | [of_is_bilimit'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSqNamespaced.lean/declarations/of-is-bilimit-source-edition-2.md) | 833 | `result-track:5b92589389c7fe96370f6d40bd0f00516a770ccd557e0c4dfabc8de02a645522` |
| 93 | `theorem` | [of_hasBinaryBiproduct](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSqNamespaced.lean/declarations/of-hasbinarybiproduct-source-edition-2.md) | 839 | `result-track:6ccd357c4275b65434f4beffb88ceec4356e5ff075e5388e11ff427214ee6f3d` |
| 94 | `instance` | [hasPushout_biprod_fst_biprod_snd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSqNamespaced.lean/declarations/haspushout-biprod-fst-biprod-snd.md) | 844 | `declaration-track:4d9089d7822d943959a40ca9f962304d4da15e00810810904e3d05e91fc0d6b9` |
| 95 | `def` | [pushoutBiprodFstBiprodSnd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSqNamespaced.lean/declarations/pushoutbiprodfstbiprodsnd.md) | 850 | `declaration-track:e8c1081d6ac7ec0a2c0537b65d3adeb35266258e4e1fe7d513d660ec1f655de3` |
| 96 | `theorem` | [op](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSqNamespaced.lean/declarations/op-source-edition-2.md) | 857 | `result-track:fc3864c9e11ef45e877654212b26d98e83fac57ab5f86ad26d939045373dc50e` |
| 97 | `theorem` | [unop](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSqNamespaced.lean/declarations/unop.md) | 864 | `result-track:48102802a328a393742e0eb8a3706158141031571731afe89efc2829214e49e2` |
| 98 | `theorem` | [of_horiz_isIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSqNamespaced.lean/declarations/of-horiz-isiso-source-edition-2.md) | 872 | `result-track:de3939744b3f3eb5c867eba3afe4d675a8f1ea2e937216d7246ad4450925935a` |
| 99 | `theorem` | [of_vert_isIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSqNamespaced.lean/declarations/of-vert-isiso-source-edition-2.md) | 881 | `result-track:d37365389ab469de91fbbeb88b5ccd955544aec39771d2e2a85b0de9a042a489` |
| 100 | `def` | [IsPullback.isLimitFork](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSqNamespaced.lean/declarations/ispullback-islimitfork.md) | 893 | `declaration-track:63220dc91e69e3f419b19117c70ee05c30f3c12938e3bc4ea1f1300edacebaec` |
| 101 | `def` | [IsPushout.isLimitFork](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSqNamespaced.lean/declarations/ispushout-islimitfork.md) | 904 | `declaration-track:821b16d46326ff332735a5b9d0ea13f18ff3bfd3c8e494815d868f86b198f7ef` |
| 102 | `theorem` | [of_isPullback_isPushout](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSqNamespaced.lean/declarations/of-ispullback-ispushout.md) | 920 | `result-track:d0cc5d357147c8f7b2ffd572d889d8acb0b6bb33d6abff9c1f7539efca09a9a9` |
| 103 | `theorem` | [flip](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSqNamespaced.lean/declarations/flip.md) | 925 | `result-track:0f086dfcc1a3c34c3e136da578d046c7b291cc84907de533831574e64b71bda8` |
| 104 | `theorem` | [of_is_biproduct₁](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSqNamespaced.lean/declarations/of-is-biproduct.md) | 943 | `result-track:21b58635f7eebe253c35e4baeb1dc3e52cf74d31a7d15e126b2b6dc7a3d4d767` |
| 105 | `theorem` | [of_is_biproduct₂](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSqNamespaced.lean/declarations/of-is-biproduct-source-edition-2.md) | 958 | `result-track:7bc9e6d70203d9258e31f27dd0e79cb7fe0f989640b3eb1880ccdbce14d4da6c` |
| 106 | `theorem` | [of_has_biproduct₁](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSqNamespaced.lean/declarations/of-has-biproduct-source-edition-2.md) | 974 | `result-track:2339583f170b739b928f68f4b1708f8e452001aa48993a9d414e7c0d7b2bef02` |
| 107 | `theorem` | [of_has_biproduct₂](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSqNamespaced.lean/declarations/of-has-biproduct-source-edition-4.md) | 990 | `result-track:ba773fa437a8225109b2c2da8f7562eb1235a9d14fd63f3dd1c4bcf7ce0277e4` |
| 108 | `theorem` | [Functor.map_isPullback](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSqNamespaced.lean/declarations/functor-map-ispullback.md) | 1003 | `result-track:9a439d766f28052810b3fd844cfdba002f9c7ddd5c377f8a0d394a25efcf6c5c` |
| 109 | `theorem` | [Functor.map_isPushout](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSqNamespaced.lean/declarations/functor-map-ispushout.md) | 1016 | `result-track:82bd0e76af8199007f80d509c6461c8c263c8428e42085db89daddc92a00b969` |
| 110 | `theorem` | [IsPullback.of_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSqNamespaced.lean/declarations/ispullback-of-map.md) | 1033 | `result-track:865f862ea210a141c45f07186cc1ff9c3a7ecd7b35b4084292a7001230fe003e` |
| 111 | `theorem` | [IsPullback.of_map_of_faithful](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSqNamespaced.lean/declarations/ispullback-of-map-of-faithful.md) | 1043 | `result-track:bdd7290bbbf1cdab84211756a09ec673fa519143445f04fe61885d584d3ae31b` |
| 112 | `theorem` | [IsPullback.map_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSqNamespaced.lean/declarations/ispullback-map-iff.md) | 1048 | `result-track:b7df58941ad691c908d018d2e8988f5f7194f3e76428c403a3e2f186240d8165` |
| 113 | `theorem` | [IsPushout.of_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSqNamespaced.lean/declarations/ispushout-of-map.md) | 1054 | `result-track:b9050f365914737378cb0100a971eb132c3d50340e07cffb74c6c4af1046d5d3` |
| 114 | `theorem` | [IsPushout.of_map_of_faithful](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSqNamespaced.lean/declarations/ispushout-of-map-of-faithful.md) | 1064 | `result-track:0dd66343c5bd23521f34fefb6bc75b9bfdd58b3c24099a20c19f1a010d0a79fb` |
| 115 | `theorem` | [IsPushout.map_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCommSqNamespaced.lean/declarations/ispushout-map-iff.md) | 1069 | `result-track:76fbadb875ff4232bedaf72ed0668403e2ce75f76542029985ed4f716b78f409` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4835ece7c8a9f66850f1fabb624bfb051de2cd1952b0704f30a7ff23a1e07823 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CommSq/Variant9429e77bf49e665faff465101a0baa058e33cc01b39c29465313270830d3d280.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/CommSq/Variant9429e77bf49e665faff465101a0baa058e33cc01b39c29465313270830d3d280.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
