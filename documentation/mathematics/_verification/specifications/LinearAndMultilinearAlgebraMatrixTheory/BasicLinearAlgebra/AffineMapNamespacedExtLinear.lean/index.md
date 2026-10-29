# Verification target: Affine Map Namespaced Ext Linear

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dd5ca05270790780773fbc1ebd45ee59c5dad18e",
  "lexical_observation_count": 134,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/AffineMap/Variant47fefc85c4319b60496b83e4aa35dd4761b12280236709a1238d4d661a9d5a63.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapNamespacedExtLinear.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapNamespacedExtLinear.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dd5ca05270790780773fbc1ebd45ee59c5dad18e`.

Source path: `GRWTSK/Algebra/LinearAlgebra/AffineMap/Variant47fefc85c4319b60496b83e4aa35dd4761b12280236709a1238d4d661a9d5a63.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/AffineMap/Variant47fefc85c4319b60496b83e4aa35dd4761b12280236709a1238d4d661a9d5a63.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Group.Pointwise.Interval` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.BilinearMap` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Pi` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Prod` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Abel` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.AddTorsor.Basic` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.AffineSpace.Defs` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [AffineMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapNamespacedExtLinear.lean/declarations/affinemap.md) | 57 | `declaration-track:fb3a8a8348aeb55083fb08227357d8c5d795cc4a89e84c0418d7f4fd056930b3` |
| 2 | `instance` | [AffineMap.instFunLike](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapNamespacedExtLinear.lean/declarations/affinemap-instfunlike.md) | 68 | `declaration-track:88996f9adb29eb36c43ca8283a635836046e9eef4409cc3d401c8b7264890d15` |
| 3 | `def` | [toAffineMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapNamespacedExtLinear.lean/declarations/toaffinemap.md) | 84 | `declaration-track:abe25410fa8b9ca15a9e25d4e5bb3015886460743ea48fd1236b1df8d0d6d1c8` |
| 4 | `theorem` | [coe_toAffineMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapNamespacedExtLinear.lean/declarations/coe-toaffinemap.md) | 90 | `result-track:3dc36c4cd8fb504ec6b7a26e152e11cf20122e3e9ff45fe32ddad947b27db83d` |
| 5 | `theorem` | [toAffineMap_linear](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapNamespacedExtLinear.lean/declarations/toaffinemap-linear.md) | 94 | `result-track:e452dae95ca5b8ac005f6a4b65925b8d294c7b05feceef4e0eb07ad541257e64` |
| 6 | `theorem` | [coe_mk](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapNamespacedExtLinear.lean/declarations/coe-mk-source-edition-2.md) | 109 | `result-track:d3812eaa011405cdc7e6e3762990ee11780cd7ab38327322807be7b9c331c3ca` |
| 7 | `theorem` | [toFun_eq_coe](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapNamespacedExtLinear.lean/declarations/tofun-eq-coe.md) | 114 | `result-track:f00b99a9fc9faa06f18df19ae305c53b38e0ffa92c468df864268ef10bf2f385` |
| 8 | `theorem` | [map_vadd](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapNamespacedExtLinear.lean/declarations/map-vadd.md) | 121 | `result-track:704d6d9f6dbe4ff1a552b6b02dcd677d69a67d517d970e81a53e460e51c169c3` |
| 9 | `theorem` | [linearMap_vsub](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapNamespacedExtLinear.lean/declarations/linearmap-vsub.md) | 128 | `result-track:78a2cc70542e38590987cb76053967ea49a9ba229a6d808e134d322915583a8d` |
| 10 | `theorem` | [ext](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapNamespacedExtLinear.lean/declarations/ext.md) | 133 | `result-track:a62690fbb2ee48de894b4870ca1961e12f6138124ad12c4d74f389667969b241` |
| 11 | `theorem` | [coeFn_injective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapNamespacedExtLinear.lean/declarations/coefn-injective.md) | 136 | `result-track:dfeda74317a28fbdb61b4443101a44fbcdb0b02728e715a2f867d415af967e94` |
| 12 | `theorem` | [congr_arg](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapNamespacedExtLinear.lean/declarations/congr-arg.md) | 139 | `result-track:0f8994cd104c336c850d68e06f2e74e5933067e5dc57de855ee30c782b5880ec` |
| 13 | `theorem` | [congr_fun](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapNamespacedExtLinear.lean/declarations/congr-fun.md) | 142 | `result-track:dbdd5ea475a7adee9ee56bb8e318d20268430b5d69a6daf189e0ed2f50d037a3` |
| 14 | `theorem` | [ext_linear](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapNamespacedExtLinear.lean/declarations/ext-linear.md) | 146 | `result-track:73375d16e8c69f65823f8facd0d09b604c5f3ac04de858c0b34f28853b6a41eb` |
| 15 | `theorem` | [ext_linear_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapNamespacedExtLinear.lean/declarations/ext-linear-iff.md) | 155 | `result-track:d89fe3ca914b2f689e5e9edd75f6833f3644fe62e3778889f76b41c50ac4cda2` |
| 16 | `def` | [const](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapNamespacedExtLinear.lean/declarations/const.md) | 162 | `declaration-track:3f554ef3e3e141b516c018c44e44419001045effefa6b42a014ac9902068c40e` |
| 17 | `theorem` | [coe_const](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapNamespacedExtLinear.lean/declarations/coe-const.md) | 170 | `result-track:cc1b1270ac934406eddffb5824c29bc9fb248053d9ed488ed70e4ba901353d58` |
| 18 | `theorem` | [const_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapNamespacedExtLinear.lean/declarations/const-apply.md) | 174 | `result-track:ca9ca07b3cbf7a353c16bad8474285b01896611e3a2d461de40edce7b5043022` |
| 19 | `theorem` | [const_linear](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapNamespacedExtLinear.lean/declarations/const-linear.md) | 177 | `result-track:27eb0d76198cfaec707a56446967414b3a928fc466e8d2a8bcbb8b9f39f1b497` |
| 20 | `theorem` | [linear_eq_zero_iff_exists_const](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapNamespacedExtLinear.lean/declarations/linear-eq-zero-iff-exists-const.md) | 182 | `result-track:119de5bb3eb4faf655b17aa2f001dab6c079aec6fb61488a362531b771de221b` |
| 21 | `instance` | [nonempty](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapNamespacedExtLinear.lean/declarations/nonempty.md) | 192 | `declaration-track:fa6e73c5306e1214f9f9da5cd1c0572d9471c9944bf5b132d683b7a1b7e0e774` |
| 22 | `def` | [mk'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapNamespacedExtLinear.lean/declarations/mk.md) | 198 | `declaration-track:da7ed74cbc17c271c55b15c0a16bbf0e0b6df4f533aa92b5f5f5d6191b2f3a25` |
| 23 | `theorem` | [coe_mk'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapNamespacedExtLinear.lean/declarations/coe-mk.md) | 205 | `result-track:5cac8a1d3247dfb49ea01bb9beb3ee81b7651096ea129d4f0f6f3b692a3065e5` |
| 24 | `theorem` | [mk'_linear](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapNamespacedExtLinear.lean/declarations/mk-linear.md) | 209 | `result-track:e0ef62edbd60354bc92560bfcd731c87ea29903c87767b5a57838b4d44de9325` |
| 25 | `instance` | [mulAction](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapNamespacedExtLinear.lean/declarations/mulaction.md) | 216 | `declaration-track:13efdeef37d4547f138f7d48e2bd5e32d8072b43a3d08b7d9632ac54389b2117` |
| 26 | `theorem` | [coe_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapNamespacedExtLinear.lean/declarations/coe-smul.md) | 222 | `result-track:fb4efafc03a09246fd0d48ff527e7051cf47e629a128940849456f7523e42f54` |
| 27 | `theorem` | [smul_linear](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapNamespacedExtLinear.lean/declarations/smul-linear.md) | 226 | `result-track:7a1c7c77e35557b6ddd5530324890a68bb425a5546d3c88332fb7d9e9b8e4b8b` |
| 28 | `instance` | [isCentralScalar](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapNamespacedExtLinear.lean/declarations/iscentralscalar.md) | 229 | `declaration-track:5959aa0cf6d03c87bec0bdeb0c954f66b27ecd7656b9e891bee8f3d1b2268968` |
| 29 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapNamespacedExtLinear.lean/declarations/instance-source-edition-8.md) | 235 | `declaration-track:de6610f73ce12fa6330d1a3e8cd51236f5aa7bda71b94a61b9b64c2bea7f3f2d` |
| 30 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapNamespacedExtLinear.lean/declarations/instance-source-edition-5.md) | 237 | `declaration-track:8f61c8f44ac6ed3f11fa150f5714ef66fda72286caae2b0122d1bc92fc2dc736` |
| 31 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapNamespacedExtLinear.lean/declarations/instance-source-edition-7.md) | 240 | `declaration-track:d5e4848640f791dd88184072549f489d99e1b72d7244b61cf69e8c042f8c1953` |
| 32 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapNamespacedExtLinear.lean/declarations/instance-source-edition-3.md) | 243 | `declaration-track:771403d5dba7c5e3f5ddf6da79b757709d7cae23e082c5b300a8fbe79df3db9b` |
| 33 | `theorem` | [coe_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapNamespacedExtLinear.lean/declarations/coe-zero.md) | 247 | `result-track:05bf5efba71ee27bf4b6c50da38d51ffc0de628842e71e48f1c1db4212b30dfd` |
| 34 | `theorem` | [coe_add](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapNamespacedExtLinear.lean/declarations/coe-add.md) | 251 | `result-track:110b105ed42459cd70c177544ea78754fe69c2d209014bc9486c36e66293f488` |
| 35 | `theorem` | [coe_neg](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapNamespacedExtLinear.lean/declarations/coe-neg.md) | 255 | `result-track:4eac0ba0154b51545341bd25167b86905c8b2854a930574918c3d027c11c86af` |
| 36 | `theorem` | [coe_sub](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapNamespacedExtLinear.lean/declarations/coe-sub.md) | 259 | `result-track:f8ab76a7d852455500301381cb23e4f5457fae32c8ccc2ef8bd129d9544111d7` |
| 37 | `theorem` | [zero_linear](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapNamespacedExtLinear.lean/declarations/zero-linear.md) | 263 | `result-track:bc179b9dca33c73fd89f79ca411b050d5ea1c9ec5f9fb23df26d47e99e5abf4b` |
| 38 | `theorem` | [add_linear](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapNamespacedExtLinear.lean/declarations/add-linear.md) | 267 | `result-track:ddb54b8a6f76c36dc2ae3a83a658930ac4db7b4bd4a5daeac3940e29a1f556eb` |
| 39 | `theorem` | [sub_linear](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapNamespacedExtLinear.lean/declarations/sub-linear.md) | 271 | `result-track:1c0eea967185cb1a941ff16e87d5984e0be1853c113d62f053bdd2c029f3840d` |
| 40 | `theorem` | [neg_linear](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapNamespacedExtLinear.lean/declarations/neg-linear.md) | 275 | `result-track:1cdd7c6f30a16bb018eb3de3a8407ebd7f052ab60000fb20a631e98b9f4c1082` |
| 41 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapNamespacedExtLinear.lean/declarations/instance-source-edition-6.md) | 279 | `declaration-track:a963dc55edddcae0b322cd3370b1a7f2b21489f7eb283d9164715b4f7bdb23ed` |
| 42 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapNamespacedExtLinear.lean/declarations/instance-source-edition-9.md) | 285 | `declaration-track:f7abe7735b64766bd0e246461ee0231c37ea82003aad1727bfc4660f71138002` |
| 43 | `theorem` | [vadd_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapNamespacedExtLinear.lean/declarations/vadd-apply.md) | 298 | `result-track:925896b245dcbdce710e421e130d5fa66e1bfd5239a612f6c73c01dab93e3c3f` |
| 44 | `theorem` | [vsub_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapNamespacedExtLinear.lean/declarations/vsub-apply.md) | 302 | `result-track:fa26161e9ab9184eae37d862de9f3725092c58e860e2eb9f93f8e9e41248eb95` |
| 45 | `def` | [fst](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapNamespacedExtLinear.lean/declarations/fst.md) | 306 | `declaration-track:2662d17488f29553f3f93c9edaa3f02b64642351f435ef6ed1bc4d256836328e` |
| 46 | `theorem` | [coe_fst](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapNamespacedExtLinear.lean/declarations/coe-fst.md) | 312 | `result-track:3965d0d543eab499bae8bbcddf2995630030b0e46248cc9ef40739e0340c40a1` |
| 47 | `theorem` | [fst_linear](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapNamespacedExtLinear.lean/declarations/fst-linear.md) | 316 | `result-track:8751c7bb658bb0303c4525df8f9b125a996bcf425b49d693aa7370a6d20dd2a4` |
| 48 | `def` | [snd](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapNamespacedExtLinear.lean/declarations/snd.md) | 320 | `declaration-track:e12579398896818cf0e54814cd137234029a6dcd5b5438bdc12d6f7d5d9db5d2` |
| 49 | `theorem` | [coe_snd](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapNamespacedExtLinear.lean/declarations/coe-snd.md) | 326 | `result-track:e0178e002751797fabbbf1e9eb154c71f7ff5d7964bebb31e902a56c842cf01d` |
| 50 | `theorem` | [snd_linear](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapNamespacedExtLinear.lean/declarations/snd-linear.md) | 330 | `result-track:2def229d84f58db570437c15f8de30e806698c8cce89fc19c46f94389e6bb360` |
| 51 | `def` | [id](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapNamespacedExtLinear.lean/declarations/id.md) | 335 | `declaration-track:fa2b043f5df0e60ae6b33b2c65ff75d1844ca73360f4d2e95bd1fb26fd0bb1cc` |
| 52 | `theorem` | [coe_id](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapNamespacedExtLinear.lean/declarations/coe-id.md) | 342 | `result-track:122dc9f2b5f3531ac07239d43d332697d4421b02f6d199966ebfc603831c631f` |
| 53 | `theorem` | [id_linear](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapNamespacedExtLinear.lean/declarations/id-linear.md) | 346 | `result-track:9fa5b2bb4b5b3918d30cd58dbd01beb1f016b0e68af1da59120f42f8a90d3c2f` |
| 54 | `theorem` | [id_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapNamespacedExtLinear.lean/declarations/id-apply.md) | 352 | `result-track:c8a37dc9c44b99fda8b525f5ec5400bbbab948ffd239ad055cd3b0d0e6670948` |
| 55 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapNamespacedExtLinear.lean/declarations/instance-source-edition-4.md) | 357 | `declaration-track:81b2ba7f1ea9dde75e9895b8c4776b8927484e10e85e7aa93a4920d01b22b100` |
| 56 | `def` | [comp](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapNamespacedExtLinear.lean/declarations/comp.md) | 361 | `declaration-track:52b0441b9b451ba2f4cfe63eb5982473448bdeff793187da46912b3093193713` |
| 57 | `theorem` | [coe_comp](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapNamespacedExtLinear.lean/declarations/coe-comp.md) | 371 | `result-track:689ccb743238e02252f423fcfecc0eee1a5834769e8ca2b4b0529145bf3ecb5a` |
| 58 | `theorem` | [comp_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapNamespacedExtLinear.lean/declarations/comp-apply.md) | 375 | `result-track:d389602eedad16dd03f3fc6810dfebacfa375e03c792e1381f8f1f11ccafc5ba` |
| 59 | `theorem` | [comp_id](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapNamespacedExtLinear.lean/declarations/comp-id.md) | 379 | `result-track:0fbf09d127ddcfa0312078a686e6f0da4e11b79ebea5e4c759492cbf124701ec` |
| 60 | `theorem` | [id_comp](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapNamespacedExtLinear.lean/declarations/id-comp.md) | 383 | `result-track:0b459092320918a3beb80d7e6007373283564bff39c7684332b6c06cf360d3cb` |
| 61 | `theorem` | [comp_assoc](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapNamespacedExtLinear.lean/declarations/comp-assoc.md) | 386 | `result-track:b5c03b9769f99b33efa2117f3afeed99edb6425dde74c014f041e80c16aaacb6` |
| 62 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapNamespacedExtLinear.lean/declarations/instance-source-edition-2.md) | 390 | `declaration-track:1b9fa4a62cf7f9ea26563aa95775c415c0f123337ef4aaf4b928a5c8417e6c63` |
| 63 | `theorem` | [coe_mul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapNamespacedExtLinear.lean/declarations/coe-mul.md) | 398 | `result-track:2a733b8a8d1ef0a58da6a95fc6a4b6591f03fe7cf039c096e1494ee06d500684` |
| 64 | `theorem` | [coe_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapNamespacedExtLinear.lean/declarations/coe-one.md) | 402 | `result-track:3ea9685383e614077750b2fa5cd6a53b190323b3f1c31a9f51b6d23653877cbb` |
| 65 | `def` | [linearHom](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapNamespacedExtLinear.lean/declarations/linearhom.md) | 407 | `declaration-track:a5637245e2e678ef149369b792cd3239aba1d1493b63d7e30b24e7e241e57712` |
| 66 | `theorem` | [linear_injective_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapNamespacedExtLinear.lean/declarations/linear-injective-iff.md) | 413 | `result-track:530d75ffdfc99ed93df160899ea92eed1f838f22f61b035f945180db177ecdc1` |
| 67 | `theorem` | [linear_surjective_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapNamespacedExtLinear.lean/declarations/linear-surjective-iff.md) | 422 | `result-track:836c00d5f41aca4a1bc8468c41d5a87520994eb486a2f3589f4569cb58040a6d` |
| 68 | `theorem` | [linear_bijective_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapNamespacedExtLinear.lean/declarations/linear-bijective-iff.md) | 431 | `result-track:31a071f7a80be1fc0d7468a3d1202844504a7b914a4fbfc3e32af325fb68cd31` |
| 69 | `theorem` | [image_vsub_image](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapNamespacedExtLinear.lean/declarations/image-vsub-image.md) | 435 | `result-track:47fde0706285b6e7f22715847ac08e3a8b4cbb9f5ea09fa54059c51758341a01` |
| 70 | `def` | [lineMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapNamespacedExtLinear.lean/declarations/linemap.md) | 449 | `declaration-track:f97abcebf565a0bf529816eb6728298401d5a66c881f69f4ca49a837031ddd93` |
| 71 | `theorem` | [coe_lineMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapNamespacedExtLinear.lean/declarations/coe-linemap.md) | 452 | `result-track:588ec4a04315b7ab84f78c86dc28af56488189a0cb19f8b60698925a4d671976` |
| 72 | `theorem` | [lineMap_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapNamespacedExtLinear.lean/declarations/linemap-apply.md) | 455 | `result-track:20b07b2089680b0fcb7c2fc5311cbfdf8a623d404df92d433b540c9890e4417c` |
| 73 | `theorem` | [lineMap_apply_module'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapNamespacedExtLinear.lean/declarations/linemap-apply-module.md) | 458 | `result-track:9a2580eb054fba36836916b8ca0ffa11ff03527553fe4c1ef0d4e1828c49d7a1` |
| 74 | `theorem` | [lineMap_apply_module](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapNamespacedExtLinear.lean/declarations/linemap-apply-module-source-edition-2.md) | 461 | `result-track:dd98ff5059c10b2a4102791841ae7f84a929b00f91282acf8d6c5b21a906f638` |
| 75 | `theorem` | [lineMap_apply_ring'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapNamespacedExtLinear.lean/declarations/linemap-apply-ring-source-edition-2.md) | 464 | `result-track:d2edd0842bacb302334b350df73fed792d000c240b3498e197beeaa639e353f7` |
| 76 | `theorem` | [lineMap_apply_ring](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapNamespacedExtLinear.lean/declarations/linemap-apply-ring.md) | 467 | `result-track:07269d8f892121feb45a1b1b63c7f7e8d37ea70d3956cc58746c9b8a5620d051` |
| 77 | `theorem` | [lineMap_vadd_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapNamespacedExtLinear.lean/declarations/linemap-vadd-apply.md) | 470 | `result-track:bccefb449531cd86e2764f6d5bebb305f5c5e9b5fd8baadfc130fa56ecaeeb29` |
| 78 | `theorem` | [lineMap_linear](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapNamespacedExtLinear.lean/declarations/linemap-linear.md) | 474 | `result-track:ff1b0e5eb766f75192baf92c0cdbfab6092a25871682f91eddcbd62e8c146b2f` |
| 79 | `theorem` | [lineMap_same_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapNamespacedExtLinear.lean/declarations/linemap-same-apply.md) | 478 | `result-track:1a6c11074a47ad476b6a60b539ea052e7372afc5f3f97e754337c08ad738371c` |
| 80 | `theorem` | [lineMap_same](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapNamespacedExtLinear.lean/declarations/linemap-same.md) | 482 | `result-track:f796b8e8b6f6dafab38f76698fafa4dba2fecb9bd9284a0334f0c8c76c2b6fdb` |
| 81 | `theorem` | [lineMap_apply_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapNamespacedExtLinear.lean/declarations/linemap-apply-zero.md) | 486 | `result-track:c297e8540ff9e6579195c0a1d732eb83d1829f7441b64f43b73bcf0da06eccb3` |
| 82 | `theorem` | [lineMap_apply_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapNamespacedExtLinear.lean/declarations/linemap-apply-one.md) | 490 | `result-track:faeaa7447439e2175bc99f8e52a62b8bc03724d7874c06c91be724c86185d5bc` |
| 83 | `theorem` | [lineMap_eq_lineMap_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapNamespacedExtLinear.lean/declarations/linemap-eq-linemap-iff.md) | 494 | `result-track:4667ae4f2fb632995a117f464c17119a599b783804828144773664a30e65f749` |
| 84 | `theorem` | [lineMap_eq_left_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapNamespacedExtLinear.lean/declarations/linemap-eq-left-iff.md) | 500 | `result-track:414e01dfad82fef4339bbad84421ce8100628f4a018930ba3ed7e626ca101bd7` |
| 85 | `theorem` | [lineMap_eq_right_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapNamespacedExtLinear.lean/declarations/linemap-eq-right-iff.md) | 505 | `result-track:fe87d06d52959b8749c6e29f9c98fd0b6f0f018a6fe8d92e5ea6775d6580d584` |
| 86 | `theorem` | [lineMap_injective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapNamespacedExtLinear.lean/declarations/linemap-injective.md) | 510 | `result-track:0ffb49950a7017d56ea003bd750f727c3274b72af6c93a573ebd3c87d1a32083` |
| 87 | `theorem` | [apply_lineMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapNamespacedExtLinear.lean/declarations/apply-linemap.md) | 515 | `result-track:4dec0c4cc535050c8a7978d324de8950e24286090aedd2d3edeb2b702e5f4024` |
| 88 | `theorem` | [comp_lineMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapNamespacedExtLinear.lean/declarations/comp-linemap.md) | 520 | `result-track:aa6e7fc5b17847102c9138ceadc7d5594073c2c4c5be291c10bda91bb60e5830` |
| 89 | `theorem` | [fst_lineMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapNamespacedExtLinear.lean/declarations/fst-linemap.md) | 525 | `result-track:014571c0ca2c748e5d4b72d1414ef56c8308efb5ca742acf5aa4e94cb6d98034` |
| 90 | `theorem` | [snd_lineMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapNamespacedExtLinear.lean/declarations/snd-linemap.md) | 529 | `result-track:86e418f3096ed361e49626a6ed961f419cd2e5fc8543ffa04155d771fbea06fa` |
| 91 | `theorem` | [lineMap_symm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapNamespacedExtLinear.lean/declarations/linemap-symm.md) | 532 | `result-track:9d59532f1b65d54092377877b76d3f9fbd6d0360f041747f6a8e1ee993849a32` |
| 92 | `theorem` | [lineMap_apply_one_sub](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapNamespacedExtLinear.lean/declarations/linemap-apply-one-sub.md) | 538 | `result-track:b11b4d57dbeae00d3678f1ac66c32865a8d114dcbf410083e20fcad359464763` |
| 93 | `theorem` | [lineMap_vsub_left](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapNamespacedExtLinear.lean/declarations/linemap-vsub-left.md) | 544 | `result-track:7bbf8ef6cb41e6eff1305cfb8b2f3e9bdda0f0d8b6953398af3d8c6973744a27` |
| 94 | `theorem` | [left_vsub_lineMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapNamespacedExtLinear.lean/declarations/left-vsub-linemap.md) | 548 | `result-track:c426dbd6223ce3ffb5c37ecf8a2d10193ba8a788e63a35af28f02415eefe0d08` |
| 95 | `theorem` | [lineMap_vsub_right](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapNamespacedExtLinear.lean/declarations/linemap-vsub-right.md) | 552 | `result-track:90afc7288e27383337d6cf6eb8288ca9c59a9c4980feb706684d670d38fc1acc` |
| 96 | `theorem` | [right_vsub_lineMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapNamespacedExtLinear.lean/declarations/right-vsub-linemap.md) | 556 | `result-track:d119ad800590ccbba6ca9b76d840abe5cb853c2daaff4347c7e031f6b312b8ab` |
| 97 | `theorem` | [lineMap_vadd_lineMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapNamespacedExtLinear.lean/declarations/linemap-vadd-linemap.md) | 559 | `result-track:62bb0c6cf06be259fd9ba81828ea8eb4c3858b28fc7ffd82cadadaa967cb77cd` |
| 98 | `theorem` | [lineMap_vsub_lineMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapNamespacedExtLinear.lean/declarations/linemap-vsub-linemap.md) | 563 | `result-track:e2a1ff459d94a66bf1102e8d013a6ab3bceb457b26a9233540a8bdbe76594e33` |
| 99 | `lemma` | [lineMap_lineMap_right](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapNamespacedExtLinear.lean/declarations/linemap-linemap-right.md) | 567 | `result-track:fe651808e99029964e0149399d5725c44988dc6eae877beab9cffaeefe3db539` |
| 100 | `lemma` | [lineMap_lineMap_left](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapNamespacedExtLinear.lean/declarations/linemap-linemap-left.md) | 570 | `result-track:fe6327bd73d1f69d941562b822fcc98f7a1b1c5b32e5f0b60514078509bb9fd1` |
| 101 | `theorem` | [decomp](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapNamespacedExtLinear.lean/declarations/decomp.md) | 576 | `result-track:6478d39c92474b500e7142bf4f4d49f82f2d09b9ba80e5bae37b1619367e39df` |
| 102 | `theorem` | [decomp'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapNamespacedExtLinear.lean/declarations/decomp-source-edition-2.md) | 584 | `result-track:7855a74b2cf38c82223476cb82912dca463364e334032ce97546c31a6e4cd28e` |
| 103 | `theorem` | [image_uIcc](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapNamespacedExtLinear.lean/declarations/image-uicc.md) | 588 | `result-track:9c9e8f4f29ba440bfd9d713916fe6b3ded71c84581d2169d35d2db85822ed810` |
| 104 | `def` | [proj](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapNamespacedExtLinear.lean/declarations/proj.md) | 605 | `declaration-track:d8f74be4e0dd7d0955325b30f3357f48f4274c52647cf0b0168446138f73617c` |
| 105 | `theorem` | [proj_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapNamespacedExtLinear.lean/declarations/proj-apply.md) | 611 | `result-track:40a216ad9ba5d327316ee553e36706e8141cef9da7c6dfdc15c763b69fd32598` |
| 106 | `theorem` | [proj_linear](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapNamespacedExtLinear.lean/declarations/proj-linear.md) | 615 | `result-track:fdf0c345a6e38f3a9bf5185e17fc7e57c8c04816b92df47b68da12672a94bf5b` |
| 107 | `theorem` | [pi_lineMap_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapNamespacedExtLinear.lean/declarations/pi-linemap-apply.md) | 618 | `result-track:de99853838526f28c6f8813c3b2c0e6bdf39021c8d0bd4b49e173c0e817648ae` |
| 108 | `instance` | [distribMulAction](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapNamespacedExtLinear.lean/declarations/distribmulaction.md) | 640 | `declaration-track:6edc736b0eb1325aabcabe323e1c385775299c9b12fbaf805f0cef6b04028866` |
| 109 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapNamespacedExtLinear.lean/declarations/instance.md) | 651 | `declaration-track:1a930d5e78a05b799d4d4fd13ba14ec7726878784da64a455702b2c160bcd708` |
| 110 | `def` | [toConstProdLinearMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapNamespacedExtLinear.lean/declarations/toconstprodlinearmap.md) | 664 | `declaration-track:302aa417f837ee259d285b0b9a267f120ac94a63e6e12c4f4cc55a962fa29eca` |
| 111 | `def` | [pi](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapNamespacedExtLinear.lean/declarations/pi.md) | 688 | `declaration-track:a57b7824e7cd4167ce4065b34108e89ec012bcbdf8586bef04b9e2c7d5c6c66d` |
| 112 | `theorem` | [pi_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapNamespacedExtLinear.lean/declarations/pi-apply.md) | 699 | `result-track:897d8a200267aa3be8ac7a7ae67db32ef908576ab090c1782573ad4179cf143c` |
| 113 | `theorem` | [pi_comp](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapNamespacedExtLinear.lean/declarations/pi-comp.md) | 702 | `result-track:a92b8be8e86813206a7f0c8600131fea54757738c75da7232987c8bceff5aa88` |
| 114 | `theorem` | [pi_eq_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapNamespacedExtLinear.lean/declarations/pi-eq-zero.md) | 705 | `result-track:88fadc6b66ef3adc36c7675ea11391a95afd0dd64245e65b39a98cea104e9dc0` |
| 115 | `theorem` | [pi_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapNamespacedExtLinear.lean/declarations/pi-zero.md) | 709 | `result-track:38b2650cb0c2e8c00855b674a8f0a6d19652a57c7144c56a07bbe2542e9f9e9b` |
| 116 | `theorem` | [proj_pi](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapNamespacedExtLinear.lean/declarations/proj-pi.md) | 712 | `result-track:e210a9379206cc8b141f2b29e5ac63a35a7479f793b5674e68bbd9fcc5193c61` |
| 117 | `theorem` | [pi_ext_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapNamespacedExtLinear.lean/declarations/pi-ext-zero.md) | 721 | `result-track:12b0fe743cefc1a2970d7d71b42ac5c4da33acbf139fd75e922d5f6201a7b7a6` |
| 118 | `theorem` | [pi_ext_nonempty](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapNamespacedExtLinear.lean/declarations/pi-ext-nonempty-source-edition-2.md) | 738 | `result-track:645484e80bccb13b50a06d6ecbb83e7c008f0f72644ba506911171ea497e567d` |
| 119 | `theorem` | [pi_ext_nonempty'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapNamespacedExtLinear.lean/declarations/pi-ext-nonempty.md) | 748 | `result-track:4d5905804e1d895432ab5bb3fe0faf857217856ace53beed1530e962ad596a57` |
| 120 | `def` | [homothety](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapNamespacedExtLinear.lean/declarations/homothety.md) | 765 | `declaration-track:d898731d97442053eb0031994b13792ebc67ad133c5292034e549c4d67a202aa` |
| 121 | `theorem` | [homothety_def](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapNamespacedExtLinear.lean/declarations/homothety-def.md) | 768 | `result-track:f0d584f249490c434372852ab0b431c6ee684d37b9f701685ec5ec7c030d877e` |
| 122 | `theorem` | [homothety_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapNamespacedExtLinear.lean/declarations/homothety-apply.md) | 772 | `result-track:50d2c705143cf30079f1d1f72892f127c40ef4752b1de803e1b7ed3aef45cd75` |
| 123 | `theorem` | [homothety_eq_lineMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapNamespacedExtLinear.lean/declarations/homothety-eq-linemap.md) | 775 | `result-track:70eca34bdaf9e4d4d9ef20fbf0f59404ca5f534d7c83e7aa24ff683451f5a921` |
| 124 | `theorem` | [homothety_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapNamespacedExtLinear.lean/declarations/homothety-one.md) | 779 | `result-track:59d1b50913186b189435f426921824528378a2963c3592963e9c0268ddab5fd5` |
| 125 | `theorem` | [homothety_apply_same](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapNamespacedExtLinear.lean/declarations/homothety-apply-same.md) | 784 | `result-track:cfecc7bf9c4fdc5b2efb0df104e3c7d65b9043ad1dfa30fd7fd549e2f2f4eddf` |
| 126 | `theorem` | [homothety_mul_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapNamespacedExtLinear.lean/declarations/homothety-mul-apply.md) | 787 | `result-track:9a8dde92fca6659b0d5a89c757a0c7529680a9743d2499047b9e0e89b177f8b5` |
| 127 | `theorem` | [homothety_mul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapNamespacedExtLinear.lean/declarations/homothety-mul.md) | 791 | `result-track:9cb38543384251c9a25eb47cb017f8eea1265f4d6529251f2c54c37943cadeed` |
| 128 | `theorem` | [homothety_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapNamespacedExtLinear.lean/declarations/homothety-zero.md) | 796 | `result-track:c380d4910bd860f67fb944a8c7b236e68b2a545f82a7c7055041c2d5138973cc` |
| 129 | `theorem` | [homothety_add](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapNamespacedExtLinear.lean/declarations/homothety-add.md) | 801 | `result-track:f81ad557912e8d9a4a8be822b12101868ae9bbf25d6bc97f999d76e1c4b6bf35` |
| 130 | `def` | [homothetyHom](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapNamespacedExtLinear.lean/declarations/homothetyhom.md) | 806 | `declaration-track:3005e173962912b0192b0dc5e1dac6e91e06cea4345b39648d4084fa37b2cc47` |
| 131 | `theorem` | [coe_homothetyHom](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapNamespacedExtLinear.lean/declarations/coe-homothetyhom.md) | 812 | `result-track:eb7593538f7b2c2732c66a4c0fd462b81bbf6721513d8704bb2d420885012bca` |
| 132 | `def` | [homothetyAffine](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapNamespacedExtLinear.lean/declarations/homothetyaffine.md) | 816 | `declaration-track:bb9379cc09810eb6061f87a8fd636e520941000c843ac65b0c05217a73d4984e` |
| 133 | `theorem` | [coe_homothetyAffine](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapNamespacedExtLinear.lean/declarations/coe-homothetyaffine.md) | 821 | `result-track:928a4d28296e34ffc56fb570a95279dc97deddccc0d19fcbf7c084a1c579d13e` |
| 134 | `theorem` | [Convex.combo_affine_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapNamespacedExtLinear.lean/declarations/convex-combo-affine-apply.md) | 834 | `result-track:0c3ecaf5713c35ae51d5f09fc61580346d4de374295b8e45ad8618783c580bdd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e594c059dc86e3c906b6daf9cacdcfee92b4ff826065a7464b1f047017be12be -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/AffineMap/Variant47fefc85c4319b60496b83e4aa35dd4761b12280236709a1238d4d661a9d5a63.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/AffineMap/Variant47fefc85c4319b60496b83e4aa35dd4761b12280236709a1238d4d661a9d5a63.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
