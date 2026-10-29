# Verification target: Hom Monoid Order Add Monoid Hom Class

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "26c92e9eb832719ef8fc6c4d04dfe9529672510b",
  "lexical_observation_count": 94,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Monoid/Varianta091844880d52d03a80d023475c9d699a33ef941bb6e617ce775eaaa86579c45.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidOrderAddMonoidHomClass.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidOrderAddMonoidHomClass.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `26c92e9eb832719ef8fc6c4d04dfe9529672510b`.

Source path: `GRWTSK/Algebra/GroupTheory/Monoid/Varianta091844880d52d03a80d023475c9d699a33ef941bb6e617ce775eaaa86579c45.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Monoid/Varianta091844880d52d03a80d023475c9d699a33ef941bb6e617ce775eaaa86579c45.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Pi.Algebra` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Hom.Group` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Group.Instances` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.WithZero.Defs` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Hom.Basic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [OrderAddMonoidHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidOrderAddMonoidHomClass.lean/declarations/orderaddmonoidhom.md) | 72 | `declaration-track:2c6dc0bdbbad14681e1c24da37036f606f76469af2a43ce3fb7bd2f915d9cdb6` |
| 2 | `class` | [OrderAddMonoidHomClass](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidOrderAddMonoidHomClass.lean/declarations/orderaddmonoidhomclass.md) | 86 | `declaration-track:ac83a399e4b6aa089ba0c046eabc39cc589f3694a1464ffa471a120d94b1222f` |
| 3 | `structure` | [OrderMonoidHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidOrderAddMonoidHomClass.lean/declarations/ordermonoidhom.md) | 108 | `declaration-track:1945de8960d45dae9a57634bdbdb9c773246ba25703aa4e8bef32adbef4b575f` |
| 4 | `class` | [OrderMonoidHomClass](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidOrderAddMonoidHomClass.lean/declarations/ordermonoidhomclass.md) | 123 | `declaration-track:ff4d83c671576d8bededf942c137ff30488dee8c08f006832d190be9827fc4f2` |
| 5 | `def` | [OrderMonoidHomClass.toOrderMonoidHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidOrderAddMonoidHomClass.lean/declarations/ordermonoidhomclass-toordermonoidhom.md) | 138 | `declaration-track:9e84876a7cf84ba129fa2e96ba6be24d14a9ab2dc5c0069df63b54d9a46a3a8e` |
| 6 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidOrderAddMonoidHomClass.lean/declarations/instance-source-edition-5.md) | 143 | `declaration-track:3664f2f297b254d4bff03556bad9556631481e6a320569f56e6bdd2e97ded840` |
| 7 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidOrderAddMonoidHomClass.lean/declarations/instance-source-edition-10.md) | 153 | `declaration-track:ed8f819a45008c7e204531a5b1a41390d2ee4fa9efef522bcc31363413d321b4` |
| 8 | `structure` | [OrderMonoidWithZeroHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidOrderAddMonoidHomClass.lean/declarations/ordermonoidwithzerohom.md) | 171 | `declaration-track:e525e2a2786005461a69404660c44b3ef06aea40c0398476c7b9eefaa0a48928` |
| 9 | `class` | [OrderMonoidWithZeroHomClass](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidOrderAddMonoidHomClass.lean/declarations/ordermonoidwithzerohomclass.md) | 186 | `declaration-track:bd44b0e0d3008a928fbaf93ab159e5548fbff3178c48906dc8f78a0b0d6be612` |
| 10 | `def` | [OrderMonoidWithZeroHomClass.toOrderMonoidWithZeroHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidOrderAddMonoidHomClass.lean/declarations/ordermonoidwithzerohomclass-toordermonoidwithzerohom.md) | 195 | `declaration-track:f5bcb8e63b2d0086537484c87d286c459c22ec3daea14f5eeb85b9cd2cb158d0` |
| 11 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidOrderAddMonoidHomClass.lean/declarations/instance-source-edition-11.md) | 202 | `declaration-track:f582376d3ec0569781de6b5cf3327cd1fa9cac3b2929a47e4a8ee31a84c271c0` |
| 12 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidOrderAddMonoidHomClass.lean/declarations/instance-source-edition-8.md) | 208 | `declaration-track:a54ed5b3bb3d3dca19a5df4471be0a6785c027687cc8ab6b7d5aa75ffb14809e` |
| 13 | `theorem` | [map_nonneg](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidOrderAddMonoidHomClass.lean/declarations/map-nonneg.md) | 218 | `result-track:0d78331d4448a6bb79a755cff628767d34e5187dfc4fe78ff1f2fa381f7b79a3` |
| 14 | `theorem` | [map_nonpos](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidOrderAddMonoidHomClass.lean/declarations/map-nonpos.md) | 223 | `result-track:cb285b324ac4c9e680c20a3cbc731eff45a55c418f1d31d4e5146069102f4f20` |
| 15 | `theorem` | [monotone_iff_map_nonneg](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidOrderAddMonoidHomClass.lean/declarations/monotone-iff-map-nonneg.md) | 234 | `result-track:715f9563a4d39352440fab7db70b0d0ad48246835ed6e6f83fdd62df47f5a721` |
| 16 | `theorem` | [antitone_iff_map_nonpos](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidOrderAddMonoidHomClass.lean/declarations/antitone-iff-map-nonpos.md) | 242 | `result-track:19af52467c6d365fb14ed64853d4d72f11eff634caa8672463bad077c68a17e0` |
| 17 | `theorem` | [monotone_iff_map_nonpos](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidOrderAddMonoidHomClass.lean/declarations/monotone-iff-map-nonpos.md) | 246 | `result-track:241f9665c5e61b3e068772d3066f59ecd8ec0e6bd7f3feec4ac7ddc5095656ff` |
| 18 | `theorem` | [antitone_iff_map_nonneg](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidOrderAddMonoidHomClass.lean/declarations/antitone-iff-map-nonneg.md) | 250 | `result-track:0cc75d87e3b9166897e751ec8174ced11d24d4157993a480b6e0561262381dcd` |
| 19 | `theorem` | [strictMono_iff_map_pos](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidOrderAddMonoidHomClass.lean/declarations/strictmono-iff-map-pos.md) | 256 | `result-track:dedc452fe065793e2fdfa0b2aa11d20503af6385ad7a8c407489c1542874a051` |
| 20 | `theorem` | [strictAnti_iff_map_neg](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidOrderAddMonoidHomClass.lean/declarations/strictanti-iff-map-neg.md) | 264 | `result-track:103b41ab67ddb350fa1761f4944ec88818ebc2dc65d35305668247a0daac16b3` |
| 21 | `theorem` | [strictMono_iff_map_neg](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidOrderAddMonoidHomClass.lean/declarations/strictmono-iff-map-neg.md) | 268 | `result-track:a70882950e4fb552e55ad504dc2b7b259e50abc91c72d4d4a8db2e68ab8cfbc5` |
| 22 | `theorem` | [strictAnti_iff_map_pos](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidOrderAddMonoidHomClass.lean/declarations/strictanti-iff-map-pos.md) | 272 | `result-track:683ca7919c17c3ac56ba3f0fb7dc7208ce0bfb031606cad61f0a1def99392d4b` |
| 23 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidOrderAddMonoidHomClass.lean/declarations/instance.md) | 286 | `declaration-track:13b4240a852efe24a28fbf4e47aff05f53664e7ed344890bda314ff64c77e954` |
| 24 | `theorem` | [ext](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidOrderAddMonoidHomClass.lean/declarations/ext-source-edition-2.md) | 307 | `result-track:bebf067c08cfc2dd3d05b277904b7102a897b451c05ff6f207d4fd46f2c27097` |
| 25 | `theorem` | [toFun_eq_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidOrderAddMonoidHomClass.lean/declarations/tofun-eq-coe-source-edition-2.md) | 313 | `result-track:7dc19baff8daed1052dc8a76b85458fd0f6213c755cff3ad95dd71883cf833a5` |
| 26 | `theorem` | [coe_mk](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidOrderAddMonoidHomClass.lean/declarations/coe-mk-source-edition-2.md) | 319 | `result-track:af38388bf8d27e21cebbbafdcf770560ab2684de80405abb0ba79e2137473d2d` |
| 27 | `theorem` | [mk_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidOrderAddMonoidHomClass.lean/declarations/mk-coe.md) | 325 | `result-track:c025c38bd2698a9cd129c4748639cee5171f2f4f10aa48a0d75f5de0c1436a79` |
| 28 | `def` | [toOrderHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidOrderAddMonoidHomClass.lean/declarations/toorderhom.md) | 333 | `declaration-track:a2a019d7519878136a7e68eac1b22fba002d4a7fe65b27c1e87a2d589bac33ec` |
| 29 | `theorem` | [coe_monoidHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidOrderAddMonoidHomClass.lean/declarations/coe-monoidhom.md) | 339 | `result-track:314b81f618be59ffec5ae5be7b08df72f0e73aa75c04ffa8495d783d39092ff9` |
| 30 | `theorem` | [coe_orderHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidOrderAddMonoidHomClass.lean/declarations/coe-orderhom.md) | 345 | `result-track:e9f4a0af13aa635f50f7e70be64a460373ce8b932069c3f5d37cbb7fd51bccc8` |
| 31 | `theorem` | [toMonoidHom_injective](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidOrderAddMonoidHomClass.lean/declarations/tomonoidhom-injective.md) | 351 | `result-track:59d01fa8dcc348bf0e63a340e8f1c3ca24996de8e99918e4cf7ef871453373ac` |
| 32 | `theorem` | [toOrderHom_injective](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidOrderAddMonoidHomClass.lean/declarations/toorderhom-injective.md) | 357 | `result-track:b31e3216493b6210c673367671e63095666ef0dd14f079de030f39d3333621a3` |
| 33 | `def` | [copy](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidOrderAddMonoidHomClass.lean/declarations/copy.md) | 366 | `declaration-track:0d0f2e9e6b3a0bb4dbbafe2717417013751ef23502a4a8da0ad6573f115bf1fa` |
| 34 | `theorem` | [coe_copy](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidOrderAddMonoidHomClass.lean/declarations/coe-copy-source-edition-2.md) | 372 | `result-track:a887800028302a04c3f1c2449349e5f8c30f05a7bcf60659d568b659b3793b71` |
| 35 | `theorem` | [copy_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidOrderAddMonoidHomClass.lean/declarations/copy-eq-source-edition-2.md) | 378 | `result-track:b4df5b54e25e9302a505e78d04ad9f899fe6dbcd1fadc0e75df6ad9a7459b353` |
| 36 | `def` | [id](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidOrderAddMonoidHomClass.lean/declarations/id-source-edition-2.md) | 387 | `declaration-track:f6737edc3b94ad7884ab07a3f823e31895147628da1147118f36e9b13f6b36af` |
| 37 | `theorem` | [coe_id](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidOrderAddMonoidHomClass.lean/declarations/coe-id.md) | 393 | `result-track:27b04954d25717db8dc934c81054c0b25a11223ee6b2d8165574f919a39ba71b` |
| 38 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidOrderAddMonoidHomClass.lean/declarations/instance-source-edition-2.md) | 399 | `declaration-track:1b520003ebd193f0aeea97dd2f5553a7a30658cdb9fc33e9ba248b2032d0de6f` |
| 39 | `def` | [comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidOrderAddMonoidHomClass.lean/declarations/comp-source-edition-2.md) | 406 | `declaration-track:765484d288644a7b91d905a3f75c03571a51e3413a76da706a42a385c00feb6d` |
| 40 | `theorem` | [coe_comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidOrderAddMonoidHomClass.lean/declarations/coe-comp.md) | 412 | `result-track:3f542f5e02007f0f1d9d6420f926878bf5c53a56f05c3ede1dec812822156cf4` |
| 41 | `theorem` | [comp_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidOrderAddMonoidHomClass.lean/declarations/comp-apply-source-edition-2.md) | 418 | `result-track:d77506d3974d9eb1e5cf695170f09678e7764ebc8f74ce9b60842565f83b16f0` |
| 42 | `theorem` | [coe_comp_monoidHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidOrderAddMonoidHomClass.lean/declarations/coe-comp-monoidhom.md) | 424 | `result-track:948a4ac80539ff6c45fe97e8fc176af8945558c38459e5db25e6634a7fa799a4` |
| 43 | `theorem` | [coe_comp_orderHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidOrderAddMonoidHomClass.lean/declarations/coe-comp-orderhom.md) | 431 | `result-track:e943c0da1aebb0f70a4f3f7550bd8a1ef5b410b6558e304b35a31233879608cb` |
| 44 | `theorem` | [comp_assoc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidOrderAddMonoidHomClass.lean/declarations/comp-assoc-source-edition-2.md) | 438 | `result-track:edb8721d75810d9b09ebc3c8a9f08abe2e1a82bd8958314668e4a5af882e987e` |
| 45 | `theorem` | [comp_id](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidOrderAddMonoidHomClass.lean/declarations/comp-id.md) | 445 | `result-track:8a53516b24f86594bd36177cbb0766aa46efb578f48c3af61c0f5143b7fd2134` |
| 46 | `theorem` | [id_comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidOrderAddMonoidHomClass.lean/declarations/id-comp-source-edition-2.md) | 451 | `result-track:7064a60d92801f500c85a56ce2f0fbfe7baf8d38e106f94f385d553035d764b3` |
| 47 | `theorem` | [cancel_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidOrderAddMonoidHomClass.lean/declarations/cancel-right-source-edition-2.md) | 457 | `result-track:90c8a0c84637f3975f5283c67a51213b86cb8e6e66570a0807fe881a68c469ad` |
| 48 | `theorem` | [cancel_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidOrderAddMonoidHomClass.lean/declarations/cancel-left.md) | 464 | `result-track:296740cb89ae6863b7349a240bcb1747962e03df37de56529492b51c781b499e` |
| 49 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidOrderAddMonoidHomClass.lean/declarations/instance-source-edition-7.md) | 472 | `declaration-track:917971f0228817f2de34f8acd651b566ae702f40a0f18ce25f2cbd898b890855` |
| 50 | `theorem` | [coe_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidOrderAddMonoidHomClass.lean/declarations/coe-one.md) | 476 | `result-track:e4ed50aec875539b1ab483314b83a5ff9362cce80f1fbd2fad847a02791b1aa9` |
| 51 | `theorem` | [one_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidOrderAddMonoidHomClass.lean/declarations/one-apply.md) | 482 | `result-track:aada9025ecf30c8264d9ccdbfb521ee35743923e3eec0c109d699c70c2606c1a` |
| 52 | `theorem` | [one_comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidOrderAddMonoidHomClass.lean/declarations/one-comp.md) | 488 | `result-track:6c66c3418e75e920dc0cdd20506b71c79defbbea307dd825d2f993a5a2a96a5e` |
| 53 | `theorem` | [comp_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidOrderAddMonoidHomClass.lean/declarations/comp-one.md) | 494 | `result-track:0315c1cc0cb6029ef3c2e53d8c86e1ffeea930814ce861298d2eef76c0d6df0b` |
| 54 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidOrderAddMonoidHomClass.lean/declarations/instance-source-edition-3.md) | 509 | `declaration-track:260ec314c7518392506146079fb18e2491eacb554f6d4e06487b083956869c94` |
| 55 | `theorem` | [coe_mul](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidOrderAddMonoidHomClass.lean/declarations/coe-mul.md) | 513 | `result-track:0165444638a415e4cb79f3a2f9a87e727f0b2e294fa19c9da32775aaa59e5a06` |
| 56 | `theorem` | [mul_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidOrderAddMonoidHomClass.lean/declarations/mul-apply.md) | 519 | `result-track:65a1039ef3e8ca51382a56cec862d87e55e497fd7c8d52fbfb29a5f7f77417b2` |
| 57 | `theorem` | [mul_comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidOrderAddMonoidHomClass.lean/declarations/mul-comp-source-edition-2.md) | 525 | `result-track:4a513e2f51450488574cab4308f7b4684830d139f3ed38444829a5a8c23a0211` |
| 58 | `theorem` | [comp_mul](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidOrderAddMonoidHomClass.lean/declarations/comp-mul.md) | 531 | `result-track:6efa5f55f709b747405311b9ccf3b5b6dc9d923857381fffb9b0d3f4455da9d7` |
| 59 | `theorem` | [toMonoidHom_eq_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidOrderAddMonoidHomClass.lean/declarations/tomonoidhom-eq-coe.md) | 543 | `result-track:ae93b7784ab2ff9bbbec39136d10bc35e92c6cc399ef62dbb22bfbc98c40efe1` |
| 60 | `theorem` | [toOrderHom_eq_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidOrderAddMonoidHomClass.lean/declarations/toorderhom-eq-coe.md) | 549 | `result-track:d7bb7b872077ecef96688c93628c2872bf39e4751891c670c0ab007f1307a5a3` |
| 61 | `def` | [mk'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidOrderAddMonoidHomClass.lean/declarations/mk.md) | 564 | `declaration-track:badacd10d9707d5544b79d9041a8040e89209930403306b55b3ce316fcbab68c` |
| 62 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidOrderAddMonoidHomClass.lean/declarations/instance-source-edition-4.md) | 580 | `declaration-track:291121ff7ea85fe40c2feffbea36aa1540d4935b527b342d4fa5560f3a94f340` |
| 63 | `theorem` | [ext](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidOrderAddMonoidHomClass.lean/declarations/ext.md) | 600 | `result-track:13822f6a0670330d02597cb68ca2d365af2426026f8624bf1d91f3bdf503d89c` |
| 64 | `theorem` | [toFun_eq_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidOrderAddMonoidHomClass.lean/declarations/tofun-eq-coe.md) | 604 | `result-track:16c53ad3462a1a61eb9780c000741399dba6eea5376e9a1aa3e5740be94fba2a` |
| 65 | `theorem` | [coe_mk](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidOrderAddMonoidHomClass.lean/declarations/coe-mk.md) | 609 | `result-track:559538640ca6464611877ed2319fefdcbc6409fb0954b7585a86cb7879456b56` |
| 66 | `theorem` | [mk_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidOrderAddMonoidHomClass.lean/declarations/mk-coe-source-edition-2.md) | 614 | `result-track:c67cd67614d80306dde94bdd73b26cc2a941536ff70cb01c5392d884d480e953` |
| 67 | `def` | [toOrderMonoidHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidOrderAddMonoidHomClass.lean/declarations/toordermonoidhom.md) | 618 | `declaration-track:f9f44596b5cc03ae72c3613ee4f9abb3e12dc8fcf8696971e8d15f4869a341d9` |
| 68 | `theorem` | [coe_monoidWithZeroHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidOrderAddMonoidHomClass.lean/declarations/coe-monoidwithzerohom.md) | 623 | `result-track:18a2dc519173ca19471cf6145b181ddaf9ee293019ff88b7b7e5fd9b1b8a8692` |
| 69 | `theorem` | [coe_orderMonoidHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidOrderAddMonoidHomClass.lean/declarations/coe-ordermonoidhom.md) | 628 | `result-track:ea112d45dd193202b0cd346f93e33d4ec9ddd644f3da3d6f4d21065dfdc1f33a` |
| 70 | `theorem` | [toOrderMonoidHom_injective](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidOrderAddMonoidHomClass.lean/declarations/toordermonoidhom-injective.md) | 632 | `result-track:adacdcf145e251e92018154dd5b7b90f0002eee3edf489ec5ea1038570883db2` |
| 71 | `theorem` | [toMonoidWithZeroHom_injective](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidOrderAddMonoidHomClass.lean/declarations/tomonoidwithzerohom-injective.md) | 636 | `result-track:68bbbe4b66d4178da5e0c5ca0561fad978f7d2882adc97f031d7fb404bcd27ff` |
| 72 | `def` | [copy](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidOrderAddMonoidHomClass.lean/declarations/copy-source-edition-2.md) | 642 | `declaration-track:a8ea8a82d2c1c55a8ddd18725f0b9b3f2e7e978dfc4744dfff2b652a2654e38a` |
| 73 | `theorem` | [coe_copy](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidOrderAddMonoidHomClass.lean/declarations/coe-copy.md) | 647 | `result-track:554800df67ab43991b2f3c8532c2ee25fc40cfc14f98881dafea9e96270b96fe` |
| 74 | `theorem` | [copy_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidOrderAddMonoidHomClass.lean/declarations/copy-eq.md) | 651 | `result-track:160ed070d5fe0b0625d800f53ae0068bbf3eec9101295293106b5977896d4b14` |
| 75 | `def` | [id](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidOrderAddMonoidHomClass.lean/declarations/id.md) | 658 | `declaration-track:8ce5eb773753d2581f95d2e8522240f3afb471faab27bece9ca7964d02156497` |
| 76 | `theorem` | [coe_id](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidOrderAddMonoidHomClass.lean/declarations/coe-id-source-edition-2.md) | 663 | `result-track:f644d45322a851e0784ff16eb4a4bc67a90e56ef3f93533c23d792aaf4077619` |
| 77 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidOrderAddMonoidHomClass.lean/declarations/instance-source-edition-9.md) | 667 | `declaration-track:e63f010e30634675d4290a6398f21db90b0887d8ccd1b7900c5e517ad1e4d77e` |
| 78 | `def` | [comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidOrderAddMonoidHomClass.lean/declarations/comp.md) | 673 | `declaration-track:51be90a0336686a8fe96afa09c4e516e245d62437a54304f88dd26ff9270a4db` |
| 79 | `theorem` | [coe_comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidOrderAddMonoidHomClass.lean/declarations/coe-comp-source-edition-2.md) | 678 | `result-track:8cdd23dec387475df551cf055f398cf0d4849e7d5f7f720d7427aa8c27456bde` |
| 80 | `theorem` | [comp_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidOrderAddMonoidHomClass.lean/declarations/comp-apply.md) | 683 | `result-track:68f121ee7a5f98b1d558b82e3209820a2e2602b9dcc6edf496cf50d7f3204e70` |
| 81 | `theorem` | [coe_comp_monoidWithZeroHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidOrderAddMonoidHomClass.lean/declarations/coe-comp-monoidwithzerohom.md) | 687 | `result-track:a4f0590c3be4e68a9332fe58d8ecbe028b44f8e5e473ef4d199a0aeee010fa53` |
| 82 | `theorem` | [coe_comp_orderMonoidHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidOrderAddMonoidHomClass.lean/declarations/coe-comp-ordermonoidhom.md) | 692 | `result-track:f9b05a315c21120806a259ee29b9c5d87ac30e040ae2fbf43cbc0ae98c310d4d` |
| 83 | `theorem` | [comp_assoc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidOrderAddMonoidHomClass.lean/declarations/comp-assoc.md) | 698 | `result-track:0f8d9c65cf537d4078686d3c24dd7dd97e6890e6346ec3e0722a4395ee130fd3` |
| 84 | `theorem` | [comp_id](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidOrderAddMonoidHomClass.lean/declarations/comp-id-source-edition-2.md) | 704 | `result-track:b221e0f7dbcd8c6fd4749caacb4dc9cb8dc619bf208a5bb6ed2b2880119f74e9` |
| 85 | `theorem` | [id_comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidOrderAddMonoidHomClass.lean/declarations/id-comp.md) | 708 | `result-track:19ac0b7ce8220f949184a7ec5c7aec0491826680d02e27b87f1fadf416ad8ce7` |
| 86 | `theorem` | [cancel_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidOrderAddMonoidHomClass.lean/declarations/cancel-right.md) | 711 | `result-track:6aea9303491c09c2f89971b3e78dc944f7bb38f33c7aa1d4551d529d77133a77` |
| 87 | `theorem` | [cancel_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidOrderAddMonoidHomClass.lean/declarations/cancel-left-source-edition-2.md) | 716 | `result-track:6e9676e641ee2d175e39d5a1d63e9f397b29e99b7d8ee1e859a9dc114945eb94` |
| 88 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidOrderAddMonoidHomClass.lean/declarations/instance-source-edition-6.md) | 730 | `declaration-track:6e02c36008e016eadf609777cde20d33d26a5f77630205ee4eaaa7cadbd24bb2` |
| 89 | `theorem` | [coe_mul](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidOrderAddMonoidHomClass.lean/declarations/coe-mul-source-edition-2.md) | 734 | `result-track:8f8b184e9db57d241cc69663b616aa3434b7852e1ddc095fe9cf9b740b744017` |
| 90 | `theorem` | [mul_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidOrderAddMonoidHomClass.lean/declarations/mul-apply-source-edition-2.md) | 739 | `result-track:9721c7c350c5f8dd9841ae71944391f9b5723b0477fafec564b383c652ae45e9` |
| 91 | `theorem` | [mul_comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidOrderAddMonoidHomClass.lean/declarations/mul-comp.md) | 743 | `result-track:400f5b4908016f5bdb993b8131771ee095f02270ec364a7cf09fbb3c7e536bf2` |
| 92 | `theorem` | [comp_mul](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidOrderAddMonoidHomClass.lean/declarations/comp-mul-source-edition-2.md) | 747 | `result-track:7f40bacef408f5744f3fcd35c1da259e8408ba547e3cbd6546153fc94e586d4e` |
| 93 | `theorem` | [toMonoidWithZeroHom_eq_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidOrderAddMonoidHomClass.lean/declarations/tomonoidwithzerohom-eq-coe.md) | 758 | `result-track:d2314285fbb0c862da619a13ba1c9211f593e67ee8d3b8223390d9ca1ca55711` |
| 94 | `theorem` | [toOrderMonoidHom_eq_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidOrderAddMonoidHomClass.lean/declarations/toordermonoidhom-eq-coe.md) | 763 | `result-track:6cd496aa3d95e2decf6d93299a479253322797b112825333c5c12ea17082f628` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=526d730d504ef740078315b854838c943e1cf496c0508869cdc3b3799e1b5353 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Monoid/Varianta091844880d52d03a80d023475c9d699a33ef941bb6e617ce775eaaa86579c45.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Monoid/Varianta091844880d52d03a80d023475c9d699a33ef941bb6e617ce775eaaa86579c45.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
