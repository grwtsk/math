# Verification target: Closed Monoidal Whisker Left Curry Ihom Ev App

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d695f05886419880dfc63c81fa19a841f77bc593",
  "lexical_observation_count": 73,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant3d9c8c72909190af81276dc6e4f110ef14562ec54f3770d9ccb2fbe277968da0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidalWhiskerLeftCurryIhomEvApp.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidalWhiskerLeftCurryIhomEvApp.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d695f05886419880dfc63c81fa19a841f77bc593`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant3d9c8c72909190af81276dc6e4f110ef14562ec54f3770d9ccb2fbe277968da0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant3d9c8c72909190af81276dc6e4f110ef14562ec54f3770d9ccb2fbe277968da0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Monoidal.Functor` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.CoherenceLemmas` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Adjunction.Limits` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Adjunction.Mates` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Adjunction.Parametrized` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Closed](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidalWhiskerLeftCurryIhomEvApp.lean/declarations/closed.md) | 34 | `declaration-track:81fc72298619995995a94b9e329eecb31cc9f311e126c547ef18065934b7e213` |
| 2 | `class` | [MonoidalClosed](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidalWhiskerLeftCurryIhomEvApp.lean/declarations/monoidalclosed.md) | 41 | `declaration-track:d112a29b5f293676d60db6fc5c7436a1c8d7cf7d148da9b9b900ce9869eb9b4d` |
| 3 | `def` | [tensorClosed](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidalWhiskerLeftCurryIhomEvApp.lean/declarations/tensorclosed.md) | 52 | `declaration-track:dbe1caac10da562d1855a2cdbae78f3265f6e0aad158dc3b57a0d98ef0481a4f` |
| 4 | `def` | [unitClosed](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidalWhiskerLeftCurryIhomEvApp.lean/declarations/unitclosed.md) | 60 | `declaration-track:311170edee59135d03749e48a8849c6294088a42d10de29b3d87b2d40747a88b` |
| 5 | `def` | [ihom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidalWhiskerLeftCurryIhomEvApp.lean/declarations/ihom.md) | 69 | `declaration-track:5e88f650eec56c0cf37c7eb8d2a85774286ad902a964978c5660fcc1a5419ae4` |
| 6 | `def` | [adjunction](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidalWhiskerLeftCurryIhomEvApp.lean/declarations/adjunction.md) | 75 | `declaration-track:4a0bb302405480ee60dd7abefe6354e60f930384149e3a81c8df01e0dc8af937` |
| 7 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidalWhiskerLeftCurryIhomEvApp.lean/declarations/instance-source-edition-2.md) | 78 | `declaration-track:8afe59ee1a646e72d9c46c6ba2beea857f0127c6685b13cf4b04f0541ad91e2f` |
| 8 | `def` | [ev](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidalWhiskerLeftCurryIhomEvApp.lean/declarations/ev.md) | 82 | `declaration-track:242f49f9249761772dc8e69206dececf7266f16b5a5b057eecde32a0b9920263` |
| 9 | `def` | [coev](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidalWhiskerLeftCurryIhomEvApp.lean/declarations/coev.md) | 86 | `declaration-track:783ec1f134a31cd687bc3ef3003a842f7aafe009892c9cc88a7618ef3629fde0` |
| 10 | `theorem` | [ihom_adjunction_counit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidalWhiskerLeftCurryIhomEvApp.lean/declarations/ihom-adjunction-counit.md) | 90 | `result-track:2d9da8ee3eea2ed0d4312172349952815c974489339d8cd19a1b442010bd7780` |
| 11 | `theorem` | [ihom_adjunction_unit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidalWhiskerLeftCurryIhomEvApp.lean/declarations/ihom-adjunction-unit.md) | 94 | `result-track:21da5917d28b9791d0b77586a8b702c3ec97ca112e088e61f69e5fbafa0274a4` |
| 12 | `theorem` | [ev_naturality](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidalWhiskerLeftCurryIhomEvApp.lean/declarations/ev-naturality.md) | 98 | `result-track:10d24f9e0d0ab1d0f3bbf56981b784b91fefafa05156f95ce4ff981eaf9c8a55` |
| 13 | `theorem` | [coev_naturality](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidalWhiskerLeftCurryIhomEvApp.lean/declarations/coev-naturality.md) | 103 | `result-track:d2ee8db6a8b10e5dae6e39c01b5530ef4d65de5ec0b0cc91fa7af057ed440949` |
| 14 | `theorem` | [ev_coev](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidalWhiskerLeftCurryIhomEvApp.lean/declarations/ev-coev.md) | 112 | `result-track:22e76b7c030c80b37203a6a93399f250f59bfb055406e6b3fafbebc28645a4b5` |
| 15 | `theorem` | [coev_ev](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidalWhiskerLeftCurryIhomEvApp.lean/declarations/coev-ev.md) | 116 | `result-track:6ec26ed0fec351cb1a9c253a70dec8d3a1732540639d45f87b11b9a6c199b349` |
| 16 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidalWhiskerLeftCurryIhomEvApp.lean/declarations/instance.md) | 123 | `declaration-track:1cbfe64944bb5faadd09623faa1daaed3e5707bb241b2e732a04c24b4a489e59` |
| 17 | `def` | [curry](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidalWhiskerLeftCurryIhomEvApp.lean/declarations/curry.md) | 132 | `declaration-track:4df91974f76f5714ecadd15689144d459437afceb758eebd72850d1bb7085005` |
| 18 | `def` | [uncurry](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidalWhiskerLeftCurryIhomEvApp.lean/declarations/uncurry.md) | 136 | `declaration-track:2aec5e0d17e6818867c299652642f1463d876a564550e6d5ef693645aa5e9a7b` |
| 19 | `theorem` | [homEquiv_apply_eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidalWhiskerLeftCurryIhomEvApp.lean/declarations/homequiv-apply-eq.md) | 139 | `result-track:4661c20f1b7047e818d0f67d3b51afbf698bb2920116c8b3d81bfd996a991fc9` |
| 20 | `theorem` | [homEquiv_symm_apply_eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidalWhiskerLeftCurryIhomEvApp.lean/declarations/homequiv-symm-apply-eq.md) | 142 | `result-track:666386657c0f80239cbe8fc6ed62070b9cb437d5832408f3fd9790ea0eeeff9a` |
| 21 | `theorem` | [curry_natural_left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidalWhiskerLeftCurryIhomEvApp.lean/declarations/curry-natural-left.md) | 147 | `result-track:39dda2b6296c9406714515e0c6c6b8c6ede683b50ef5d712a0394e32465eb79b` |
| 22 | `theorem` | [curry_natural_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidalWhiskerLeftCurryIhomEvApp.lean/declarations/curry-natural-right.md) | 151 | `result-track:452291b47781dedbbc504e91331f8039d8d6fb436e3dba6d68442aa5518d6c8f` |
| 23 | `theorem` | [uncurry_natural_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidalWhiskerLeftCurryIhomEvApp.lean/declarations/uncurry-natural-right.md) | 156 | `result-track:dddd2dc9c07311776bfa7505ed4ec69c9247a13342784dba10b813d5c257f9ae` |
| 24 | `theorem` | [uncurry_natural_left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidalWhiskerLeftCurryIhomEvApp.lean/declarations/uncurry-natural-left.md) | 161 | `result-track:a49b9d9609005aa25ef0840e1e3f626aefb0a3a9fe12c96b70bf9f7c554954bb` |
| 25 | `theorem` | [uncurry_curry](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidalWhiskerLeftCurryIhomEvApp.lean/declarations/uncurry-curry-source-edition-2.md) | 166 | `result-track:c3c9043cb4e8be1af037cb527317681f76ba2202aca9f694c7c610f5b7122372` |
| 26 | `theorem` | [curry_uncurry](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidalWhiskerLeftCurryIhomEvApp.lean/declarations/curry-uncurry-source-edition-2.md) | 170 | `result-track:408bdbb5110d3dabdbfeff2ee2b5b2967643cb227a0e88e7917f46c57bdf8d91` |
| 27 | `theorem` | [curry_eq_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidalWhiskerLeftCurryIhomEvApp.lean/declarations/curry-eq-iff.md) | 173 | `result-track:4af944def2a22328d8aa37935e4ad050efeb987826b13590dc41235590633f3d` |
| 28 | `theorem` | [eq_curry_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidalWhiskerLeftCurryIhomEvApp.lean/declarations/eq-curry-iff.md) | 176 | `result-track:ccdd6f0ac18694ffbfe6ba38fcf8c0eb70680dd67d8405f97f581f55d3519575` |
| 29 | `theorem` | [uncurry_eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidalWhiskerLeftCurryIhomEvApp.lean/declarations/uncurry-eq.md) | 180 | `result-track:8baa6bff645f3650273d8a244e5f97e23ef02ae9fde6a1b6ba8d7ab13639ecaa` |
| 30 | `theorem` | [curry_eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidalWhiskerLeftCurryIhomEvApp.lean/declarations/curry-eq.md) | 183 | `result-track:5dedc07a60e5b9652597105a2c4341d2c0d93f3a803a39fda221e6cdc2b11d82` |
| 31 | `theorem` | [curry_injective](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidalWhiskerLeftCurryIhomEvApp.lean/declarations/curry-injective.md) | 186 | `result-track:5c1b8be49817caf33c3b3460654fdac66b636943e0f929135593e4990fdfda86` |
| 32 | `theorem` | [uncurry_injective](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidalWhiskerLeftCurryIhomEvApp.lean/declarations/uncurry-injective-source-edition-2.md) | 189 | `result-track:9062737036b8380de1771e7df1d116c370913a2434dfd5997b5ace615f247773` |
| 33 | `theorem` | [uncurry_id_eq_ev](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidalWhiskerLeftCurryIhomEvApp.lean/declarations/uncurry-id-eq-ev.md) | 194 | `result-track:18c1ebb76b0f90bf436abcd5cc97611736ec3bc8797a4652d2cba8922d302eb0` |
| 34 | `theorem` | [curry_id_eq_coev](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidalWhiskerLeftCurryIhomEvApp.lean/declarations/curry-id-eq-coev.md) | 197 | `result-track:6095c59dbc217ef984382aa38d286b4b86df06dd7436188b197da1859409e12f` |
| 35 | `lemma` | [whiskerLeft_curry_ihom_ev_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidalWhiskerLeftCurryIhomEvApp.lean/declarations/whiskerleft-curry-ihom-ev-app.md) | 202 | `result-track:32b70198cc41a100933ba7b53b19e8e91de86e92df36be4cc85dd803866f9495` |
| 36 | `theorem` | [uncurry_ihom_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidalWhiskerLeftCurryIhomEvApp.lean/declarations/uncurry-ihom-map.md) | 206 | `result-track:21b64f1b0dd65eac360ec1a3b2f40a9df01f386c3e05362fb89e1fb97c22f5f4` |
| 37 | `def` | [unitNatIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidalWhiskerLeftCurryIhomEvApp.lean/declarations/unitnatiso.md) | 212 | `declaration-track:8a50583e5c586e7796e7014f605e78f779590d0a662ddf2f2d6949f09d099f56` |
| 38 | `def` | [pre](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidalWhiskerLeftCurryIhomEvApp.lean/declarations/pre.md) | 221 | `declaration-track:81c224ba250f9fba1f539778a92609002768294ea54ea0f10bd0178aae02d118` |
| 39 | `theorem` | [id_tensor_pre_app_comp_ev](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidalWhiskerLeftCurryIhomEvApp.lean/declarations/id-tensor-pre-app-comp-ev.md) | 225 | `result-track:d2a2cb726963bae99e5c403aeece455f99a26adf9c60590171ef9b019f48cee6` |
| 40 | `theorem` | [uncurry_pre](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidalWhiskerLeftCurryIhomEvApp.lean/declarations/uncurry-pre.md) | 230 | `result-track:affa9b100c5c67555b4934129f5e2d8e90d1ceadc19a592da71901a2da1d4c0a` |
| 41 | `lemma` | [curry_pre_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidalWhiskerLeftCurryIhomEvApp.lean/declarations/curry-pre-app.md) | 235 | `result-track:1e7ba662f133ac63a6cfd8962ae7c8967c436191c7b04c3db85618309952f264` |
| 42 | `theorem` | [coev_app_comp_pre_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidalWhiskerLeftCurryIhomEvApp.lean/declarations/coev-app-comp-pre-app.md) | 241 | `result-track:6ac24bc25fa13a0bd7bcabe1496b76d78fabcbae31d64582d07fc88259b5268e` |
| 43 | `lemma` | [uncurry_pre_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidalWhiskerLeftCurryIhomEvApp.lean/declarations/uncurry-pre-app.md) | 246 | `result-track:450ad0959de8e13f7cf30398b0640d380fafd9619f1acd278b53510464982258` |
| 44 | `theorem` | [pre_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidalWhiskerLeftCurryIhomEvApp.lean/declarations/pre-id.md) | 252 | `result-track:4b748577e2dae8433c1467482b79292ea508b16f861c4676bb493a0f6271b7eb` |
| 45 | `theorem` | [pre_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidalWhiskerLeftCurryIhomEvApp.lean/declarations/pre-map.md) | 257 | `result-track:53331133368078111660e8fd01ed02c9cdb6f9b72dd5cbfbc053e41990dffb4a` |
| 46 | `theorem` | [pre_comm_ihom_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidalWhiskerLeftCurryIhomEvApp.lean/declarations/pre-comm-ihom-map.md) | 261 | `result-track:bf76a1b51effbd8a2ab5142f292c990c8bc2f21c593531eaa1ebacf1dec0f7a2` |
| 47 | `def` | [internalHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidalWhiskerLeftCurryIhomEvApp.lean/declarations/internalhom.md) | 268 | `declaration-track:77219ec0bcc7414bb70a1409f8da46e7ab810dffa8936c5a3b76f22993e8e578` |
| 48 | `def` | [internalHomAdjunction₂](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidalWhiskerLeftCurryIhomEvApp.lean/declarations/internalhomadjunction.md) | 275 | `declaration-track:243c71fca39fab4e0c88c595c3009af33e9e319ac1a234b8e1dfffcfaaf5ad78` |
| 49 | `def` | [ofEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidalWhiskerLeftCurryIhomEvApp.lean/declarations/ofequiv.md) | 287 | `declaration-track:14707c4e9a72f04134b428de37e187c453bb930e077d15db8590cfb204155554` |
| 50 | `theorem` | [ofEquiv_curry_def](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidalWhiskerLeftCurryIhomEvApp.lean/declarations/ofequiv-curry-def.md) | 299 | `result-track:a5492d9f7814ab350f9684f55b4fb374c1c13af35a61a554a059355f5cca949f` |
| 51 | `theorem` | [ofEquiv_uncurry_def](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidalWhiskerLeftCurryIhomEvApp.lean/declarations/ofequiv-uncurry-def.md) | 320 | `result-track:0a799c5bdf13fad7417163fe9466751d30880e8565f0a510a586d2426ed47a44` |
| 52 | `def` | [id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidalWhiskerLeftCurryIhomEvApp.lean/declarations/id.md) | 349 | `declaration-track:438bebc32c78370c115021a9bbe82774f860f9ecd3c089402ff6839f0d5cf9a0` |
| 53 | `def` | [compTranspose](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidalWhiskerLeftCurryIhomEvApp.lean/declarations/comptranspose.md) | 354 | `declaration-track:48aeeae7fb4200cab90dbb0d2a5c66ba2c3bfd01593a2bddd29ab13732cdf8e7` |
| 54 | `def` | [comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidalWhiskerLeftCurryIhomEvApp.lean/declarations/comp.md) | 361 | `declaration-track:ea16bcfd1975b5aaf163880d532f30ab69887f27211208f779d2e8d8231d368c` |
| 55 | `lemma` | [id_eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidalWhiskerLeftCurryIhomEvApp.lean/declarations/id-eq.md) | 366 | `result-track:0d457d86842331ef60f389dae1ea70fa4b9a46b53fccfe302c2607366e290b47` |
| 56 | `lemma` | [compTranspose_eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidalWhiskerLeftCurryIhomEvApp.lean/declarations/comptranspose-eq.md) | 370 | `result-track:784de903a2502e53e855bd3e98519eb0efaf173fca49f186bfcbf953ba1827e0` |
| 57 | `lemma` | [comp_eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidalWhiskerLeftCurryIhomEvApp.lean/declarations/comp-eq.md) | 376 | `result-track:a9f735750918027d2534f796fdaa1980043e791c0d0a6cd93bb7544195f38c74` |
| 58 | `lemma` | [id_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidalWhiskerLeftCurryIhomEvApp.lean/declarations/id-comp.md) | 387 | `result-track:cd77affc2d55ff84bef73d0561ec80d334fa5bc60ad3b4e3fc0936f3eca177b9` |
| 59 | `lemma` | [comp_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidalWhiskerLeftCurryIhomEvApp.lean/declarations/comp-id.md) | 397 | `result-track:eaaeb8564a7959630fa592d5a67c742b42faf18b0bb47cb9b72a80598495ded3` |
| 60 | `lemma` | [assoc](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidalWhiskerLeftCurryIhomEvApp.lean/declarations/assoc.md) | 409 | `result-track:17509da3155ed824db304e5c47b9d306b1a04fff7c65687f199362623e76bed5` |
| 61 | `def` | [curry'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidalWhiskerLeftCurryIhomEvApp.lean/declarations/curry-source-edition-2.md) | 425 | `declaration-track:52ddeb7d3fb033014e5d083b8be9dca1ad2a3be570b4d1b62a90087945d29ec9` |
| 62 | `def` | [uncurry'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidalWhiskerLeftCurryIhomEvApp.lean/declarations/uncurry-source-edition-2.md) | 429 | `declaration-track:d552c0691ae57346e4594c046ced31c4d43daa3e94b2252579d49743d58aa2ef` |
| 63 | `lemma` | [curry'_uncurry'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidalWhiskerLeftCurryIhomEvApp.lean/declarations/curry-uncurry.md) | 434 | `result-track:3f21fb84303fa6c802dd5080f03865766566b4adcca63fc4b92e77f65edebd75` |
| 64 | `lemma` | [uncurry'_curry'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidalWhiskerLeftCurryIhomEvApp.lean/declarations/uncurry-curry.md) | 440 | `result-track:298b74d3d671717b5fa99684d4aef8e9f64f25ef4502b39882a755e8af289106` |
| 65 | `def` | [curryHomEquiv'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidalWhiskerLeftCurryIhomEvApp.lean/declarations/curryhomequiv.md) | 446 | `declaration-track:1b80767c5b64bee9008f467f9d0d478ade039f23183a21d1d297f1f3936dfe4d` |
| 66 | `lemma` | [curry'_injective](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidalWhiskerLeftCurryIhomEvApp.lean/declarations/curry-injective-source-edition-2.md) | 453 | `result-track:81e3586f9dad8bbf821a415abda478c1b322740674cbb8293c0503ea21c9e50e` |
| 67 | `lemma` | [uncurry'_injective](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidalWhiskerLeftCurryIhomEvApp.lean/declarations/uncurry-injective.md) | 457 | `result-track:6fa8078c447dc1a5a599acef27d58e0090f24c1e0a91c9251fcc7070e008e634` |
| 68 | `lemma` | [curry'_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidalWhiskerLeftCurryIhomEvApp.lean/declarations/curry-id.md) | 462 | `result-track:38322923201de3c573c4383a0e25e99dbed5bc1fb330b5d55e9ef9ade7c46336` |
| 69 | `lemma` | [whiskerLeft_curry'_ihom_ev_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidalWhiskerLeftCurryIhomEvApp.lean/declarations/whiskerleft-curry-ihom-ev-app-source-edition-2.md) | 468 | `result-track:b8acc9f97ac59749fe17239a398a774df18181e18f946dac8f00e8cba10bfd23` |
| 70 | `lemma` | [curry'_whiskerRight_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidalWhiskerLeftCurryIhomEvApp.lean/declarations/curry-whiskerright-comp.md) | 474 | `result-track:128bc13f29ff8d0fe2364ceaaa10ad33f6f4c66d4cbfec7fee2761592a05fd7e` |
| 71 | `lemma` | [whiskerLeft_curry'_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidalWhiskerLeftCurryIhomEvApp.lean/declarations/whiskerleft-curry-comp.md) | 484 | `result-track:d492ca4394ef1b580991cf439f16b3bb0e5ba3eaa55100827838e3f7806c9a5b` |
| 72 | `lemma` | [curry'_ihom_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidalWhiskerLeftCurryIhomEvApp.lean/declarations/curry-ihom-map.md) | 495 | `result-track:5e7c8adcbd2ad99d532a5b69318a827076ed2147ee7b1c4bf34abf3ecd461880` |
| 73 | `lemma` | [curry'_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidalWhiskerLeftCurryIhomEvApp.lean/declarations/curry-comp.md) | 499 | `result-track:fa90c15ca44081fc578e535f47ec68fafb3932c6e8a69542d902f6d996de8697` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=087c7224a8b268bd4622bb6513a6ad44e11efb1e5284fc3cf67e230c6271db5f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant3d9c8c72909190af81276dc6e4f110ef14562ec54f3770d9ccb2fbe277968da0.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant3d9c8c72909190af81276dc6e4f110ef14562ec54f3770d9ccb2fbe277968da0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
