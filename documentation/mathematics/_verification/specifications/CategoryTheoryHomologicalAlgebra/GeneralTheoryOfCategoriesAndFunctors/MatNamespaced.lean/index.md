# Verification target: Mat Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "92f29de71b125674e7e041f3c706a5497a1ab592",
  "lexical_observation_count": 62,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Mat/Variant368c60cf6eb179230bee1fbaa68435305e94d9e65de0ccacc5f234738cb47278.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MatNamespaced.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MatNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `92f29de71b125674e7e041f3c706a5497a1ab592`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Mat/Variant368c60cf6eb179230bee1fbaa68435305e94d9e65de0ccacc5f234738cb47278.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Mat/Variant368c60cf6eb179230bee1fbaa68435305e94d9e65de0ccacc5f234738cb47278.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Group.Finset.Pi` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Pi` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Opposites` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Opposite` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.FintypeCat` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.BinaryBiproducts` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Preadditive.AdditiveFunctor` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Preadditive.Basic` — import line 18; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Preadditive.SingleObj` — import line 19; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Matrix.DMatrix` — import line 20; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Matrix.Mul` — import line 21; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Mat_](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MatNamespaced.lean/declarations/mat.md) | 72 | `declaration-track:915d65cb526e0efeba47eb54e0a8cec8fff176c7e5b939e9c7a457126b55bdaa` |
| 2 | `def` | [Hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MatNamespaced.lean/declarations/hom.md) | 86 | `declaration-track:daa27a15cf8ba0cef0f709641d88ca106d71396a975bfb3d537e3899fb2950c1` |
| 3 | `def` | [id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MatNamespaced.lean/declarations/id.md) | 93 | `declaration-track:9604b6c969a11226d4c8234cafac49cc6e454a5ea02677073747478797f4b18a` |
| 4 | `def` | [comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MatNamespaced.lean/declarations/comp.md) | 96 | `declaration-track:2e1570261a376da9655c9b3182aa27d4d27f382c8ea32fc85e8304cbaa401f57` |
| 5 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MatNamespaced.lean/declarations/instance-source-edition-5.md) | 105 | `declaration-track:33d32b44ae4592152be5d9185498f833145c53fdd35a7634bafe304ecd91c99f` |
| 6 | `theorem` | [hom_ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MatNamespaced.lean/declarations/hom-ext-source-edition-2.md) | 122 | `result-track:8caa2c63b7d1827e6076b7250b23f70ba4c0d959aac8f89d38a0f6fc6a58bb36` |
| 7 | `theorem` | [id_def](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MatNamespaced.lean/declarations/id-def.md) | 126 | `result-track:85db16d5063d79716b4158721d91b7e6595a15e3d5202181608ac5ca145456df` |
| 8 | `theorem` | [id_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MatNamespaced.lean/declarations/id-apply.md) | 131 | `result-track:0287f3ae66e7fdd7dd84bd3441bd321a972ad9cacd0feaf4cd3669f2fe97fb91` |
| 9 | `theorem` | [id_apply_self](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MatNamespaced.lean/declarations/id-apply-self-source-edition-2.md) | 136 | `result-track:f75c4fcfa0006642d882b3deeb8e396e1b98722eec13ca091471d7fb293ad665` |
| 10 | `theorem` | [id_apply_of_ne](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MatNamespaced.lean/declarations/id-apply-of-ne-source-edition-2.md) | 139 | `result-track:59de1d06ae8872a7e71428744e3ae8fa7fe366edae66c5befa5a813371630880` |
| 11 | `theorem` | [comp_def](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MatNamespaced.lean/declarations/comp-def-source-edition-2.md) | 142 | `result-track:9bee3da7425e70dd65c25c04f9b7838df62a2dab21b6d1ca969a919163f7ffb8` |
| 12 | `theorem` | [comp_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MatNamespaced.lean/declarations/comp-apply.md) | 147 | `result-track:77df4daa72486fea64c41014af7276874ee684e636992d9656a4cfd6413fabee` |
| 13 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MatNamespaced.lean/declarations/instance-source-edition-14.md) | 151 | `declaration-track:841adcb038e8ba29c0c319a27f181e1378426e10b04df1a5bcb18dbe45f24ee3` |
| 14 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MatNamespaced.lean/declarations/instance-source-edition-10.md) | 158 | `declaration-track:54cb2680277cb08ad0471fa53e3ae9ab30b10cefc094e1aca27ccf9228dc8a90` |
| 15 | `theorem` | [add_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MatNamespaced.lean/declarations/add-apply-source-edition-2.md) | 163 | `result-track:ceb04bd380cba30ed641fa1fbffdecc6b3717acdf5740454eb893e3e6a499fdd` |
| 16 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MatNamespaced.lean/declarations/instance-source-edition-16.md) | 166 | `declaration-track:a3d400e6b2a35d64355ec1fb9478c4c732e216da313fa5431122a397d6afdc85` |
| 17 | `instance` | [hasFiniteBiproducts](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MatNamespaced.lean/declarations/hasfinitebiproducts.md) | 180 | `declaration-track:2ff7ce9b54b168c094520f482f43b3b0cd9ae16a44e9626eb472dd0f82bc2af4` |
| 18 | `def` | [mapMat_](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MatNamespaced.lean/declarations/mapmat.md) | 258 | `declaration-track:38af08ec8cf56e71162718bb9c31bc06e5bc677cb5c9631017ec92e85eae71cc` |
| 19 | `def` | [mapMatId](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MatNamespaced.lean/declarations/mapmatid.md) | 265 | `declaration-track:620b674599cf51a8b5cb6949862aee6da926d525bbc118befab71bdb53af5bb0` |
| 20 | `def` | [mapMatComp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MatNamespaced.lean/declarations/mapmatcomp.md) | 275 | `declaration-track:73961bbf280761aa680ad5df7b4ff636ea5ea182cc913b27b4443cc09b43c9cb` |
| 21 | `def` | [embedding](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MatNamespaced.lean/declarations/embedding.md) | 290 | `declaration-track:17a954a66ac0023aec972ba38cec7baa70843c9f8c83bdbead807ddb51fc173b` |
| 22 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MatNamespaced.lean/declarations/instance-source-edition-3.md) | 298 | `declaration-track:1be8c33f211382371d72514588cb0fce2578cd2a700cd2b516b4e0e557e9881e` |
| 23 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MatNamespaced.lean/declarations/instance-source-edition-8.md) | 301 | `declaration-track:4b434e237a301afa7459455a7d8758a1ff16abf69e7a676132c151e4c51a2a1a` |
| 24 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MatNamespaced.lean/declarations/instance-source-edition-17.md) | 303 | `declaration-track:ac4448392a2106ff4986ff6e1aa1fb60e6e0345d1fee176c91a4bec094c2c9e6` |
| 25 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MatNamespaced.lean/declarations/instance-source-edition-4.md) | 307 | `declaration-track:31a2fc77b17556e93f5fc4aa974d8cecfc66499b1d95fbf3e8b7863ba416a5c5` |
| 26 | `def` | [isoBiproductEmbedding](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MatNamespaced.lean/declarations/isobiproductembedding.md) | 318 | `declaration-track:d0c0e5e2f36c6fe30413ecf035d03d1f78f8691dba637e5cd9b98469cc740e47` |
| 27 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MatNamespaced.lean/declarations/instance-source-edition-11.md) | 350 | `declaration-track:57398a1d93f1aaabe0bf2ffaaffb3d2fa9ede8281839197e5427de0d4a8b7e74` |
| 28 | `def` | [additiveObjIsoBiproduct](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MatNamespaced.lean/declarations/additiveobjisobiproduct.md) | 358 | `declaration-track:16cf66311d70bd491dfc9f14d5e96bcac5a48dac75c56b05dcd414eef4729d7f` |
| 29 | `lemma` | [additiveObjIsoBiproduct_hom_π](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MatNamespaced.lean/declarations/additiveobjisobiproduct-hom.md) | 363 | `result-track:867cc5e9b77be84c446916e21fa1e480fb3f4f499fe16cb68e7fc84ab9175399` |
| 30 | `lemma` | [ι_additiveObjIsoBiproduct_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MatNamespaced.lean/declarations/additiveobjisobiproduct-inv.md) | 372 | `result-track:ed6263492df74e18450552dfdcce9be8e087a51a56292d79411ac0b79077d474` |
| 31 | `theorem` | [additiveObjIsoBiproduct_naturality](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MatNamespaced.lean/declarations/additiveobjisobiproduct-naturality-source-edition-2.md) | 381 | `result-track:f94bae063266fb2ad7101ec20eccaffe43748a7dd6f59ed70cf8135f4e8f9c04` |
| 32 | `theorem` | [additiveObjIsoBiproduct_naturality'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MatNamespaced.lean/declarations/additiveobjisobiproduct-naturality.md) | 399 | `result-track:562e9a6ede9e4662070538d97bceb18786688d401bae9d507554d0badcfe74e9` |
| 33 | `def` | [lift](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MatNamespaced.lean/declarations/lift.md) | 411 | `declaration-track:21c17f7176b8dc38f4bf8ee550bffa3ea2d8b709002acc2141c159b218b4762d` |
| 34 | `instance` | [lift_additive](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MatNamespaced.lean/declarations/lift-additive.md) | 420 | `declaration-track:d9a46e21d71219fa98903a0ff0a55c1f5daf90c637e6ce3a4744dfb799654061` |
| 35 | `def` | [embeddingLiftIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MatNamespaced.lean/declarations/embeddingliftiso.md) | 424 | `declaration-track:4f94ee858315f3af792e2dc8115bd53092a046d5f24a29435dbdf77213cfa762` |
| 36 | `def` | [liftUnique](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MatNamespaced.lean/declarations/liftunique.md) | 432 | `declaration-track:d2764534d963ba6440b80aa62df1e32c6e5d94ac71f1412a0f9e61de28053a6b` |
| 37 | `def` | [ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MatNamespaced.lean/declarations/ext.md) | 456 | `declaration-track:f9804f1d45aacf308970d44f7ec1b6ffb2fab0323953f95b6eff915c86f50b20` |
| 38 | `def` | [equivalenceSelfOfHasFiniteBiproductsAux](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MatNamespaced.lean/declarations/equivalenceselfofhasfinitebiproductsaux.md) | 462 | `declaration-track:b8574fc14b728ec6b0bde515717efab0770358700c5330e7b15024a03875acde` |
| 39 | `def` | [equivalenceSelfOfHasFiniteBiproducts](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MatNamespaced.lean/declarations/equivalenceselfofhasfinitebiproducts.md) | 474 | `declaration-track:308e4a00ce74476c061923eaa300d313d699740e6d4ed51f6736c69211078c52` |
| 40 | `theorem` | [equivalenceSelfOfHasFiniteBiproducts_functor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MatNamespaced.lean/declarations/equivalenceselfofhasfinitebiproducts-functor.md) | 483 | `result-track:4bc4c7587e8f4bc48142af851693e5a3448d63caf6a4b1ac70f727d4e20f5c7d` |
| 41 | `theorem` | [equivalenceSelfOfHasFiniteBiproducts_inverse](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MatNamespaced.lean/declarations/equivalenceselfofhasfinitebiproducts-inverse.md) | 489 | `result-track:e64a01e3105f4f5d71c024578787a5c694e2c4ddfe76bdd203d21a94be8a1222` |
| 42 | `def` | [Mat](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MatNamespaced.lean/declarations/mat-source-edition-2.md) | 501 | `declaration-track:f02474d621a7a8d81ce8d932e535e032e9598cd652486c9d0a55d948a12b75b1` |
| 43 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MatNamespaced.lean/declarations/instance-source-edition-18.md) | 504 | `declaration-track:ad53e172e58a7955acad5887b242dc35a4dfdec6585c31ee76e162a2a4b9a2c2` |
| 44 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MatNamespaced.lean/declarations/instance-source-edition-13.md) | 508 | `declaration-track:7dc613ec1dd9fea75c42c44416a5203a6353e111d33825cca47caaf71bf0e2c0` |
| 45 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MatNamespaced.lean/declarations/instance-source-edition-15.md) | 514 | `declaration-track:8aa66a6219254b6cd601b8a808c4a649e13b8a31bbcd061ced52f7391e9d0ca7` |
| 46 | `theorem` | [hom_ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MatNamespaced.lean/declarations/hom-ext.md) | 527 | `result-track:34712ec76083fd80213348f2dafc13cc58599ae7cc41db50a540531c94a8c874` |
| 47 | `theorem` | [id_def](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MatNamespaced.lean/declarations/id-def-source-edition-2.md) | 533 | `result-track:9e9213ab27f6ca6e14ec820dcaf18ca35be41c8f30dbc80d45a109d54e3a9aef` |
| 48 | `theorem` | [id_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MatNamespaced.lean/declarations/id-apply-source-edition-2.md) | 537 | `result-track:77ae430556b58cf568b0f3a3d560979ca49f7539bd8fc6081de337e1caafd777` |
| 49 | `theorem` | [id_apply_self](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MatNamespaced.lean/declarations/id-apply-self.md) | 541 | `result-track:139b4413414ad52989e85dd6314665ee3b3f907cfc98ca3b7e74d0cc07127f98` |
| 50 | `theorem` | [id_apply_of_ne](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MatNamespaced.lean/declarations/id-apply-of-ne.md) | 544 | `result-track:08c2bd3fbb73124525323887f5316ebbab6d1a96d94a16a35a5a9ae941de8509` |
| 51 | `theorem` | [comp_def](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MatNamespaced.lean/declarations/comp-def.md) | 547 | `result-track:114afb274516255d4d50459c4f914addc62552af357f842d40a3e665035de8fd` |
| 52 | `theorem` | [comp_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MatNamespaced.lean/declarations/comp-apply-source-edition-2.md) | 552 | `result-track:b91b69f9d7bac837c8011f6e5912e63fa8fc666a596fb1ca587b6ae3e0e10963` |
| 53 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MatNamespaced.lean/declarations/instance-source-edition-6.md) | 556 | `declaration-track:42151379c91d71136cdd9b4b527987e48203decca1b1a6f439b1aa9e22c43dd4` |
| 54 | `def` | [equivalenceSingleObjInverse](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MatNamespaced.lean/declarations/equivalencesingleobjinverse.md) | 567 | `declaration-track:4a741ee8cfcc4a9fbb538535cbd0587d88463edc52708306aa57e64d9547aaf7` |
| 55 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MatNamespaced.lean/declarations/instance.md) | 580 | `declaration-track:0f8a7fa3bf7fb9b567f1647de0e1d3908c9859904a3e3c068622aaa2d16764ea` |
| 56 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MatNamespaced.lean/declarations/instance-source-edition-7.md) | 586 | `declaration-track:4410ceab07c76ef9e9e917905929d1a55c08dc3c908828489bc888ae5b6caa53` |
| 57 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MatNamespaced.lean/declarations/instance-source-edition-9.md) | 589 | `declaration-track:54bf06fcfeef083d6ce9ba6086c6d28b8b8adeb5d4993433820d5fc6de455e9b` |
| 58 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MatNamespaced.lean/declarations/instance-source-edition-12.md) | 594 | `declaration-track:6cd0baa1c304bf13b974a7d5438606dd5a5fbfa6ab2863e981c30fa2411a455f` |
| 59 | `def` | [equivalenceSingleObj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MatNamespaced.lean/declarations/equivalencesingleobj.md) | 598 | `declaration-track:354ff56a2f96fa7c0a22ca7959e2192af27aec2f5f9fd9e5c2067a12df5c3105` |
| 60 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MatNamespaced.lean/declarations/instance-source-edition-19.md) | 602 | `declaration-track:d7362749371ba0fedcd076be198dbbba4ebf7ebeecc6f430ea848315ddbf2629` |
| 61 | `theorem` | [add_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MatNamespaced.lean/declarations/add-apply.md) | 610 | `result-track:4cd26ad80ac4b79d14f3db9b049b6894b844e8961aa0276332aece9738475277` |
| 62 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MatNamespaced.lean/declarations/instance-source-edition-2.md) | 615 | `declaration-track:11200e012eb53a06b6c75eb0feb145b23ff157b57c92dce3d6b0f9f8ded60634` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=dfa7899f221cf8364733c325b540979ff6baa27359f83ffe0c60b1e8abbbae47 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Mat/Variant368c60cf6eb179230bee1fbaa68435305e94d9e65de0ccacc5f234738cb47278.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Mat/Variant368c60cf6eb179230bee1fbaa68435305e94d9e65de0ccacc5f234738cb47278.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
