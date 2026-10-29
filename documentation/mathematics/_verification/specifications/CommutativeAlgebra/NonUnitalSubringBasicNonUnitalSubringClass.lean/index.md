# Verification target: Non Unital Subring Basic Non Unital Subring Class

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "78ea3c05a5929e1689791d2353b865926ac15687",
  "lexical_observation_count": 165,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant866f9c2b0d66df214b5e19d3f03892fa033034a545b1acac6e876a7eaa2ce21d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/NonUnitalSubringBasicNonUnitalSubringClass.lean/index.md) · [Full source](../../../../CommutativeAlgebra/NonUnitalSubringBasicNonUnitalSubringClass.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `78ea3c05a5929e1689791d2353b865926ac15687`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant866f9c2b0d66df214b5e19d3f03892fa033034a545b1acac6e876a7eaa2ce21d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant866f9c2b0d66df214b5e19d3f03892fa033034a545b1acac6e876a7eaa2ce21d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.Subgroup.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.NonUnitalSubsemiring.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [NonUnitalSubringClass](../../../../CommutativeAlgebra/NonUnitalSubringBasicNonUnitalSubringClass.lean/declarations/nonunitalsubringclass.md) | 81 | `declaration-track:f75d2930b629dc286cff5823952bf127f83147541d88cad2118f98b64a9dbc5b` |
| 2 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/NonUnitalSubringBasicNonUnitalSubringClass.lean/declarations/instance-source-edition-12.md) | 85 | `declaration-track:e3dc7e4730f65a2e14bfc699e511b84b3cac251ece795de492faff3797332a67` |
| 3 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/NonUnitalSubringBasicNonUnitalSubringClass.lean/declarations/instance.md) | 96 | `declaration-track:06e26dac30bbac0334fe0404b148d90ec161691ef92d16268519bc3549b88ccd` |
| 4 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/NonUnitalSubringBasicNonUnitalSubringClass.lean/declarations/instance-source-edition-4.md) | 102 | `declaration-track:3f50a508a88303e8adfa7dc965afa013a59f206e64c5d8cfcfe0478f2056f685` |
| 5 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/NonUnitalSubringBasicNonUnitalSubringClass.lean/declarations/instance-source-edition-3.md) | 109 | `declaration-track:20555f1d3ab6c93d9ce6e0c225b378766fb6dfce89f6718785ca625b78419a07` |
| 6 | `def` | [subtype](../../../../CommutativeAlgebra/NonUnitalSubringBasicNonUnitalSubringClass.lean/declarations/subtype.md) | 115 | `declaration-track:48a68de99bdf7af91fecb03ce9f59d44957835f51c38f5ad5c399942c087e0f8` |
| 7 | `theorem` | [coe_subtype](../../../../CommutativeAlgebra/NonUnitalSubringBasicNonUnitalSubringClass.lean/declarations/coe-subtype.md) | 121 | `result-track:38d657fe7eb3de86802e01a5401ccb4cc6a366bc5d4c2d2062f642320735d684` |
| 8 | `structure` | [NonUnitalSubring](../../../../CommutativeAlgebra/NonUnitalSubringBasicNonUnitalSubringClass.lean/declarations/nonunitalsubring.md) | 133 | `declaration-track:7e6e3c56dc1f706a4f9ccb669f97da8299152abb2aabcbeca9ddc867c81fbbbe` |
| 9 | `def` | [toSubsemigroup](../../../../CommutativeAlgebra/NonUnitalSubringBasicNonUnitalSubringClass.lean/declarations/tosubsemigroup.md) | 145 | `declaration-track:d0c49333451dad7e62c3e77a29b793a5522b313a0d802180f08e6f9d1368bfe1` |
| 10 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/NonUnitalSubringBasicNonUnitalSubringClass.lean/declarations/instance-source-edition-8.md) | 148 | `declaration-track:a472190f3c828b86e00d1772aec5cd5a608d356807c75026f9213f153e83256a` |
| 11 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/NonUnitalSubringBasicNonUnitalSubringClass.lean/declarations/instance-source-edition-7.md) | 153 | `declaration-track:9f0c2f5a4441f05b7d124057dd20e398eaeda2dd0c0ea8044e70015eaef1bda4` |
| 12 | `theorem` | [mem_carrier](../../../../CommutativeAlgebra/NonUnitalSubringBasicNonUnitalSubringClass.lean/declarations/mem-carrier.md) | 160 | `result-track:1508ffebd1863a3b339799b03c27b8ad2b50e991f7d279344026ef6a7c015d8f` |
| 13 | `theorem` | [mem_mk](../../../../CommutativeAlgebra/NonUnitalSubringBasicNonUnitalSubringClass.lean/declarations/mem-mk-source-edition-2.md) | 164 | `result-track:67d30e86721495877e6576c1b5d8be08dcf422a620e835760236711f9f0345c3` |
| 14 | `theorem` | [coe_set_mk](../../../../CommutativeAlgebra/NonUnitalSubringBasicNonUnitalSubringClass.lean/declarations/coe-set-mk.md) | 169 | `result-track:b7c3c429af6c6a8dc95787d6e4720bdc72483ce061e1c372dbbbab3d443aaea2` |
| 15 | `theorem` | [mk_le_mk](../../../../CommutativeAlgebra/NonUnitalSubringBasicNonUnitalSubringClass.lean/declarations/mk-le-mk.md) | 174 | `result-track:3886b2b8101161fff36a84c4048db25988f56fb9ccdbcf1937f3a97664e7e530` |
| 16 | `theorem` | [ext](../../../../CommutativeAlgebra/NonUnitalSubringBasicNonUnitalSubringClass.lean/declarations/ext.md) | 180 | `result-track:b018499e5d1eb4dcb38674522174ad0aef0b84e796ff09e0724d8f3aa564ef4a` |
| 17 | `def` | [copy](../../../../CommutativeAlgebra/NonUnitalSubringBasicNonUnitalSubringClass.lean/declarations/copy.md) | 185 | `declaration-track:72c5a43a7a446209cf22769ded24af220b7e4a3ad0e743b7fb69e15377a532d7` |
| 18 | `theorem` | [coe_copy](../../../../CommutativeAlgebra/NonUnitalSubringBasicNonUnitalSubringClass.lean/declarations/coe-copy.md) | 191 | `result-track:a732041f9196366c118996841c2706c00a30d6163a5d2818a66ae33c48fe2caf` |
| 19 | `theorem` | [copy_eq](../../../../CommutativeAlgebra/NonUnitalSubringBasicNonUnitalSubringClass.lean/declarations/copy-eq.md) | 194 | `result-track:e4178032908ce41e252222893ffd3fe622101234724a157afd4e106e336102e0` |
| 20 | `theorem` | [toNonUnitalSubsemiring_injective](../../../../CommutativeAlgebra/NonUnitalSubringBasicNonUnitalSubringClass.lean/declarations/tononunitalsubsemiring-injective.md) | 197 | `result-track:998a29eaade3e780278a5c33299d24482098fbff610b651c4832474f861cc887` |
| 21 | `theorem` | [toNonUnitalSubsemiring_strictMono](../../../../CommutativeAlgebra/NonUnitalSubringBasicNonUnitalSubringClass.lean/declarations/tononunitalsubsemiring-strictmono.md) | 202 | `result-track:02885b0ea2e766f01d0154126b379dcc083e813ccf789045e945918f8ce0f191` |
| 22 | `theorem` | [toNonUnitalSubsemiring_mono](../../../../CommutativeAlgebra/NonUnitalSubringBasicNonUnitalSubringClass.lean/declarations/tononunitalsubsemiring-mono.md) | 207 | `result-track:647ff3e55d8a57147b79f8a3fd7473b090349b1c081b8ef54262fd657abd0d24` |
| 23 | `theorem` | [toAddSubgroup_injective](../../../../CommutativeAlgebra/NonUnitalSubringBasicNonUnitalSubringClass.lean/declarations/toaddsubgroup-injective.md) | 211 | `result-track:2ae2d8ca2ea7abfb75d6b6490de62f9b075ac35f2e440c1634a176ca3c9bb000` |
| 24 | `theorem` | [toAddSubgroup_strictMono](../../../../CommutativeAlgebra/NonUnitalSubringBasicNonUnitalSubringClass.lean/declarations/toaddsubgroup-strictmono.md) | 216 | `result-track:02d21f084bb05e949d55f7f7eb5872e98034702fbf8626db1609dc3ca386ea8b` |
| 25 | `theorem` | [toAddSubgroup_mono](../../../../CommutativeAlgebra/NonUnitalSubringBasicNonUnitalSubringClass.lean/declarations/toaddsubgroup-mono.md) | 220 | `result-track:0f07ee36011136aae00cf865581e5235acdf6b92d80132b321167329085dda18` |
| 26 | `theorem` | [toSubsemigroup_injective](../../../../CommutativeAlgebra/NonUnitalSubringBasicNonUnitalSubringClass.lean/declarations/tosubsemigroup-injective.md) | 223 | `result-track:e02721c53410e087f561218710fbf317447f3c59ebd8806d4f2da9e94d11ed11` |
| 27 | `theorem` | [toSubsemigroup_strictMono](../../../../CommutativeAlgebra/NonUnitalSubringBasicNonUnitalSubringClass.lean/declarations/tosubsemigroup-strictmono.md) | 228 | `result-track:8f88c0bf2393ac590f1fcdba04eb8d7e12d2bc7542dde033dc2be5ec1a1c183e` |
| 28 | `theorem` | [toSubsemigroup_mono](../../../../CommutativeAlgebra/NonUnitalSubringBasicNonUnitalSubringClass.lean/declarations/tosubsemigroup-mono.md) | 232 | `result-track:1c20223ab2844dd466096b1ae4a260b1f9e3a8e3683e9e0a7f91ebd8688bf311` |
| 29 | `def` | [mk'](../../../../CommutativeAlgebra/NonUnitalSubringBasicNonUnitalSubringClass.lean/declarations/mk.md) | 237 | `declaration-track:6d297e3675562f50c3c9b769ca3f3bdd84f77bef91345a273e40755867ab3af4` |
| 30 | `theorem` | [coe_mk'](../../../../CommutativeAlgebra/NonUnitalSubringBasicNonUnitalSubringClass.lean/declarations/coe-mk.md) | 242 | `result-track:99f23badf9ac7a4bb71aaf1211dda8567c5f40a39f8ec50f7dc41cb546783930` |
| 31 | `theorem` | [mem_mk'](../../../../CommutativeAlgebra/NonUnitalSubringBasicNonUnitalSubringClass.lean/declarations/mem-mk.md) | 247 | `result-track:33a505a2ba01457f7fccbdbd8c84a7100a04612a2a7edb740bceb4ba28c168cb` |
| 32 | `theorem` | [mk'_toSubsemigroup](../../../../CommutativeAlgebra/NonUnitalSubringBasicNonUnitalSubringClass.lean/declarations/mk-tosubsemigroup.md) | 252 | `result-track:05cb15bdb66e03d39a02da90b061982c6447d55fceacb2d8a6508a42b8900fd5` |
| 33 | `theorem` | [mk'_toAddSubgroup](../../../../CommutativeAlgebra/NonUnitalSubringBasicNonUnitalSubringClass.lean/declarations/mk-toaddsubgroup.md) | 257 | `result-track:282f0f684528b0fc20c0c9df0c9042d6f4d2d544700c3151cf8f574e686cbb20` |
| 34 | `theorem` | [zero_mem](../../../../CommutativeAlgebra/NonUnitalSubringBasicNonUnitalSubringClass.lean/declarations/zero-mem.md) | 268 | `result-track:6a7a4d0709967900a32f8a4ad1eaed4c7a82523e64ae263f957d04946c7786d8` |
| 35 | `theorem` | [mul_mem](../../../../CommutativeAlgebra/NonUnitalSubringBasicNonUnitalSubringClass.lean/declarations/mul-mem.md) | 272 | `result-track:104c9733c661949f9518a113936587725fb2976ce6d53e1547b792074614eeba` |
| 36 | `theorem` | [add_mem](../../../../CommutativeAlgebra/NonUnitalSubringBasicNonUnitalSubringClass.lean/declarations/add-mem.md) | 276 | `result-track:5a231a47e625acae6008528780047955221b1689a33298f02294f6f89c04de4c` |
| 37 | `theorem` | [neg_mem](../../../../CommutativeAlgebra/NonUnitalSubringBasicNonUnitalSubringClass.lean/declarations/neg-mem.md) | 280 | `result-track:5950c19be3753cb47a8d23a7294cf4933f6ae63bd10ec7bb7a88ee331824272f` |
| 38 | `theorem` | [sub_mem](../../../../CommutativeAlgebra/NonUnitalSubringBasicNonUnitalSubringClass.lean/declarations/sub-mem.md) | 284 | `result-track:41b58a1ee017802deb359e36a24dd22e33621bd46996e10f30dd649d24f49eab` |
| 39 | `theorem` | [list_sum_mem](../../../../CommutativeAlgebra/NonUnitalSubringBasicNonUnitalSubringClass.lean/declarations/list-sum-mem.md) | 288 | `result-track:b2b7ddb766248712ed01ad05169338ea070ebb0425fad5fa8e43d6973ecf8d02` |
| 40 | `theorem` | [multiset_sum_mem](../../../../CommutativeAlgebra/NonUnitalSubringBasicNonUnitalSubringClass.lean/declarations/multiset-sum-mem.md) | 293 | `result-track:03684e10c4839b660405a95d0f09ead7ddabaa79827304c24a55bb049d94384b` |
| 41 | `theorem` | [sum_mem](../../../../CommutativeAlgebra/NonUnitalSubringBasicNonUnitalSubringClass.lean/declarations/sum-mem.md) | 299 | `result-track:9592dc7dd67e4ae2303f311fb3a02d205a45224063ac317cbfcad6ba01b602c8` |
| 42 | `instance` | [toNonUnitalRing](../../../../CommutativeAlgebra/NonUnitalSubringBasicNonUnitalSubringClass.lean/declarations/tononunitalring.md) | 304 | `declaration-track:f59b83ae58bd7a7e74da38c92130878f531992acbec4bbdf384793b864709382` |
| 43 | `theorem` | [zsmul_mem](../../../../CommutativeAlgebra/NonUnitalSubringBasicNonUnitalSubringClass.lean/declarations/zsmul-mem.md) | 309 | `result-track:ed20bd2afc96b39618d4b11c0d4072f6e77a3bd0005f92c2feb95c0ef47e10f5` |
| 44 | `theorem` | [val_add](../../../../CommutativeAlgebra/NonUnitalSubringBasicNonUnitalSubringClass.lean/declarations/val-add.md) | 313 | `result-track:e0e4a00444b8331f625e9479825d7896a9fbc59414164c902d445c76bd2d947b` |
| 45 | `theorem` | [val_neg](../../../../CommutativeAlgebra/NonUnitalSubringBasicNonUnitalSubringClass.lean/declarations/val-neg.md) | 317 | `result-track:0b9213703a9a195b36b48cf973a1849869efb1291275563bc0c917221982cfdb` |
| 46 | `theorem` | [val_mul](../../../../CommutativeAlgebra/NonUnitalSubringBasicNonUnitalSubringClass.lean/declarations/val-mul.md) | 321 | `result-track:3b6b25aea6c9e4c13bb8aa34ad85a105682309866981464a8ff304c04617d136` |
| 47 | `theorem` | [val_zero](../../../../CommutativeAlgebra/NonUnitalSubringBasicNonUnitalSubringClass.lean/declarations/val-zero.md) | 325 | `result-track:2c8884d3ed5c1f0db2699d779c4d7e4ca396e56b4c1f07db6e44bcf35c9b0fbb` |
| 48 | `theorem` | [coe_eq_zero_iff](../../../../CommutativeAlgebra/NonUnitalSubringBasicNonUnitalSubringClass.lean/declarations/coe-eq-zero-iff.md) | 328 | `result-track:6f1f25f7819856f62f9d758c2b3b0be2a49ed369c2afd08fcb7e74fdebb9a0e3` |
| 49 | `instance` | [toNonUnitalCommRing](../../../../CommutativeAlgebra/NonUnitalSubringBasicNonUnitalSubringClass.lean/declarations/tononunitalcommring.md) | 332 | `declaration-track:fad6e579eb763228465a3df6a6d4e5a4cf444e793fb3df8e0411bb14ed215e39` |
| 50 | `theorem` | [mem_toSubsemigroup](../../../../CommutativeAlgebra/NonUnitalSubringBasicNonUnitalSubringClass.lean/declarations/mem-tosubsemigroup.md) | 341 | `result-track:cc6bc1db6a744cea4fd0032085e31dd5fd7a01f9921be2593f05e76eb78ca98f` |
| 51 | `theorem` | [coe_toSubsemigroup](../../../../CommutativeAlgebra/NonUnitalSubringBasicNonUnitalSubringClass.lean/declarations/coe-tosubsemigroup.md) | 345 | `result-track:1525124270ca1f080d941fc7bf563a612b32816585ebea7449b5585182e86724` |
| 52 | `theorem` | [mem_toAddSubgroup](../../../../CommutativeAlgebra/NonUnitalSubringBasicNonUnitalSubringClass.lean/declarations/mem-toaddsubgroup.md) | 349 | `result-track:9f898631452214b84ea3521e7ed72a4da8e6b275549489990b8a380d23acbae3` |
| 53 | `theorem` | [coe_toAddSubgroup](../../../../CommutativeAlgebra/NonUnitalSubringBasicNonUnitalSubringClass.lean/declarations/coe-toaddsubgroup.md) | 353 | `result-track:4ed5409de2dc96c29b430ad80315959ed0257bd74df325f3a98a03b852097094` |
| 54 | `theorem` | [mem_toNonUnitalSubsemiring](../../../../CommutativeAlgebra/NonUnitalSubringBasicNonUnitalSubringClass.lean/declarations/mem-tononunitalsubsemiring.md) | 357 | `result-track:0859b8a5a10b774602b65caf504f582af9dd69a6da3d02996424aae6778bd386` |
| 55 | `theorem` | [coe_toNonUnitalSubsemiring](../../../../CommutativeAlgebra/NonUnitalSubringBasicNonUnitalSubringClass.lean/declarations/coe-tononunitalsubsemiring.md) | 362 | `result-track:8a439683d404ab54d32555fba1621eb4b978c8155d5d140d0db92e8a7ce877c4` |
| 56 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/NonUnitalSubringBasicNonUnitalSubringClass.lean/declarations/instance-source-edition-2.md) | 370 | `declaration-track:15c67c872b83842d56f1b5e2ca3ed4036e1cac65285d3ff0d8df47f19f65385c` |
| 57 | `theorem` | [mem_top](../../../../CommutativeAlgebra/NonUnitalSubringBasicNonUnitalSubringClass.lean/declarations/mem-top.md) | 374 | `result-track:4752b6259661e519544e3f133a667ceb1bb785ae1eb4f436148796b607c5afbc` |
| 58 | `theorem` | [coe_top](../../../../CommutativeAlgebra/NonUnitalSubringBasicNonUnitalSubringClass.lean/declarations/coe-top.md) | 378 | `result-track:bf4f1199a5c443a4a23c7466ebafe0abf7249863994d06ae678a2ade96e270d3` |
| 59 | `def` | [topEquiv](../../../../CommutativeAlgebra/NonUnitalSubringBasicNonUnitalSubringClass.lean/declarations/topequiv.md) | 383 | `declaration-track:86097370d40b8e1b58b09ea0fe2b3d9ece96d249baa260137de5ed2e8185ad8e` |
| 60 | `def` | [comap](../../../../CommutativeAlgebra/NonUnitalSubringBasicNonUnitalSubringClass.lean/declarations/comap.md) | 401 | `declaration-track:aa20bc9be10b2f1c6b5b1fceef8605aac77af17923cebef1e0a19659f9d90ad5` |
| 61 | `theorem` | [coe_comap](../../../../CommutativeAlgebra/NonUnitalSubringBasicNonUnitalSubringClass.lean/declarations/coe-comap.md) | 407 | `result-track:827e499e0fab250eb7ef97bc70e1e13689ad1711fc8f4436a219d62ad931044c` |
| 62 | `theorem` | [mem_comap](../../../../CommutativeAlgebra/NonUnitalSubringBasicNonUnitalSubringClass.lean/declarations/mem-comap.md) | 411 | `result-track:1a7124a077cd77e40422727f5ac00941099f3a82f6290be95e34142bae08417a` |
| 63 | `theorem` | [comap_comap](../../../../CommutativeAlgebra/NonUnitalSubringBasicNonUnitalSubringClass.lean/declarations/comap-comap.md) | 414 | `result-track:8069f9801ac37998f60089f631f9508d95be742e3648c1d18ddfa0fe16765167` |
| 64 | `def` | [map](../../../../CommutativeAlgebra/NonUnitalSubringBasicNonUnitalSubringClass.lean/declarations/map.md) | 421 | `declaration-track:a5425f512d09924b76736bd5464d63bfcf416fe71155568d7dd522d37a88b0ed` |
| 65 | `theorem` | [coe_map](../../../../CommutativeAlgebra/NonUnitalSubringBasicNonUnitalSubringClass.lean/declarations/coe-map.md) | 427 | `result-track:942aceeab1513cc39b887fd85b0610c97254ba109014299ae4e74be2230c1ef8` |
| 66 | `theorem` | [mem_map](../../../../CommutativeAlgebra/NonUnitalSubringBasicNonUnitalSubringClass.lean/declarations/mem-map.md) | 431 | `result-track:ee830f2e8ad9bd889c825d43de212e5883eb29a048824e04a089c59c8f574499` |
| 67 | `theorem` | [map_id](../../../../CommutativeAlgebra/NonUnitalSubringBasicNonUnitalSubringClass.lean/declarations/map-id.md) | 435 | `result-track:03defcd04eedbdb79ea9583d9a1c3c3783aeafd0317cf340978fa014c9f72a8c` |
| 68 | `theorem` | [map_map](../../../../CommutativeAlgebra/NonUnitalSubringBasicNonUnitalSubringClass.lean/declarations/map-map.md) | 438 | `result-track:fe4be4ea6bc0e3353822f268efefaede6de02234c6bbf91378318e3d9aa39c3e` |
| 69 | `theorem` | [map_le_iff_le_comap](../../../../CommutativeAlgebra/NonUnitalSubringBasicNonUnitalSubringClass.lean/declarations/map-le-iff-le-comap.md) | 441 | `result-track:45bc08a879ae2f8f93802470d45d5ce410bd073c279242f9b6b3129d8f8f0e00` |
| 70 | `theorem` | [gc_map_comap](../../../../CommutativeAlgebra/NonUnitalSubringBasicNonUnitalSubringClass.lean/declarations/gc-map-comap.md) | 445 | `result-track:f3b48c320ce971999011604be3f3fe48c520e783c13e4a2820e644a59e925507` |
| 71 | `def` | [equivMapOfInjective](../../../../CommutativeAlgebra/NonUnitalSubringBasicNonUnitalSubringClass.lean/declarations/equivmapofinjective.md) | 450 | `declaration-track:caa6fe7b0735e66c16b85584198525122bb4cba8e3407adb9747486c8424f5fc` |
| 72 | `theorem` | [coe_equivMapOfInjective_apply](../../../../CommutativeAlgebra/NonUnitalSubringBasicNonUnitalSubringClass.lean/declarations/coe-equivmapofinjective-apply.md) | 459 | `result-track:80f8b12c4790b46b49fdb6506c9b6dfdcdde6b423b2305f3777eb2e8c56d33e3` |
| 73 | `def` | [range](../../../../CommutativeAlgebra/NonUnitalSubringBasicNonUnitalSubringClass.lean/declarations/range.md) | 475 | `declaration-track:75e1fb8f0b4f478da316a2b10bacdc5ba867a247a934b39de6850434ae06cf52` |
| 74 | `theorem` | [coe_range](../../../../CommutativeAlgebra/NonUnitalSubringBasicNonUnitalSubringClass.lean/declarations/coe-range.md) | 480 | `result-track:ea3570380c39e0b7f71375ae424cf6d11b129d7539a2e19e7da27e977de7c68b` |
| 75 | `theorem` | [mem_range](../../../../CommutativeAlgebra/NonUnitalSubringBasicNonUnitalSubringClass.lean/declarations/mem-range.md) | 484 | `result-track:96775c7da7dc5508123ec86917814910db687db1793f3c42acd4a642d31cd645` |
| 76 | `theorem` | [range_eq_map](../../../../CommutativeAlgebra/NonUnitalSubringBasicNonUnitalSubringClass.lean/declarations/range-eq-map.md) | 487 | `result-track:33bbfc1bc496ae4eca098b7cf6df38bf71a6cfed9b06674ad7df3a00e8f3aed2` |
| 77 | `theorem` | [mem_range_self](../../../../CommutativeAlgebra/NonUnitalSubringBasicNonUnitalSubringClass.lean/declarations/mem-range-self.md) | 489 | `result-track:ec2326ac4e2b411012821bff1216d63965b7f6983cdab971a8beb759e8282eb9` |
| 78 | `theorem` | [map_range](../../../../CommutativeAlgebra/NonUnitalSubringBasicNonUnitalSubringClass.lean/declarations/map-range.md) | 492 | `result-track:81a2d9d143e592f330a66a0ce1df83e2b461884108bec3fcf5f309c2d53a1edd` |
| 79 | `instance` | [fintypeRange](../../../../CommutativeAlgebra/NonUnitalSubringBasicNonUnitalSubringClass.lean/declarations/fintyperange.md) | 498 | `declaration-track:b0974e2f0a4371ff88399ba8633632181d629f84ad226a3976ce9edf4260ba72` |
| 80 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/NonUnitalSubringBasicNonUnitalSubringClass.lean/declarations/instance-source-edition-6.md) | 515 | `declaration-track:8122a1b74ae3b655b604fe4c1d2d3ac0167874ae545ea8070889d0fdf93bf479` |
| 81 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/NonUnitalSubringBasicNonUnitalSubringClass.lean/declarations/instance-source-edition-10.md) | 518 | `declaration-track:e16efcb6efe67fd6c47b50e45810e6208161d8daea664b7254c7cec2344b2bfe` |
| 82 | `theorem` | [coe_bot](../../../../CommutativeAlgebra/NonUnitalSubringBasicNonUnitalSubringClass.lean/declarations/coe-bot.md) | 521 | `result-track:fc39d9c95692b68c3dce4b274cb95c41a10bbecca8be6a97d262e65d471f0523` |
| 83 | `theorem` | [mem_bot](../../../../CommutativeAlgebra/NonUnitalSubringBasicNonUnitalSubringClass.lean/declarations/mem-bot.md) | 524 | `result-track:fd059c6893a4bf39a1c09f9a4fad333403faddd254550aa29b50dd8ed6914bbd` |
| 84 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/NonUnitalSubringBasicNonUnitalSubringClass.lean/declarations/instance-source-edition-11.md) | 530 | `declaration-track:e3c101774faf772927c154bf148ebfb4d9bb781cf9e299103fb93966aee481e0` |
| 85 | `theorem` | [coe_inf](../../../../CommutativeAlgebra/NonUnitalSubringBasicNonUnitalSubringClass.lean/declarations/coe-inf.md) | 536 | `result-track:410d0c7e651247af9e6bae01a518e27635b0dc4b7e18215a2b29010105310988` |
| 86 | `theorem` | [mem_inf](../../../../CommutativeAlgebra/NonUnitalSubringBasicNonUnitalSubringClass.lean/declarations/mem-inf.md) | 541 | `result-track:3959b95d78a9a46484d02b4f067a6faf7f60a719176392294ed2474daa001e4a` |
| 87 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/NonUnitalSubringBasicNonUnitalSubringClass.lean/declarations/instance-source-edition-5.md) | 544 | `declaration-track:53888b0f819a9b60b0c925ceccf7e0303fb2ab443b13c19a1e1e2107aca4a20c` |
| 88 | `theorem` | [coe_sInf](../../../../CommutativeAlgebra/NonUnitalSubringBasicNonUnitalSubringClass.lean/declarations/coe-sinf.md) | 550 | `result-track:8419eef8b1bc4f626d066a45f584f5bd740d2cadb00c0a7aa08b7e619cbe1836` |
| 89 | `theorem` | [mem_sInf](../../../../CommutativeAlgebra/NonUnitalSubringBasicNonUnitalSubringClass.lean/declarations/mem-sinf.md) | 554 | `result-track:f7456ea5e404a1b5c3d2c8d8f96cd7dc4722376ad9c2555c9824cacd26837692` |
| 90 | `theorem` | [coe_iInf](../../../../CommutativeAlgebra/NonUnitalSubringBasicNonUnitalSubringClass.lean/declarations/coe-iinf.md) | 558 | `result-track:480e4a84a3d227eee45db576dad58d5c331824cc7fe217b57ab23b80ba9f65af` |
| 91 | `theorem` | [mem_iInf](../../../../CommutativeAlgebra/NonUnitalSubringBasicNonUnitalSubringClass.lean/declarations/mem-iinf.md) | 561 | `result-track:3eaf8621aa9bf85864025e10c505c653e092d218fa8c47c7dd36837be1dfcece` |
| 92 | `theorem` | [sInf_toSubsemigroup](../../../../CommutativeAlgebra/NonUnitalSubringBasicNonUnitalSubringClass.lean/declarations/sinf-tosubsemigroup.md) | 565 | `result-track:acb06e4ac60a8246e38010b9302314229d3e998705a7e7f0fb278100136d285c` |
| 93 | `theorem` | [sInf_toAddSubgroup](../../../../CommutativeAlgebra/NonUnitalSubringBasicNonUnitalSubringClass.lean/declarations/sinf-toaddsubgroup.md) | 570 | `result-track:ad3345b2bf71061d23a570b4b932215f369c1c5d8786f6fc1752dd256edd4af3` |
| 94 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/NonUnitalSubringBasicNonUnitalSubringClass.lean/declarations/instance-source-edition-9.md) | 575 | `declaration-track:c0a6b296cbeb8da2c46442cd984c3c4707387efac2d4aadaaf59c3819f62b135` |
| 95 | `theorem` | [eq_top_iff'](../../../../CommutativeAlgebra/NonUnitalSubringBasicNonUnitalSubringClass.lean/declarations/eq-top-iff.md) | 588 | `result-track:16257fd3859b5544953b9c4201d7a53033cace367850f5ebb5707da9b3042f6e` |
| 96 | `def` | [center](../../../../CommutativeAlgebra/NonUnitalSubringBasicNonUnitalSubringClass.lean/declarations/center.md) | 602 | `declaration-track:2ecf3877281840c02bac0812739affd63f2c9820f200d92e78cf1428bd1edf78` |
| 97 | `theorem` | [coe_center](../../../../CommutativeAlgebra/NonUnitalSubringBasicNonUnitalSubringClass.lean/declarations/coe-center.md) | 607 | `result-track:6e4e94d3b00fd649843df89c9da0b2eefb822d657fa13b4e9e8244a71012ec75` |
| 98 | `theorem` | [center_toNonUnitalSubsemiring](../../../../CommutativeAlgebra/NonUnitalSubringBasicNonUnitalSubringClass.lean/declarations/center-tononunitalsubsemiring.md) | 611 | `result-track:abee178e2831c2ed4a62e3830b570af725bd355d877be7aa4389a7372ac27789` |
| 99 | `theorem` | [mem_center_iff](../../../../CommutativeAlgebra/NonUnitalSubringBasicNonUnitalSubringClass.lean/declarations/mem-center-iff.md) | 617 | `result-track:ce6c89e41be7ff1deab534be33871de7ac5f97272243b8a0370bd36b19fce9f7` |
| 100 | `instance` | [decidableMemCenter](../../../../CommutativeAlgebra/NonUnitalSubringBasicNonUnitalSubringClass.lean/declarations/decidablememcenter.md) | 620 | `declaration-track:f65bf28357b0e6bd387f44601cfdc7265ae777ce30923868c3ce6f4eb9186a8f` |
| 101 | `theorem` | [center_eq_top](../../../../CommutativeAlgebra/NonUnitalSubringBasicNonUnitalSubringClass.lean/declarations/center-eq-top.md) | 624 | `result-track:4ff810e654f4485f75579cf95a1e000cb0240f59eccf1a6acca2ac842db17119` |
| 102 | `instance` | [center.instNonUnitalCommRing](../../../../CommutativeAlgebra/NonUnitalSubringBasicNonUnitalSubringClass.lean/declarations/center-instnonunitalcommring.md) | 628 | `declaration-track:a166f56ee5ff865250ad3fc9491f845b05642f1c8b653b0cd9b55a69704f6795` |
| 103 | `def` | [closure](../../../../CommutativeAlgebra/NonUnitalSubringBasicNonUnitalSubringClass.lean/declarations/closure.md) | 642 | `declaration-track:e723436622a476f4e384361b30cca01920bfe5b8b8d548bd562e812bce422669` |
| 104 | `theorem` | [mem_closure](../../../../CommutativeAlgebra/NonUnitalSubringBasicNonUnitalSubringClass.lean/declarations/mem-closure.md) | 645 | `result-track:f632c54a069626b546e7d0cd5ddba199c8a20e0c49813b45b20294a429679485` |
| 105 | `theorem` | [subset_closure](../../../../CommutativeAlgebra/NonUnitalSubringBasicNonUnitalSubringClass.lean/declarations/subset-closure.md) | 650 | `result-track:3e20e9c7f7a0975b646c79d864bc930c18979c68ffd7aaa80e7b6ac983849d96` |
| 106 | `theorem` | [not_mem_of_not_mem_closure](../../../../CommutativeAlgebra/NonUnitalSubringBasicNonUnitalSubringClass.lean/declarations/not-mem-of-not-mem-closure.md) | 652 | `result-track:d17fc4ffe1d0b5e34d4f38a11b40fd9968d0d1ba9d0cbe290d3d85f38cbe8e5a` |
| 107 | `theorem` | [closure_le](../../../../CommutativeAlgebra/NonUnitalSubringBasicNonUnitalSubringClass.lean/declarations/closure-le.md) | 657 | `result-track:816728887401d808ce36d63e2904354231d56ae1a05eb21f852194d711afa919` |
| 108 | `theorem` | [closure_mono](../../../../CommutativeAlgebra/NonUnitalSubringBasicNonUnitalSubringClass.lean/declarations/closure-mono.md) | 662 | `result-track:65b03f48fb5c01f13131a3c20621ccc1c63a755922a67ac359abdfc46a7ac8db` |
| 109 | `theorem` | [closure_eq_of_le](../../../../CommutativeAlgebra/NonUnitalSubringBasicNonUnitalSubringClass.lean/declarations/closure-eq-of-le.md) | 665 | `result-track:a36e80aea5b106e5b83772a5d2dd7461c3de3453adf5c63db79d0f185f25be67` |
| 110 | `theorem` | [closure_induction](../../../../CommutativeAlgebra/NonUnitalSubringBasicNonUnitalSubringClass.lean/declarations/closure-induction.md) | 673 | `result-track:10223f9f1e5457d4d42a726719902e2d132eeb0df3a8a33d978d4f8c0a8aa54b` |
| 111 | `theorem` | [closure_induction'](../../../../CommutativeAlgebra/NonUnitalSubringBasicNonUnitalSubringClass.lean/declarations/closure-induction-source-edition-3.md) | 681 | `result-track:fe9058dce24cf804725da90e8be9b5b151b34802351dcda1e33e0a81bac756f5` |
| 112 | `theorem` | [closure_induction₂](../../../../CommutativeAlgebra/NonUnitalSubringBasicNonUnitalSubringClass.lean/declarations/closure-induction-source-edition-2.md) | 699 | `result-track:20776c11a1a2907d0fc94c2e83ada16603b78f11ea762ab33545fbc2c52d1aa7` |
| 113 | `theorem` | [mem_closure_iff](../../../../CommutativeAlgebra/NonUnitalSubringBasicNonUnitalSubringClass.lean/declarations/mem-closure-iff.md) | 712 | `result-track:3f5daa1b09aff80cb21255851728648e82971fb8f924d3eb3dcac788381ab4e5` |
| 114 | `def` | [closureNonUnitalCommRingOfComm](../../../../CommutativeAlgebra/NonUnitalSubringBasicNonUnitalSubringClass.lean/declarations/closurenonunitalcommringofcomm.md) | 740 | `declaration-track:29feed96351b0a1dd89e0a9c32504c934f478c71e72626da41e39cb7bfc6713a` |
| 115 | `def` | [gi](../../../../CommutativeAlgebra/NonUnitalSubringBasicNonUnitalSubringClass.lean/declarations/gi.md) | 760 | `declaration-track:fd23ebe70a37a4c63b1c3c24a6744ede7d90573edcb3b89dfc9b9ca22fe191e8` |
| 116 | `theorem` | [closure_eq](../../../../CommutativeAlgebra/NonUnitalSubringBasicNonUnitalSubringClass.lean/declarations/closure-eq.md) | 770 | `result-track:ea47d6510fd23305900e9602f9f1e74897b27d100553458aeb6c26ba828f1135` |
| 117 | `theorem` | [closure_empty](../../../../CommutativeAlgebra/NonUnitalSubringBasicNonUnitalSubringClass.lean/declarations/closure-empty.md) | 774 | `result-track:a39aa7ef4ca858ca5eed0dca46117b25cf07367dd8f9219e7e52ff8b4be5f8cb` |
| 118 | `theorem` | [closure_univ](../../../../CommutativeAlgebra/NonUnitalSubringBasicNonUnitalSubringClass.lean/declarations/closure-univ.md) | 778 | `result-track:f74c50a475769ac92b14f88fe34fd862c9d1fa3e46a5da3877252adb9eafc5df` |
| 119 | `theorem` | [closure_union](../../../../CommutativeAlgebra/NonUnitalSubringBasicNonUnitalSubringClass.lean/declarations/closure-union.md) | 781 | `result-track:44e1c189d39a34113fa121805f311895f0a0443e9f882cee0253dede1ccb3e10` |
| 120 | `theorem` | [closure_iUnion](../../../../CommutativeAlgebra/NonUnitalSubringBasicNonUnitalSubringClass.lean/declarations/closure-iunion.md) | 784 | `result-track:2df267bc8b4a8e16e579b0731e22eecd7c3231a3580690e1c120df331f1e6dd4` |
| 121 | `theorem` | [closure_sUnion](../../../../CommutativeAlgebra/NonUnitalSubringBasicNonUnitalSubringClass.lean/declarations/closure-sunion.md) | 787 | `result-track:2f96fa6b562a231b42b920d065a47629954c6087e4ea35667ab626c0b72b66ac` |
| 122 | `theorem` | [map_sup](../../../../CommutativeAlgebra/NonUnitalSubringBasicNonUnitalSubringClass.lean/declarations/map-sup.md) | 790 | `result-track:74863fe891af5707761ba3c534c25f9dc891830c5cbbf7e1be5afc02ae69e4b3` |
| 123 | `theorem` | [map_iSup](../../../../CommutativeAlgebra/NonUnitalSubringBasicNonUnitalSubringClass.lean/declarations/map-isup.md) | 793 | `result-track:6afe1e89ce45630aeac034b0f89b6e5c1425baab6f4fd8d48ec462f2f8e14aca` |
| 124 | `theorem` | [comap_inf](../../../../CommutativeAlgebra/NonUnitalSubringBasicNonUnitalSubringClass.lean/declarations/comap-inf.md) | 797 | `result-track:ffeca7407fb8856bf7fa621e782f836b946f566a9bb9541eb78aa9b72fd96213` |
| 125 | `theorem` | [comap_iInf](../../../../CommutativeAlgebra/NonUnitalSubringBasicNonUnitalSubringClass.lean/declarations/comap-iinf.md) | 800 | `result-track:7d7a885119fdaec90494d30209bdf92bbed3977e8ad2c01c027cc33796ed2923` |
| 126 | `theorem` | [map_bot](../../../../CommutativeAlgebra/NonUnitalSubringBasicNonUnitalSubringClass.lean/declarations/map-bot.md) | 805 | `result-track:7f8f00acbeb04998a317316ac746826a4da1e534940406a288b15d8032079090` |
| 127 | `theorem` | [comap_top](../../../../CommutativeAlgebra/NonUnitalSubringBasicNonUnitalSubringClass.lean/declarations/comap-top.md) | 809 | `result-track:e68c905f05150fb4b0729f4a9c6d014701522a1b18bf7365005e42445dfbee10` |
| 128 | `def` | [prod](../../../../CommutativeAlgebra/NonUnitalSubringBasicNonUnitalSubringClass.lean/declarations/prod.md) | 814 | `declaration-track:3e3eea8d6f4317d75cb2ebe29ff474d63c2c6aae36736e76e3088dca7d393e76` |
| 129 | `theorem` | [coe_prod](../../../../CommutativeAlgebra/NonUnitalSubringBasicNonUnitalSubringClass.lean/declarations/coe-prod.md) | 819 | `result-track:14b460ec26078d832174cf8e61e9bacd1767c5d9045d52778a78d6d78911a5eb` |
| 130 | `theorem` | [mem_prod](../../../../CommutativeAlgebra/NonUnitalSubringBasicNonUnitalSubringClass.lean/declarations/mem-prod.md) | 823 | `result-track:501f294b0b616583c1b65ff7a3e404fb07a68819b47b70bae73f4afda32aa661` |
| 131 | `theorem` | [prod_mono](../../../../CommutativeAlgebra/NonUnitalSubringBasicNonUnitalSubringClass.lean/declarations/prod-mono.md) | 828 | `result-track:f5521fecbf1072a66d84bb129d020d194155cf4a030ba16d9ba41904e07254cb` |
| 132 | `theorem` | [prod_mono_right](../../../../CommutativeAlgebra/NonUnitalSubringBasicNonUnitalSubringClass.lean/declarations/prod-mono-right.md) | 832 | `result-track:33101d3a74b78ed6649a9982444468143a75dea48e4a0c1996ec68cc3ef228cf` |
| 133 | `theorem` | [prod_mono_left](../../../../CommutativeAlgebra/NonUnitalSubringBasicNonUnitalSubringClass.lean/declarations/prod-mono-left.md) | 836 | `result-track:863a2e50095dbdcea747519c512df2e2bca72a7f11e06930ca0084bf839ecf46` |
| 134 | `theorem` | [prod_top](../../../../CommutativeAlgebra/NonUnitalSubringBasicNonUnitalSubringClass.lean/declarations/prod-top.md) | 839 | `result-track:4f25142337d3b162131cf105b098ef8310f9937211149091f5cff57d5bdba605` |
| 135 | `theorem` | [top_prod](../../../../CommutativeAlgebra/NonUnitalSubringBasicNonUnitalSubringClass.lean/declarations/top-prod.md) | 843 | `result-track:3393eeea521e3305920c02719de51ec9bd2a54b7f82527947cbfe532f9fb1f03` |
| 136 | `theorem` | [top_prod_top](../../../../CommutativeAlgebra/NonUnitalSubringBasicNonUnitalSubringClass.lean/declarations/top-prod-top.md) | 848 | `result-track:41ad4e3fa22891dd8a9d1130cd7a13cc63905b55612326dc45e5b6c9096216d1` |
| 137 | `def` | [prodEquiv](../../../../CommutativeAlgebra/NonUnitalSubringBasicNonUnitalSubringClass.lean/declarations/prodequiv.md) | 852 | `declaration-track:58489e8d3c927d7aea6567436597de3b5680c38fd9459810d7c69410fb67204e` |
| 138 | `theorem` | [mem_iSup_of_directed](../../../../CommutativeAlgebra/NonUnitalSubringBasicNonUnitalSubringClass.lean/declarations/mem-isup-of-directed.md) | 860 | `result-track:5445286b549abe9eb4aea3d7193d0fcd711b8077f225f098272acc0fd20d6492` |
| 139 | `theorem` | [coe_iSup_of_directed](../../../../CommutativeAlgebra/NonUnitalSubringBasicNonUnitalSubringClass.lean/declarations/coe-isup-of-directed.md) | 870 | `result-track:41eb5af47be3e06272de692006ca80a46a57e51e2c51a3137f9594e18182e42b` |
| 140 | `theorem` | [mem_sSup_of_directedOn](../../../../CommutativeAlgebra/NonUnitalSubringBasicNonUnitalSubringClass.lean/declarations/mem-ssup-of-directedon.md) | 874 | `result-track:1445f465b6650a7d8135cfb95d28af29aa674234416cda0a026ab2eff88b5f75` |
| 141 | `theorem` | [coe_sSup_of_directedOn](../../../../CommutativeAlgebra/NonUnitalSubringBasicNonUnitalSubringClass.lean/declarations/coe-ssup-of-directedon.md) | 880 | `result-track:626cc01627afb7a1d86e152752e792e12ea1a2e7d1ba2e22dcb7029f8e119945` |
| 142 | `theorem` | [mem_map_equiv](../../../../CommutativeAlgebra/NonUnitalSubringBasicNonUnitalSubringClass.lean/declarations/mem-map-equiv.md) | 884 | `result-track:f69766bf86d1b9ab481e4c9e2bc25a0312158204cd4a472616a7c5967bdf56cd` |
| 143 | `theorem` | [map_equiv_eq_comap_symm](../../../../CommutativeAlgebra/NonUnitalSubringBasicNonUnitalSubringClass.lean/declarations/map-equiv-eq-comap-symm.md) | 888 | `result-track:2ec9f0251f62a87551e47f5b4bae8b15d392c18789002bb0dc7ad57d7db3e0c6` |
| 144 | `theorem` | [comap_equiv_eq_map_symm](../../../../CommutativeAlgebra/NonUnitalSubringBasicNonUnitalSubringClass.lean/declarations/comap-equiv-eq-map-symm.md) | 892 | `result-track:ce1dcc64c621d334edfb98c46e514f813f576dca630e3b7ef50b8a72f10b98bb` |
| 145 | `def` | [rangeRestrict](../../../../CommutativeAlgebra/NonUnitalSubringBasicNonUnitalSubringClass.lean/declarations/rangerestrict.md) | 911 | `declaration-track:b28d69a215759ad7e017bcf3aecacaaa6440a7ade37495dbcc928935750678ab` |
| 146 | `theorem` | [coe_rangeRestrict](../../../../CommutativeAlgebra/NonUnitalSubringBasicNonUnitalSubringClass.lean/declarations/coe-rangerestrict.md) | 915 | `result-track:cca07b6239c3feee8ef6e1fd196bc31045e0c26598822ce39e9d38ee1357ff37` |
| 147 | `theorem` | [rangeRestrict_surjective](../../../../CommutativeAlgebra/NonUnitalSubringBasicNonUnitalSubringClass.lean/declarations/rangerestrict-surjective.md) | 918 | `result-track:831d6171f6b37ab5237df003b0c170fbc1a15491b0e28b22ec2cc6e4fb866d17` |
| 148 | `theorem` | [range_top_iff_surjective](../../../../CommutativeAlgebra/NonUnitalSubringBasicNonUnitalSubringClass.lean/declarations/range-top-iff-surjective.md) | 923 | `result-track:d6fe4bfb50bf81324b42e57d20cef6ca98020459fb0ee1f5a95d8236afed9bed` |
| 149 | `theorem` | [range_top_of_surjective](../../../../CommutativeAlgebra/NonUnitalSubringBasicNonUnitalSubringClass.lean/declarations/range-top-of-surjective.md) | 929 | `result-track:419e2cc6508663dd202f1ecb46c3cf96bd5e7392e327690a2e8039d3104d1d7b` |
| 150 | `def` | [eqLocus](../../../../CommutativeAlgebra/NonUnitalSubringBasicNonUnitalSubringClass.lean/declarations/eqlocus.md) | 935 | `declaration-track:8310c10a4219d4dff81823fb2b3bf1e92f983beba6c2635e984a7f0bbd11327a` |
| 151 | `theorem` | [eqLocus_same](../../../../CommutativeAlgebra/NonUnitalSubringBasicNonUnitalSubringClass.lean/declarations/eqlocus-same.md) | 939 | `result-track:9e1dc3d32d362c673de5b571cb44f45e76bd6f671258db9d56a2b6b9d0a3d4a6` |
| 152 | `theorem` | [eqOn_set_closure](../../../../CommutativeAlgebra/NonUnitalSubringBasicNonUnitalSubringClass.lean/declarations/eqon-set-closure.md) | 944 | `result-track:a445aac55696ee6db2fec4b165f05951fd7b029bc240c8e1f8f85b57639835a5` |
| 153 | `theorem` | [eq_of_eqOn_set_top](../../../../CommutativeAlgebra/NonUnitalSubringBasicNonUnitalSubringClass.lean/declarations/eq-of-eqon-set-top.md) | 948 | `result-track:f523b90cc98c11f05f224b02a6005f432ce2cedffb09121ec5c37ebae2ee168b` |
| 154 | `theorem` | [eq_of_eqOn_set_dense](../../../../CommutativeAlgebra/NonUnitalSubringBasicNonUnitalSubringClass.lean/declarations/eq-of-eqon-set-dense.md) | 951 | `result-track:a855380c0f3e2713e031f869184b2029209f64d4bab5143b7bd805c56fbfb2bf` |
| 155 | `theorem` | [closure_preimage_le](../../../../CommutativeAlgebra/NonUnitalSubringBasicNonUnitalSubringClass.lean/declarations/closure-preimage-le.md) | 955 | `result-track:41fe0ba73052362b13881814009e4cb955adc1469904f7c7b2801f915c85b95a` |
| 156 | `theorem` | [map_closure](../../../../CommutativeAlgebra/NonUnitalSubringBasicNonUnitalSubringClass.lean/declarations/map-closure.md) | 960 | `result-track:c7acfb63d65d26d72d5d54dbdc8cba5a40c1d6a32adb640fb099ff1984b047ad` |
| 157 | `def` | [inclusion](../../../../CommutativeAlgebra/NonUnitalSubringBasicNonUnitalSubringClass.lean/declarations/inclusion.md) | 979 | `declaration-track:be3e6eaa38530785d994f88b77786af82ddaf38dce826003a27d9d9b0d057d54` |
| 158 | `theorem` | [range_subtype](../../../../CommutativeAlgebra/NonUnitalSubringBasicNonUnitalSubringClass.lean/declarations/range-subtype.md) | 983 | `result-track:7a8f9bdda2f69fbc50625b1495f9db712f8fc660b993d02657a6c34f35c8e589` |
| 159 | `theorem` | [range_fst](../../../../CommutativeAlgebra/NonUnitalSubringBasicNonUnitalSubringClass.lean/declarations/range-fst.md) | 986 | `result-track:3016ba1d69903703b253b5e8e1422c57bf3f9a33304d4b805b40f99db20b5a4e` |
| 160 | `theorem` | [range_snd](../../../../CommutativeAlgebra/NonUnitalSubringBasicNonUnitalSubringClass.lean/declarations/range-snd.md) | 989 | `result-track:2193f45e04551b964ec43bf6519949859bad269c8523ef7b30f8761f1661fb66` |
| 161 | `def` | [nonUnitalSubringCongr](../../../../CommutativeAlgebra/NonUnitalSubringBasicNonUnitalSubringClass.lean/declarations/nonunitalsubringcongr.md) | 1004 | `declaration-track:75159222e9b7a84629f4666af853cb108396ece5fb3cd1e6edcd6479861edd0d` |
| 162 | `def` | [ofLeftInverse'](../../../../CommutativeAlgebra/NonUnitalSubringBasicNonUnitalSubringClass.lean/declarations/ofleftinverse.md) | 1012 | `declaration-track:1e9c809b8b3f3a4e4a010a3c8bd71edd7965d74e47d217231241cdedb4af75bc` |
| 163 | `theorem` | [ofLeftInverse'_apply](../../../../CommutativeAlgebra/NonUnitalSubringBasicNonUnitalSubringClass.lean/declarations/ofleftinverse-apply.md) | 1023 | `result-track:5366a382cc61a4b6c258b9e1baf616f5dccc6ff9283b9de4f3c658a293abf9e6` |
| 164 | `theorem` | [ofLeftInverse'_symm_apply](../../../../CommutativeAlgebra/NonUnitalSubringBasicNonUnitalSubringClass.lean/declarations/ofleftinverse-symm-apply.md) | 1028 | `result-track:3551657f84a1f8717d98271e6bbed886e153d0072b19a581e8320f4619f8086e` |
| 165 | `theorem` | [closure_preimage_le](../../../../CommutativeAlgebra/NonUnitalSubringBasicNonUnitalSubringClass.lean/declarations/closure-preimage-le-source-edition-2.md) | 1040 | `result-track:afe6fa650a8ddf85e67977c6502e97fe9d9708d07572e8e0fdfe55d424422978` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=09846d79b3fad72350bb1db7deb851aa087c5da384a9a04073813a190f60f6e3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant866f9c2b0d66df214b5e19d3f03892fa033034a545b1acac6e876a7eaa2ce21d.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant866f9c2b0d66df214b5e19d3f03892fa033034a545b1acac6e876a7eaa2ce21d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
