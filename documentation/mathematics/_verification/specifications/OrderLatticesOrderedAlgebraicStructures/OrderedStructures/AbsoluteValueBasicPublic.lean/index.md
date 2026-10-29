# Verification target: Absolute Value Basic Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e7d4cd96cfa236509911d5ac7b359a5770bc52b5",
  "lexical_observation_count": 73,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Basic/Variante2919b6cd3a986b6a2bfac18331bd0b2e84942058749ca5db822de031160061e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicPublic.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e7d4cd96cfa236509911d5ac7b359a5770bc52b5`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Basic/Variante2919b6cd3a986b6a2bfac18331bd0b2e84942058749ca5db822de031160061e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Basic/Variante2919b6cd3a986b6a2bfac18331bd0b2e84942058749ca5db822de031160061e.lean.json)

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
| 1 | `structure` | [AbsoluteValue](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicPublic.lean/declarations/absolutevalue.md) | 36 | `declaration-track:bae8bf90d9bc6ef48f1e43f6067486c6a88ef0c47caf48e04e09592b8bc7a43d` |
| 2 | `instance` | [funLike](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicPublic.lean/declarations/funlike.md) | 56 | `declaration-track:3f2febade045f32fe9c5792583824786bfe6dfd51769e94362e770967f10dcc5` |
| 3 | `instance` | [zeroHomClass](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicPublic.lean/declarations/zerohomclass.md) | 60 | `declaration-track:e3503800fe40ff558444e77f3e80dcc7baad92389faaca79a563e0b5f1276a77` |
| 4 | `instance` | [mulHomClass](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicPublic.lean/declarations/mulhomclass.md) | 63 | `declaration-track:6686f91233909b12933b7f86d85dd846424133b2c524590c646bfc0ba7ba080c` |
| 5 | `instance` | [nonnegHomClass](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicPublic.lean/declarations/nonneghomclass.md) | 66 | `declaration-track:04a816e16271befc707126f2908e8d43564d7b5dff3320e9420eaa371f9c3730` |
| 6 | `instance` | [subadditiveHomClass](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicPublic.lean/declarations/subadditivehomclass.md) | 69 | `declaration-track:ce2017401ded8957de012f7d864c568a15442f39d6d0312e9be58c97bbffe4f8` |
| 7 | `theorem` | [coe_mk](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicPublic.lean/declarations/coe-mk.md) | 73 | `result-track:77e7835aa8dcbe236b86cf0cc7e5091514bfa9447922f2c3c18f57845cf4b567` |
| 8 | `theorem` | [ext](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicPublic.lean/declarations/ext.md) | 77 | `result-track:00b2ab5cd5aa8bb010a65db6c2deecfe357b3e2df26d7fbf6b650752653d4f6b` |
| 9 | `def` | [Simps.apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicPublic.lean/declarations/simps-apply.md) | 81 | `declaration-track:d3fe0af7223ebfe22d3d42f81c94b3f29318b5ba0ae3970c330b853b9396e503` |
| 10 | `theorem` | [coe_toMulHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicPublic.lean/declarations/coe-tomulhom.md) | 87 | `result-track:6f35ded07221f29237d9189c15bed7a3ccbbac9bffd48c38232da54a163159b8` |
| 11 | `theorem` | [nonneg](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicPublic.lean/declarations/nonneg.md) | 91 | `result-track:6a1d909fad3c616f3f6261f6499bdc1c437f68b78823337855fc6ebf8e52c3b9` |
| 12 | `theorem` | [eq_zero](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicPublic.lean/declarations/eq-zero.md) | 95 | `result-track:28cfd9dc05e87a4f4d5c233a329dfd1ba37d0526bd499e67c4e88565bd4d7b5b` |
| 13 | `theorem` | [add_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicPublic.lean/declarations/add-le.md) | 99 | `result-track:b3f6089d3efc2858031f0136c49ccf2031f57bee18d99b25d2c8e2bd992a3615` |
| 14 | `lemma` | [listSum_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicPublic.lean/declarations/listsum-le.md) | 103 | `result-track:4f948fc7fd1bd7503295ba8cbcb3a26aa845646106eb4c6ecddddd3add2a9982` |
| 15 | `theorem` | [map_mul](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicPublic.lean/declarations/map-mul.md) | 109 | `result-track:b23f93eeb14f7a78057ae30a82abad670dd1f307f436c37c4ad8c8e1b960b362` |
| 16 | `theorem` | [ne_zero_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicPublic.lean/declarations/ne-zero-iff.md) | 112 | `result-track:1a50dc80dee1faa0c32844b912dd6e2d4321a63d88075eaffc92b1dff3c147ae` |
| 17 | `theorem` | [pos_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicPublic.lean/declarations/pos-iff.md) | 117 | `result-track:b1b50f3bb6e40cf2a3ca861a20ae2d0541c533e8c2f823899b086023d903bfea` |
| 18 | `theorem` | [nonpos_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicPublic.lean/declarations/nonpos-iff.md) | 122 | `result-track:bc5b71198fbd51fc8e11201229835855e39bb6bcf91052674893912026ae5d64` |
| 19 | `theorem` | [map_one_of_isLeftRegular](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicPublic.lean/declarations/map-one-of-isleftregular.md) | 125 | `result-track:7505947f37dc581ef8022fa1a8996993562bcc857a1942204c1ca485f2cfce93` |
| 20 | `theorem` | [map_zero](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicPublic.lean/declarations/map-zero.md) | 129 | `result-track:22b63ce46f41242b40f4ebf12c590a12f5c48852f19fb1f89055170d95559cd0` |
| 21 | `theorem` | [sub_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicPublic.lean/declarations/sub-le.md) | 138 | `result-track:36cc455dcff26123de7e80610657c1df0b0e596ad40d1484fcb6b233c7e136d8` |
| 22 | `theorem` | [map_sub_eq_zero_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicPublic.lean/declarations/map-sub-eq-zero-iff.md) | 142 | `result-track:13ddd846ec0fd17c54aac4a98f80919bcf00395007eafca95b8a82731c50651e` |
| 23 | `theorem` | [map_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicPublic.lean/declarations/map-one.md) | 157 | `result-track:b40995e25c5ed351d0d0265562c21d504ec8c8bb4dbfaf09777f4bcef5916a2d` |
| 24 | `instance` | [monoidWithZeroHomClass](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicPublic.lean/declarations/monoidwithzerohomclass.md) | 160 | `declaration-track:7f24baefb594f27162755ec00735883563f9c5b3d89ee6ce92efc69ef3a50e0b` |
| 25 | `def` | [toMonoidWithZeroHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicPublic.lean/declarations/tomonoidwithzerohom.md) | 166 | `declaration-track:30eee50b0dd95e74adccb70eed101b96d61a08bb10ed0ae6649f91aa11e7ba6c` |
| 26 | `theorem` | [coe_toMonoidWithZeroHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicPublic.lean/declarations/coe-tomonoidwithzerohom.md) | 170 | `result-track:c3a425a2ca593ea486112060ad5f028555c250df616a1f0730acb7da28f8eef7` |
| 27 | `def` | [toMonoidHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicPublic.lean/declarations/tomonoidhom.md) | 174 | `declaration-track:eeaa8e8b914c43bdd437ccada91db53763f820fbd7c04e04c8ddea2a01224953` |
| 28 | `theorem` | [coe_toMonoidHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicPublic.lean/declarations/coe-tomonoidhom.md) | 178 | `result-track:3593c76b1e537ecc4a805ab1fe6300386eaf7918ed93676430035c33438e37ec` |
| 29 | `theorem` | [map_pow](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicPublic.lean/declarations/map-pow.md) | 182 | `result-track:d4a81a62c4c08b7bb6e9c6e1730532579e2c8a1568cd9219db634dacc41c7f83` |
| 30 | `lemma` | [apply_nat_le_self](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicPublic.lean/declarations/apply-nat-le-self.md) | 187 | `result-track:31f9647c119dd48f983cad8229d35c4872e4032b6f2626d7c7f7b043192d02b2` |
| 31 | `theorem` | [le_sub](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicPublic.lean/declarations/le-sub.md) | 209 | `result-track:a91e892780ba8a70b39e183863c6cfadfd9baaacc8052275344ea92b13b293f2` |
| 32 | `theorem` | [map_neg](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicPublic.lean/declarations/map-neg.md) | 221 | `result-track:809e0976bf9fbbbb1c3311f11044d57763f67b8a303acb96307ccd098dfdbac8` |
| 33 | `theorem` | [map_sub](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicPublic.lean/declarations/map-sub.md) | 227 | `result-track:3c14dbd1e2c712eaee376588d9af73d23611ad1ae67426b5d2f10ec3c1c755cb` |
| 34 | `theorem` | [le_add](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicPublic.lean/declarations/le-add.md) | 231 | `result-track:7c346b45599b25f15164634a1b7b1b071e4197e40792210910254b3137ce4634` |
| 35 | `lemma` | [sub_le_add](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicPublic.lean/declarations/sub-le-add.md) | 236 | `result-track:f8b33c343d124b640c89697325c00b517d7713520ac9097cd7112e4df8cec24c` |
| 36 | `instance` | [addGroupSeminormClass](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicPublic.lean/declarations/addgroupseminormclass.md) | 239 | `declaration-track:78acbfc2f160e5d02aca56ac36cdca7611080166045036d756d0d3d574739274` |
| 37 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicPublic.lean/declarations/instance-source-edition-2.md) | 244 | `declaration-track:36b0fdd751a2be2c9a4c3d9d1a289055f261f17df120e76a09689f99a04c5002` |
| 38 | `lemma` | [apply_natAbs_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicPublic.lean/declarations/apply-natabs-eq.md) | 251 | `result-track:4a5e99477a7b43ee08b072be15623956f416bf1c911bf551edc65094ad71d8f6` |
| 39 | `lemma` | [eq_on_nat_iff_eq_on_int](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicPublic.lean/declarations/eq-on-nat-iff-eq-on-int.md) | 257 | `result-track:9034bd3f791534145a84267f6e1b416109f2e77073e75fc6767b1baf99f2ad6c` |
| 40 | `def` | [abs](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicPublic.lean/declarations/abs.md) | 270 | `declaration-track:0f46cf565c29462df7b569fce31f60b10c45dc0d5df1b86665a77633b87d146c` |
| 41 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicPublic.lean/declarations/instance.md) | 277 | `declaration-track:09f8a99fa49b26811ee467bbcddbb882c18182b47094f16b05521341522b2332` |
| 42 | `theorem` | [abs_abv_sub_le_abv_sub](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicPublic.lean/declarations/abs-abv-sub-le-abv-sub-source-edition-2.md) | 288 | `result-track:aa61e5c31218b8dc7a409f2e81ffedf4d99be685bca378f801768d770be6fe91` |
| 43 | `def` | [trivial](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicPublic.lean/declarations/trivial.md) | 300 | `declaration-track:b6193b50f705f56e5ce0d5f14778c61a7a55b59cf739adb7a70802f94ec114c0` |
| 44 | `lemma` | [trivial_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicPublic.lean/declarations/trivial-apply.md) | 319 | `result-track:a5258bb2c9bbe401f41300ce04aa329188eb1c6d2f82d1b363fbf558e9bf9874` |
| 45 | `def` | [IsNontrivial](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicPublic.lean/declarations/isnontrivial.md) | 335 | `declaration-track:b783c0b2654896572aa168942bf5a188054c1013eddc4bca7bcd8be94466b24a` |
| 46 | `lemma` | [isNontrivial_iff_ne_trivial](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicPublic.lean/declarations/isnontrivial-iff-ne-trivial.md) | 338 | `result-track:16a52c6e3a914ae7d0d3bdd5bb303d5144552df9b45b849a6c71be3b6993c6a4` |
| 47 | `lemma` | [not_isNontrivial_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicPublic.lean/declarations/not-isnontrivial-iff.md) | 350 | `result-track:9f2b83a0fa2a610e64ea53d84901a38d52287957ab8b86ce6bd5ef98c26478b1` |
| 48 | `lemma` | [not_isNontrivial_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicPublic.lean/declarations/not-isnontrivial-apply.md) | 358 | `result-track:73f9a8952ee538faabbb329c5fb2c6821e7ff64ebf783f68db567f8307647234` |
| 49 | `lemma` | [IsNontrivial.exists_abv_gt_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicPublic.lean/declarations/isnontrivial-exists-abv-gt-one.md) | 369 | `result-track:0f50776028c94097f2ea0c24a55f6d6450ffe4a15bd29d69c6237fe01b1528fa` |
| 50 | `lemma` | [IsNontrivial.exists_abv_lt_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicPublic.lean/declarations/isnontrivial-exists-abv-lt-one.md) | 377 | `result-track:ae8096e045730e16b035ccd5ae65c66a6da00539abf155e1f88178e756a7e480` |
| 51 | `class` | [IsAbsoluteValue](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicPublic.lean/declarations/isabsolutevalue.md) | 395 | `declaration-track:83d8a609abbe9d70172547b590801ec07d9700807ec0de78b3f1595213ea9e16` |
| 52 | `lemma` | [abv_nonneg](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicPublic.lean/declarations/abv-nonneg.md) | 412 | `result-track:443530bb9c72784604e9b4cbdc5b9ea43847f9f1f36d341a61a5145463817cea` |
| 53 | `def` | [Mathlib.Meta.Positivity.evalAbv](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicPublic.lean/declarations/mathlib-meta-positivity-evalabv.md) | 419 | `declaration-track:a18ce3d7f268c418f5a2329bae30364c47d60e660e443c06868725e46fbb09b3` |
| 54 | `lemma` | [abv_eq_zero](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicPublic.lean/declarations/abv-eq-zero.md) | 427 | `result-track:9e30cc3ba8c3b5a0d037ee24fb22f899d394897ba12f51e6e40b1f0523426951` |
| 55 | `lemma` | [abv_add](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicPublic.lean/declarations/abv-add.md) | 429 | `result-track:ac96b3005f67d69d3d483b2c8d90143247d83c4ec8dcd584abd31c9e0e3cba39` |
| 56 | `lemma` | [abv_mul](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicPublic.lean/declarations/abv-mul.md) | 431 | `result-track:321fdc2c92e28731ec381706755efb4592fb88b3721252127b666cb370218217` |
| 57 | `instance` | [_root_.AbsoluteValue.isAbsoluteValue](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicPublic.lean/declarations/root-absolutevalue-isabsolutevalue.md) | 434 | `declaration-track:e6e073dc831330ed5283bed34c4413ad2fcd0511afa77987953d11d55be9f669` |
| 58 | `def` | [toAbsoluteValue](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicPublic.lean/declarations/toabsolutevalue.md) | 442 | `declaration-track:1a748b16409b1489af50bd281d52824ed2edf0352ed5494ade46456f12aa75a4` |
| 59 | `theorem` | [abv_zero](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicPublic.lean/declarations/abv-zero.md) | 449 | `result-track:75fb55ccfeef2e976959ceb9750e14ff548968e0927d5bf1026b4db289091a10` |
| 60 | `theorem` | [abv_pos](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicPublic.lean/declarations/abv-pos.md) | 452 | `result-track:f85d0cf0c3ca0460649cd485cae3c8fbae727b0f2855c9e04794ff6c0b3e197b` |
| 61 | `instance` | [abs_isAbsoluteValue](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicPublic.lean/declarations/abs-isabsolutevalue.md) | 461 | `declaration-track:aead62e20159e10f2d384102846c842e9e9b408c2ede0022285dae262b5a19a8` |
| 62 | `theorem` | [abv_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicPublic.lean/declarations/abv-one-source-edition-2.md) | 475 | `result-track:a806afae00bc67a6c437923dc6569318c06a5165409472c2a160a14bdd924ab1` |
| 63 | `def` | [abvHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicPublic.lean/declarations/abvhom-source-edition-2.md) | 479 | `declaration-track:42d997fb45da748c4b0433c1252dbaea8b9c32589e81fd5803c2fc1e8f678b0a` |
| 64 | `theorem` | [abv_pow](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicPublic.lean/declarations/abv-pow.md) | 482 | `result-track:2f2203d025855786db2a913ba599f0249b838686acc4dabd95e9e9204ad4a34c` |
| 65 | `theorem` | [abv_sub_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicPublic.lean/declarations/abv-sub-le.md) | 492 | `result-track:5e875cf0f70ca85f9999bce51f16c47140df96628601a2323a72d5bd6b52a05a` |
| 66 | `theorem` | [sub_abv_le_abv_sub](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicPublic.lean/declarations/sub-abv-le-abv-sub.md) | 495 | `result-track:fcc4163557b3e17b335297df7fa54e7f8826496be46213cc31df9b7240766615` |
| 67 | `theorem` | [abv_neg](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicPublic.lean/declarations/abv-neg.md) | 506 | `result-track:6b9879bcfca2ea1a8d04c32d92a9632170a176fb0e8141702c55a080450fe393` |
| 68 | `theorem` | [abv_sub](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicPublic.lean/declarations/abv-sub.md) | 509 | `result-track:69c7c327fff87f965018c0040d648f3ca9ee2ba81a0184a92dc913885a369b7e` |
| 69 | `theorem` | [abs_abv_sub_le_abv_sub](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicPublic.lean/declarations/abs-abv-sub-le-abv-sub.md) | 522 | `result-track:86869fb85ebe4796195f27292460309fa7ed17866c0dc0759479773d6656432a` |
| 70 | `theorem` | [abv_one'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicPublic.lean/declarations/abv-one.md) | 538 | `result-track:9be11ddf3dd78a7370a29a5eae342b0d4805834fa072d14d237f39f5a51fe417` |
| 71 | `def` | [abvHom'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicPublic.lean/declarations/abvhom.md) | 543 | `declaration-track:407f38d6ecd57a530f16aec84347661665b69b9bb0e1bbbc66204844a38bc9de` |
| 72 | `theorem` | [abv_inv](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicPublic.lean/declarations/abv-inv.md) | 558 | `result-track:8c847f3cf1c1ce0e88dab7c803c4392a9df1cd2239fc7d63051760ab78259874` |
| 73 | `theorem` | [abv_div](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicPublic.lean/declarations/abv-div.md) | 561 | `result-track:8a03007156fc5a2fd535996ce0a6c415e329458cf458efffedbea0c69be6199f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9a8c6a4264d8f6621833e9dbe8084d4832becbecdd2bf80b33bd00cc2d236b05 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/Basic/Variante2919b6cd3a986b6a2bfac18331bd0b2e84942058749ca5db822de031160061e.lean","GRWTSK/_verification/specifications/Algebra/UniversalAlgebra/Basic/Variante2919b6cd3a986b6a2bfac18331bd0b2e84942058749ca5db822de031160061e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
