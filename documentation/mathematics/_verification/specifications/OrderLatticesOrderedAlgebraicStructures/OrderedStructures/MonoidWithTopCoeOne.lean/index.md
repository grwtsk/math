# Verification target: Monoid With Top Coe One

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "71756a80ab7c38d4197016c0544719ab47422bda",
  "lexical_observation_count": 123,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/WithTop/Variant69a3fa375124615e146457651f8ec49c66caeba5fd0f8e3e85a921dcb5304a41.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidWithTopCoeOne.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidWithTopCoeOne.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `71756a80ab7c38d4197016c0544719ab47422bda`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/WithTop/Variant69a3fa375124615e146457651f8ec49c66caeba5fd0f8e3e85a921dcb5304a41.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/WithTop/Variant69a3fa375124615e146457651f8ec49c66caeba5fd0f8e3e85a921dcb5304a41.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Hom.Group` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.OrderDual` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.WithZero.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Cast.Defs` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.ZeroLEOne` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidWithTopCoeOne.lean/declarations/one.md) | 30 | `declaration-track:30d3f98f5c4a0bc547cb3a72e486af6c83e1b7d7909811b81cbd17a07759bbe2` |
| 2 | `theorem` | [coe_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidWithTopCoeOne.lean/declarations/coe-one.md) | 36 | `result-track:66367f415c5c05b6852e687d1b34ef4fe0a77e1309b6642bd9a24a6db95fcdb5` |
| 3 | `theorem` | [coe_eq_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidWithTopCoeOne.lean/declarations/coe-eq-one-source-edition-2.md) | 42 | `result-track:db3daa24c3f37a489f9c04ff6fc48d05589c9a324eef1846bcaa89d4d2cec078` |
| 4 | `theorem` | [untop_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidWithTopCoeOne.lean/declarations/untop-one-source-edition-2.md) | 48 | `result-track:f6b62235aeb45d2f543e5efd3d545f62efd93949cf3ab2c17fefe151d1cb11bf` |
| 5 | `theorem` | [untop_one'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidWithTopCoeOne.lean/declarations/untop-one.md) | 54 | `result-track:c954671048b2fc1233bfc5552ce3889dd7f255f6f9deea1565a4d1603c9c2a2e` |
| 6 | `theorem` | [one_le_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidWithTopCoeOne.lean/declarations/one-le-coe.md) | 60 | `result-track:6ebaa71426bca66de008d97d9fe90ee9e98a0f20bb6f7599597632ba35366425` |
| 7 | `theorem` | [coe_le_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidWithTopCoeOne.lean/declarations/coe-le-one.md) | 66 | `result-track:41f9bc662ae4ecbf0e00f8532fc781a4b39ef798a51376083451fd1d3c0c0285` |
| 8 | `theorem` | [one_lt_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidWithTopCoeOne.lean/declarations/one-lt-coe-source-edition-2.md) | 72 | `result-track:26fe47fbedbf944160f7de8c1a7ec407c92c3e84d255bbce2a8e5aae686df263` |
| 9 | `theorem` | [coe_lt_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidWithTopCoeOne.lean/declarations/coe-lt-one.md) | 78 | `result-track:6616c8a5818fc2aae56d3a40abc7eb62ff6c7c869d5a7d4d42f1d3b2110221d1` |
| 10 | `theorem` | [map_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidWithTopCoeOne.lean/declarations/map-one-source-edition-2.md) | 84 | `result-track:c68536f16c2e91dd466664fd1fed4e48cad945d8a954b44eaf9753cfa20080fa` |
| 11 | `theorem` | [one_eq_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidWithTopCoeOne.lean/declarations/one-eq-coe.md) | 90 | `result-track:39f07bb1c6aea18e70aacb89103b5a521a8d8c87ff5e296b1bf0e4eb43368142` |
| 12 | `theorem` | [top_ne_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidWithTopCoeOne.lean/declarations/top-ne-one.md) | 96 | `result-track:6616aaa6f1c27ba29dd55e94092ed7b9336c21a9c172aaaa4238d40d467eee1d` |
| 13 | `theorem` | [one_ne_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidWithTopCoeOne.lean/declarations/one-ne-top.md) | 102 | `result-track:4fbdc25c4e6a3610ab2a2ae17625b548cb97cbb1ae2e8ee7d9e97cdf408b2f50` |
| 14 | `instance` | [zeroLEOneClass](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidWithTopCoeOne.lean/declarations/zeroleoneclass.md) | 107 | `declaration-track:2770c39526d2441f339cea03a257760b0e928f422d0172e9cf6080bb050c87c2` |
| 15 | `instance` | [add](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidWithTopCoeOne.lean/declarations/add.md) | 116 | `declaration-track:87444030b296c4dcae17bea70ba105bea04aa0c304a5bcd0b0efc12f71721143` |
| 16 | `theorem` | [coe_add](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidWithTopCoeOne.lean/declarations/coe-add.md) | 121 | `result-track:17c55794057dcb07cda096b303e22bd0fb9c71ef06d08a6d20f829760adfc939` |
| 17 | `theorem` | [coe_bit0](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidWithTopCoeOne.lean/declarations/coe-bit0-source-edition-2.md) | 129 | `result-track:6fe71c5a08fcb0c26b16d68a491b297c8adfecb5079ea9c158e33a3c8b341a8f` |
| 18 | `theorem` | [coe_bit1](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidWithTopCoeOne.lean/declarations/coe-bit1-source-edition-2.md) | 134 | `result-track:bd2e6221a2fd7e2d5b84c1d2e8220d81918f8fbe19b1e66ecdce3ae7079627ef` |
| 19 | `theorem` | [top_add](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidWithTopCoeOne.lean/declarations/top-add.md) | 141 | `result-track:e4d623bea2526e8fb281451e734f15f9d3a89dcdc3fabb0dfa933fddede31e33` |
| 20 | `theorem` | [add_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidWithTopCoeOne.lean/declarations/add-top.md) | 146 | `result-track:b4ed7b00e85c06604aff6d081dfde3347b66a08b0748624d47354d14ae03b176` |
| 21 | `theorem` | [add_eq_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidWithTopCoeOne.lean/declarations/add-eq-top.md) | 150 | `result-track:0145405eaa5c6a152a62c7f4c87bf97b6a0770087b34a55faefbddd962f2d4dc` |
| 22 | `theorem` | [add_ne_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidWithTopCoeOne.lean/declarations/add-ne-top.md) | 154 | `result-track:b10683df57dfa860dc38d108fd7449e9a547be01cca57db4ba084df565379dea` |
| 23 | `theorem` | [add_lt_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidWithTopCoeOne.lean/declarations/add-lt-top.md) | 158 | `result-track:c830eef51ac4e4a18100d64dcc4a18eebb31025a387115eb4fa2b89522ffdd9d` |
| 24 | `theorem` | [add_eq_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidWithTopCoeOne.lean/declarations/add-eq-coe-source-edition-2.md) | 162 | `result-track:ce989ed7387a096215a483bcccc0f70a087a5898ce5d9ce049ddfb0b9724bc7f` |
| 25 | `theorem` | [add_coe_eq_top_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidWithTopCoeOne.lean/declarations/add-coe-eq-top-iff.md) | 172 | `result-track:daf58be86d0fb7fe96b9c20c9d88e935752686f537dd7a4eeecf187500d22201` |
| 26 | `theorem` | [coe_add_eq_top_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidWithTopCoeOne.lean/declarations/coe-add-eq-top-iff.md) | 178 | `result-track:295acfb8d70aefc46092be70ef39f372ec04a4d396244fe9533bfc118cddbdc6` |
| 27 | `theorem` | [add_right_cancel_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidWithTopCoeOne.lean/declarations/add-right-cancel-iff.md) | 182 | `result-track:d2bf5d4febc9ea235732b1e1de2f8439c20474cbf37a4260d7b0377fa166717c` |
| 28 | `theorem` | [add_right_cancel](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidWithTopCoeOne.lean/declarations/add-right-cancel-source-edition-2.md) | 190 | `result-track:8c69f08078200527aa524ae543c97bbfbc7b3fb666da567b853feaf144b568ae` |
| 29 | `theorem` | [add_left_cancel_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidWithTopCoeOne.lean/declarations/add-left-cancel-iff-source-edition-2.md) | 193 | `result-track:c7c1945bf6ed566eff0b6ac8575d521413372c75125857cc3f377934c3482d13` |
| 30 | `theorem` | [add_left_cancel](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidWithTopCoeOne.lean/declarations/add-left-cancel.md) | 201 | `result-track:608b73269fbc05563d557bb320a89c412ca0a04d4644461a9a9a8260488930ab` |
| 31 | `instance` | [covariantClass_add_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidWithTopCoeOne.lean/declarations/covariantclass-add-le-source-line-204-occurrence-2.md) | 204 | `declaration-track:e52e958d2f0f9cb7d4535f9a926e52b85ca2601c2095c6b0664d3ecda116bb29` |
| 32 | `instance` | [covariantClass_swap_add_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidWithTopCoeOne.lean/declarations/covariantclass-swap-add-le.md) | 212 | `declaration-track:1aedc484f847aa4b56cfd0263d52263dcf1657ce30c7422d943fa0f2db6e2775` |
| 33 | `instance` | [contravariantClass_add_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidWithTopCoeOne.lean/declarations/contravariantclass-add-lt-source-line-220-occurrence-2.md) | 220 | `declaration-track:7237151c11645de843d8153df6a2741703180d41a104875acce20ed57769bd87` |
| 34 | `instance` | [contravariantClass_swap_add_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidWithTopCoeOne.lean/declarations/contravariantclass-swap-add-lt.md) | 230 | `declaration-track:543fa3b6a81d2116bf4e406b8e46e80737bae3447433ea54448e0de1ed66db44` |
| 35 | `theorem` | [le_of_add_le_add_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidWithTopCoeOne.lean/declarations/le-of-add-le-add-left.md) | 239 | `result-track:05debf31f616a1ba4493e696b6dc45d53acbde626e38a1b8f1c90722ceb207a9` |
| 36 | `theorem` | [le_of_add_le_add_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidWithTopCoeOne.lean/declarations/le-of-add-le-add-right-source-edition-2.md) | 250 | `result-track:3a8040e7242688b33a35c30fba009933d2c4b770603e6a71bb81b1b10307e503` |
| 37 | `theorem` | [add_lt_add_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidWithTopCoeOne.lean/declarations/add-lt-add-left.md) | 260 | `result-track:0e4ba1cfde71670bb947bf4f1ec6599b60efe36667cfcff820f6fd9e2fd8f52e` |
| 38 | `theorem` | [add_lt_add_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidWithTopCoeOne.lean/declarations/add-lt-add-right.md) | 269 | `result-track:55321b46195eb5e4072a3633a25b4f7439eb3480698b8ef987334a73fa0a88d8` |
| 39 | `theorem` | [add_le_add_iff_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidWithTopCoeOne.lean/declarations/add-le-add-iff-left-source-edition-2.md) | 278 | `result-track:e2f6b408c1a62ea931898b7b1875a8d6b82cc3e6077da73f7ddb8028c70b9202` |
| 40 | `theorem` | [add_le_add_iff_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidWithTopCoeOne.lean/declarations/add-le-add-iff-right.md) | 283 | `result-track:49b079598765285ee68dc9977f82e5e061082868c2fb8e188fb6e208f4aa7904` |
| 41 | `theorem` | [add_lt_add_iff_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidWithTopCoeOne.lean/declarations/add-lt-add-iff-left.md) | 288 | `result-track:393d4426bd6dca1d647f3d22470e0dba6fb6fe7ee68d145a9dd66f8fa8e7e3b2` |
| 42 | `theorem` | [add_lt_add_iff_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidWithTopCoeOne.lean/declarations/add-lt-add-iff-right.md) | 293 | `result-track:377dcd4d9dd16443af95ce8b28c48060a03deae671b06b0a3e3e3c0453840646` |
| 43 | `theorem` | [add_lt_add_of_le_of_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidWithTopCoeOne.lean/declarations/add-lt-add-of-le-of-lt.md) | 298 | `result-track:c44bcdec7c35c028e0505b4dd5956d49a8704e34a0d3acd1979bbf6a17a903f9` |
| 44 | `theorem` | [add_lt_add_of_lt_of_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidWithTopCoeOne.lean/declarations/add-lt-add-of-lt-of-le.md) | 304 | `result-track:0dd3669c56a2e023af77f2e2e72070cb681156aedac28964e7049a3450804d48` |
| 45 | `theorem` | [map_add](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidWithTopCoeOne.lean/declarations/map-add.md) | 312 | `result-track:5b0946f2e2e3ac4764c3ef99e4577e3d24d70e662a918f7646485d36b5ab9231` |
| 46 | `instance` | [addSemigroup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidWithTopCoeOne.lean/declarations/addsemigroup-source-edition-2.md) | 324 | `declaration-track:79007b670e2b4f989b48d60d71c040e207e29b2e76d700e37ab78f4fb8ca7ac7` |
| 47 | `instance` | [addCommSemigroup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidWithTopCoeOne.lean/declarations/addcommsemigroup-source-edition-2.md) | 328 | `declaration-track:9540c3c0de46abccd9d1875c49711dc8b04d6c8a6e80ccf58393e01795578c11` |
| 48 | `instance` | [addZeroClass](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidWithTopCoeOne.lean/declarations/addzeroclass-source-edition-2.md) | 332 | `declaration-track:ccc7c16a68afbfc03378b8d0022a301a98ab70d092ecdeef79dea5f88f37cc59` |
| 49 | `instance` | [addMonoid](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidWithTopCoeOne.lean/declarations/addmonoid-source-edition-2.md) | 337 | `declaration-track:e558c710e1807a90a0c9fe1dbacd893714b6478da09d54dbe8731e5fd87d8720` |
| 50 | `instance` | [addCommMonoid](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidWithTopCoeOne.lean/declarations/addcommmonoid-source-edition-2.md) | 340 | `declaration-track:ef66c06e5a43534baf0c94b0d86295365d3b47b4c7531593805cc2360f405f7a` |
| 51 | `instance` | [addMonoidWithOne](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidWithTopCoeOne.lean/declarations/addmonoidwithone-source-edition-2.md) | 343 | `declaration-track:7f3e1229bcfe0f157bccd9f31c495ac829e215b769b2a05e1727724ce5687cc0` |
| 52 | `instance` | [addCommMonoidWithOne](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidWithTopCoeOne.lean/declarations/addcommmonoidwithone.md) | 354 | `declaration-track:b67ff5041b7d4ff383845e0c0096354189152f89950ed928a6babb4ba3fb3dc9` |
| 53 | `instance` | [orderedAddCommMonoid](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidWithTopCoeOne.lean/declarations/orderedaddcommmonoid-source-edition-2.md) | 357 | `declaration-track:e10cc5ad3b8a68d90c1f3799e96a5cffa76d46dae0ecbdf1dc3f9653740b3896` |
| 54 | `instance` | [linearOrderedAddCommMonoidWithTop](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidWithTopCoeOne.lean/declarations/linearorderedaddcommmonoidwithtop.md) | 366 | `declaration-track:383d0c562f8f6eb4eb799f63ffac0d1e32c6a01b27edab34610f72b4bd2d228b` |
| 55 | `instance` | [existsAddOfLE](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidWithTopCoeOne.lean/declarations/existsaddofle.md) | 371 | `declaration-track:f08e7e862bf6665dfb802df2867b02772549ac9159658441243f2c6a19d65b3f` |
| 56 | `instance` | [canonicallyOrderedAddMonoid](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidWithTopCoeOne.lean/declarations/canonicallyorderedaddmonoid.md) | 381 | `declaration-track:9a87b93ddebec4629b4bd23c247f5315445695f6c6de13f11261fe0655b4b5ee` |
| 57 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidWithTopCoeOne.lean/declarations/instance.md) | 391 | `declaration-track:c8c0e5b4096d9339b5953a42d8eeaa961362f02ba3e708b9a5c20627ffcc158d` |
| 58 | `theorem` | [coe_nat](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidWithTopCoeOne.lean/declarations/coe-nat.md) | 395 | `result-track:571854cb562f6beea5f057cb23b82d852c8b7b61668cc14dff4d4106fa332463` |
| 59 | `theorem` | [nat_ne_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidWithTopCoeOne.lean/declarations/nat-ne-top.md) | 400 | `result-track:59ea47a51b5c20ca9767a2cdc6757ed934cae447449bc3102d8de49711d6a2bf` |
| 60 | `theorem` | [top_ne_nat](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidWithTopCoeOne.lean/declarations/top-ne-nat.md) | 405 | `result-track:8fc11445e79ae826fc358ca56f5ae52d85229637f6646e07467b2a24f08481e6` |
| 61 | `def` | [addHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidWithTopCoeOne.lean/declarations/addhom.md) | 410 | `declaration-track:0e98266ca72af5cc4947c8a056f79cd4e6dfa28cd0cc469e2b2f7d4349cea256` |
| 62 | `theorem` | [zero_lt_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidWithTopCoeOne.lean/declarations/zero-lt-top.md) | 425 | `result-track:bae4df34df1f109a18b1d6ec3daf220fa806aff462ade57795722e31af733b94` |
| 63 | `theorem` | [zero_lt_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidWithTopCoeOne.lean/declarations/zero-lt-coe.md) | 432 | `result-track:a9df0d1ecbe407ccb7752cf1fda3bfa15af590a2dec69c2eec41ab7ba2a7a613` |
| 64 | `def` | [_root_.OneHom.withTopMap](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidWithTopCoeOne.lean/declarations/root-onehom-withtopmap.md) | 439 | `declaration-track:87b276169525dfbd5aaee65e85f1cc049542fa6f29e6daa51a8a5d4d8fd160c0` |
| 65 | `def` | [_root_.AddHom.withTopMap](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidWithTopCoeOne.lean/declarations/root-addhom-withtopmap.md) | 449 | `declaration-track:647ebd6d805b251f7810c9ba51ac1b6bcd37fb7b9ee9b6b29fd4b1460c010f51` |
| 66 | `def` | [_root_.AddMonoidHom.withTopMap](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidWithTopCoeOne.lean/declarations/root-addmonoidhom-withtopmap.md) | 458 | `declaration-track:1132e6e7d61de018893558221ffce40e04d9889365277f6fc7df385d4208e6f7` |
| 67 | `instance` | [one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidWithTopCoeOne.lean/declarations/one-source-edition-2.md) | 469 | `declaration-track:f09adc2f29f7dd398447cade68154457435fb83a65858454c04915a69c644d96` |
| 68 | `instance` | [add](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidWithTopCoeOne.lean/declarations/add-source-edition-2.md) | 472 | `declaration-track:eb7f5fffa647bc7f1246003cdeeae7db6ce05853bd38fa81193e5231a47f72d3` |
| 69 | `instance` | [AddSemigroup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidWithTopCoeOne.lean/declarations/addsemigroup.md) | 475 | `declaration-track:736ba168acda040eef7e3fd30e8c0ab8250a0f5947a68e1521a65847957802a2` |
| 70 | `instance` | [addCommSemigroup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidWithTopCoeOne.lean/declarations/addcommsemigroup.md) | 478 | `declaration-track:8577a8e66675d642db5f0f0c0202a09f88c0e8316bf11641f6fd11f3cb75ccd0` |
| 71 | `instance` | [addZeroClass](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidWithTopCoeOne.lean/declarations/addzeroclass.md) | 481 | `declaration-track:31805af8426b43d99e536406e7e14e36e3049c5c3d5b464ada9340cb06035698` |
| 72 | `instance` | [addMonoid](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidWithTopCoeOne.lean/declarations/addmonoid.md) | 484 | `declaration-track:92f96e288fbda57396dd7efffc6b5fe9e1003c51f5b242ae6144efb181dc751e` |
| 73 | `instance` | [addCommMonoid](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidWithTopCoeOne.lean/declarations/addcommmonoid.md) | 487 | `declaration-track:3f39e570c2dea3144973daf3ae42138d688dd4c3a5f1ba674c994e97a12bc289` |
| 74 | `instance` | [addMonoidWithOne](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidWithTopCoeOne.lean/declarations/addmonoidwithone.md) | 490 | `declaration-track:6e94cc8a550003ad986af325e203cc57fb6b4c6f2e95b637522122b367f8c08a` |
| 75 | `instance` | [addCommMonoidWithOne](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidWithTopCoeOne.lean/declarations/addcommmonoidwithone-source-edition-2.md) | 493 | `declaration-track:e4511f968397e6f49baa265f54192cab1d831f06827f8d9f3e0a1a14124811d0` |
| 76 | `instance` | [zeroLEOneClass](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidWithTopCoeOne.lean/declarations/zeroleoneclass-source-edition-2.md) | 496 | `declaration-track:d0aa4a09d9c1ad31a7540df357dbf7488d0520f7129980687ad1ceee442caaeb` |
| 77 | `theorem` | [coe_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidWithTopCoeOne.lean/declarations/coe-one-source-edition-2.md) | 501 | `result-track:f05fee27ea1099507b5b10287f61e08cf66b7709cfe9fd62cca4599130d5339a` |
| 78 | `theorem` | [coe_eq_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidWithTopCoeOne.lean/declarations/coe-eq-one.md) | 508 | `result-track:c070c73d3ccb06689d4cc77e65b0609b68ebe340dee55bfc72853300090fd4d5` |
| 79 | `theorem` | [unbot_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidWithTopCoeOne.lean/declarations/unbot-one-source-edition-2.md) | 514 | `result-track:73e034df59a121f56e0ac5de1b5249db1804d84eab075778ae4ea6dbd15bff1b` |
| 80 | `theorem` | [unbot_one'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidWithTopCoeOne.lean/declarations/unbot-one.md) | 520 | `result-track:726c35c94399038cad0620eaac39124ba898607ac0f8944e5dafb250522002ae` |
| 81 | `theorem` | [one_le_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidWithTopCoeOne.lean/declarations/one-le-coe-source-edition-2.md) | 526 | `result-track:70067d904694ab4b10596350833928cb1ed99433ac9a0ccaa74c75b350161256` |
| 82 | `theorem` | [coe_le_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidWithTopCoeOne.lean/declarations/coe-le-one-source-edition-2.md) | 532 | `result-track:4bf116a0249f3ac1ee6df9f76531eb0242407266504c13410c84a2e65fda1072` |
| 83 | `theorem` | [one_lt_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidWithTopCoeOne.lean/declarations/one-lt-coe.md) | 538 | `result-track:11fee521135d104625b10f4356be28988902f94e7bcc1bb10bb08c2aef22b235` |
| 84 | `theorem` | [coe_lt_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidWithTopCoeOne.lean/declarations/coe-lt-one-source-edition-2.md) | 544 | `result-track:df665bdf65280a35a903a2831135e54acb89b23e0b9d208962b799d82d3b03e4` |
| 85 | `theorem` | [map_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidWithTopCoeOne.lean/declarations/map-one.md) | 550 | `result-track:2ebb650663a7165e72e398947581ff6334f193d07d9d9f4abb398158ed2ad563` |
| 86 | `theorem` | [coe_nat](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidWithTopCoeOne.lean/declarations/coe-nat-source-edition-2.md) | 556 | `result-track:e75dfb15ac48ace0e2398a985e68f5aacdfafc7b6d037f385915c508a5687bc5` |
| 87 | `theorem` | [nat_ne_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidWithTopCoeOne.lean/declarations/nat-ne-bot.md) | 561 | `result-track:f184a80a26cdf4380070b23380a9bdabaad78db49996f3b3e52e38695858e8f3` |
| 88 | `theorem` | [bot_ne_nat](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidWithTopCoeOne.lean/declarations/bot-ne-nat.md) | 566 | `result-track:76886875627a067ee1d687a315a95fd69476b50fd9ad76945c0a82e492dcee32` |
| 89 | `theorem` | [coe_add](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidWithTopCoeOne.lean/declarations/coe-add-source-edition-2.md) | 575 | `result-track:4794beae773de4cbda26814b97220e136213535bfac55a248943c540bd20f76f` |
| 90 | `theorem` | [coe_bit0](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidWithTopCoeOne.lean/declarations/coe-bit0.md) | 584 | `result-track:59ae6ffa3b549bee36e941b7acf029d65cd67658858ee18e96fb068f432a464f` |
| 91 | `theorem` | [coe_bit1](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidWithTopCoeOne.lean/declarations/coe-bit1.md) | 590 | `result-track:4ea03badf9e17d95d90099d65841474850cfaa88116a1ba7c2a967a3928c8a2a` |
| 92 | `theorem` | [bot_add](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidWithTopCoeOne.lean/declarations/bot-add.md) | 597 | `result-track:324e16dc049131c948618b7659b60ccfc2e5380c4d48c2642a0e377e2b1f099a` |
| 93 | `theorem` | [add_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidWithTopCoeOne.lean/declarations/add-bot.md) | 602 | `result-track:e44f18f3162c9495cb68fb606484f99ce1392f401609ceec3bf8234255c55434` |
| 94 | `theorem` | [add_eq_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidWithTopCoeOne.lean/declarations/add-eq-bot.md) | 606 | `result-track:09badcf1d6e9dae7822fc6597d089878b97bdaa052d7ee36fe6d9930154cfe68` |
| 95 | `theorem` | [add_ne_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidWithTopCoeOne.lean/declarations/add-ne-bot.md) | 610 | `result-track:ed4c0466a3d680571ce2b1b36b3272e5b3a04d360f40a80d1444ca850e8f1311` |
| 96 | `theorem` | [bot_lt_add](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidWithTopCoeOne.lean/declarations/bot-lt-add.md) | 614 | `result-track:31020b56decfe5a76271953af7c24a738d91294df57bb5df511a23e6ab14a6fc` |
| 97 | `theorem` | [add_eq_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidWithTopCoeOne.lean/declarations/add-eq-coe.md) | 618 | `result-track:5f06034daf5b4b495b67ece882762f6e53504469ca94ae0490c9a6a54894b524` |
| 98 | `theorem` | [add_coe_eq_bot_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidWithTopCoeOne.lean/declarations/add-coe-eq-bot-iff.md) | 624 | `result-track:796304b1fd3864b8db511066e54f54b8cfc00cf8375b590735c74a920915bdb4` |
| 99 | `theorem` | [coe_add_eq_bot_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidWithTopCoeOne.lean/declarations/coe-add-eq-bot-iff.md) | 630 | `result-track:aeed740c77c386f239c1ee9e1326342edac0f7febb430b9687aff6d345661187` |
| 100 | `theorem` | [add_right_cancel_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidWithTopCoeOne.lean/declarations/add-right-cancel-iff-source-edition-2.md) | 634 | `result-track:dfad8014e3bd24b8d4ce68b22b70bbbf3d072f5f85dfc8d1d4ab64a835b8353c` |
| 101 | `theorem` | [add_right_cancel](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidWithTopCoeOne.lean/declarations/add-right-cancel.md) | 637 | `result-track:765453ba2247cf0885cf96e4a0510b9d7c28b41a42b2519269304fd5b515179a` |
| 102 | `theorem` | [add_left_cancel_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidWithTopCoeOne.lean/declarations/add-left-cancel-iff.md) | 640 | `result-track:183891f8a8b9600f259b44afdfeb2df84cd942d79809fc1f3e6b71dd04611e21` |
| 103 | `theorem` | [add_left_cancel](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidWithTopCoeOne.lean/declarations/add-left-cancel-source-edition-2.md) | 643 | `result-track:a0131ae9f1a1526e7736a33d5465456bac644402a4373817072459d34cee5c88` |
| 104 | `theorem` | [map_add](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidWithTopCoeOne.lean/declarations/map-add-source-edition-2.md) | 648 | `result-track:a8e41cfeb78e978410cfdb1c4628590ce99889266dfac0fef24ee8151aa73ed3` |
| 105 | `def` | [_root_.OneHom.withBotMap](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidWithTopCoeOne.lean/declarations/root-onehom-withbotmap.md) | 656 | `declaration-track:da6e3b202d3c828e1d3a9ba92415a035787f8ea153845cfaf2ecbce2e8fca643` |
| 106 | `def` | [_root_.AddHom.withBotMap](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidWithTopCoeOne.lean/declarations/root-addhom-withbotmap.md) | 667 | `declaration-track:1f10337908499bca03dc91729fa0ba3457937742aa64349671d33663f08e9e72` |
| 107 | `def` | [_root_.AddMonoidHom.withBotMap](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidWithTopCoeOne.lean/declarations/root-addmonoidhom-withbotmap.md) | 676 | `declaration-track:52d7ba8babb1ac844116afe7b5f7226051d00735607a205a41c51d2db46d6263` |
| 108 | `instance` | [covariantClass_add_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidWithTopCoeOne.lean/declarations/covariantclass-add-le.md) | 684 | `declaration-track:035b748fd7a1caf4e4961bd904aa6dc12f7d0da171d66428dff2fea0b55c69cb` |
| 109 | `instance` | [covariantClass_swap_add_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidWithTopCoeOne.lean/declarations/covariantclass-swap-add-le-source-line-689-occurrence-2.md) | 689 | `declaration-track:46dfacadaf151be5f71743b366d3f4eb3d170e15f3d84544848aca37809c7054` |
| 110 | `instance` | [contravariantClass_add_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidWithTopCoeOne.lean/declarations/contravariantclass-add-lt.md) | 694 | `declaration-track:3679d3070fead0965e75a31999b25febe5c8f6fba81aae8bfad2afb75fccc6da` |
| 111 | `instance` | [contravariantClass_swap_add_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidWithTopCoeOne.lean/declarations/contravariantclass-swap-add-lt-source-line-699-occurrence-2.md) | 699 | `declaration-track:dc9b2a96f93b5f5140b80ee17c442447fb9773423055eefa93486fa976b3b442` |
| 112 | `theorem` | [le_of_add_le_add_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidWithTopCoeOne.lean/declarations/le-of-add-le-add-left-source-edition-2.md) | 704 | `result-track:60930c5e0eac15f8a4d58eb16e9bb5f0dc288530307b24cf3ede91950ba3bbba` |
| 113 | `theorem` | [le_of_add_le_add_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidWithTopCoeOne.lean/declarations/le-of-add-le-add-right.md) | 709 | `result-track:380fd787bd4d8aeff92b811a91122d11cde1194b4518167db409575c3d3b182a` |
| 114 | `theorem` | [add_lt_add_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidWithTopCoeOne.lean/declarations/add-lt-add-left-source-edition-2.md) | 714 | `result-track:a1010630e63b9ce02e91f73484983afe1370b71fcfdcc54e80057493bbc034ce` |
| 115 | `theorem` | [add_lt_add_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidWithTopCoeOne.lean/declarations/add-lt-add-right-source-edition-2.md) | 719 | `result-track:ab09532f4ad049e7f7a0c962b2a593307c1c809d3630c7d854dabef57cbe7230` |
| 116 | `theorem` | [add_le_add_iff_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidWithTopCoeOne.lean/declarations/add-le-add-iff-left.md) | 724 | `result-track:94dc4e9979b6a5161c1a831cf07e5d82adb73c2af548e6b0b6fa65a042c3a7d5` |
| 117 | `theorem` | [add_le_add_iff_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidWithTopCoeOne.lean/declarations/add-le-add-iff-right-source-edition-2.md) | 729 | `result-track:b298ef1a9d05e9630f4a009f5010e8be717fe78dd7fe3d42844b30e76258df0f` |
| 118 | `theorem` | [add_lt_add_iff_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidWithTopCoeOne.lean/declarations/add-lt-add-iff-left-source-edition-2.md) | 734 | `result-track:58fc8d8c33a3310377bb057e1f67a1580f7c288a54b37b064d48a83cbe375ad8` |
| 119 | `theorem` | [add_lt_add_iff_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidWithTopCoeOne.lean/declarations/add-lt-add-iff-right-source-edition-2.md) | 739 | `result-track:deaf3e112a621efee358c8549507d9934584e40b74083f3cfa0ad95484d6b415` |
| 120 | `theorem` | [add_lt_add_of_le_of_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidWithTopCoeOne.lean/declarations/add-lt-add-of-le-of-lt-source-edition-2.md) | 744 | `result-track:d50c2629b08a6b0140a27b9cfcd6636a2aad8de39b923ee1edeaf5725aa6f7eb` |
| 121 | `theorem` | [add_lt_add_of_lt_of_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidWithTopCoeOne.lean/declarations/add-lt-add-of-lt-of-le-source-edition-2.md) | 750 | `result-track:c85ebebc4d7a58c0c98551e89d3e66b5ccca67678c1746885fabe41c8928879b` |
| 122 | `instance` | [orderedAddCommMonoid](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidWithTopCoeOne.lean/declarations/orderedaddcommmonoid.md) | 758 | `declaration-track:885c595d5e7a25e269eaa48ce3b1dbc92d27096711dde76da914eac7ba4d1901` |
| 123 | `instance` | [linearOrderedAddCommMonoid](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidWithTopCoeOne.lean/declarations/linearorderedaddcommmonoid.md) | 762 | `declaration-track:4a1174541fedd0953cbfe903e5461c85cb58c16481fe86dd4cce920906ed02af` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cd5a3a8bebed04da7bccde907097d44a8bd0c5974d9557509f64081d9df251ff -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/WithTop/Variant69a3fa375124615e146457651f8ec49c66caeba5fd0f8e3e85a921dcb5304a41.lean","GRWTSK/_verification/specifications/Algebra/UniversalAlgebra/WithTop/Variant69a3fa375124615e146457651f8ec49c66caeba5fd0f8e3e85a921dcb5304a41.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
