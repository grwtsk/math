# Verification target: Hom Monoid Namespaced Order Add Monoid Hom Class

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7cce389714744cb5bcd426e1233d431e06750ab3",
  "lexical_observation_count": 94,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Monoid/Variant259f86695b5099b5e22caf1a247659adc2a632d165be810247a7c75a9ec3fdaa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedOrderAddMonoidHomClass.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedOrderAddMonoidHomClass.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7cce389714744cb5bcd426e1233d431e06750ab3`.

Source path: `GRWTSK/Algebra/GroupTheory/Monoid/Variant259f86695b5099b5e22caf1a247659adc2a632d165be810247a7c75a9ec3fdaa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Monoid/Variant259f86695b5099b5e22caf1a247659adc2a632d165be810247a7c75a9ec3fdaa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Pi.Algebra` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Hom.Group` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Group.Instances` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.WithZero.Defs` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Hom.Basic` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [OrderAddMonoidHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedOrderAddMonoidHomClass.lean/declarations/orderaddmonoidhom.md) | 80 | `declaration-track:cb75a73b980225f2dcb345558f97bb74002b900bd25838725c88b4ef191dded4` |
| 2 | `class` | [OrderAddMonoidHomClass](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedOrderAddMonoidHomClass.lean/declarations/orderaddmonoidhomclass.md) | 94 | `declaration-track:0dbfb51e486ad30fb08958b578298cb81c1754a622591c63f97a55e7ecf40ddf` |
| 3 | `structure` | [OrderMonoidHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedOrderAddMonoidHomClass.lean/declarations/ordermonoidhom.md) | 116 | `declaration-track:44d2bb02d606e3473267acba347b41aaa91a2aa8534a3c5c5e859724e9b07f45` |
| 4 | `class` | [OrderMonoidHomClass](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedOrderAddMonoidHomClass.lean/declarations/ordermonoidhomclass.md) | 131 | `declaration-track:6719b4839b46f6e5d16965a26f372d9c1ca76e5453a70fbf8232c8d2df3d83c2` |
| 5 | `def` | [OrderMonoidHomClass.toOrderMonoidHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedOrderAddMonoidHomClass.lean/declarations/ordermonoidhomclass-toordermonoidhom.md) | 146 | `declaration-track:97065cbbcf18ae1f43d6012c612c2a347779d36437559575d51920aa26056b7c` |
| 6 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedOrderAddMonoidHomClass.lean/declarations/instance-source-edition-10.md) | 151 | `declaration-track:e87cb770cf1caf2cb26343a95203047d769a666666f0decbc63d909ee4b6124e` |
| 7 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedOrderAddMonoidHomClass.lean/declarations/instance-source-edition-3.md) | 161 | `declaration-track:5cdd2fa89394fdd73a829f53d5b2f278334a61ae78f3ca15f1e343529e071e1f` |
| 8 | `structure` | [OrderMonoidWithZeroHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedOrderAddMonoidHomClass.lean/declarations/ordermonoidwithzerohom.md) | 179 | `declaration-track:eedd6358823ca3c24625ecf23defd7f4424bc0d97e2eebe778b5f5f51ec6b789` |
| 9 | `class` | [OrderMonoidWithZeroHomClass](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedOrderAddMonoidHomClass.lean/declarations/ordermonoidwithzerohomclass.md) | 194 | `declaration-track:f9d902498f182ee46fc430e0e038c12f2a928a297e38ff926a60c5fbba03707e` |
| 10 | `def` | [OrderMonoidWithZeroHomClass.toOrderMonoidWithZeroHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedOrderAddMonoidHomClass.lean/declarations/ordermonoidwithzerohomclass-toordermonoidwithzerohom.md) | 203 | `declaration-track:a2fd25872f4585f909e621b7d045f59f7b5f1a29973610d4d2c2d64643817bfc` |
| 11 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedOrderAddMonoidHomClass.lean/declarations/instance-source-edition-6.md) | 210 | `declaration-track:a3c79ca97e44f09c9f06709313e68e29031ac86f841436eda8587d5279474a25` |
| 12 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedOrderAddMonoidHomClass.lean/declarations/instance-source-edition-11.md) | 216 | `declaration-track:eef1a99376c09de956b135acb05ab0d63ef2e03ac3d1936d9f9473b164ae3613` |
| 13 | `theorem` | [map_nonneg](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedOrderAddMonoidHomClass.lean/declarations/map-nonneg.md) | 226 | `result-track:2d64e30f6a4ddd5534ea49fbb035716f3fb7793202cf432882f64ee77ac3471d` |
| 14 | `theorem` | [map_nonpos](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedOrderAddMonoidHomClass.lean/declarations/map-nonpos.md) | 231 | `result-track:015ea003528184f0e20d9a84537ba77f38defd3481ec762c4768b86c88c89490` |
| 15 | `theorem` | [monotone_iff_map_nonneg](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedOrderAddMonoidHomClass.lean/declarations/monotone-iff-map-nonneg.md) | 242 | `result-track:c9ecd778c712a2f253641c8004cd44bd84cccf1eb733896ad523db474147a48a` |
| 16 | `theorem` | [antitone_iff_map_nonpos](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedOrderAddMonoidHomClass.lean/declarations/antitone-iff-map-nonpos.md) | 250 | `result-track:af8413b4f49c975b9fe66222ca76784e84ba28c2f4a2c1fe318fbde93c427425` |
| 17 | `theorem` | [monotone_iff_map_nonpos](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedOrderAddMonoidHomClass.lean/declarations/monotone-iff-map-nonpos.md) | 254 | `result-track:3d61d545505ec22a0253d26fd6440cb187f8ce37e27f33023a02d2c06c810f1e` |
| 18 | `theorem` | [antitone_iff_map_nonneg](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedOrderAddMonoidHomClass.lean/declarations/antitone-iff-map-nonneg.md) | 258 | `result-track:1b248d45ef503ccbad9c4e7db56c38671bee1737bc4dd7fa39b50dfcd1999acf` |
| 19 | `theorem` | [strictMono_iff_map_pos](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedOrderAddMonoidHomClass.lean/declarations/strictmono-iff-map-pos.md) | 264 | `result-track:3750a5480bcb3601e550f15082fb44b97698b2a499cfa2b8e33b1a2bb44ce660` |
| 20 | `theorem` | [strictAnti_iff_map_neg](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedOrderAddMonoidHomClass.lean/declarations/strictanti-iff-map-neg.md) | 272 | `result-track:b426ace7594d6831c984146b74c83cc65ce445edb4b2ad8829e63c4bfe57e20b` |
| 21 | `theorem` | [strictMono_iff_map_neg](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedOrderAddMonoidHomClass.lean/declarations/strictmono-iff-map-neg.md) | 276 | `result-track:a431ed9001c5f9bf7b0d09e4577940ccf683ce683071d797af35dcb133987071` |
| 22 | `theorem` | [strictAnti_iff_map_pos](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedOrderAddMonoidHomClass.lean/declarations/strictanti-iff-map-pos.md) | 280 | `result-track:0f91f030445551966f1a1032f1b20173c5956302eac621465890fef307c9f6d4` |
| 23 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedOrderAddMonoidHomClass.lean/declarations/instance-source-edition-2.md) | 294 | `declaration-track:27fbec76cf757545d2970c8f39c31395ecc4bd0e9b1b3b81f97f1d7f1f7b8dc9` |
| 24 | `theorem` | [ext](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedOrderAddMonoidHomClass.lean/declarations/ext-source-edition-2.md) | 315 | `result-track:c02e5a2318c4ee13174ec0d1213e7cde847f4e12508a0cf8133f364dd87c3194` |
| 25 | `theorem` | [toFun_eq_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedOrderAddMonoidHomClass.lean/declarations/tofun-eq-coe-source-edition-2.md) | 321 | `result-track:1bc60fc70c8713f35d0efe0b4ad19c94dd0a60ee5748514a929d1009ee0f4a3b` |
| 26 | `theorem` | [coe_mk](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedOrderAddMonoidHomClass.lean/declarations/coe-mk-source-edition-2.md) | 327 | `result-track:d98ee2e81ae925ddcf4af0f75d27ccf98b43d6e00875c44353213fc7d4ade915` |
| 27 | `theorem` | [mk_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedOrderAddMonoidHomClass.lean/declarations/mk-coe.md) | 333 | `result-track:3288b41523700d73788b195c9a2be24fc540113b8f82d7319adba4bc1685ef38` |
| 28 | `def` | [toOrderHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedOrderAddMonoidHomClass.lean/declarations/toorderhom.md) | 341 | `declaration-track:32942bc94dafcd78c3ab71e2766740c653c1e95c3aa5391f086decb5b4c26b43` |
| 29 | `theorem` | [coe_monoidHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedOrderAddMonoidHomClass.lean/declarations/coe-monoidhom.md) | 347 | `result-track:a845cc3e16f13aab3cc7996d65431f00a68cf880de226e2b8017ddaaab66427e` |
| 30 | `theorem` | [coe_orderHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedOrderAddMonoidHomClass.lean/declarations/coe-orderhom.md) | 353 | `result-track:de266aa06bcee897f4301483a142264e290eddfd12fa61bf745492fd83627606` |
| 31 | `theorem` | [toMonoidHom_injective](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedOrderAddMonoidHomClass.lean/declarations/tomonoidhom-injective.md) | 359 | `result-track:216224163d180b298fe463899edef1e060bce6b911a8bd0149d5f89c5a194685` |
| 32 | `theorem` | [toOrderHom_injective](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedOrderAddMonoidHomClass.lean/declarations/toorderhom-injective.md) | 365 | `result-track:970abb555b5c91a2c434c65f03a70066b1e644fb87cadeed770fe00442b1bf71` |
| 33 | `def` | [copy](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedOrderAddMonoidHomClass.lean/declarations/copy.md) | 374 | `declaration-track:53068518e31da3435e8e5eca44ffa36e94368144748286083fd518d1dcf1b045` |
| 34 | `theorem` | [coe_copy](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedOrderAddMonoidHomClass.lean/declarations/coe-copy-source-edition-2.md) | 380 | `result-track:b83643e7e0eef25cc5379d547f19d551f6c69afe5ab37c2c77589e7ee7d18d76` |
| 35 | `theorem` | [copy_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedOrderAddMonoidHomClass.lean/declarations/copy-eq-source-edition-2.md) | 386 | `result-track:8161e432a7ed8d4de1a5c312609b3d5d0b2780c3650447c603323b570a39d49e` |
| 36 | `def` | [id](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedOrderAddMonoidHomClass.lean/declarations/id-source-edition-2.md) | 395 | `declaration-track:7cd411ea5ffad04b4019da960696590c7836d13ea183017d18b819134e833680` |
| 37 | `theorem` | [coe_id](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedOrderAddMonoidHomClass.lean/declarations/coe-id.md) | 401 | `result-track:082348b61b70f1b7da3a80f47a89e4ae0f021996d674476d712c39a3b70ad4e7` |
| 38 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedOrderAddMonoidHomClass.lean/declarations/instance-source-edition-4.md) | 407 | `declaration-track:6d34e5afff3d06aacf93dd3b6f7d153c88d22ca61257e746ecc2a98a61dc0631` |
| 39 | `def` | [comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedOrderAddMonoidHomClass.lean/declarations/comp.md) | 414 | `declaration-track:1db76d9d26e4ab1acbc55a8839e00f9dbceecbfb40bc87c1464f2242fb9b695c` |
| 40 | `theorem` | [coe_comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedOrderAddMonoidHomClass.lean/declarations/coe-comp-source-edition-2.md) | 420 | `result-track:6b9dbe4fd2b924c7ba24d4b0a8ac4deb3be90aadd20f9665cfc50fcbe8cc7973` |
| 41 | `theorem` | [comp_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedOrderAddMonoidHomClass.lean/declarations/comp-apply-source-edition-2.md) | 426 | `result-track:ecfa8b514b7f5b581ce6d64a610775cfaf341678e5388206ba066a291e17cfa0` |
| 42 | `theorem` | [coe_comp_monoidHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedOrderAddMonoidHomClass.lean/declarations/coe-comp-monoidhom.md) | 432 | `result-track:0b0e1e51812d72107a6836fdab5af60b6a519bcc4b51ad7c98639ac6779dc56a` |
| 43 | `theorem` | [coe_comp_orderHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedOrderAddMonoidHomClass.lean/declarations/coe-comp-orderhom.md) | 439 | `result-track:dcd9d0b45ec5756f3c7e4fece8091082efa92cb18f9efcb6e3e0f36381d6a24d` |
| 44 | `theorem` | [comp_assoc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedOrderAddMonoidHomClass.lean/declarations/comp-assoc-source-edition-2.md) | 446 | `result-track:9ffd92b8f4feb37bd2c42a68f346957dde6cb4cdef55b87da234c5e69741363d` |
| 45 | `theorem` | [comp_id](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedOrderAddMonoidHomClass.lean/declarations/comp-id.md) | 453 | `result-track:6db56d10578f47c10d4c07654c26af518cd3adce9f17f5fed9f6ba583cf1e39b` |
| 46 | `theorem` | [id_comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedOrderAddMonoidHomClass.lean/declarations/id-comp-source-edition-2.md) | 459 | `result-track:6afff76383062ae4f805a6efd5e9621a7baae306d6b0857a9581aaceaa90e071` |
| 47 | `theorem` | [cancel_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedOrderAddMonoidHomClass.lean/declarations/cancel-right-source-edition-2.md) | 465 | `result-track:6a8b3e1e8b3a5a64615a70305cbe408cc742304755578ed6cc6368132f337b3f` |
| 48 | `theorem` | [cancel_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedOrderAddMonoidHomClass.lean/declarations/cancel-left.md) | 472 | `result-track:6384f00bbd609aa4e12585a8f6c99fa8d4b68f001f658ab3af85a4c5494a18d7` |
| 49 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedOrderAddMonoidHomClass.lean/declarations/instance.md) | 480 | `declaration-track:0a144fd0ff2247a81c2a7201d95404056b9e138614a89270a5b8a052ab04cb01` |
| 50 | `theorem` | [coe_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedOrderAddMonoidHomClass.lean/declarations/coe-one.md) | 484 | `result-track:6cb8a041cae3a25053b291e672a2325838756006c5d0f7724bb83fcca2305f0a` |
| 51 | `theorem` | [one_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedOrderAddMonoidHomClass.lean/declarations/one-apply.md) | 490 | `result-track:0a4cbb10c35cefd2c44d14741a66a1c0aeab0c9f1450981c4e912af71d989af4` |
| 52 | `theorem` | [one_comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedOrderAddMonoidHomClass.lean/declarations/one-comp.md) | 496 | `result-track:c03bcd27f2f8d8b0903672e7cee1b7ebe19e447a48ea601c993f37b09e42a1fa` |
| 53 | `theorem` | [comp_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedOrderAddMonoidHomClass.lean/declarations/comp-one.md) | 502 | `result-track:0e4eff0163ecd4e7bd4f148e279cec7e518ecca45710d9a592ce6829d2ad7c8f` |
| 54 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedOrderAddMonoidHomClass.lean/declarations/instance-source-edition-7.md) | 517 | `declaration-track:bcd99ac04fc8f63da2c3d76d43dcc3e779027ded405ae438f31334813ab139e2` |
| 55 | `theorem` | [coe_mul](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedOrderAddMonoidHomClass.lean/declarations/coe-mul-source-edition-2.md) | 521 | `result-track:72cc7ea75eb3bbcac70d148646a4fb8ab2f89c13ae8a84bfc34cafed97716f2c` |
| 56 | `theorem` | [mul_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedOrderAddMonoidHomClass.lean/declarations/mul-apply.md) | 527 | `result-track:90966efbff9662d32853979124629b6ec83ce643f6268df93eaef7b8d44fcaa9` |
| 57 | `theorem` | [mul_comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedOrderAddMonoidHomClass.lean/declarations/mul-comp-source-edition-2.md) | 533 | `result-track:dbe3e46899978ff191efb9a292f1f6bb48425fae9721d98920f81161cbaba4ac` |
| 58 | `theorem` | [comp_mul](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedOrderAddMonoidHomClass.lean/declarations/comp-mul-source-edition-2.md) | 539 | `result-track:9d9000faeb397e6f6184cd4183c2533b95fbba6aebf8ca023b915a609c190c97` |
| 59 | `theorem` | [toMonoidHom_eq_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedOrderAddMonoidHomClass.lean/declarations/tomonoidhom-eq-coe.md) | 551 | `result-track:921977e73a73c8fe4b72b018078b056fe23bc9882420321d3ca7662ab800841e` |
| 60 | `theorem` | [toOrderHom_eq_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedOrderAddMonoidHomClass.lean/declarations/toorderhom-eq-coe.md) | 557 | `result-track:09fdbcd68d67c65f19877e30367df81836f674208123e26a65b6f7474b1cb240` |
| 61 | `def` | [mk'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedOrderAddMonoidHomClass.lean/declarations/mk.md) | 572 | `declaration-track:117669c4dc7cd85e94005445fd74d9b49e15b9215d6050851592246c4bee2186` |
| 62 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedOrderAddMonoidHomClass.lean/declarations/instance-source-edition-9.md) | 588 | `declaration-track:e7ae9d58864a9d204bb0aaca97c74a08c25d7eca04c0b6b0077d2e3f8a0c3fa7` |
| 63 | `theorem` | [ext](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedOrderAddMonoidHomClass.lean/declarations/ext.md) | 608 | `result-track:3c053e255a8d17232d8a7f9b5d6651452c47fce8a79d8c706966168f81067d36` |
| 64 | `theorem` | [toFun_eq_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedOrderAddMonoidHomClass.lean/declarations/tofun-eq-coe.md) | 612 | `result-track:0d3b7885eceb54d8a84d4c7f6ae7f371ceba009cc860fcaf31e3a1192307b981` |
| 65 | `theorem` | [coe_mk](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedOrderAddMonoidHomClass.lean/declarations/coe-mk.md) | 617 | `result-track:2bfd5f8c51ce5aac73b99489423633474cb65bfb3408b212de44dd34c4ecd5fd` |
| 66 | `theorem` | [mk_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedOrderAddMonoidHomClass.lean/declarations/mk-coe-source-edition-2.md) | 622 | `result-track:8d0d6331c41417d2a4fe091d0919eb8d92d8316857002365e89a9ce38bded4f3` |
| 67 | `def` | [toOrderMonoidHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedOrderAddMonoidHomClass.lean/declarations/toordermonoidhom.md) | 626 | `declaration-track:a8a82c10f8ee4d73c5a10b67e2ab541ff34b2365ea25fd2063ba5511b307b115` |
| 68 | `theorem` | [coe_monoidWithZeroHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedOrderAddMonoidHomClass.lean/declarations/coe-monoidwithzerohom.md) | 631 | `result-track:be649821bcff9955bf405e1699419983362405295121aa5020de5cb0575f6753` |
| 69 | `theorem` | [coe_orderMonoidHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedOrderAddMonoidHomClass.lean/declarations/coe-ordermonoidhom.md) | 636 | `result-track:4911917cea111b9eb08dd2293ebcccde5b08d22aab35971873f129b63f1ca5f7` |
| 70 | `theorem` | [toOrderMonoidHom_injective](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedOrderAddMonoidHomClass.lean/declarations/toordermonoidhom-injective.md) | 640 | `result-track:0327ec7d00726a8429baaa8d926f2c37141705264d2327c418130b77cee6f6cf` |
| 71 | `theorem` | [toMonoidWithZeroHom_injective](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedOrderAddMonoidHomClass.lean/declarations/tomonoidwithzerohom-injective.md) | 644 | `result-track:51fd82d99a5c860ce1e6d8ee95cb8996e683e069a7ca6f1ed1dfbf5968641446` |
| 72 | `def` | [copy](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedOrderAddMonoidHomClass.lean/declarations/copy-source-edition-2.md) | 650 | `declaration-track:efadf084cb54456f6869055f5c807d5d35d4f87d92eee761c4b20f9c2f3e5aad` |
| 73 | `theorem` | [coe_copy](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedOrderAddMonoidHomClass.lean/declarations/coe-copy.md) | 655 | `result-track:8e473a4a55f7756d3f234b39488f225ceb6d09e2c4d53b128024015d69401daf` |
| 74 | `theorem` | [copy_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedOrderAddMonoidHomClass.lean/declarations/copy-eq.md) | 659 | `result-track:6846dc94a474d13c425d4cc83afaa8e7e7c1f7be166651d1e9f53631c0452032` |
| 75 | `def` | [id](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedOrderAddMonoidHomClass.lean/declarations/id.md) | 666 | `declaration-track:4fc0c75dab8ca9e0998d9ae9427135205239829ca49942291d99dd7925edad48` |
| 76 | `theorem` | [coe_id](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedOrderAddMonoidHomClass.lean/declarations/coe-id-source-edition-2.md) | 671 | `result-track:93a06d2aced30a6985e6ef83d3ba030f3267d435ef6e638d5137aaebd9c09b2d` |
| 77 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedOrderAddMonoidHomClass.lean/declarations/instance-source-edition-5.md) | 675 | `declaration-track:6f30203da8cdb4fe8909debf6dc9b5d46c111cd872e045b55e27da25851ad6c3` |
| 78 | `def` | [comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedOrderAddMonoidHomClass.lean/declarations/comp-source-edition-2.md) | 681 | `declaration-track:39dfe0a2062a984bb500037cd8a0b992a0d4e10fed92a1ed10a0082ddac7a108` |
| 79 | `theorem` | [coe_comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedOrderAddMonoidHomClass.lean/declarations/coe-comp.md) | 686 | `result-track:2673d610934b4a2c1e0dd61465f77f41ee49bedad01414ad63c1317231940b00` |
| 80 | `theorem` | [comp_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedOrderAddMonoidHomClass.lean/declarations/comp-apply.md) | 691 | `result-track:d1edf6189e912897c4bb350244804392d6cd0ef7c611f0fe2bc5d6e83d7f8e4f` |
| 81 | `theorem` | [coe_comp_monoidWithZeroHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedOrderAddMonoidHomClass.lean/declarations/coe-comp-monoidwithzerohom.md) | 695 | `result-track:3a00cb6a14cbaeb10b9408fa22c59ce98cd5b3d639701fca303c0e4d7b420ba5` |
| 82 | `theorem` | [coe_comp_orderMonoidHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedOrderAddMonoidHomClass.lean/declarations/coe-comp-ordermonoidhom.md) | 700 | `result-track:472999c7ebe52d80c558d49f5e09ab9acacee01068712688f982db710db0f218` |
| 83 | `theorem` | [comp_assoc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedOrderAddMonoidHomClass.lean/declarations/comp-assoc.md) | 706 | `result-track:356fab1279cfc2072dfb6967ff2395d615bc30eab5f408a2ed7cfa0d695d5b4b` |
| 84 | `theorem` | [comp_id](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedOrderAddMonoidHomClass.lean/declarations/comp-id-source-edition-2.md) | 712 | `result-track:a23c31980445f2c4e4ddea859cbf48efc0967f923330f1cdec0a27fb82a02d93` |
| 85 | `theorem` | [id_comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedOrderAddMonoidHomClass.lean/declarations/id-comp.md) | 716 | `result-track:3ccadfdd6a047fdd5e82219617ac5beb53d14864768bb42593e1c4c4f5fca9b2` |
| 86 | `theorem` | [cancel_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedOrderAddMonoidHomClass.lean/declarations/cancel-right.md) | 719 | `result-track:613d538535b83c41e83de6232db2d3ba9e6e8debfa395811a8403f25289b4479` |
| 87 | `theorem` | [cancel_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedOrderAddMonoidHomClass.lean/declarations/cancel-left-source-edition-2.md) | 724 | `result-track:e6ad05901bddb1434621f2d0ace443259988f4929a85e9adfb1ddc7d1bb163fb` |
| 88 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedOrderAddMonoidHomClass.lean/declarations/instance-source-edition-8.md) | 738 | `declaration-track:d831e65006b547e6718cdfe274353495e6911073e142b29681a8f2e225652c84` |
| 89 | `theorem` | [coe_mul](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedOrderAddMonoidHomClass.lean/declarations/coe-mul.md) | 742 | `result-track:701d7cf896ece5bb80a5a8f45d8da7995bfbddcfddee329c627deeaca1ce843e` |
| 90 | `theorem` | [mul_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedOrderAddMonoidHomClass.lean/declarations/mul-apply-source-edition-2.md) | 747 | `result-track:ee2b831c3fae072cd0cbec60db0922891dcc9d76b19c9aeeff7017f30ad4dbf8` |
| 91 | `theorem` | [mul_comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedOrderAddMonoidHomClass.lean/declarations/mul-comp.md) | 751 | `result-track:911737aa1bf0c61ab2bde1f95762b6d00c509a251962e3a4b825382f40494807` |
| 92 | `theorem` | [comp_mul](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedOrderAddMonoidHomClass.lean/declarations/comp-mul.md) | 755 | `result-track:0199a080de4b1ad0d241ca87079012bf3ba385c7c3086ca689fa8401ca0e0815` |
| 93 | `theorem` | [toMonoidWithZeroHom_eq_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedOrderAddMonoidHomClass.lean/declarations/tomonoidwithzerohom-eq-coe.md) | 766 | `result-track:874b4f1a350e9b62530786f32d6d87bc18bcd0ae11282172c758b4d7e4dad986` |
| 94 | `theorem` | [toOrderMonoidHom_eq_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidNamespacedOrderAddMonoidHomClass.lean/declarations/toordermonoidhom-eq-coe.md) | 771 | `result-track:604722ce04a74089b791f2de50fc7b2f345c4a817dd349af058a6d3049a984c8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ce40daea1ad4b9bcb72a42ed223ad2de819093cc8b29a4f82d6feaa4900459a6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Monoid/Variant259f86695b5099b5e22caf1a247659adc2a632d165be810247a7c75a9ec3fdaa.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Monoid/Variant259f86695b5099b5e22caf1a247659adc2a632d165be810247a7c75a9ec3fdaa.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
