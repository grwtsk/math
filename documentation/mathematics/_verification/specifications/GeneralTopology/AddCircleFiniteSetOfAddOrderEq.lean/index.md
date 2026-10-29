# Verification target: Add Circle Finite Set Of Add Order Eq

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d10558eef48b083c55a8d9a227c6084d37f1e92a",
  "lexical_observation_count": 67,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/AddCircle/Variant9934f0ab80f4e4a79eaf1f62a99978261c034ffece8cc563e91debc3a1280d60.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/AddCircleFiniteSetOfAddOrderEq.lean/index.md) · [Full source](../../../../GeneralTopology/AddCircleFiniteSetOfAddOrderEq.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d10558eef48b083c55a8d9a227c6084d37f1e92a`.

Source path: `GRWTSK/Topology/GeneralTopology/AddCircle/Variant9934f0ab80f4e4a79eaf1f62a99978261c034ffece8cc563e91debc3a1280d60.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/AddCircle/Variant9934f0ab80f4e4a79eaf1f62a99978261c034ffece8cc563e91debc3a1280d60.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Totient` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.AddAut` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Divisible` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.OrderOfElement` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Floor` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.ToIntervalMod` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Instances.Real` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.PathConnected` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [continuous_right_toIcoMod](../../../../GeneralTopology/AddCircleFiniteSetOfAddOrderEq.lean/declarations/continuous-right-toicomod.md) | 66 | `result-track:c4f04a254cd5bfd4b1b5af823ee6f2017cade5a2811105e9f53cbe0677ed6051` |
| 2 | `theorem` | [continuous_left_toIocMod](../../../../GeneralTopology/AddCircleFiniteSetOfAddOrderEq.lean/declarations/continuous-left-toiocmod.md) | 84 | `result-track:6dcc256d58c42db0c0044caf1077c03824474b6887dd9fc1bd9fcefb3150cd18` |
| 3 | `theorem` | [toIcoMod_eventuallyEq_toIocMod](../../../../GeneralTopology/AddCircleFiniteSetOfAddOrderEq.lean/declarations/toicomod-eventuallyeq-toiocmod.md) | 96 | `result-track:fff1d440b7f8480b6e26c9a3e1523f92d361082ca7462d88a72698bab971d5ae` |
| 4 | `theorem` | [continuousAt_toIcoMod](../../../../GeneralTopology/AddCircleFiniteSetOfAddOrderEq.lean/declarations/continuousat-toicomod.md) | 104 | `result-track:aa1e966689aa88e1a9b47cb23a4417cdff420e2d1bb0b0a6507bb09bf2b20c6c` |
| 5 | `theorem` | [continuousAt_toIocMod](../../../../GeneralTopology/AddCircleFiniteSetOfAddOrderEq.lean/declarations/continuousat-toiocmod.md) | 112 | `result-track:d034df03094c157d5b68083944e7bb36d1d086777a4b6bf8f9c410041dfdfaf6` |
| 6 | `def` | [AddCircle](../../../../GeneralTopology/AddCircleFiniteSetOfAddOrderEq.lean/declarations/addcircle.md) | 124 | `declaration-track:627bcb0231b120d55da8b9186f77ae4f3d557086eb61a43a5c6d4a005ff0f635` |
| 7 | `instance` | [(anonymous)](../../../../GeneralTopology/AddCircleFiniteSetOfAddOrderEq.lean/declarations/instance-source-edition-4.md) | 133 | `declaration-track:3a7701e980955c71e0ffe049e58f8b692d750cc21d8bdad20f846a817cb28316` |
| 8 | `instance` | [(anonymous)](../../../../GeneralTopology/AddCircleFiniteSetOfAddOrderEq.lean/declarations/instance.md) | 135 | `declaration-track:015301f03982382a3095fcd44d7a43dedb710e38c79b57e97241344b015a5058` |
| 9 | `instance` | [(anonymous)](../../../../GeneralTopology/AddCircleFiniteSetOfAddOrderEq.lean/declarations/instance-source-edition-9.md) | 137 | `declaration-track:ecc710c4338862609e70fb65cc25e6a70766a8fd8ee7f81ae95cfa89a630f372` |
| 10 | `instance` | [(anonymous)](../../../../GeneralTopology/AddCircleFiniteSetOfAddOrderEq.lean/declarations/instance-source-edition-7.md) | 139 | `declaration-track:709ebf5c99125c3f815cf66ace36d3317591ffb28425cd334db2d14bd05d53ab` |
| 11 | `instance` | [(anonymous)](../../../../GeneralTopology/AddCircleFiniteSetOfAddOrderEq.lean/declarations/instance-source-edition-10.md) | 142 | `declaration-track:ffb599324f54624cdbaa313a228b77dc02fe6d2f5d7cc634479e10762cbac607` |
| 12 | `theorem` | [coe_nsmul](../../../../GeneralTopology/AddCircleFiniteSetOfAddOrderEq.lean/declarations/coe-nsmul.md) | 152 | `result-track:58345877e722e5efd157fb047dd46175b12a81b587eff409bbff93774a4e7ea0` |
| 13 | `theorem` | [coe_zsmul](../../../../GeneralTopology/AddCircleFiniteSetOfAddOrderEq.lean/declarations/coe-zsmul.md) | 156 | `result-track:766dc82495c3d39185c8155a439a6aa2a96f9de9439ba80e2b3d5c11c69c6bb0` |
| 14 | `theorem` | [coe_add](../../../../GeneralTopology/AddCircleFiniteSetOfAddOrderEq.lean/declarations/coe-add.md) | 160 | `result-track:3fc86957890bdadd9088cbcb82dda1fb1cafd63bfbc4d7109026107d61d4f7d9` |
| 15 | `theorem` | [coe_sub](../../../../GeneralTopology/AddCircleFiniteSetOfAddOrderEq.lean/declarations/coe-sub.md) | 164 | `result-track:0e4161b9823ec5a578f5d5405a7ee68c5a4d39c8952c852344e6fee6d83e7d70` |
| 16 | `theorem` | [coe_neg](../../../../GeneralTopology/AddCircleFiniteSetOfAddOrderEq.lean/declarations/coe-neg.md) | 168 | `result-track:61f4d894685f969bae0a8a6387ccf59312877f0ac7dc7f2cdba8446fe95f1edb` |
| 17 | `theorem` | [coe_eq_zero_iff](../../../../GeneralTopology/AddCircleFiniteSetOfAddOrderEq.lean/declarations/coe-eq-zero-iff.md) | 172 | `result-track:e889472f839a3b86d5e063695508014265bae13381704e523746662604a0598a` |
| 18 | `theorem` | [coe_eq_zero_of_pos_iff](../../../../GeneralTopology/AddCircleFiniteSetOfAddOrderEq.lean/declarations/coe-eq-zero-of-pos-iff.md) | 176 | `result-track:9d6e75fddb2a95d29ddbd0dd0cb43291a0353801bee4f3c9b9ca340e58586498` |
| 19 | `theorem` | [coe_period](../../../../GeneralTopology/AddCircleFiniteSetOfAddOrderEq.lean/declarations/coe-period.md) | 187 | `result-track:4c68494ee020a45940a0bd94d4d9591a26ad5149e4614572cbbd088f717ca006` |
| 20 | `theorem` | [coe_add_period](../../../../GeneralTopology/AddCircleFiniteSetOfAddOrderEq.lean/declarations/coe-add-period.md) | 195 | `result-track:0d8706196d1742a6a29f588c77c91bf94a22b2c0d1eb7e8750c7fa6b5bc95acf` |
| 21 | `theorem` | [continuous_mk'](../../../../GeneralTopology/AddCircleFiniteSetOfAddOrderEq.lean/declarations/continuous-mk.md) | 200 | `result-track:7f64546f6ea7d123ef7c95dee95260a0e86bb31d7232a35c94b7e44ad44d09e6` |
| 22 | `instance` | [instCircularOrderAddCircle](../../../../GeneralTopology/AddCircleFiniteSetOfAddOrderEq.lean/declarations/instcircularorderaddcircle.md) | 207 | `declaration-track:cf7b3ae0e396bdaf12103d117d1717945063988baed0ff58fdbceed8dc6d6eaa` |
| 23 | `def` | [equivIco](../../../../GeneralTopology/AddCircleFiniteSetOfAddOrderEq.lean/declarations/equivico.md) | 212 | `declaration-track:3871c620ef70db9e7c91a37439798fc432267675c7c130dbf8c507b033fd01a7` |
| 24 | `def` | [equivIoc](../../../../GeneralTopology/AddCircleFiniteSetOfAddOrderEq.lean/declarations/equivioc.md) | 218 | `declaration-track:58e7fffed5ee851952081e4c84be815044fd63e03f5c37378fad313532b5f5c0` |
| 25 | `def` | [liftIco](../../../../GeneralTopology/AddCircleFiniteSetOfAddOrderEq.lean/declarations/liftico.md) | 224 | `declaration-track:e51f87c2eb5f2942473c5172ee883ec28215d7a7cbd64bee48068e6d43520844` |
| 26 | `def` | [liftIoc](../../../../GeneralTopology/AddCircleFiniteSetOfAddOrderEq.lean/declarations/liftioc.md) | 230 | `declaration-track:d610ccd4ee33c3819de251a48d61d04deb79264a7fe175a8886bed79069c0a06` |
| 27 | `theorem` | [coe_eq_coe_iff_of_mem_Ico](../../../../GeneralTopology/AddCircleFiniteSetOfAddOrderEq.lean/declarations/coe-eq-coe-iff-of-mem-ico.md) | 236 | `result-track:6ba42d7e09826ef7e962726d40e1188be3dc216f27f0096382c0f7a7840c734b` |
| 28 | `theorem` | [liftIco_coe_apply](../../../../GeneralTopology/AddCircleFiniteSetOfAddOrderEq.lean/declarations/liftico-coe-apply.md) | 245 | `result-track:ccf31ae2ce3d107059ad0bab993ff6e3a366e50263abb652aa60bb9dca18ac9c` |
| 29 | `theorem` | [liftIoc_coe_apply](../../../../GeneralTopology/AddCircleFiniteSetOfAddOrderEq.lean/declarations/liftioc-coe-apply.md) | 254 | `result-track:009e95a71159fc351aab6b4c80d8c3c49f8ace6fae4cceaa46dc9f2017081c1c` |
| 30 | `theorem` | [continuous_equivIco_symm](../../../../GeneralTopology/AddCircleFiniteSetOfAddOrderEq.lean/declarations/continuous-equivico-symm.md) | 268 | `result-track:b3f321f3530c28363dbe98a72a1cbd8726a6fb8b85dfbab0efad26f8712b232f` |
| 31 | `theorem` | [continuous_equivIoc_symm](../../../../GeneralTopology/AddCircleFiniteSetOfAddOrderEq.lean/declarations/continuous-equivioc-symm.md) | 273 | `result-track:a46bfc515afddaaf8f89270c200336f87c3c714cc605e0eacd49ffd3360e71f7` |
| 32 | `theorem` | [continuousAt_equivIco](../../../../GeneralTopology/AddCircleFiniteSetOfAddOrderEq.lean/declarations/continuousat-equivico.md) | 279 | `result-track:837ea6a93a91b9fc66d6f5eeb97a0a6bb5c231e79fcebbb18b27e41533a0c019` |
| 33 | `theorem` | [continuousAt_equivIoc](../../../../GeneralTopology/AddCircleFiniteSetOfAddOrderEq.lean/declarations/continuousat-equivioc.md) | 285 | `result-track:b51ee2c932772c8a37c48dd136cd06e9b2d84df884900944ffe0b0931e15de40` |
| 34 | `theorem` | [coe_image_Ico_eq](../../../../GeneralTopology/AddCircleFiniteSetOfAddOrderEq.lean/declarations/coe-image-ico-eq.md) | 296 | `result-track:78129a7a1d3d4e40ea14a9e9dc027624fb2242b37f1dc9593737cabec31a9ffa` |
| 35 | `theorem` | [coe_image_Ioc_eq](../../../../GeneralTopology/AddCircleFiniteSetOfAddOrderEq.lean/declarations/coe-image-ioc-eq.md) | 304 | `result-track:e42a7bb1c6b422bfa777e2004d3db342209f5f44161a268d2cfd97f40bf850fa` |
| 36 | `theorem` | [coe_image_Icc_eq](../../../../GeneralTopology/AddCircleFiniteSetOfAddOrderEq.lean/declarations/coe-image-icc-eq.md) | 312 | `result-track:70f24678e529b670c45284ebcb95cbcf6b99818cfc633ade984f18d180a34d7e` |
| 37 | `def` | [equivAddCircle](../../../../GeneralTopology/AddCircleFiniteSetOfAddOrderEq.lean/declarations/equivaddcircle.md) | 323 | `declaration-track:10ec28e3108a1edc0620c4e4225c0c55b404371a850a7abef4ab8a1cefd5f83f` |
| 38 | `theorem` | [equivAddCircle_apply_mk](../../../../GeneralTopology/AddCircleFiniteSetOfAddOrderEq.lean/declarations/equivaddcircle-apply-mk.md) | 330 | `result-track:1ff41c743f32411dbe0013fd780b6662de6480bbc17295a810d5b480915a67da` |
| 39 | `theorem` | [equivAddCircle_symm_apply_mk](../../../../GeneralTopology/AddCircleFiniteSetOfAddOrderEq.lean/declarations/equivaddcircle-symm-apply-mk.md) | 336 | `result-track:c9a8152397f32de158240948abb8bde5a06e9ccc06374bf0217a586b0120993f` |
| 40 | `theorem` | [coe_equivIco_mk_apply](../../../../GeneralTopology/AddCircleFiniteSetOfAddOrderEq.lean/declarations/coe-equivico-mk-apply.md) | 348 | `result-track:907bef85d9257476f0b9dc3431d685867ef928be173e1ea8b886ba5a9e21d109` |
| 41 | `instance` | [(anonymous)](../../../../GeneralTopology/AddCircleFiniteSetOfAddOrderEq.lean/declarations/instance-source-edition-3.md) | 353 | `declaration-track:1288623c135197ba92add67cefaaa87544bad04562e555cbefe77682d8e42db9` |
| 42 | `theorem` | [addOrderOf_period_div](../../../../GeneralTopology/AddCircleFiniteSetOfAddOrderEq.lean/declarations/addorderof-period-div.md) | 370 | `result-track:bd7e4cd7c22248a86a592b11890f3782e2dd53b16625b029cc5d6ff204febbc6` |
| 43 | `theorem` | [gcd_mul_addOrderOf_div_eq](../../../../GeneralTopology/AddCircleFiniteSetOfAddOrderEq.lean/declarations/gcd-mul-addorderof-div-eq.md) | 384 | `result-track:500feaf2ceba920f1dcffb5f6cf2671e35cf2c383218184dbbc5bcd0146b8351` |
| 44 | `theorem` | [addOrderOf_div_of_gcd_eq_one](../../../../GeneralTopology/AddCircleFiniteSetOfAddOrderEq.lean/declarations/addorderof-div-of-gcd-eq-one-source-edition-2.md) | 395 | `result-track:cfad8487cf4417b6acc5de071e86bc320395e6638c764a6a0d30cda81c4a35f0` |
| 45 | `theorem` | [addOrderOf_div_of_gcd_eq_one'](../../../../GeneralTopology/AddCircleFiniteSetOfAddOrderEq.lean/declarations/addorderof-div-of-gcd-eq-one.md) | 401 | `result-track:76a637e426e82ba4c5887621cb2226ba8106e98eee39b276473652f7a5bdcad6` |
| 46 | `theorem` | [addOrderOf_coe_rat](../../../../GeneralTopology/AddCircleFiniteSetOfAddOrderEq.lean/declarations/addorderof-coe-rat.md) | 410 | `result-track:fe440dc0c024454fe029386c5663644566ecfeab45a21ccdeebbc370d2633afa` |
| 47 | `theorem` | [addOrderOf_eq_pos_iff](../../../../GeneralTopology/AddCircleFiniteSetOfAddOrderEq.lean/declarations/addorderof-eq-pos-iff.md) | 418 | `result-track:641e0edfd437025ecd22943340cb5f8d6909a52af700a3fa53476a576c3a175d` |
| 48 | `theorem` | [exists_gcd_eq_one_of_isOfFinAddOrder](../../../../GeneralTopology/AddCircleFiniteSetOfAddOrderEq.lean/declarations/exists-gcd-eq-one-of-isoffinaddorder.md) | 445 | `result-track:9160c63b9d2338cdcb55a634ad6901fe776690b0b2ddc2b60c94323e19e68afe` |
| 49 | `def` | [setAddOrderOfEquiv](../../../../GeneralTopology/AddCircleFiniteSetOfAddOrderEq.lean/declarations/setaddorderofequiv.md) | 456 | `declaration-track:0ab9be900b7a7778a7b2d9db059aa0968e3e41172239ee953e9fbb4e73bdd6b9` |
| 50 | `theorem` | [card_addOrderOf_eq_totient](../../../../GeneralTopology/AddCircleFiniteSetOfAddOrderEq.lean/declarations/card-addorderof-eq-totient.md) | 480 | `result-track:3e978076204746a9424ee147e141ea36f7a006e980f8a6a889b83617f81d652a` |
| 51 | `theorem` | [finite_setOf_add_order_eq](../../../../GeneralTopology/AddCircleFiniteSetOfAddOrderEq.lean/declarations/finite-setof-add-order-eq.md) | 496 | `result-track:45282e1e39646d6d61a1b5a5dbfa16b7b6223d84cbcfc8e54138a399ea0bc4a2` |
| 52 | `instance` | [pathConnectedSpace](../../../../GeneralTopology/AddCircleFiniteSetOfAddOrderEq.lean/declarations/pathconnectedspace.md) | 509 | `declaration-track:7ce966bbe51d0603622176eeaf71b97d96e3f983e7430be10006432994520c12` |
| 53 | `instance` | [compactSpace](../../../../GeneralTopology/AddCircleFiniteSetOfAddOrderEq.lean/declarations/compactspace.md) | 513 | `declaration-track:283361ff743508b3d871fc6ba99b663510a3c249cbeefe2dcf76a898b387a5c4` |
| 54 | `instance` | [(anonymous)](../../../../GeneralTopology/AddCircleFiniteSetOfAddOrderEq.lean/declarations/instance-source-edition-2.md) | 520 | `declaration-track:07bfd0211ec746bef4afc81ab4a5c884eb7b02604e93349ba7723e5effffa11a` |
| 55 | `instance` | [(anonymous)](../../../../GeneralTopology/AddCircleFiniteSetOfAddOrderEq.lean/declarations/instance-source-edition-5.md) | 525 | `declaration-track:3dc12a6ae543a6ca33cbbfcb011c8dadaac1058cda0732ccef06aefeea7b1876` |
| 56 | `instance` | [(anonymous)](../../../../GeneralTopology/AddCircleFiniteSetOfAddOrderEq.lean/declarations/instance-source-edition-6.md) | 529 | `declaration-track:47fe651821014738a5d46104b9b1591d1717398dd6f5e5d37401374567a02100` |
| 57 | `instance` | [(anonymous)](../../../../GeneralTopology/AddCircleFiniteSetOfAddOrderEq.lean/declarations/instance-source-edition-8.md) | 533 | `declaration-track:a66bcc4beb41c991b99362fac8df839a3dc3a5a4a3d3d769e602fac385327dc3` |
| 58 | `abbrev` | [UnitAddCircle](../../../../GeneralTopology/AddCircleFiniteSetOfAddOrderEq.lean/declarations/unitaddcircle.md) | 542 | `declaration-track:9368f7e848d856ab264e0f649b094fc240ebb080cc2a228edf7c003279c4f748` |
| 59 | `inductive` | [EndpointIdent](../../../../GeneralTopology/AddCircleFiniteSetOfAddOrderEq.lean/declarations/endpointident.md) | 561 | `declaration-track:3b275744bd3ce035cb3539ccc3f64a1a1e4df6c9d3aac2f42e518da85691a884` |
| 60 | `def` | [equivIccQuot](../../../../GeneralTopology/AddCircleFiniteSetOfAddOrderEq.lean/declarations/equiviccquot.md) | 571 | `declaration-track:f38f1e82bad09c278d8e184613b808048d5f292bc6d712d7955d045a5481d8a6` |
| 61 | `theorem` | [equivIccQuot_comp_mk_eq_toIcoMod](../../../../GeneralTopology/AddCircleFiniteSetOfAddOrderEq.lean/declarations/equiviccquot-comp-mk-eq-toicomod.md) | 596 | `result-track:1bce7c7c0cc8a0f435c34d7613ae1c7f0835670fadfd5b8c3622e6be6d076745` |
| 62 | `theorem` | [equivIccQuot_comp_mk_eq_toIocMod](../../../../GeneralTopology/AddCircleFiniteSetOfAddOrderEq.lean/declarations/equiviccquot-comp-mk-eq-toiocmod.md) | 602 | `result-track:54668b8c9c3df45eaa3dee03c4d9a49b469607386d6b54885e699fe8ae4352de` |
| 63 | `def` | [homeoIccQuot](../../../../GeneralTopology/AddCircleFiniteSetOfAddOrderEq.lean/declarations/homeoiccquot.md) | 615 | `declaration-track:4b84a704c54b36e90452f682784cf83783d70f0758623a190c3ef877cbb9f53c` |
| 64 | `theorem` | [liftIco_eq_lift_Icc](../../../../GeneralTopology/AddCircleFiniteSetOfAddOrderEq.lean/declarations/liftico-eq-lift-icc.md) | 640 | `result-track:4272273363947855e75b31dfa1c3d4d3a5c95731e6f4dd84785f2ee26db3d513` |
| 65 | `theorem` | [liftIco_continuous](../../../../GeneralTopology/AddCircleFiniteSetOfAddOrderEq.lean/declarations/liftico-continuous.md) | 650 | `result-track:2ec54d4f6ece75a463f2a539f93eb7be2338ce55dd6d18d8cd2bca96eb366fcf` |
| 66 | `theorem` | [liftIco_zero_coe_apply](../../../../GeneralTopology/AddCircleFiniteSetOfAddOrderEq.lean/declarations/liftico-zero-coe-apply.md) | 659 | `result-track:41b4a3d61ec2628348dba4b03f7caf8af15c19873c54494db87bb2120eaf7cd1` |
| 67 | `theorem` | [liftIco_zero_continuous](../../../../GeneralTopology/AddCircleFiniteSetOfAddOrderEq.lean/declarations/liftico-zero-continuous.md) | 663 | `result-track:1573acac9aba43d1d4592a0e6a4d6469d455052d95b4247d836864ef41eb3de7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9dd3399f01d948e88cf7e412d8851d73d82468bae7a9055a4f5084124083bb81 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/AddCircle/Variant9934f0ab80f4e4a79eaf1f62a99978261c034ffece8cc563e91debc3a1280d60.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/AddCircle/Variant9934f0ab80f4e4a79eaf1f62a99978261c034ffece8cc563e91debc3a1280d60.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
