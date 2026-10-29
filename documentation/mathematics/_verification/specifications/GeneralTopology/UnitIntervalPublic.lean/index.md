# Verification target: Unit Interval Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3544319eea46ede241e2aced4fd147a810f38825",
  "lexical_observation_count": 104,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/UnitInterval/Variantafaccfe8ef4d9ea05189b3bd50e0dbf58cb6b4e3f86441b2d4d55aef06c2626b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/UnitIntervalPublic.lean/index.md) · [Full source](../../../../GeneralTopology/UnitIntervalPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3544319eea46ede241e2aced4fd147a810f38825`.

Source path: `GRWTSK/Topology/GeneralTopology/UnitInterval/Variantafaccfe8ef4d9ea05189b3bd50e0dbf58cb6b4e3f86441b2d4d55aef06c2626b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/UnitInterval/Variantafaccfe8ef4d9ea05189b3bd50e0dbf58cb6b4e3f86441b2d4d55aef06c2626b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [unitInterval](../../../../GeneralTopology/UnitIntervalPublic.lean/declarations/unitinterval.md) | 32 | `declaration-track:f13cc1193401c5f1bd604447839bf0e2aad49af073d0dfae2fa4cead9d7e4c17` |
| 2 | `theorem` | [zero_mem](../../../../GeneralTopology/UnitIntervalPublic.lean/declarations/zero-mem.md) | 40 | `result-track:b6fe7d9c198f5d97ecfc05e04419890a596638d4d5e3f91d5c2c4c29dca6afa4` |
| 3 | `theorem` | [one_mem](../../../../GeneralTopology/UnitIntervalPublic.lean/declarations/one-mem.md) | 43 | `result-track:ec696062c7abe6128240105c66eab2dad001dbe9f19df2f5a42605aa8af4aabb` |
| 4 | `theorem` | [mul_mem](../../../../GeneralTopology/UnitIntervalPublic.lean/declarations/mul-mem.md) | 46 | `result-track:b61a46d179aca6c695bf24438d019491b8aa2ebfee98cf8e0754657ed4df12a2` |
| 5 | `theorem` | [div_mem](../../../../GeneralTopology/UnitIntervalPublic.lean/declarations/div-mem.md) | 49 | `result-track:cf85be33a0c850d5c8501917cbe014bcbd52196f0a35f9104f440bb7e11fb485` |
| 6 | `theorem` | [fract_mem](../../../../GeneralTopology/UnitIntervalPublic.lean/declarations/fract-mem.md) | 52 | `result-track:45fe888ca62d8b9b9559a9e14c6a97f353906ea63cd5c5c3766e88fbe33518b2` |
| 7 | `lemma` | [univ_eq_Icc](../../../../GeneralTopology/UnitIntervalPublic.lean/declarations/univ-eq-icc.md) | 55 | `result-track:c9f608c12ef34a9a7f8535e2520e16681e15d542b94eb15effcc7dfb3ed6dab2` |
| 8 | `theorem` | [coe_ne_zero](../../../../GeneralTopology/UnitIntervalPublic.lean/declarations/coe-ne-zero.md) | 57 | `result-track:7f269a0ca5fb5a6a2a9d2f9c70c48978a7e9fb9459cc12a7c7c23619fd69fad9` |
| 9 | `theorem` | [coe_ne_one](../../../../GeneralTopology/UnitIntervalPublic.lean/declarations/coe-ne-one.md) | 59 | `result-track:39d9d53b5d5d7f019726a6fd7fa08f724dc72ae504720bf27ca331a98c160cbc` |
| 10 | `theorem` | [coe_pos](../../../../GeneralTopology/UnitIntervalPublic.lean/declarations/coe-pos.md) | 61 | `result-track:fd37f6d4e9b1f7b04b69447df1f1e77e58cec7ceb5fb06ef61383e3f861b7662` |
| 11 | `theorem` | [coe_lt_one](../../../../GeneralTopology/UnitIntervalPublic.lean/declarations/coe-lt-one.md) | 63 | `result-track:a3f6c47c7daa4ef0de6daeb7e5a7ed3c82fe371d9186bfdb2ceea550f5fe1a1d` |
| 12 | `theorem` | [mul_le_left](../../../../GeneralTopology/UnitIntervalPublic.lean/declarations/mul-le-left.md) | 65 | `result-track:3e2f64b1f2754837080c68b3ec9ed6534b2c23a39ad8558608eefd43ee8bc7ab` |
| 13 | `theorem` | [mul_le_right](../../../../GeneralTopology/UnitIntervalPublic.lean/declarations/mul-le-right.md) | 68 | `result-track:9b5bfcd61ee46fe8148758e59c97f87ca868c858ddff4c2fe807d314ce3d8c98` |
| 14 | `theorem` | [eq_closedBall](../../../../GeneralTopology/UnitIntervalPublic.lean/declarations/eq-closedball.md) | 71 | `result-track:bf5ea964fbf2c120299c1409c744ea630742756fc089fb0d4e73a2da27285c01` |
| 15 | `def` | [symm](../../../../GeneralTopology/UnitIntervalPublic.lean/declarations/symm.md) | 75 | `declaration-track:3250f94cadb3dc7002957a8e764f52c22cc4f99385e9aebc0bc61f0b305c9cac` |
| 16 | `theorem` | [symm_zero](../../../../GeneralTopology/UnitIntervalPublic.lean/declarations/symm-zero.md) | 81 | `result-track:5ddd74ac83cca229a868ffbaf6050e878d039e46a12f33a282e6babf31e98eba` |
| 17 | `theorem` | [symm_one](../../../../GeneralTopology/UnitIntervalPublic.lean/declarations/symm-one.md) | 85 | `result-track:5652bf39d1e4d89bbb168d790f233eaad7dfb63b0efe9576c9088b2c87f0543b` |
| 18 | `theorem` | [symm_symm](../../../../GeneralTopology/UnitIntervalPublic.lean/declarations/symm-symm.md) | 89 | `result-track:6db4344a76f3ab60b2333fedfabdc4cc401fdf7335a97a51d7a1c88c89590bd5` |
| 19 | `theorem` | [symm_involutive](../../../../GeneralTopology/UnitIntervalPublic.lean/declarations/symm-involutive.md) | 92 | `result-track:34300fdffd71cd43da9f02a2ae6aa53e33a98bcb4f727f6fa48cb54d4c41b890` |
| 20 | `theorem` | [symm_bijective](../../../../GeneralTopology/UnitIntervalPublic.lean/declarations/symm-bijective.md) | 94 | `result-track:bae7c6402d01004f4d48caf0128172f8989cba04b84e2c95994f5ab229b9bed5` |
| 21 | `theorem` | [coe_symm_eq](../../../../GeneralTopology/UnitIntervalPublic.lean/declarations/coe-symm-eq.md) | 97 | `result-track:c4b8187c72d8cdb305e6effad07390a824ada0b8f571761f8e184b898d0bd817` |
| 22 | `lemma` | [image_coe_preimage_symm](../../../../GeneralTopology/UnitIntervalPublic.lean/declarations/image-coe-preimage-symm.md) | 100 | `result-track:6cc1cef283ff503c035ad309fe301bb1860248beb3b565802e91c4595b3eb790` |
| 23 | `theorem` | [symm_projIcc](../../../../GeneralTopology/UnitIntervalPublic.lean/declarations/symm-projicc.md) | 105 | `result-track:1eb0b88c1d184ac5a93d994a16eccb67c5f6a01037d02b8945569646160a906d` |
| 24 | `theorem` | [continuous_symm](../../../../GeneralTopology/UnitIntervalPublic.lean/declarations/continuous-symm.md) | 116 | `result-track:13c1033da8fb9dc6fbb7f78fe0ade5bfdf6bd0de3af3afebf8f8af1f1fd8905f` |
| 25 | `def` | [symmHomeomorph](../../../../GeneralTopology/UnitIntervalPublic.lean/declarations/symmhomeomorph.md) | 121 | `declaration-track:c2d4087dec4b4b4f2a55ae48838097c973d4701b28dabfdc9f1cbc72b3620fc2` |
| 26 | `theorem` | [strictAnti_symm](../../../../GeneralTopology/UnitIntervalPublic.lean/declarations/strictanti-symm.md) | 127 | `result-track:bbdb7ada397243d970e20efa6ec2d828a7b13fee0977428a2335be2d2c19bdb7` |
| 27 | `theorem` | [symm_inj](../../../../GeneralTopology/UnitIntervalPublic.lean/declarations/symm-inj.md) | 131 | `result-track:4c8b6a74d5098b5625d00bf4725a0098fbcd4c1e1a0b43914b50769b072139ce` |
| 28 | `theorem` | [half_le_symm_iff](../../../../GeneralTopology/UnitIntervalPublic.lean/declarations/half-le-symm-iff.md) | 133 | `result-track:c592b4e43f64813bb5dc90cfd839077f0e6f7f247714238a688d97fb7e497794` |
| 29 | `lemma` | [symm_eq_one](../../../../GeneralTopology/UnitIntervalPublic.lean/declarations/symm-eq-one.md) | 137 | `result-track:ae7668fe81861b6f499381c8158caca6a42d6fa75b859b76151d38b220661d6c` |
| 30 | `lemma` | [symm_eq_zero](../../../../GeneralTopology/UnitIntervalPublic.lean/declarations/symm-eq-zero.md) | 141 | `result-track:849c7a895c5db8c08e7f1501a38781cc06cb7388c97a6daa1a8475227b8e1248` |
| 31 | `theorem` | [symm_le_symm](../../../../GeneralTopology/UnitIntervalPublic.lean/declarations/symm-le-symm.md) | 145 | `result-track:ff20dea707ae4b78139983e4275a27be1e8e88acbbbfaa0aff4193b7cd5e81f9` |
| 32 | `theorem` | [le_symm_comm](../../../../GeneralTopology/UnitIntervalPublic.lean/declarations/le-symm-comm.md) | 148 | `result-track:7f18854a343116ea396056699367d1b1c3fa1e9edecf59f9c3d843a1f18d92ee` |
| 33 | `theorem` | [symm_le_comm](../../../../GeneralTopology/UnitIntervalPublic.lean/declarations/symm-le-comm.md) | 151 | `result-track:2a7d6652ac339dbc0c1c70490ac4b5e54558e2e3488cc29742ae142b5e080c0b` |
| 34 | `theorem` | [symm_lt_symm](../../../../GeneralTopology/UnitIntervalPublic.lean/declarations/symm-lt-symm.md) | 155 | `result-track:b70917dd6271d831f464758fd48e1d7176ea6b88a47ac2a80e01a5935f764487` |
| 35 | `theorem` | [lt_symm_comm](../../../../GeneralTopology/UnitIntervalPublic.lean/declarations/lt-symm-comm.md) | 158 | `result-track:973ad0a767fd8b6abd73326bf8074fc525d0fd85895301840719f73224b6fb2c` |
| 36 | `theorem` | [symm_lt_comm](../../../../GeneralTopology/UnitIntervalPublic.lean/declarations/symm-lt-comm.md) | 161 | `result-track:3b51f4a4183efc3acfb1567a02788b3885f0173fed3741d97b7122fb5bf64f70` |
| 37 | `instance` | [(anonymous)](../../../../GeneralTopology/UnitIntervalPublic.lean/declarations/instance-source-edition-2.md) | 164 | `declaration-track:982f3300b1c8262739d85d180432f1e0508e6c07acf2808bacff0759b930845e` |
| 38 | `example` | [(anonymous)](../../../../GeneralTopology/UnitIntervalPublic.lean/declarations/example.md) | 168 | `declaration-track:27b14c70f9de429b2e2bdbb2a459ee65a45019eff41118600d3f0d91653f943e` |
| 39 | `theorem` | [nonneg](../../../../GeneralTopology/UnitIntervalPublic.lean/declarations/nonneg-source-edition-2.md) | 170 | `result-track:abf8e3807f7e93b0aaedc3f2241c17cd18233819e4aa13fd8b1f94bffe5770ef` |
| 40 | `theorem` | [one_minus_nonneg](../../../../GeneralTopology/UnitIntervalPublic.lean/declarations/one-minus-nonneg.md) | 173 | `result-track:d32cfd635b731d8089a31cfa6c0ac1fcbde0b7ba4f0fdf5a045ad5e1cb6c1903` |
| 41 | `theorem` | [le_one](../../../../GeneralTopology/UnitIntervalPublic.lean/declarations/le-one.md) | 175 | `result-track:4c203d8c8c6e43e66971e72c104c55c582da2876dc115816fbf54db400fc24b2` |
| 42 | `theorem` | [one_minus_le_one](../../../../GeneralTopology/UnitIntervalPublic.lean/declarations/one-minus-le-one.md) | 178 | `result-track:9a72505d8f16bbf3f22dd9180276eab30a48726ef5868237163bf517c4077b5c` |
| 43 | `theorem` | [add_pos](../../../../GeneralTopology/UnitIntervalPublic.lean/declarations/add-pos.md) | 180 | `result-track:5846ec63f7da6d501c18285f165e13937e37d8fdd6753d06576698749f9a0337` |
| 44 | `theorem` | [nonneg'](../../../../GeneralTopology/UnitIntervalPublic.lean/declarations/nonneg.md) | 184 | `result-track:4fd608991c932655c53f62ebc3e22c8f1278d06f3db0d59925d8708cfcec24a5` |
| 45 | `theorem` | [le_one'](../../../../GeneralTopology/UnitIntervalPublic.lean/declarations/le-one-source-edition-2.md) | 188 | `result-track:6e82eb8c827f8dee66e8a8f922d1e788976e2a55da1cd1d14d8e3678c9f52928` |
| 46 | `lemma` | [pos_iff_ne_zero](../../../../GeneralTopology/UnitIntervalPublic.lean/declarations/pos-iff-ne-zero.md) | 191 | `result-track:1499cccc4a6736f5a94216a59cc0a8d3439a42433c5231ca9502de0248cf4b4c` |
| 47 | `lemma` | [lt_one_iff_ne_one](../../../../GeneralTopology/UnitIntervalPublic.lean/declarations/lt-one-iff-ne-one.md) | 193 | `result-track:ca160181e59b84670e9874bbe3eb2fc468c9b51483ffe56025de16f3440a2d64` |
| 48 | `lemma` | [eq_one_or_eq_zero_of_le_mul](../../../../GeneralTopology/UnitIntervalPublic.lean/declarations/eq-one-or-eq-zero-of-le-mul.md) | 195 | `result-track:d946c4da9a8dd76218754947bd961f1d76e9d5a199d8e2e44a373aeface45686` |
| 49 | `instance` | [(anonymous)](../../../../GeneralTopology/UnitIntervalPublic.lean/declarations/instance.md) | 202 | `declaration-track:16fb0ed5b141542ae6c4c93cc180b09cb6013100555830a5623ece5a1c18b65a` |
| 50 | `theorem` | [mul_pos_mem_iff](../../../../GeneralTopology/UnitIntervalPublic.lean/declarations/mul-pos-mem-iff.md) | 204 | `result-track:acc8627847f2611aeae0b52f92567d69f719a6ebd5657d07f5d75d6abb2e78f4` |
| 51 | `theorem` | [two_mul_sub_one_mem_iff](../../../../GeneralTopology/UnitIntervalPublic.lean/declarations/two-mul-sub-one-mem-iff.md) | 211 | `result-track:3e43443bea9ab6511ca2d8efda3cbbec28c6378c79392b3752b899653f04d644` |
| 52 | `def` | [submonoid](../../../../GeneralTopology/UnitIntervalPublic.lean/declarations/submonoid.md) | 215 | `declaration-track:a217b467bb2b2dd1f909d392290f5c5a65c00980c9ef6058fa76160bed031e60` |
| 53 | `theorem` | [coe_unitIntervalSubmonoid](../../../../GeneralTopology/UnitIntervalPublic.lean/declarations/coe-unitintervalsubmonoid.md) | 220 | `result-track:38f08a088790a1dd6cd929c1f9692145fd12c2cb06726293078242797d437ea4` |
| 54 | `theorem` | [mem_unitIntervalSubmonoid](../../../../GeneralTopology/UnitIntervalPublic.lean/declarations/mem-unitintervalsubmonoid.md) | 221 | `result-track:7d0e636dc9f9071630a2f3295bdcf68d070c5cc80fc9bdd978bbf3c4cad68262` |
| 55 | `theorem` | [prod_mem](../../../../GeneralTopology/UnitIntervalPublic.lean/declarations/prod-mem.md) | 224 | `result-track:fad45143c1b9773711ebdb9c3c0afbaaad284eb86ffd95afb8dc363d1dcc0a74` |
| 56 | `instance` | [(anonymous)](../../../../GeneralTopology/UnitIntervalPublic.lean/declarations/instance-source-edition-3.md) | 228 | `declaration-track:eb19136b0d216772dacc6308709d877e905ca953417f9125dc5876822a3a9cd8` |
| 57 | `lemma` | [subtype_Iic_eq_Icc](../../../../GeneralTopology/UnitIntervalPublic.lean/declarations/subtype-iic-eq-icc.md) | 233 | `result-track:e9817681711ca23449c0893ba791edf1421629141c718f1133cc4ee3a40132db` |
| 58 | `lemma` | [subtype_Iio_eq_Ico](../../../../GeneralTopology/UnitIntervalPublic.lean/declarations/subtype-iio-eq-ico.md) | 237 | `result-track:2c9fe3b8d59fafb4ebe2af73ea956df67eb6131102d15f1fb2541a3f489d11fb` |
| 59 | `lemma` | [subtype_Ici_eq_Icc](../../../../GeneralTopology/UnitIntervalPublic.lean/declarations/subtype-ici-eq-icc.md) | 241 | `result-track:c9fd4f221265f63d3b3d762e269229df26b9ef19467c4e64f9a274f3a4ab1f44` |
| 60 | `lemma` | [subtype_Ioi_eq_Ioc](../../../../GeneralTopology/UnitIntervalPublic.lean/declarations/subtype-ioi-eq-ioc.md) | 245 | `result-track:0f6b9159a9359a8d5284e42ebb12483f7f93812807f5b67b954a63f08419187a` |
| 61 | `lemma` | [_root_.Set.abs_projIcc_sub_projIcc](../../../../GeneralTopology/UnitIntervalPublic.lean/declarations/root-set-abs-projicc-sub-projicc.md) | 260 | `result-track:063c030b6cbbcd5e59cc696f97ada6d8a69c0f45ff87b999116c8813e7ef45de` |
| 62 | `def` | [addNSMul](../../../../GeneralTopology/UnitIntervalPublic.lean/declarations/addnsmul.md) | 273 | `declaration-track:b50f6ff31f79b160db20af7a15952d50b215f1d29a73eb5a13fff9c46e5a20f4` |
| 63 | `lemma` | [addNSMul_zero](../../../../GeneralTopology/UnitIntervalPublic.lean/declarations/addnsmul-zero.md) | 276 | `result-track:4fd74cd03f765eac25ecc968f1a43e3d1c453dcc0899522185a2d866295d9e9b` |
| 64 | `lemma` | [addNSMul_eq_right](../../../../GeneralTopology/UnitIntervalPublic.lean/declarations/addnsmul-eq-right.md) | 279 | `result-track:1b1bd230551f8bb8f0ae72b414f4523812a7084b514dd4a6901e6835a24f5871` |
| 65 | `lemma` | [monotone_addNSMul](../../../../GeneralTopology/UnitIntervalPublic.lean/declarations/monotone-addnsmul.md) | 286 | `result-track:e63c9665cfcb7336457daf20002ffc2cbcb42a2f49c8801a23f08d1a03b60852` |
| 66 | `lemma` | [abs_sub_addNSMul_le](../../../../GeneralTopology/UnitIntervalPublic.lean/declarations/abs-sub-addnsmul-le.md) | 289 | `result-track:7933ca9cfa737db6b71d8ea19e2db04818771b89c2fa1f06b39a8b815aa45a4c` |
| 67 | `def` | [convexComb](../../../../GeneralTopology/UnitIntervalPublic.lean/declarations/convexcomb.md) | 306 | `declaration-track:0cc044edf3ab13408901805546693869b2afe444636654e95465522d7f3609cc` |
| 68 | `theorem` | [coe_convexComb](../../../../GeneralTopology/UnitIntervalPublic.lean/declarations/coe-convexcomb.md) | 313 | `result-track:eb66ae1ca65c7b3c6d809623da30f83a642bdc492b8e19ecbdd6d4a03c9df9ef` |
| 69 | `theorem` | [convexComb_zero](../../../../GeneralTopology/UnitIntervalPublic.lean/declarations/convexcomb-zero.md) | 317 | `result-track:f2d233904409841e8da93b7ca17c9ad8d1424279683f0d000cfa6b74bc29947f` |
| 70 | `theorem` | [convexComb_one](../../../../GeneralTopology/UnitIntervalPublic.lean/declarations/convexcomb-one.md) | 321 | `result-track:f4bb4f037c64f6761b68811515580d52607d38fd81f1976be6be2065eb4fabdd` |
| 71 | `theorem` | [convexComb_zero_one](../../../../GeneralTopology/UnitIntervalPublic.lean/declarations/convexcomb-zero-one.md) | 325 | `result-track:54c2ecea06b2c283e2d25e5927384061012f3170418af9c799d5a2fce53b9914` |
| 72 | `theorem` | [convexComb_eq](../../../../GeneralTopology/UnitIntervalPublic.lean/declarations/convexcomb-eq.md) | 329 | `result-track:790b32668cdc562a6808a04f0c96494fa883435b982be0e4c7229e7291bd70f2` |
| 73 | `theorem` | [convexComb_symm](../../../../GeneralTopology/UnitIntervalPublic.lean/declarations/convexcomb-symm.md) | 333 | `result-track:fb3f046e9f971f4d4d7dc3c91c15dec9240ea09ef710444a977f223ba81b1af3` |
| 74 | `theorem` | [le_convexComb](../../../../GeneralTopology/UnitIntervalPublic.lean/declarations/le-convexcomb.md) | 339 | `result-track:07635e4606977c9a2fcaa1c0dde0a9a580a4cd7f6b1769c19e47d4fa430c32d2` |
| 75 | `theorem` | [convexComb_le](../../../../GeneralTopology/UnitIntervalPublic.lean/declarations/convexcomb-le.md) | 346 | `result-track:6aa71e7ba2a6b5975e473871dd8d0772b5a7d5d534b9ed93a431212c762f6081` |
| 76 | `theorem` | [continuous_convexComb](../../../../GeneralTopology/UnitIntervalPublic.lean/declarations/continuous-convexcomb.md) | 353 | `result-track:87959594b72c842cc296c613bb5df1a2640c46999914ec04a8b2505638c3faff` |
| 77 | `theorem` | [continuous_convexComb_prod](../../../../GeneralTopology/UnitIntervalPublic.lean/declarations/continuous-convexcomb-prod.md) | 358 | `result-track:f72936dc7685d6eb1eb04903a7bb919a24be0f988361cc1cdcc9727ce5d1df1c` |
| 78 | `abbrev` | [convexComb_assoc_coeff₁](../../../../GeneralTopology/UnitIntervalPublic.lean/declarations/convexcomb-assoc-coeff-source-edition-3.md) | 367 | `declaration-track:a1666db5f3160cf1612003e32f610f18ca9419cd67aed98389526a0fb3a57aa8` |
| 79 | `abbrev` | [convexComb_assoc_coeff₂](../../../../GeneralTopology/UnitIntervalPublic.lean/declarations/convexcomb-assoc-coeff-source-edition-4.md) | 382 | `declaration-track:f7ed2d542d6525298f4ec5eee76760a4fd0ee5d151a6cbd78b3c5f8b969c9a3e` |
| 80 | `theorem` | [convexComb_assoc](../../../../GeneralTopology/UnitIntervalPublic.lean/declarations/convexcomb-assoc-source-edition-2.md) | 384 | `result-track:92a0532202433f53f7b01fa7866039b71e874fd9579ff2a9a70c22d4a682810f` |
| 81 | `abbrev` | [convexComb_assoc_coeff₁'](../../../../GeneralTopology/UnitIntervalPublic.lean/declarations/convexcomb-assoc-coeff.md) | 409 | `declaration-track:507de8b0289b468f217ac607848b69e42da41770e53d2df644f0a2d21fab2dd2` |
| 82 | `abbrev` | [convexComb_assoc_coeff₂'](../../../../GeneralTopology/UnitIntervalPublic.lean/declarations/convexcomb-assoc-coeff-source-edition-2.md) | 416 | `declaration-track:5403015a2231260f5f5d4362ad04b8a63c897a2664393c530aec70850a4e62b4` |
| 83 | `theorem` | [convexComb_assoc'](../../../../GeneralTopology/UnitIntervalPublic.lean/declarations/convexcomb-assoc.md) | 419 | `result-track:79247d3db08817064c425aca890951ac5646ec68b8a9b9a48ec1da0839579f5e` |
| 84 | `theorem` | [eq_convexComb.zero_le](../../../../GeneralTopology/UnitIntervalPublic.lean/declarations/eq-convexcomb-zero-le.md) | 428 | `result-track:01a3dc1c85cfcb74d278af63e8af153f09e240982f6706f360bf0f73824d6fb1` |
| 85 | `theorem` | [eq_convexComb.le_one](../../../../GeneralTopology/UnitIntervalPublic.lean/declarations/eq-convexcomb-le-one.md) | 437 | `result-track:6eb4eec0788ff273e5f4b75e1ba3e739dfb5a0c6b44eca7ea53b0e44bae57387` |
| 86 | `theorem` | [eq_convexComb](../../../../GeneralTopology/UnitIntervalPublic.lean/declarations/eq-convexcomb.md) | 451 | `result-track:bd3f437729daf0d93d948928bfac9a375b78019dea93ff876c713fb5c2d60d35` |
| 87 | `lemma` | [exists_monotone_Icc_subset_open_cover_Icc](../../../../GeneralTopology/UnitIntervalPublic.lean/declarations/exists-monotone-icc-subset-open-cover-icc.md) | 470 | `result-track:0213d618b4d1beb28385a499080423b8251f5cee61ac67c738b32588660f5dfc` |
| 88 | `lemma` | [exists_monotone_Icc_subset_open_cover_unitInterval](../../../../GeneralTopology/UnitIntervalPublic.lean/declarations/exists-monotone-icc-subset-open-cover-unitinterval.md) | 481 | `result-track:454aa55cfda495c051aeb9bd31d94878cd7acf92c72832f09d29c10d6a63218b` |
| 89 | `lemma` | [exists_monotone_Icc_subset_open_cover_unitInterval_prod_self](../../../../GeneralTopology/UnitIntervalPublic.lean/declarations/exists-monotone-icc-subset-open-cover-unitinterval-prod-self.md) | 487 | `result-track:f8ddc07446520f1a30d867812ed4ef8afa902420753721d5c68a6940bef73227` |
| 90 | `theorem` | [projIcc_eq_zero](../../../../GeneralTopology/UnitIntervalPublic.lean/declarations/projicc-eq-zero.md) | 504 | `result-track:ceb59ea83e8f131d6616333dd0684d1b163c9f35ed76728dfbe27a7e39fefb1d` |
| 91 | `theorem` | [projIcc_eq_one](../../../../GeneralTopology/UnitIntervalPublic.lean/declarations/projicc-eq-one.md) | 508 | `result-track:216b43f3893a7aff0cb7e9d7a7a5da4bff4fdb2c104b534b29ef9b10f994f651` |
| 92 | `macro` | [(anonymous)](../../../../GeneralTopology/UnitIntervalPublic.lean/declarations/macro.md) | 517 | `declaration-track:d6d940bd0cb194025ac4b6794aa67880ce0893a4702aa752b55b4946d5db1efb` |
| 93 | `example` | [(anonymous)](../../../../GeneralTopology/UnitIntervalPublic.lean/declarations/example-source-edition-2.md) | 524 | `declaration-track:8d8b7f1e880cbcfd042e3d9f8618ec210b0e5eb62ef3ea483cdd59f9b09b553a` |
| 94 | `theorem` | [affineHomeomorph_image_I](../../../../GeneralTopology/UnitIntervalPublic.lean/declarations/affinehomeomorph-image-i.md) | 537 | `result-track:abfcb08d013a6537b22a907ad39e953070a2cfd15921ae55a832c77c4336f3fb` |
| 95 | `def` | [iccHomeoI](../../../../GeneralTopology/UnitIntervalPublic.lean/declarations/icchomeoi.md) | 542 | `declaration-track:caf089713838539b38107f5df40765b2ba247ea36e02d3b6bee64cd5f461f00e` |
| 96 | `theorem` | [iccHomeoI_apply_coe](../../../../GeneralTopology/UnitIntervalPublic.lean/declarations/icchomeoi-apply-coe.md) | 550 | `result-track:1f7b9b93a50db04dcdac1fde5c3220a8a268b9acb07a8ad0553cf354fceea95f` |
| 97 | `theorem` | [iccHomeoI_symm_apply_coe](../../../../GeneralTopology/UnitIntervalPublic.lean/declarations/icchomeoi-symm-apply-coe.md) | 555 | `result-track:ba7810a2cab434fbebe0bafc95a4520d08532ce906b96157044756aea4e54127` |
| 98 | `def` | [toNNReal](../../../../GeneralTopology/UnitIntervalPublic.lean/declarations/tonnreal.md) | 566 | `declaration-track:10d86f79125ac3d71b61bcda0a4be7703d891f2b0eb991f5ebd54989207cac27` |
| 99 | `lemma` | [toNNReal_zero](../../../../GeneralTopology/UnitIntervalPublic.lean/declarations/tonnreal-zero.md) | 568 | `result-track:7f3038ccb147729ec6a48e0872ca8c9f82eae975ec8617174262b0064f0d1c91` |
| 100 | `lemma` | [toNNReal_one](../../../../GeneralTopology/UnitIntervalPublic.lean/declarations/tonnreal-one.md) | 570 | `result-track:c2ea955b2a448f9f18e86697d5997a86d02cf321744640ccaa2cbbbc2ae31def` |
| 101 | `lemma` | [toNNReal_continuous](../../../../GeneralTopology/UnitIntervalPublic.lean/declarations/tonnreal-continuous.md) | 572 | `result-track:7e1c0e4718a645dd5ebc40b1cc820ff0cd0c25303fe4d44411eba2852ae41005` |
| 102 | `lemma` | [coe_toNNReal](../../../../GeneralTopology/UnitIntervalPublic.lean/declarations/coe-tonnreal.md) | 574 | `result-track:308d8ded7a8fca2812e257ecdcb4865a575ecb430462ed57749ee003b1d25e3a` |
| 103 | `lemma` | [toNNReal_add_toNNReal_symm](../../../../GeneralTopology/UnitIntervalPublic.lean/declarations/tonnreal-add-tonnreal-symm.md) | 576 | `result-track:93ca2a5c833958823db75e33b3f166a883f6627133740e94c6895dff7d2a0c7b` |
| 104 | `lemma` | [toNNReal_symm_add_toNNReal](../../../../GeneralTopology/UnitIntervalPublic.lean/declarations/tonnreal-symm-add-tonnreal.md) | 577 | `result-track:2ca78710461646d721e9a80fd606b0e147035ec3faf905eaffef8bb3831d0b31` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cb848be5cfa40f79db7b52d9dde0d3945d367c3fca2b2d609fd1372a229499f6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/UnitInterval/Variantafaccfe8ef4d9ea05189b3bd50e0dbf58cb6b4e3f86441b2d4d55aef06c2626b.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/UnitInterval/Variantafaccfe8ef4d9ea05189b3bd50e0dbf58cb6b4e3f86441b2d4d55aef06c2626b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
