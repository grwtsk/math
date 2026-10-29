# Verification target: Opposite Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4cbc54511d7a7f6046706e617f954907fad3e059",
  "lexical_observation_count": 105,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Opposite/Variantafdaa207c61d063b416132dc55947e87369dbc0818bd80da332b39a1bf5323d1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/OppositeNamespacedPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/OppositeNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4cbc54511d7a7f6046706e617f954907fad3e059`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Opposite/Variantafdaa207c61d063b416132dc55947e87369dbc0818bd80da332b39a1bf5323d1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/Opposite/Variantafdaa207c61d063b416132dc55947e87369dbc0818bd80da332b39a1bf5323d1.lean.json)

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
| 1 | `structure` | [MonoidalOpposite](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/OppositeNamespacedPublic.lean/declarations/monoidalopposite.md) | 41 | `declaration-track:01809b42b71cb53d5135a387a7e88a8aab5a5672c335afbd308a66e95c597225` |
| 2 | `theorem` | [mop_injective](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/OppositeNamespacedPublic.lean/declarations/mop-injective.md) | 50 | `result-track:09952d3adf62c25fd8e449b540bac91a746089a91dae0bf24d4f6edc8ee0f4f5` |
| 3 | `theorem` | [unmop_injective](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/OppositeNamespacedPublic.lean/declarations/unmop-injective.md) | 52 | `result-track:9f94edc129386c6f91b6c756c883e8a61663e7c77f0a7a04f2c58c128c95de73` |
| 4 | `theorem` | [mop_inj_iff](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/OppositeNamespacedPublic.lean/declarations/mop-inj-iff.md) | 55 | `result-track:8f9e687d16f3ad0d6c6034a7def18b70286d0bd7abf90f16b41ed829acca11ca` |
| 5 | `theorem` | [unmop_inj_iff](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/OppositeNamespacedPublic.lean/declarations/unmop-inj-iff.md) | 58 | `result-track:cad682ff4384e2c3c1128b5d3b26ebfe4cf4d1a7b962c8cffee42b72299bf1e9` |
| 6 | `theorem` | [mop_unmop](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/OppositeNamespacedPublic.lean/declarations/mop-unmop-source-edition-2.md) | 61 | `result-track:94d079cebdffeefda360598c3bc01b29c3241f7dcaaafc8b3ea4dbb21d2b2be0` |
| 7 | `theorem` | [unmop_mop](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/OppositeNamespacedPublic.lean/declarations/unmop-mop-source-edition-2.md) | 64 | `result-track:3f3875fa0d36937f4ccd16dc56e5dd89f4bacbf1b35dfcbcf1884e6d5e6c2cc5` |
| 8 | `instance` | [monoidalOppositeCategory](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/OppositeNamespacedPublic.lean/declarations/monoidaloppositecategory.md) | 66 | `declaration-track:f94b7a67fcaf84c2e176f617639c38c7333a81857ffc4900a7227337413a40e7` |
| 9 | `def` | [Quiver.Hom.mop](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/OppositeNamespacedPublic.lean/declarations/quiver-hom-mop.md) | 82 | `declaration-track:abddf10bf97992c749619e7fb4ecfa1b273db1bdcd032f95dadbe4b04f13c0d4` |
| 10 | `def` | [Quiver.Hom.unmop](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/OppositeNamespacedPublic.lean/declarations/quiver-hom-unmop.md) | 85 | `declaration-track:ec4b38e2d8b808611f874601eb8d28ccc42c5a58a8c6b7c33ac33e61e3e15f6c` |
| 11 | `theorem` | [mop_inj](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/OppositeNamespacedPublic.lean/declarations/mop-inj.md) | 91 | `result-track:efb523bf4305917b37f336cdba4f8e868978b776ef139807b6340746c0d8dd00` |
| 12 | `theorem` | [unmop_inj](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/OppositeNamespacedPublic.lean/declarations/unmop-inj.md) | 95 | `result-track:3978b8ee84b79245509571c366416cd462ebfa9ebc9cbd9da183db41aee84951` |
| 13 | `theorem` | [unmop_mop](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/OppositeNamespacedPublic.lean/declarations/unmop-mop.md) | 100 | `result-track:0284dcc7c7abb981a2390ea70c978a10191f5cd9b321966c35314eb79f0c9915` |
| 14 | `theorem` | [mop_unmop](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/OppositeNamespacedPublic.lean/declarations/mop-unmop.md) | 104 | `result-track:89ae694e666f7fb1d6dcfda1b49c2d9e08ad63cb7cdf491222c9e2447e0ff8c1` |
| 15 | `theorem` | [mop_comp](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/OppositeNamespacedPublic.lean/declarations/mop-comp.md) | 112 | `result-track:5d1376c0df4581074b68223bf940083aaacf8fd82da714c59e2f45942cb22504` |
| 16 | `theorem` | [mop_id](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/OppositeNamespacedPublic.lean/declarations/mop-id.md) | 116 | `result-track:4181d0920bc11a4363c0a83804f4cbb7a1ce72bcee8fcdb7fdb136c5fa2141f6` |
| 17 | `theorem` | [unmop_comp](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/OppositeNamespacedPublic.lean/declarations/unmop-comp.md) | 119 | `result-track:34f20deffc1e5d62354864a4c466a193409cec1ac9ec372e2a4731af79730869` |
| 18 | `theorem` | [unmop_id](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/OppositeNamespacedPublic.lean/declarations/unmop-id.md) | 123 | `result-track:251928c5bb0c3d0781938e50cc6b23acff4212bdc58c4526d8c2ee8601e95b89` |
| 19 | `theorem` | [unmop_id_mop](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/OppositeNamespacedPublic.lean/declarations/unmop-id-mop.md) | 126 | `result-track:57f2c95910cb7f72ead28d587a86b00194e2d54f154b684d884081a48f831994` |
| 20 | `theorem` | [mop_id_unmop](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/OppositeNamespacedPublic.lean/declarations/mop-id-unmop.md) | 129 | `result-track:75382ba4a84e0c5eb7525852d5f091f20381a5f1030148603ffb00a1f72cf2aa` |
| 21 | `lemma` | [MonoidalOpposite.hom_ext](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/OppositeNamespacedPublic.lean/declarations/monoidalopposite-hom-ext.md) | 132 | `result-track:73fdec62e770bfabdcd570f6623f304b5538276e7f80a47bef8f48687738aca3` |
| 22 | `def` | [mopFunctor](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/OppositeNamespacedPublic.lean/declarations/mopfunctor.md) | 140 | `declaration-track:c3eafbf401171cc55fec881087f89543fdf8c8764d1654b187f3b85856787f0b` |
| 23 | `def` | [unmopFunctor](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/OppositeNamespacedPublic.lean/declarations/unmopfunctor.md) | 143 | `declaration-track:cbe82b8c0176d38ca610fed0bfd2ea8ac97538c33de1ce61336e0c813d83e436` |
| 24 | `abbrev` | [mop](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/OppositeNamespacedPublic.lean/declarations/mop.md) | 150 | `declaration-track:f01b921ea6e3b3961e7cce86451a8565477aa29b39226830c5e2dda4ddb97db2` |
| 25 | `abbrev` | [unmop](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/OppositeNamespacedPublic.lean/declarations/unmop.md) | 153 | `declaration-track:b730c629e73d5fdf2700734b1cb8aec714f6a84140979532e8cd6003c94e4735` |
| 26 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/OppositeNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 159 | `declaration-track:3d6581141f8ab55db82d8a707ee7b5f039b55c68dcbc3ebab0fcd846c64df6bb` |
| 27 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/OppositeNamespacedPublic.lean/declarations/instance-source-edition-6.md) | 161 | `declaration-track:fe82446efc103759f8f2068a83b2437a540709ad3dcfa88503dd8b2524adb965` |
| 28 | `instance` | [monoidalCategoryOp](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/OppositeNamespacedPublic.lean/declarations/monoidalcategoryop.md) | 171 | `declaration-track:0dcd0f449afc41fe257c79b0aa61968750ff06a6b8d70599c7c3dbedffabb3b7` |
| 29 | `lemma` | [op_tensorObj](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/OppositeNamespacedPublic.lean/declarations/op-tensorobj.md) | 190 | `result-track:fda65a9e00a661c406af1c34b38a00af5969341e6b1573d786b651dbb22e6e43` |
| 30 | `lemma` | [unop_tensorObj](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/OppositeNamespacedPublic.lean/declarations/unop-tensorobj.md) | 191 | `result-track:e7493d6edb8e903af090a30a13679f8d6457af6f8ee78361e8a3ff11e3d6896c` |
| 31 | `lemma` | [op_tensorUnit](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/OppositeNamespacedPublic.lean/declarations/op-tensorunit.md) | 193 | `result-track:6ca4aef453549bc0f38685fcca9c9214c1c500f964dcb5802982ba6e40a1ba03` |
| 32 | `lemma` | [unop_tensorUnit](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/OppositeNamespacedPublic.lean/declarations/unop-tensorunit.md) | 194 | `result-track:c69693493ae25b7a33b23b9b8b3a466dc271a25af9e88662fc95247331423014` |
| 33 | `lemma` | [op_tensorHom](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/OppositeNamespacedPublic.lean/declarations/op-tensorhom.md) | 196 | `result-track:504cc56c8e2413b14f0ff0283f191b777b3a1f02b5b18e9b23f87c04bf549dd7` |
| 34 | `lemma` | [unop_tensorHom](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/OppositeNamespacedPublic.lean/declarations/unop-tensorhom.md) | 198 | `result-track:d468866249e1aeca23deeb358b5826cebb09f69c35493f40abcde5ae9a20dec6` |
| 35 | `lemma` | [op_whiskerLeft](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/OppositeNamespacedPublic.lean/declarations/op-whiskerleft.md) | 201 | `result-track:99480b70d71db3db078f4bc1e73a5e776d5c466c0c939d321bbf8ef07235a314` |
| 36 | `lemma` | [unop_whiskerLeft](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/OppositeNamespacedPublic.lean/declarations/unop-whiskerleft.md) | 203 | `result-track:c7e20f4993a93d15c58b1fa33fa1b1e6367a77b4834ba1928b5d4c5eead8db4c` |
| 37 | `lemma` | [op_whiskerRight](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/OppositeNamespacedPublic.lean/declarations/op-whiskerright.md) | 206 | `result-track:a426ba151721b632092db09dbbd4afb001f5d78815d38899b5e69efa6a060cb3` |
| 38 | `lemma` | [unop_whiskerRight](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/OppositeNamespacedPublic.lean/declarations/unop-whiskerright.md) | 208 | `result-track:08b7a76fcec8b8150abc7030f7cec43931f2b17d57c185bd7913b492a551ed04` |
| 39 | `lemma` | [op_associator](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/OppositeNamespacedPublic.lean/declarations/op-associator.md) | 211 | `result-track:ac022c1991a23d15a37370d0330a9f01dd504e2f857ac1fb1e226b6a5a2b7695` |
| 40 | `lemma` | [unop_associator](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/OppositeNamespacedPublic.lean/declarations/unop-associator.md) | 213 | `result-track:6328d2f032053a08ebaa07baa081c39c51387a3b67d497b8d44617068cd648d7` |
| 41 | `lemma` | [op_hom_associator](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/OppositeNamespacedPublic.lean/declarations/op-hom-associator.md) | 216 | `result-track:16dfe77f192572647c829afbe2487ddad7a27c5d353abdbc798242406ea44d5a` |
| 42 | `lemma` | [unop_hom_associator](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/OppositeNamespacedPublic.lean/declarations/unop-hom-associator.md) | 218 | `result-track:9e6d199d6c6477870fb66d4250dad9adb72d3635e4b4f7316709dabe4c9e8fbc` |
| 43 | `lemma` | [op_inv_associator](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/OppositeNamespacedPublic.lean/declarations/op-inv-associator.md) | 221 | `result-track:39e057a7742d72520bda46fc8d9b186254f0622e624389b8d2bf41db2d4c1fa9` |
| 44 | `lemma` | [unop_inv_associator](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/OppositeNamespacedPublic.lean/declarations/unop-inv-associator.md) | 223 | `result-track:5ee9b0f3b18ef636ad58f68a1998d38f3cfd355b110862416740f802e6ba532c` |
| 45 | `lemma` | [op_leftUnitor](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/OppositeNamespacedPublic.lean/declarations/op-leftunitor.md) | 226 | `result-track:aff56cfe1c4787e89d9ff5792f26c62358b54de1c6608f25e9761d51641f1523` |
| 46 | `lemma` | [unop_leftUnitor](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/OppositeNamespacedPublic.lean/declarations/unop-leftunitor.md) | 227 | `result-track:e3f52ee863110b2cfc5e2ab8708c3f7f9333e699b42a0753cee6ab781e158321` |
| 47 | `lemma` | [op_hom_leftUnitor](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/OppositeNamespacedPublic.lean/declarations/op-hom-leftunitor.md) | 229 | `result-track:a24ee315f01d90dd4202d16e32645f14957ee36ad8e494426cb326324ae1c9a3` |
| 48 | `lemma` | [unop_hom_leftUnitor](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/OppositeNamespacedPublic.lean/declarations/unop-hom-leftunitor.md) | 230 | `result-track:ff8d868de699b3b9b6a83e7472b0e504776f735e9d287ac800526699425254cc` |
| 49 | `lemma` | [op_inv_leftUnitor](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/OppositeNamespacedPublic.lean/declarations/op-inv-leftunitor.md) | 232 | `result-track:bb1aaf5f3247002a4df98fdb90f44c92c3c1f6c2a084c13f9ec63a2c663a3b61` |
| 50 | `lemma` | [unop_inv_leftUnitor](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/OppositeNamespacedPublic.lean/declarations/unop-inv-leftunitor.md) | 233 | `result-track:76a4fe1ad162ad34607f08637cc09c86e88f38bdd6c733b993bb7b674f3273c9` |
| 51 | `lemma` | [op_rightUnitor](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/OppositeNamespacedPublic.lean/declarations/op-rightunitor.md) | 235 | `result-track:60a01946fef83221cd0aefc1e7b7005407d8d8bbe977abb17b188fe601353f57` |
| 52 | `lemma` | [unop_rightUnitor](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/OppositeNamespacedPublic.lean/declarations/unop-rightunitor.md) | 236 | `result-track:6c376c6787a1c7a29ecdbf3d71fd365ab885da51c41d87628a99fe849159c926` |
| 53 | `lemma` | [op_hom_rightUnitor](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/OppositeNamespacedPublic.lean/declarations/op-hom-rightunitor.md) | 238 | `result-track:bca9d9ae20c0327535b715a9477eecfb324eeede35cd1d3c44b1d85fec8c1319` |
| 54 | `lemma` | [unop_hom_rightUnitor](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/OppositeNamespacedPublic.lean/declarations/unop-hom-rightunitor.md) | 239 | `result-track:3f7f407de393f874c5ad67e08de499220cb68763d0a2d258c38f90f9687c3b63` |
| 55 | `lemma` | [op_inv_rightUnitor](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/OppositeNamespacedPublic.lean/declarations/op-inv-rightunitor.md) | 241 | `result-track:b19f8f93817bbdc2975fb6a74dbf631a821e6787865a7f717c98e587bc5b75cd` |
| 56 | `lemma` | [unop_inv_rightUnitor](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/OppositeNamespacedPublic.lean/declarations/unop-inv-rightunitor.md) | 242 | `result-track:207a7e58b6c0838732dd3fd448ef1bfd7e9550e6e3655d2108da335ea9628160` |
| 57 | `theorem` | [op_tensor_op](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/OppositeNamespacedPublic.lean/declarations/op-tensor-op.md) | 246 | `result-track:4818b46cba5b8530b0a7dc931552e113f82be0c16ecc66ec70334b0c5e40f60f` |
| 58 | `theorem` | [unop_tensor_unop](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/OppositeNamespacedPublic.lean/declarations/unop-tensor-unop.md) | 248 | `result-track:a7221caf5fec5542cee9f9ef5db7d0e71a67c566b14136cb736091db85f56028` |
| 59 | `instance` | [monoidalCategoryMop](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/OppositeNamespacedPublic.lean/declarations/monoidalcategorymop.md) | 253 | `declaration-track:37dff600d6cb90b33e43bb143539ea45a21b24e67fe9d1871f5d09a5405ca064` |
| 60 | `lemma` | [mop_tensorObj](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/OppositeNamespacedPublic.lean/declarations/mop-tensorobj.md) | 273 | `result-track:3763d81c0589ce1f46473be70faf72a5b5aa233ff11fd2d901c827623623545b` |
| 61 | `lemma` | [unmop_tensorObj](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/OppositeNamespacedPublic.lean/declarations/unmop-tensorobj.md) | 274 | `result-track:1f396924976ca01d1ec026c161fec56f5508b4cc1f5dfab0aa40ea15a41e437e` |
| 62 | `lemma` | [mop_tensorUnit](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/OppositeNamespacedPublic.lean/declarations/mop-tensorunit.md) | 276 | `result-track:f6813292240362dbff4a82e851c0e856201e1e3c5d7326f9b21a4b99e63d4271` |
| 63 | `lemma` | [unmop_tensorUnit](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/OppositeNamespacedPublic.lean/declarations/unmop-tensorunit.md) | 277 | `result-track:a9be23fcddf1e8639b2c279d5ec102e9be7cd4b9cf8042a55d6170c10efc53d6` |
| 64 | `lemma` | [mop_tensorHom](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/OppositeNamespacedPublic.lean/declarations/mop-tensorhom.md) | 279 | `result-track:102690128c03f850d161a67e997cb59f5f42908e1b1d5487e81dbacedc79818f` |
| 65 | `lemma` | [unmop_tensorHom](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/OppositeNamespacedPublic.lean/declarations/unmop-tensorhom.md) | 281 | `result-track:082d4c5126d8b1287aa383a054e8ee201619c571ed2d8332b592008cb4a69deb` |
| 66 | `lemma` | [mop_whiskerLeft](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/OppositeNamespacedPublic.lean/declarations/mop-whiskerleft.md) | 284 | `result-track:6b843623e5c2c6bd5a92ada6bf2ae115a53b4e95afa995b32fb90d6e4bc34b96` |
| 67 | `lemma` | [unmop_whiskerLeft](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/OppositeNamespacedPublic.lean/declarations/unmop-whiskerleft.md) | 286 | `result-track:252f7505ee9a73283a2b5e7cf870ba111b0a9dc651e778ae70f6c1451d14db41` |
| 68 | `lemma` | [mop_whiskerRight](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/OppositeNamespacedPublic.lean/declarations/mop-whiskerright.md) | 289 | `result-track:3a9f83c9db3dfd1eef5e26010d72b14d8756acf7bbb35bc4ab121b77018788bc` |
| 69 | `lemma` | [unmop_whiskerRight](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/OppositeNamespacedPublic.lean/declarations/unmop-whiskerright.md) | 291 | `result-track:81d656f369916ab93a9ed6e76296d613ccc157ba6055f6c1008a23d5988e07f9` |
| 70 | `lemma` | [mop_associator](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/OppositeNamespacedPublic.lean/declarations/mop-associator.md) | 294 | `result-track:3e30ab1bd15eb2d4d6b8d7d2be1ba3ceabd8828bf127eff34554ecd22770be67` |
| 71 | `lemma` | [unmop_associator](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/OppositeNamespacedPublic.lean/declarations/unmop-associator.md) | 296 | `result-track:ae8d12ee44fbb75cede27268fb1c4295be12e4ba9a821444313b01023293a35b` |
| 72 | `lemma` | [mop_hom_associator](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/OppositeNamespacedPublic.lean/declarations/mop-hom-associator.md) | 299 | `result-track:b2ccd031e07ac7eecd887de6c31d4222eba1551309a1d5f6ef9a3217b5c623f6` |
| 73 | `lemma` | [unmop_hom_associator](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/OppositeNamespacedPublic.lean/declarations/unmop-hom-associator.md) | 301 | `result-track:a67f00c38473d264b6157acc088ecc65d153b963c6bebc9d0dd13d8e524249f0` |
| 74 | `lemma` | [mop_inv_associator](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/OppositeNamespacedPublic.lean/declarations/mop-inv-associator.md) | 304 | `result-track:3e1e00c9b9fa360ecace45ea0dfcb02f5c523a387d9cdec39289e9f8ac7b4f58` |
| 75 | `lemma` | [unmop_inv_associator](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/OppositeNamespacedPublic.lean/declarations/unmop-inv-associator.md) | 306 | `result-track:5062dd59262336af238e2ec1388060b37dff4d2c304bcf07b7adf115ef1de156` |
| 76 | `lemma` | [mop_leftUnitor](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/OppositeNamespacedPublic.lean/declarations/mop-leftunitor.md) | 309 | `result-track:fa5c7c3acc7a09693703e3f48c7b16d1ce467e692ac9ed0a315d8c5de5f6ab22` |
| 77 | `lemma` | [unmop_leftUnitor](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/OppositeNamespacedPublic.lean/declarations/unmop-leftunitor.md) | 310 | `result-track:c0036b2cc57fc53756a1fa59bb111d896576738ae579fa0432c75116fa5d4b3f` |
| 78 | `lemma` | [mop_hom_leftUnitor](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/OppositeNamespacedPublic.lean/declarations/mop-hom-leftunitor.md) | 312 | `result-track:3d2fd49143348405ca101014cf1c79127916626b82105a7be9cf6518805f29cb` |
| 79 | `lemma` | [unmop_hom_leftUnitor](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/OppositeNamespacedPublic.lean/declarations/unmop-hom-leftunitor.md) | 313 | `result-track:a77ac4a1c90a75c80e6d43556be3b8b50e1a620f6961e1d1f67afa5581026392` |
| 80 | `lemma` | [mop_inv_leftUnitor](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/OppositeNamespacedPublic.lean/declarations/mop-inv-leftunitor.md) | 315 | `result-track:332bb0af5a6496f4fe44f63e222bafbd5010ee579a810725dc643b1c7207fe9f` |
| 81 | `lemma` | [unmop_inv_leftUnitor](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/OppositeNamespacedPublic.lean/declarations/unmop-inv-leftunitor.md) | 316 | `result-track:2495a60378045a6852f0acd44e740de77848d2662266243e805fccbdf93ab8c1` |
| 82 | `lemma` | [mop_rightUnitor](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/OppositeNamespacedPublic.lean/declarations/mop-rightunitor.md) | 318 | `result-track:acc0fd4c7f731b28c47d3a7292f29bb6cdb92f71cd052f81667b654176a328eb` |
| 83 | `lemma` | [unmop_rightUnitor](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/OppositeNamespacedPublic.lean/declarations/unmop-rightunitor.md) | 319 | `result-track:c9f56fae2fd69949add5ffee5eb178a8b19d7a252d9a9a77167e68da3bd95004` |
| 84 | `lemma` | [mop_hom_rightUnitor](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/OppositeNamespacedPublic.lean/declarations/mop-hom-rightunitor.md) | 321 | `result-track:537fcd88fb2dd4ec3064cdd086ea9d18b0aeb061394415f21c7644a050cda100` |
| 85 | `lemma` | [unmop_hom_rightUnitor](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/OppositeNamespacedPublic.lean/declarations/unmop-hom-rightunitor.md) | 322 | `result-track:07aa5ba811266a995679d553cfef372246c6b96a98cbe3fcda7466095b51aca8` |
| 86 | `lemma` | [mop_inv_rightUnitor](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/OppositeNamespacedPublic.lean/declarations/mop-inv-rightunitor.md) | 324 | `result-track:126d14ee8e04cf1e5cfc2328c776b1e4c6bca02601b0bcb21b24b5f28a41dce1` |
| 87 | `lemma` | [unmop_inv_rightUnitor](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/OppositeNamespacedPublic.lean/declarations/unmop-inv-rightunitor.md) | 325 | `result-track:f39e7201bf413b1b4b004d6f9d71ca5e6d8181d7f623026d8126f32d7027b1bb` |
| 88 | `def` | [MonoidalOpposite.mopEquiv](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/OppositeNamespacedPublic.lean/declarations/monoidalopposite-mopequiv.md) | 334 | `declaration-track:fd6d1ed50fa9463caf9ea6bd25753c09919f73e1ce6e60eb8918f1e27649de2c` |
| 89 | `def` | [MonoidalOpposite.unmopEquiv](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/OppositeNamespacedPublic.lean/declarations/monoidalopposite-unmopequiv.md) | 341 | `declaration-track:bbffb65689828113abdcf5ff95a9bae9814449a0c7a1d8d68308f59ca6485250` |
| 90 | `def` | [MonoidalOpposite.mopMopEquivalence](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/OppositeNamespacedPublic.lean/declarations/monoidalopposite-mopmopequivalence.md) | 347 | `declaration-track:ce2ee86d669220b6a06e1a4048494f8f53080b79463863f029ee6aba6843ef77` |
| 91 | `instance` | [MonoidalOpposite.mopMopEquivalenceFunctorMonoidal](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/OppositeNamespacedPublic.lean/declarations/monoidalopposite-mopmopequivalencefunctormonoidal.md) | 351 | `declaration-track:3df4d9539f101f67a179bcca10ef15a56845935728134af5de140b1ba3c3e0be` |
| 92 | `instance` | [MonoidalOpposite.mopMopEquivalenceInverseMonoidal](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/OppositeNamespacedPublic.lean/declarations/monoidalopposite-mopmopequivalenceinversemonoidal.md) | 364 | `declaration-track:0ee1a210eb0356396c6249ace793790ba985f7b7cfd6dad27cfc91acbeae081c` |
| 93 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/OppositeNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 376 | `declaration-track:087fb37acdf52732c04737835645521ed96e499b954fa2a350162111d587f722` |
| 94 | `def` | [MonoidalOpposite.tensorIso](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/OppositeNamespacedPublic.lean/declarations/monoidalopposite-tensoriso.md) | 384 | `declaration-track:f5c4f11a36758b5ca66600b700c848bdb2a4ce8392650a0acc54e9d9fca55ede` |
| 95 | `def` | [MonoidalOpposite.tensorLeftIso](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/OppositeNamespacedPublic.lean/declarations/monoidalopposite-tensorleftiso.md) | 393 | `declaration-track:66c43fbd0294727f8e2dfedbbe427be8f9e2b1c8170217e95b40e5ceba9403b2` |
| 96 | `def` | [MonoidalOpposite.tensorLeftMopIso](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/OppositeNamespacedPublic.lean/declarations/monoidalopposite-tensorleftmopiso.md) | 399 | `declaration-track:b560a66eeea4f93bf8c0a7e4744493eefbd455b996fc2c58804d724dd0585bd2` |
| 97 | `def` | [MonoidalOpposite.tensorLeftUnmopIso](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/OppositeNamespacedPublic.lean/declarations/monoidalopposite-tensorleftunmopiso.md) | 405 | `declaration-track:afadf73d5ba68ab2d9305c1b1736232f04805604bb9ee2f5623bdce5ddbfdde3` |
| 98 | `def` | [MonoidalOpposite.tensorRightIso](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/OppositeNamespacedPublic.lean/declarations/monoidalopposite-tensorrightiso.md) | 411 | `declaration-track:9ad391014322c99f05afb3872183c3392561dec156f681125c3c2e1a09f54fe7` |
| 99 | `def` | [MonoidalOpposite.tensorRightMopIso](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/OppositeNamespacedPublic.lean/declarations/monoidalopposite-tensorrightmopiso.md) | 417 | `declaration-track:5bdbb29c548d39287626ca551bdfedaeab130fc3d7ee14a2b4a9de3fd98c7d09` |
| 100 | `def` | [MonoidalOpposite.tensorRightUnmopIso](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/OppositeNamespacedPublic.lean/declarations/monoidalopposite-tensorrightunmopiso.md) | 423 | `declaration-track:34d4f761b66b4ad7e4f3be8bee558f12a339d6a435a5a5a03a8b34e0ce302826` |
| 101 | `instance` | [monoidalOpOp](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/OppositeNamespacedPublic.lean/declarations/monoidalopop.md) | 428 | `declaration-track:78fef2ec05acddd8409bcb5fec133b31b47d8509a2955434bdc7d6045de31f27` |
| 102 | `instance` | [monoidalUnopUnop](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/OppositeNamespacedPublic.lean/declarations/monoidalunopunop.md) | 439 | `declaration-track:84cc9562d1c924009572596c2f0308d004fb9adc20ca6533fb01c5ce1bd0c11e` |
| 103 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/OppositeNamespacedPublic.lean/declarations/instance-source-edition-5.md) | 449 | `declaration-track:a6929e54beeb5c2d3593eddaaa2cb5874f904a0f18ac9256952f79cc45443a1c` |
| 104 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/OppositeNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 450 | `declaration-track:252450a3cd335201bed1188f75b01982e1fe2bc84e0534689270f34bfe0d106c` |
| 105 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/OppositeNamespacedPublic.lean/declarations/instance.md) | 452 | `declaration-track:03fcdd4caedd4977864e3843f794cfac832cef64717bf2a5e5ef3d752fb7b632` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ba2dce8aadfc278856a49a0fe9b4dc78ea2143ad7268a631944412eb97e5ff65 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Opposite/Variantafdaa207c61d063b416132dc55947e87369dbc0818bd80da332b39a1bf5323d1.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/GraphTheory/Opposite/Variantafdaa207c61d063b416132dc55947e87369dbc0818bd80da332b39a1bf5323d1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
