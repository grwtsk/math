# Verification target: Ring Theory Laurent Series Laurent Series Source Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2c782bb7017d8b673e57ef41bf349b892c94a13e",
  "lexical_observation_count": 126,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/LaurentSeries/Variant189a67af10d0d324ae1c76f266004578a6877d47cfdde1fff730a85717cf16ae.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/RingTheoryLaurentSeriesLaurentSeriesSourceEdition2.lean/index.md) · [Full source](../../../../CommutativeAlgebra/RingTheoryLaurentSeriesLaurentSeriesSourceEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2c782bb7017d8b673e57ef41bf349b892c94a13e`.

Source path: `GRWTSK/Topology/GeneralTopology/LaurentSeries/Variant189a67af10d0d324ae1c76f266004578a6877d47cfdde1fff730a85717cf16ae.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/LaurentSeries/Variant189a67af10d0d324ae1c76f266004578a6877d47cfdde1fff730a85717cf16ae.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Int.Interval` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.RatFunc.AsPolynomial` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Binomial` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.HahnSeries.PowerSeries` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.HahnSeries.Summable` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.PowerSeries.Inverse` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.PowerSeries.Trunc` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.FractionRing` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UniformSpace.DiscreteUniformity` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Int.TypeTags` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [LaurentSeries](../../../../CommutativeAlgebra/RingTheoryLaurentSeriesLaurentSeriesSourceEdition2.lean/declarations/laurentseries.md) | 98 | `declaration-track:089a66c4efe63815928dc6868bced89bb6b7a16697d53344967516e38d195ce0` |
| 2 | `def` | [hasseDeriv](../../../../CommutativeAlgebra/RingTheoryLaurentSeriesLaurentSeriesSourceEdition2.lean/declarations/hassederiv.md) | 115 | `declaration-track:4fa9030135b779877f3827ba70daefc6d0c703d0f946a3744eb94501101968b1` |
| 3 | `theorem` | [hasseDeriv_coeff](../../../../CommutativeAlgebra/RingTheoryLaurentSeriesLaurentSeriesSourceEdition2.lean/declarations/hassederiv-coeff.md) | 130 | `result-track:0014f863ff6c14d616519d5b7261c630ca9c24937756060c26040c4a1a282988` |
| 4 | `theorem` | [hasseDeriv_zero](../../../../CommutativeAlgebra/RingTheoryLaurentSeriesLaurentSeriesSourceEdition2.lean/declarations/hassederiv-zero.md) | 135 | `result-track:41f01854d38763b93c4e9277187ea35d215e8afb6a1191d42462bafcd98ea3e9` |
| 5 | `theorem` | [hasseDeriv_single_add](../../../../CommutativeAlgebra/RingTheoryLaurentSeriesLaurentSeriesSourceEdition2.lean/declarations/hassederiv-single-add.md) | 139 | `result-track:7125234c75276f511e26d8701f18e59136dedbdb6f7b8d6b2e4ca9a1c1dd3381` |
| 6 | `theorem` | [hasseDeriv_single](../../../../CommutativeAlgebra/RingTheoryLaurentSeriesLaurentSeriesSourceEdition2.lean/declarations/hassederiv-single.md) | 148 | `result-track:7845edd8dc5ae591899a090888266a12d2414539f7f1c406241150b71c2223d2` |
| 7 | `theorem` | [hasseDeriv_comp_coeff](../../../../CommutativeAlgebra/RingTheoryLaurentSeriesLaurentSeriesSourceEdition2.lean/declarations/hassederiv-comp-coeff.md) | 152 | `result-track:cf4381388f5c3b9c6415ff899507b8542f67ce886b3b78084b09b6b86a2c8fca` |
| 8 | `theorem` | [hasseDeriv_comp](../../../../CommutativeAlgebra/RingTheoryLaurentSeriesLaurentSeriesSourceEdition2.lean/declarations/hassederiv-comp.md) | 161 | `result-track:cde7f4d082c5aa0e6093f379a88bbb5957cfd80c784ebb3a0ee2ef630e775e66` |
| 9 | `def` | [derivative](../../../../CommutativeAlgebra/RingTheoryLaurentSeriesLaurentSeriesSourceEdition2.lean/declarations/derivative.md) | 167 | `declaration-track:fe050bcf4b80888403fd007247e5f9f0c56dbb2b07d99c86a183a04cdca2f86c` |
| 10 | `theorem` | [derivative_apply](../../../../CommutativeAlgebra/RingTheoryLaurentSeriesLaurentSeriesSourceEdition2.lean/declarations/derivative-apply.md) | 172 | `result-track:bcbf2bcf9ffc0acf302f85305711b88491aec819f1ce4d2a819d00522a3d6fc9` |
| 11 | `theorem` | [derivative_iterate](../../../../CommutativeAlgebra/RingTheoryLaurentSeriesLaurentSeriesSourceEdition2.lean/declarations/derivative-iterate.md) | 175 | `result-track:1c7508e7f2312020e4b4629d22f74815dbe00141c51137bacd8a6a9fa42463e0` |
| 12 | `theorem` | [derivative_iterate_coeff](../../../../CommutativeAlgebra/RingTheoryLaurentSeriesLaurentSeriesSourceEdition2.lean/declarations/derivative-iterate-coeff.md) | 185 | `result-track:da664838425232b86f5b508d61c7c54c384c32e9c45a1c588f2113ae2f4e268a` |
| 13 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryLaurentSeriesLaurentSeriesSourceEdition2.lean/declarations/instance-source-edition-6.md) | 196 | `declaration-track:9507c756c5b91860f72ea87a73e0f1a61c7c27c99aa53f95e36d2eb18d3aa13c` |
| 14 | `theorem` | [coeff_coe_powerSeries](../../../../CommutativeAlgebra/RingTheoryLaurentSeriesLaurentSeriesSourceEdition2.lean/declarations/coeff-coe-powerseries.md) | 200 | `result-track:688daa3397eddb2a99e8036576eb5837d90499573659b84dd7c720d655d0a2d2` |
| 15 | `def` | [powerSeriesPart](../../../../CommutativeAlgebra/RingTheoryLaurentSeriesLaurentSeriesSourceEdition2.lean/declarations/powerseriespart.md) | 207 | `declaration-track:b589889a665a9e47ce923a4d815ff9716358bab64d86a225fa3dc8f9faafccd4` |
| 16 | `theorem` | [powerSeriesPart_coeff](../../../../CommutativeAlgebra/RingTheoryLaurentSeriesLaurentSeriesSourceEdition2.lean/declarations/powerseriespart-coeff.md) | 211 | `result-track:61cba5f358308aefdbe3d97eea5b89fe858e2ada4b273710dbc6961b5d4c8c7e` |
| 17 | `theorem` | [powerSeriesPart_zero](../../../../CommutativeAlgebra/RingTheoryLaurentSeriesLaurentSeriesSourceEdition2.lean/declarations/powerseriespart-zero.md) | 216 | `result-track:38d646e97df83c5f0a2c634b12b2e01684ff2ed4ce90998c7ec64c8a64a031f1` |
| 18 | `theorem` | [powerSeriesPart_eq_zero](../../../../CommutativeAlgebra/RingTheoryLaurentSeriesLaurentSeriesSourceEdition2.lean/declarations/powerseriespart-eq-zero.md) | 221 | `result-track:fcdcdf5f8c5468ec9e578dc6510d70424089255644aff274d397ebb8e25a2e62` |
| 19 | `theorem` | [single_order_mul_powerSeriesPart](../../../../CommutativeAlgebra/RingTheoryLaurentSeriesLaurentSeriesSourceEdition2.lean/declarations/single-order-mul-powerseriespart.md) | 233 | `result-track:3042f642cb75570cffdd497375c4f5b00df15d28a987b75647cd7df720564ca4` |
| 20 | `theorem` | [ofPowerSeries_powerSeriesPart](../../../../CommutativeAlgebra/RingTheoryLaurentSeriesLaurentSeriesSourceEdition2.lean/declarations/ofpowerseries-powerseriespart.md) | 250 | `result-track:1cec3dc56db6fa840d36251e8b7c6c497199d0c1535c72de35ea2274ff2842be` |
| 21 | `theorem` | [X_order_mul_powerSeriesPart](../../../../CommutativeAlgebra/RingTheoryLaurentSeriesLaurentSeriesSourceEdition2.lean/declarations/x-order-mul-powerseriespart.md) | 255 | `result-track:edfb080ccbedbbba6ecd09fa384f31776427a9f8695ef83f6b9391c804acb4a1` |
| 22 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryLaurentSeriesLaurentSeriesSourceEdition2.lean/declarations/instance-source-edition-10.md) | 262 | `declaration-track:c4c5f05d30c661bcf470adb9755a43763e44cd914a1923f7426de7c9dd3e08e4` |
| 23 | `theorem` | [coe_algebraMap](../../../../CommutativeAlgebra/RingTheoryLaurentSeriesLaurentSeriesSourceEdition2.lean/declarations/coe-algebramap.md) | 265 | `result-track:d66069e65b6fe349c4036f42d659ee8fc569a53fdbe853e20760f87fc89122d4` |
| 24 | `instance` | [of_powerSeries_localization](../../../../CommutativeAlgebra/RingTheoryLaurentSeriesLaurentSeriesSourceEdition2.lean/declarations/of-powerseries-localization.md) | 271 | `declaration-track:885c661963cf5784e5af40db7e3d37ea3e01ebbfcb739870ad906e36a8b3dc0b` |
| 25 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryLaurentSeriesLaurentSeriesSourceEdition2.lean/declarations/instance-source-edition-8.md) | 296 | `declaration-track:a9ad1aa1e004a41f08948c1ca459b68309244382cca5956a4ac86c137d285864` |
| 26 | `theorem` | [coe_zero](../../../../CommutativeAlgebra/RingTheoryLaurentSeriesLaurentSeriesSourceEdition2.lean/declarations/coe-zero-source-edition-2.md) | 310 | `result-track:59b8ed20b8b228b3f7556004318093645f423bde668917f031c98d9ac6647ea0` |
| 27 | `theorem` | [coe_one](../../../../CommutativeAlgebra/RingTheoryLaurentSeriesLaurentSeriesSourceEdition2.lean/declarations/coe-one.md) | 314 | `result-track:99509be0229fad2fe4b14a0a31a5729cd7b4ce32c8951ad09dff023b0a7ed6d1` |
| 28 | `theorem` | [coe_add](../../../../CommutativeAlgebra/RingTheoryLaurentSeriesLaurentSeriesSourceEdition2.lean/declarations/coe-add-source-edition-2.md) | 318 | `result-track:9d8308841bc7e1dcfb669189c26ef7a4a24fc9993b154a30ee189fa98e0c5dad` |
| 29 | `theorem` | [coe_sub](../../../../CommutativeAlgebra/RingTheoryLaurentSeriesLaurentSeriesSourceEdition2.lean/declarations/coe-sub-source-edition-2.md) | 322 | `result-track:fc27fbd167d9556089fe1c9c50714722defcfc9a49e3617dd149d1f960bfa65e` |
| 30 | `theorem` | [coe_neg](../../../../CommutativeAlgebra/RingTheoryLaurentSeriesLaurentSeriesSourceEdition2.lean/declarations/coe-neg.md) | 326 | `result-track:062edff867dd04427a90259f3ae4fd67a4a7acd179c7ed1b73c5d08fb892e5be` |
| 31 | `theorem` | [coe_mul](../../../../CommutativeAlgebra/RingTheoryLaurentSeriesLaurentSeriesSourceEdition2.lean/declarations/coe-mul-source-edition-2.md) | 330 | `result-track:8949166522bcaec5b12dc198df84aec455ee820734ce5f4d558f3a1f4c722fcd` |
| 32 | `theorem` | [coeff_coe](../../../../CommutativeAlgebra/RingTheoryLaurentSeriesLaurentSeriesSourceEdition2.lean/declarations/coeff-coe.md) | 333 | `result-track:14df3c48b7e8452d8a99db0c37b3e3de01516786ac5283f851cbe0d047feac7f` |
| 33 | `theorem` | [coe_C](../../../../CommutativeAlgebra/RingTheoryLaurentSeriesLaurentSeriesSourceEdition2.lean/declarations/coe-c-source-edition-2.md) | 344 | `result-track:50acb906fae0186c128912b042d11bccc1a3e5b3770778addc112a63b63acfc6` |
| 34 | `theorem` | [coe_X](../../../../CommutativeAlgebra/RingTheoryLaurentSeriesLaurentSeriesSourceEdition2.lean/declarations/coe-x-source-edition-2.md) | 347 | `result-track:bfd4ce40f00be69a5a340039b5e819c871040f3499d7e9693a3fe197f676d19e` |
| 35 | `theorem` | [coe_smul](../../../../CommutativeAlgebra/RingTheoryLaurentSeriesLaurentSeriesSourceEdition2.lean/declarations/coe-smul-source-edition-2.md) | 351 | `result-track:aa2f7a6fc94aad848fee0c5bc9a02562a256ca538d99bbdff29afc18f3a97664` |
| 36 | `theorem` | [coe_pow](../../../../CommutativeAlgebra/RingTheoryLaurentSeriesLaurentSeriesSourceEdition2.lean/declarations/coe-pow-source-edition-2.md) | 357 | `result-track:fef0ac33839282ef8fd2783db84685b37917be33df8b6f128cbfeee3f82f0266` |
| 37 | `def` | [coeAlgHom](../../../../CommutativeAlgebra/RingTheoryLaurentSeriesLaurentSeriesSourceEdition2.lean/declarations/coealghom.md) | 369 | `declaration-track:cc251ce7116e6d6cf11cb80cf31ba67a10d9c8feaaa9a87c6fab5be7bdac9d6f` |
| 38 | `def` | [coeToLaurentSeries_fun](../../../../CommutativeAlgebra/RingTheoryLaurentSeriesLaurentSeriesSourceEdition2.lean/declarations/coetolaurentseries-fun.md) | 379 | `declaration-track:353d09712d2dd1d8eb42d25925eceba08ce17e4539b97ead657c08282b89c7fd` |
| 39 | `instance` | [coeToLaurentSeries](../../../../CommutativeAlgebra/RingTheoryLaurentSeriesLaurentSeriesSourceEdition2.lean/declarations/coetolaurentseries.md) | 382 | `declaration-track:7d739bf53d3bbecbfadd9f4135494e7005df897364daab4e557eb70bbbc437d8` |
| 40 | `theorem` | [coe_def](../../../../CommutativeAlgebra/RingTheoryLaurentSeriesLaurentSeriesSourceEdition2.lean/declarations/coe-def.md) | 385 | `result-track:85744273f6c8d17244253adcafedcf00eb3b4ddace6f7f419789d09cc7932caa` |
| 41 | `theorem` | [coe_num_denom](../../../../CommutativeAlgebra/RingTheoryLaurentSeriesLaurentSeriesSourceEdition2.lean/declarations/coe-num-denom.md) | 390 | `result-track:a9adbfcbf111e9c598bf6530d162b28401c10d47a3e4efd7e9e6c36d7faf2b93` |
| 42 | `theorem` | [coe_injective](../../../../CommutativeAlgebra/RingTheoryLaurentSeriesLaurentSeriesSourceEdition2.lean/declarations/coe-injective.md) | 393 | `result-track:98bc439dab3152b272ed2f2ad1b3009f397f4db001d7984cb128c345c1647ebc` |
| 43 | `theorem` | [coe_apply](../../../../CommutativeAlgebra/RingTheoryLaurentSeriesLaurentSeriesSourceEdition2.lean/declarations/coe-apply.md) | 399 | `result-track:259c73c871f7758c8eb1e62eb7353689b9725ef1702f99f89b82bb22fc1865f9` |
| 44 | `theorem` | [coe_coe](../../../../CommutativeAlgebra/RingTheoryLaurentSeriesLaurentSeriesSourceEdition2.lean/declarations/coe-coe.md) | 403 | `result-track:88ea955a79fa635cfe6b456bff37c00989f6b8d7714db318fb526bc1c27def47` |
| 45 | `theorem` | [coe_zero](../../../../CommutativeAlgebra/RingTheoryLaurentSeriesLaurentSeriesSourceEdition2.lean/declarations/coe-zero.md) | 407 | `result-track:103d7c093f9b6b66c278081557715e92866780ff6a0855913e9654bed8c7a601` |
| 46 | `theorem` | [coe_ne_zero](../../../../CommutativeAlgebra/RingTheoryLaurentSeriesLaurentSeriesSourceEdition2.lean/declarations/coe-ne-zero.md) | 410 | `result-track:9286c4571c0ced1321d25b1c0c45b20d50267b97bf13ac11ae711c90a252a7f8` |
| 47 | `theorem` | [coe_one](../../../../CommutativeAlgebra/RingTheoryLaurentSeriesLaurentSeriesSourceEdition2.lean/declarations/coe-one-source-edition-2.md) | 414 | `result-track:ecc7701dd91947bccef2e63b507d8e515d44deaa048ef048ed2727f38b520693` |
| 48 | `theorem` | [coe_add](../../../../CommutativeAlgebra/RingTheoryLaurentSeriesLaurentSeriesSourceEdition2.lean/declarations/coe-add.md) | 418 | `result-track:4ee71371cfc0613d9dc836bacd7154a01300953afbb7eb9b07db1566ce34fa91` |
| 49 | `theorem` | [coe_sub](../../../../CommutativeAlgebra/RingTheoryLaurentSeriesLaurentSeriesSourceEdition2.lean/declarations/coe-sub.md) | 422 | `result-track:17b7481213decb8625f34e148d4224e27fc4fbd1e8e437e923016916a2be8625` |
| 50 | `theorem` | [coe_neg](../../../../CommutativeAlgebra/RingTheoryLaurentSeriesLaurentSeriesSourceEdition2.lean/declarations/coe-neg-source-edition-2.md) | 426 | `result-track:1a82af5ae461896dc14a51ae8ff6abb702673a340a580ea3602b479ac2deff29` |
| 51 | `theorem` | [coe_mul](../../../../CommutativeAlgebra/RingTheoryLaurentSeriesLaurentSeriesSourceEdition2.lean/declarations/coe-mul.md) | 430 | `result-track:3e6aa53da1f392dd442b2c5e3925b6bd840a03c408b570872225a8e8260e25eb` |
| 52 | `theorem` | [coe_pow](../../../../CommutativeAlgebra/RingTheoryLaurentSeriesLaurentSeriesSourceEdition2.lean/declarations/coe-pow.md) | 434 | `result-track:7c5741453ef91200f310fb934ca0b405260484b7b5eadaa404b064e1a45307da` |
| 53 | `theorem` | [coe_div](../../../../CommutativeAlgebra/RingTheoryLaurentSeriesLaurentSeriesSourceEdition2.lean/declarations/coe-div.md) | 438 | `result-track:f419ed60c8073640a2028a743707022e92b6056253c426472cb9fb7ff1721a19` |
| 54 | `theorem` | [coe_C](../../../../CommutativeAlgebra/RingTheoryLaurentSeriesLaurentSeriesSourceEdition2.lean/declarations/coe-c.md) | 442 | `result-track:38aac5f4a3d6cad2ab9e9f128a2db63928d944bd755246d04d916b1175e3202c` |
| 55 | `theorem` | [coe_smul](../../../../CommutativeAlgebra/RingTheoryLaurentSeriesLaurentSeriesSourceEdition2.lean/declarations/coe-smul.md) | 450 | `result-track:04d7506227b6c75b79ff28ab9e921f2ba9c4a5dce2c606cac7e2a3eb20ab3919` |
| 56 | `theorem` | [coe_X](../../../../CommutativeAlgebra/RingTheoryLaurentSeriesLaurentSeriesSourceEdition2.lean/declarations/coe-x.md) | 456 | `result-track:4ac58820935220a8a6490cd0453dcbf9caf7c84a6813cb5bac3de4b5613e099d` |
| 57 | `theorem` | [single_one_eq_pow](../../../../CommutativeAlgebra/RingTheoryLaurentSeriesLaurentSeriesSourceEdition2.lean/declarations/single-one-eq-pow.md) | 460 | `result-track:08e847506470ac2fbbdb7778fd84994fe9be8cf0799b98d14ebd1e2d186ebb2f` |
| 58 | `theorem` | [single_inv](../../../../CommutativeAlgebra/RingTheoryLaurentSeriesLaurentSeriesSourceEdition2.lean/declarations/single-inv.md) | 467 | `result-track:60250a37798e5ed5e2991f4d62fe358c21aa090a9c9513b047a47a4364962931` |
| 59 | `theorem` | [single_zpow](../../../../CommutativeAlgebra/RingTheoryLaurentSeriesLaurentSeriesSourceEdition2.lean/declarations/single-zpow.md) | 472 | `result-track:8ea276d16a3bc251e756e36ac2b7abc009d2bf6c49b319d06abef8e8ecf4a622` |
| 60 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryLaurentSeriesLaurentSeriesSourceEdition2.lean/declarations/instance-source-edition-3.md) | 480 | `declaration-track:59565624d0924c6dc6fec9c7ebdba18e1c9e3e3ca18a67c34a9f1a02cb858a48` |
| 61 | `theorem` | [algebraMap_apply_div](../../../../CommutativeAlgebra/RingTheoryLaurentSeriesLaurentSeriesSourceEdition2.lean/declarations/algebramap-apply-div.md) | 482 | `result-track:695fc454684ff004a8603669b83352e19459cf1e062e6f2baadea2a543e0baf4` |
| 62 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryLaurentSeriesLaurentSeriesSourceEdition2.lean/declarations/instance-source-edition-4.md) | 489 | `declaration-track:6c665daab61882766d729ba02f4ccbcf9bb9ecf29122325c07e40ab4e08830f5` |
| 63 | `def` | [idealX](../../../../CommutativeAlgebra/RingTheoryLaurentSeriesLaurentSeriesSourceEdition2.lean/declarations/idealx.md) | 503 | `declaration-track:0ebbfd42eee0c9a353c9257e5f329cd4a0180cd3b81b48b55e480827f5872954` |
| 64 | `theorem` | [intValuation_eq_of_coe](../../../../CommutativeAlgebra/RingTheoryLaurentSeriesLaurentSeriesSourceEdition2.lean/declarations/intvaluation-eq-of-coe.md) | 514 | `result-track:dbb1892d1710f776c52490dd35f618248736b943cdf471d0c0647528ad96e91a` |
| 65 | `theorem` | [intValuation_X](../../../../CommutativeAlgebra/RingTheoryLaurentSeriesLaurentSeriesSourceEdition2.lean/declarations/intvaluation-x.md) | 540 | `result-track:cf4fbee34e91956214380535934d847df5af47d0f70bb3bd2ab9894b3555b3c4` |
| 66 | `theorem` | [valuation_eq_LaurentSeries_valuation](../../../../CommutativeAlgebra/RingTheoryLaurentSeriesLaurentSeriesSourceEdition2.lean/declarations/valuation-eq-laurentseries-valuation.md) | 551 | `result-track:7b37fcd55398194bcff5d81037d444b3a8911b180b734aa1e46222feeeb112ee` |
| 67 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryLaurentSeriesLaurentSeriesSourceEdition2.lean/declarations/instance-source-edition-7.md) | 569 | `declaration-track:97ebd99ebe390b1c69aeab5c2a87ce2409a88db83f40d9fedd0dd8aa7d454dbe` |
| 68 | `lemma` | [valuation_def](../../../../CommutativeAlgebra/RingTheoryLaurentSeriesLaurentSeriesSourceEdition2.lean/declarations/valuation-def.md) | 571 | `result-track:b5bc847e20bf079e8df9732a39311503607ff8add963d5391adb4cb2ca91ce43` |
| 69 | `theorem` | [valuation_X_pow](../../../../CommutativeAlgebra/RingTheoryLaurentSeriesLaurentSeriesSourceEdition2.lean/declarations/valuation-x-pow.md) | 573 | `result-track:ff1ac1d719fb59ddf6f7dc53f06168cf0482f5b7d4262984cfa37e2a955dd580` |
| 70 | `theorem` | [valuation_single_zpow](../../../../CommutativeAlgebra/RingTheoryLaurentSeriesLaurentSeriesSourceEdition2.lean/declarations/valuation-single-zpow.md) | 579 | `result-track:5c6037a39a20d069a60d13339613938a8dd78f27550175bfcb0b62d00cdf4ea3` |
| 71 | `theorem` | [coeff_zero_of_lt_intValuation](../../../../CommutativeAlgebra/RingTheoryLaurentSeriesLaurentSeriesSourceEdition2.lean/declarations/coeff-zero-of-lt-intvaluation.md) | 594 | `result-track:7c02f7bf18dbc7c9a5d0cfd5cff68ae2db275308143f1e966f0bbceab395d3aa` |
| 72 | `theorem` | [intValuation_le_iff_coeff_lt_eq_zero](../../../../CommutativeAlgebra/RingTheoryLaurentSeriesLaurentSeriesSourceEdition2.lean/declarations/intvaluation-le-iff-coeff-lt-eq-zero.md) | 604 | `result-track:3bf3c64cd5b91ffa24902b378dc75579160c552e0a3211111db8d00dc464a5fe` |
| 73 | `theorem` | [coeff_zero_of_lt_valuation](../../../../CommutativeAlgebra/RingTheoryLaurentSeriesLaurentSeriesSourceEdition2.lean/declarations/coeff-zero-of-lt-valuation.md) | 614 | `result-track:626bda6c0f830031212b73562ffd24832c70913a0a2503e878af766569447f2e` |
| 74 | `theorem` | [valuation_le_iff_coeff_lt_eq_zero](../../../../CommutativeAlgebra/RingTheoryLaurentSeriesLaurentSeriesSourceEdition2.lean/declarations/valuation-le-iff-coeff-lt-eq-zero.md) | 642 | `result-track:2069a13673c829cb51928e7bc8e29642139c4b4592f41216e2a875ab0614aa50` |
| 75 | `theorem` | [eq_coeff_of_valuation_sub_lt](../../../../CommutativeAlgebra/RingTheoryLaurentSeriesLaurentSeriesSourceEdition2.lean/declarations/eq-coeff-of-valuation-sub-lt.md) | 684 | `result-track:41e02be35f5e0705b3e41852aa46bb934f3197eb4dbaab00135a4cbb205f8dee` |
| 76 | `theorem` | [val_le_one_iff_eq_coe](../../../../CommutativeAlgebra/RingTheoryLaurentSeriesLaurentSeriesSourceEdition2.lean/declarations/val-le-one-iff-eq-coe.md) | 694 | `result-track:ccd760036fcadd378ddd9177798c4120f9dc816df15af123963a4b4aed952eec` |
| 77 | `theorem` | [uniformContinuous_coeff](../../../../CommutativeAlgebra/RingTheoryLaurentSeriesLaurentSeriesSourceEdition2.lean/declarations/uniformcontinuous-coeff.md) | 724 | `result-track:58d93c3fc07a86a4a238aab49df7ed65c5d88033a2760ee9d395510b1efb0765` |
| 78 | `def` | [Cauchy.coeff](../../../../CommutativeAlgebra/RingTheoryLaurentSeriesLaurentSeriesSourceEdition2.lean/declarations/cauchy-coeff.md) | 736 | `declaration-track:6fdb473fb46a7634be99a93d81dd4a2ce94ecc6ee17184a02e6d039ecfc5a418` |
| 79 | `theorem` | [Cauchy.coeff_tendsto](../../../../CommutativeAlgebra/RingTheoryLaurentSeriesLaurentSeriesSourceEdition2.lean/declarations/cauchy-coeff-tendsto.md) | 740 | `result-track:c8361ba5739e0caa9a2f69cf03c365f89d6331240c2cd4821bc2fa16c88c7e3e` |
| 80 | `lemma` | [Cauchy.exists_lb_eventual_support](../../../../CommutativeAlgebra/RingTheoryLaurentSeriesLaurentSeriesSourceEdition2.lean/declarations/cauchy-exists-lb-eventual-support.md) | 755 | `result-track:6fd153fdf0a6481662d8c1fd70cc2b953035127a95100a90664878ebcb50b7f3` |
| 81 | `theorem` | [Cauchy.exists_lb_support](../../../../CommutativeAlgebra/RingTheoryLaurentSeriesLaurentSeriesSourceEdition2.lean/declarations/cauchy-exists-lb-support.md) | 784 | `result-track:482efc5f8cdeb46219d1c0ed30bbfbfb23308b9be407c25d5d3f821a65b7a204` |
| 82 | `theorem` | [Cauchy.coeff_support_bddBelow](../../../../CommutativeAlgebra/RingTheoryLaurentSeriesLaurentSeriesSourceEdition2.lean/declarations/cauchy-coeff-support-bddbelow.md) | 794 | `result-track:64265805c374d9e285c76942be8b030e952edeca7afe54d5ab76c7078a068641` |
| 83 | `def` | [Cauchy.limit](../../../../CommutativeAlgebra/RingTheoryLaurentSeriesLaurentSeriesSourceEdition2.lean/declarations/cauchy-limit.md) | 804 | `declaration-track:6e43e172b8492715bfa899ee4816e3b2767caad3a38afe24fbe3795292102d5b` |
| 84 | `theorem` | [Cauchy.exists_lb_coeff_ne](../../../../CommutativeAlgebra/RingTheoryLaurentSeriesLaurentSeriesSourceEdition2.lean/declarations/cauchy-exists-lb-coeff-ne.md) | 810 | `result-track:eca11ddf7a49135ae055ef7ef8c30ea00d431df011b80456b9ae13c1ec35b4c2` |
| 85 | `theorem` | [Cauchy.coeff_eventually_equal](../../../../CommutativeAlgebra/RingTheoryLaurentSeriesLaurentSeriesSourceEdition2.lean/declarations/cauchy-coeff-eventually-equal.md) | 818 | `result-track:47b06ddc0e201d87e749e0feb106a7ab1f92767dece2ec8f7127d5437078e466` |
| 86 | `theorem` | [Cauchy.eventually_mem_nhds](../../../../CommutativeAlgebra/RingTheoryLaurentSeriesLaurentSeriesSourceEdition2.lean/declarations/cauchy-eventually-mem-nhds.md) | 855 | `result-track:b5ba5eeec8cfe3645692ecc020dd7625abe90332f01e944086d6e82eab2aba41` |
| 87 | `instance` | [instLaurentSeriesComplete](../../../../CommutativeAlgebra/RingTheoryLaurentSeriesLaurentSeriesSourceEdition2.lean/declarations/instlaurentseriescomplete.md) | 872 | `declaration-track:17bab59c979194a81d57325343559b7c0d748466f3ffc5b009415fdd8e399951` |
| 88 | `theorem` | [exists_Polynomial_intValuation_lt](../../../../CommutativeAlgebra/RingTheoryLaurentSeriesLaurentSeriesSourceEdition2.lean/declarations/exists-polynomial-intvaluation-lt.md) | 883 | `result-track:d635f79fff2552ea2063fa19596ec8f131c02c93b98939e1b01ee575a1eee5a5` |
| 89 | `theorem` | [exists_ratFunc_val_lt](../../../../CommutativeAlgebra/RingTheoryLaurentSeriesLaurentSeriesSourceEdition2.lean/declarations/exists-ratfunc-val-lt.md) | 910 | `result-track:1e9adb59a3a8419ec82d4ce371ff51ef821e4de6960b951803f477626f07906b` |
| 90 | `theorem` | [coe_range_dense](../../../../CommutativeAlgebra/RingTheoryLaurentSeriesLaurentSeriesSourceEdition2.lean/declarations/coe-range-dense.md) | 938 | `result-track:f06db2776c6a0d112c57f29b09b4762cd345101ff780e95feba0498a91ef35e6` |
| 91 | `theorem` | [inducing_coe](../../../../CommutativeAlgebra/RingTheoryLaurentSeriesLaurentSeriesSourceEdition2.lean/declarations/inducing-coe.md) | 959 | `result-track:75ef80ea24dfd747a155a2fbfb0ee1b85511715da9bbd1d066c28815ba22457f` |
| 92 | `theorem` | [continuous_coe](../../../../CommutativeAlgebra/RingTheoryLaurentSeriesLaurentSeriesSourceEdition2.lean/declarations/continuous-coe.md) | 987 | `result-track:8daf3a13b7033ef6023f785e0f3e3a598c732d5766923f6f429a4fb3da6c8895` |
| 93 | `abbrev` | [ratfuncAdicComplPkg](../../../../CommutativeAlgebra/RingTheoryLaurentSeriesLaurentSeriesSourceEdition2.lean/declarations/ratfuncadiccomplpkg.md) | 991 | `declaration-track:d2113f596346189be462cfb88190aa81f5b7d249983552a73d4a7752234131d9` |
| 94 | `def` | [LaurentSeriesPkg](../../../../CommutativeAlgebra/RingTheoryLaurentSeriesLaurentSeriesSourceEdition2.lean/declarations/laurentseriespkg.md) | 997 | `declaration-track:f61a0cae27368ebc0a6acd47dd5a83dae3159e7d1ca94ca85c45189bf6cb8948` |
| 95 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryLaurentSeriesLaurentSeriesSourceEdition2.lean/declarations/instance-source-edition-9.md) | 1006 | `declaration-track:b3148f7d4412adceb46343533012ca6fe627ee23f9645fec6166991df0466cf2` |
| 96 | `theorem` | [LaurentSeries_coe](../../../../CommutativeAlgebra/RingTheoryLaurentSeriesLaurentSeriesSourceEdition2.lean/declarations/laurentseries-coe.md) | 1010 | `result-track:a1332f19d90fc594308b051a23acb858ff0092e7f901dfd1091aa1800d614b16` |
| 97 | `abbrev` | [extensionAsRingHom](../../../../CommutativeAlgebra/RingTheoryLaurentSeriesLaurentSeriesSourceEdition2.lean/declarations/extensionasringhom.md) | 1014 | `declaration-track:0c678b317dff829b0e1bd23dee2386a0988fbd915b86f9f195049cc6c6a31476` |
| 98 | `abbrev` | [RatFuncAdicCompl](../../../../CommutativeAlgebra/RingTheoryLaurentSeriesLaurentSeriesSourceEdition2.lean/declarations/ratfuncadiccompl.md) | 1018 | `declaration-track:bafff85b2ff5bfe3782285a389946e47ae6a274a30fe213efca1e108b74a790b` |
| 99 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryLaurentSeriesLaurentSeriesSourceEdition2.lean/declarations/instance.md) | 1021 | `declaration-track:0362370055daf45a8475aa0cd15ac66aaa2655c2481ce13c4dc2f5575bdbf1de` |
| 100 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryLaurentSeriesLaurentSeriesSourceEdition2.lean/declarations/instance-source-edition-5.md) | 1022 | `declaration-track:73ebf0ff943bed10acb188f1b178a95d3b7023ab808d7e600a101f03a7900193` |
| 101 | `abbrev` | [comparePkg](../../../../CommutativeAlgebra/RingTheoryLaurentSeriesLaurentSeriesSourceEdition2.lean/declarations/comparepkg.md) | 1025 | `declaration-track:433fd4672fbf837ba6fc02675d471f6ccc0932425713db248f16bd6edf0a1d57` |
| 102 | `lemma` | [comparePkg_eq_extension](../../../../CommutativeAlgebra/RingTheoryLaurentSeriesLaurentSeriesSourceEdition2.lean/declarations/comparepkg-eq-extension.md) | 1028 | `result-track:36ebc99f2d05b98adfb1f6a821481610897c16c674fdff771937a14812f7db48` |
| 103 | `abbrev` | [ratfuncAdicComplRingEquiv](../../../../CommutativeAlgebra/RingTheoryLaurentSeriesLaurentSeriesSourceEdition2.lean/declarations/ratfuncadiccomplringequiv.md) | 1033 | `declaration-track:f2424350e2cbfaffe627728ee7841549d83597bf43ffbec3cb9ce0a63e14c0ce` |
| 104 | `abbrev` | [LaurentSeriesRingEquiv](../../../../CommutativeAlgebra/RingTheoryLaurentSeriesLaurentSeriesSourceEdition2.lean/declarations/laurentseriesringequiv.md) | 1046 | `declaration-track:ca40fa2dc5873ab638dbb4d413937919b50d8eb07b2cca10b7a5ad25454e21fc` |
| 105 | `lemma` | [LaurentSeriesRingEquiv_def](../../../../CommutativeAlgebra/RingTheoryLaurentSeriesLaurentSeriesSourceEdition2.lean/declarations/laurentseriesringequiv-def.md) | 1050 | `result-track:056a0e532013bb773d568e0fe569058e0f06c537cfa664afbaf0886c94225c5f` |
| 106 | `theorem` | [ratfuncAdicComplRingEquiv_apply](../../../../CommutativeAlgebra/RingTheoryLaurentSeriesLaurentSeriesSourceEdition2.lean/declarations/ratfuncadiccomplringequiv-apply.md) | 1055 | `result-track:cc491b55bcb2a117b9f7e2f8c67050ca0c90e7c5ee1763624a13de5be183210f` |
| 107 | `theorem` | [coe_X_compare](../../../../CommutativeAlgebra/RingTheoryLaurentSeriesLaurentSeriesSourceEdition2.lean/declarations/coe-x-compare.md) | 1058 | `result-track:13850095249d9f290ad204187ccf8f5465932783f0dffa6796bc6924f6768f8b` |
| 108 | `theorem` | [algebraMap_apply](../../../../CommutativeAlgebra/RingTheoryLaurentSeriesLaurentSeriesSourceEdition2.lean/declarations/algebramap-apply.md) | 1064 | `result-track:4dbd957c89ee4f9866e9cd6f20c1d04db4188262d25d3c43e8b1b1d3fd99869f` |
| 109 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryLaurentSeriesLaurentSeriesSourceEdition2.lean/declarations/instance-source-edition-2.md) | 1067 | `declaration-track:369b0405b158b90cab79315b31155c3aa96119188f5d42211e67036f0d6a085d` |
| 110 | `def` | [LaurentSeriesAlgEquiv](../../../../CommutativeAlgebra/RingTheoryLaurentSeriesLaurentSeriesSourceEdition2.lean/declarations/laurentseriesalgequiv.md) | 1071 | `declaration-track:8ecf10a6f2766a4a73df2fc3dd8bc48f64ffd382a5a83ad096bae1a32ac654bc` |
| 111 | `theorem` | [valuation_LaurentSeries_equal_extension](../../../../CommutativeAlgebra/RingTheoryLaurentSeriesLaurentSeriesSourceEdition2.lean/declarations/valuation-laurentseries-equal-extension.md) | 1079 | `result-track:4b493e506ac05f814ef890862c4508269081b07f66d7843a3fd83aa4856d71b6` |
| 112 | `theorem` | [tendsto_valuation](../../../../CommutativeAlgebra/RingTheoryLaurentSeriesLaurentSeriesSourceEdition2.lean/declarations/tendsto-valuation.md) | 1087 | `result-track:672d0872a3dd307a74d3697ea2fa3af1a07ec3831c76a01cf20fbefdc51f13e3` |
| 113 | `theorem` | [valuation_compare](../../../../CommutativeAlgebra/RingTheoryLaurentSeriesLaurentSeriesSourceEdition2.lean/declarations/valuation-compare.md) | 1122 | `result-track:896ab6423501feb5aecbdcdcb8c2f9e41e8ab3d04aa455a730218be38834a8ec` |
| 114 | `abbrev` | [powerSeries_as_subring](../../../../CommutativeAlgebra/RingTheoryLaurentSeriesLaurentSeriesSourceEdition2.lean/declarations/powerseries-as-subring.md) | 1135 | `declaration-track:bb183da0474054551c3893f558755737516fe82a90a709f1a69e39153f578293` |
| 115 | `abbrev` | [powerSeriesEquivSubring](../../../../CommutativeAlgebra/RingTheoryLaurentSeriesLaurentSeriesSourceEdition2.lean/declarations/powerseriesequivsubring.md) | 1139 | `declaration-track:68c406d1b425b3b7a34629e8f405af719fd880f3942b560f60934f3bafbe9086` |
| 116 | `lemma` | [powerSeriesEquivSubring_apply](../../../../CommutativeAlgebra/RingTheoryLaurentSeriesLaurentSeriesSourceEdition2.lean/declarations/powerseriesequivsubring-apply.md) | 1143 | `result-track:a4636c673a9d11abb465566e58894cd557f8a7a2c725c45316760255f4b6a799` |
| 117 | `lemma` | [powerSeriesEquivSubring_coe_apply](../../../../CommutativeAlgebra/RingTheoryLaurentSeriesLaurentSeriesSourceEdition2.lean/declarations/powerseriesequivsubring-coe-apply.md) | 1148 | `result-track:55a89f5d9d10ca91f419912803d9345593c22f5fbd751c4b089b986cf8d5c936` |
| 118 | `theorem` | [mem_integers_of_powerSeries](../../../../CommutativeAlgebra/RingTheoryLaurentSeriesLaurentSeriesSourceEdition2.lean/declarations/mem-integers-of-powerseries.md) | 1154 | `result-track:af9660f22bd2fa08ac6b643eba35210dd1fe8911b5bb675387c2c92bf3ee1bd0` |
| 119 | `theorem` | [exists_powerSeries_of_memIntegers](../../../../CommutativeAlgebra/RingTheoryLaurentSeriesLaurentSeriesSourceEdition2.lean/declarations/exists-powerseries-of-memintegers.md) | 1163 | `result-track:8d06f9ac375f60f81cd85d71234dc20611a302424f5ab8d698161e2f370f84c3` |
| 120 | `theorem` | [powerSeries_ext_subring](../../../../CommutativeAlgebra/RingTheoryLaurentSeriesLaurentSeriesSourceEdition2.lean/declarations/powerseries-ext-subring.md) | 1173 | `result-track:8a86f9e6d04bc6e84ef9517217b3cabb65e1c18573bda5ec96ab879532cc6f70` |
| 121 | `abbrev` | [powerSeriesRingEquiv](../../../../CommutativeAlgebra/RingTheoryLaurentSeriesLaurentSeriesSourceEdition2.lean/declarations/powerseriesringequiv.md) | 1187 | `declaration-track:6342e089b6e310d3350af6bd3d49c2bcfaebb9ce04b31ee650dbb862a88c0a69` |
| 122 | `lemma` | [powerSeriesRingEquiv_coe_apply](../../../../CommutativeAlgebra/RingTheoryLaurentSeriesLaurentSeriesSourceEdition2.lean/declarations/powerseriesringequiv-coe-apply.md) | 1191 | `result-track:53e87361df8133e5ee7b67c3c2e2cd39a95845f0077c4fff86a5fa26c09b6a80` |
| 123 | `lemma` | [LaurentSeriesRingEquiv_mem_valuationSubring](../../../../CommutativeAlgebra/RingTheoryLaurentSeriesLaurentSeriesSourceEdition2.lean/declarations/laurentseriesringequiv-mem-valuationsubring.md) | 1195 | `result-track:0998ec9ad45d3104b03889942801f7c6f00279287569ae87987fea881424e1b9` |
| 124 | `lemma` | [algebraMap_C_mem_adicCompletionIntegers](../../../../CommutativeAlgebra/RingTheoryLaurentSeriesLaurentSeriesSourceEdition2.lean/declarations/algebramap-c-mem-adiccompletionintegers.md) | 1201 | `result-track:02fa0fa06b5cd8c6275d8db60296a46cf148e8bf8bb5ad8cb67c998cf2673a85` |
| 125 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryLaurentSeriesLaurentSeriesSourceEdition2.lean/declarations/instance-source-edition-11.md) | 1209 | `declaration-track:f5fb6db3c6c77d027c5059ea8b8848d21ec526dccb36a19478fc03cc98e387d2` |
| 126 | `def` | [powerSeriesAlgEquiv](../../../../CommutativeAlgebra/RingTheoryLaurentSeriesLaurentSeriesSourceEdition2.lean/declarations/powerseriesalgequiv.md) | 1216 | `declaration-track:48a8e6687dde5d5f2508bd9d61225048a9e1de72dc859a0d59d8b2e4fb47e306` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=402399042a39e385fdc079df56ca3c6f9ff051b170932a0330d19624ed25f2da -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/LaurentSeries/Variant189a67af10d0d324ae1c76f266004578a6877d47cfdde1fff730a85717cf16ae.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/LaurentSeries/Variant189a67af10d0d324ae1c76f266004578a6877d47cfdde1fff730a85717cf16ae.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
