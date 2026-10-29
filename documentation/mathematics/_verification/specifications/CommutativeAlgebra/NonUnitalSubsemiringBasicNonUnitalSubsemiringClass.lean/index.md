# Verification target: Non Unital Subsemiring Basic Non Unital Subsemiring Class

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c6d2bf85f55ab7f81d3c5e478f48fd8a325279d4",
  "lexical_observation_count": 155,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant70bf0fe1f8a9bda11aac2f249a0d5610bb110f5756986e2d16fc39bbfb458e11.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNonUnitalSubsemiringClass.lean/index.md) · [Full source](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNonUnitalSubsemiringClass.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c6d2bf85f55ab7f81d3c5e478f48fd8a325279d4`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant70bf0fe1f8a9bda11aac2f249a0d5610bb110f5756986e2d16fc39bbfb458e11.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant70bf0fe1f8a9bda11aac2f249a0d5610bb110f5756986e2d16fc39bbfb458e11.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Ring.Equiv` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Prod` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Finite` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Submonoid.Membership` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Subsemigroup.Membership` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Subsemigroup.Centralizer` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [NonUnitalSubsemiringClass](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNonUnitalSubsemiringClass.lean/declarations/nonunitalsubsemiringclass.md) | 32 | `declaration-track:96139aacf5fbce36beb443544396cffae0b9c2991641e357f5a91e56346032bd` |
| 2 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNonUnitalSubsemiringClass.lean/declarations/instance-source-edition-10.md) | 38 | `declaration-track:fff367cd32dffd0b6b956fe888a2753604140e2f478bf1af52fe5cf93abcc4de` |
| 3 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNonUnitalSubsemiringClass.lean/declarations/instance-source-edition-5.md) | 54 | `declaration-track:5d9ff5986881c67c3d5420d35b013047a567ff78a1d31e5719ea20dda80d8b66` |
| 4 | `instance` | [noZeroDivisors](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNonUnitalSubsemiringClass.lean/declarations/nozerodivisors.md) | 58 | `declaration-track:415e3383f78a906ad1915ca088920c03b59ffe3502b2ec347d138aa14b79b8ca` |
| 5 | `def` | [subtype](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNonUnitalSubsemiringClass.lean/declarations/subtype.md) | 64 | `declaration-track:b05041c45f2d1c3e7d47b164f69b7039b39d0f67689bcb81f521a73dce5e5fae` |
| 6 | `theorem` | [coeSubtype](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNonUnitalSubsemiringClass.lean/declarations/coesubtype.md) | 69 | `result-track:daacc25832a781cc5985778ed9c70f5e10514ab520f39ad35ad7a1b1de2e9c4a` |
| 7 | `instance` | [toNonUnitalSemiring](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNonUnitalSubsemiringClass.lean/declarations/tononunitalsemiring.md) | 74 | `declaration-track:4d5a20c56a7da1d382a0a73bb8ec3a348b60d06b3b3fce9e9fc45293fcb7c531` |
| 8 | `instance` | [toNonUnitalCommSemiring](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNonUnitalSubsemiringClass.lean/declarations/tononunitalcommsemiring.md) | 80 | `declaration-track:d9bf44bf1751cfe8702b02c4f53165844796387582553b6ab90071d7187d1660` |
| 9 | `structure` | [NonUnitalSubsemiring](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNonUnitalSubsemiringClass.lean/declarations/nonunitalsubsemiring.md) | 94 | `declaration-track:35fccc9ab09042bebd5388b9ea5325442142a078135925cefe5602e9171885dd` |
| 10 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNonUnitalSubsemiringClass.lean/declarations/instance-source-edition-9.md) | 106 | `declaration-track:eea6e8de74d9dd0ecde0ec4d63918b5c21df26f1b42a5faaf9a55d4198d75c62` |
| 11 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNonUnitalSubsemiringClass.lean/declarations/instance-source-edition-4.md) | 110 | `declaration-track:58145d2f63ce74b9bb32db8b5e3de2c3a4dd5806b3f5dd42e302e2937a8181ba` |
| 12 | `theorem` | [mem_carrier](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNonUnitalSubsemiringClass.lean/declarations/mem-carrier.md) | 115 | `result-track:c81f88fc6b2298d590427931675d6fbd12f328d2bd30904e32ecd40bf39f28fa` |
| 13 | `theorem` | [ext](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNonUnitalSubsemiringClass.lean/declarations/ext.md) | 121 | `result-track:f8d759590fd49e05a45141e5877cd6320e55cdc16fc61b0cf8c7a380578fe363` |
| 14 | `def` | [copy](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNonUnitalSubsemiringClass.lean/declarations/copy.md) | 127 | `declaration-track:200bd504ba3db7a0a342ac5dce480284aa4b054ebf2821de0bd1f08245a00dfe` |
| 15 | `theorem` | [coe_copy](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNonUnitalSubsemiringClass.lean/declarations/coe-copy.md) | 133 | `result-track:6dd100dec25870890fdaceb600ad9baad195e7ba35c8db30a6adf2f392928c84` |
| 16 | `theorem` | [copy_eq](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNonUnitalSubsemiringClass.lean/declarations/copy-eq.md) | 138 | `result-track:29249d9f7a8c242a9873a9d6fd0daad36fee28b3d7188b7d6ae98ecc671f6110` |
| 17 | `theorem` | [toSubsemigroup_injective](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNonUnitalSubsemiringClass.lean/declarations/tosubsemigroup-injective.md) | 142 | `result-track:790ff2075794f8627047729c242ef39c5bf36e523cf4bdb227c03e710fa4eabd` |
| 18 | `theorem` | [toSubsemigroup_strictMono](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNonUnitalSubsemiringClass.lean/declarations/tosubsemigroup-strictmono.md) | 148 | `result-track:cfb134be04f6ddfeffe522ee914c04862f4aee1bdcb99a31b4248f1e324d80f3` |
| 19 | `theorem` | [toSubsemigroup_mono](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNonUnitalSubsemiringClass.lean/declarations/tosubsemigroup-mono.md) | 153 | `result-track:e9303299ebbd792a1f24c7c70607d6917fa1bc3eb98618c7e996707b9a3e27e6` |
| 20 | `theorem` | [toAddSubmonoid_injective](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNonUnitalSubsemiringClass.lean/declarations/toaddsubmonoid-injective.md) | 157 | `result-track:6be5dbb4bc32b19045c999fedb25bd76aebc3ebf8e0690bd7fc1b44a69969acd` |
| 21 | `theorem` | [toAddSubmonoid_strictMono](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNonUnitalSubsemiringClass.lean/declarations/toaddsubmonoid-strictmono.md) | 163 | `result-track:f4bf6a3060bbf6a0716a4604ce5a678655ca970941c5e47111ef58fdf9d30f9a` |
| 22 | `theorem` | [toAddSubmonoid_mono](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNonUnitalSubsemiringClass.lean/declarations/toaddsubmonoid-mono.md) | 168 | `result-track:5daece36267401dc3b97016c0af9cd5d0bdfc78ef0635a7064cb14cf5e118325` |
| 23 | `def` | [mk'](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNonUnitalSubsemiringClass.lean/declarations/mk.md) | 174 | `declaration-track:b872db77ec3edba55ae1cb0c70f44a9ee93de4ece81f3b9aa3e9d8d9a6f265ae` |
| 24 | `theorem` | [coe_mk'](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNonUnitalSubsemiringClass.lean/declarations/coe-mk.md) | 183 | `result-track:76b1ad247283646afc1f193c0201e0a1b6f158a4ded03004bbbbb8dbaea1416e` |
| 25 | `theorem` | [mem_mk'](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNonUnitalSubsemiringClass.lean/declarations/mem-mk.md) | 189 | `result-track:4913a89a4cb5a3ced39ca8c36c30994a104f42dd5cdf9c98bf7d30311b148ff9` |
| 26 | `theorem` | [mk'_toSubsemigroup](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNonUnitalSubsemiringClass.lean/declarations/mk-tosubsemigroup.md) | 195 | `result-track:b17f1a238b4f2bfddc382a6515a298e25325919598612e8585d73c30b7640593` |
| 27 | `theorem` | [mk'_toAddSubmonoid](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNonUnitalSubsemiringClass.lean/declarations/mk-toaddsubmonoid.md) | 201 | `result-track:a68201522e8b2a0fd75120b3b5ceb930294b384e249f8bd35ced91df82b13b95` |
| 28 | `theorem` | [coe_zero](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNonUnitalSubsemiringClass.lean/declarations/coe-zero.md) | 214 | `result-track:b076dc47aacb93fddc8f999c85a3a8af07e0ad745ced5ac4486ceae04b2326c5` |
| 29 | `theorem` | [coe_add](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNonUnitalSubsemiringClass.lean/declarations/coe-add.md) | 219 | `result-track:f31aee100ab3cfff1e1218ff06fc6e7b23f59e7d624a50c0bbab70e9aae10bea` |
| 30 | `theorem` | [coe_mul](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNonUnitalSubsemiringClass.lean/declarations/coe-mul.md) | 224 | `result-track:11a0c4a809084f84040aaeabf9f233ef9ec51211ad5418270d7ddcb72981c2f2` |
| 31 | `theorem` | [mem_toSubsemigroup](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNonUnitalSubsemiringClass.lean/declarations/mem-tosubsemigroup.md) | 232 | `result-track:4ac200d75ac77a657286211405139c71ac1b121986cdd63b7dbc4f01c4debdd5` |
| 32 | `theorem` | [coe_toSubsemigroup](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNonUnitalSubsemiringClass.lean/declarations/coe-tosubsemigroup.md) | 237 | `result-track:e308c635c02afce0aecb849c5ee37954af33a81b598dfc3b3c593165c38e7b2a` |
| 33 | `theorem` | [mem_toAddSubmonoid](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNonUnitalSubsemiringClass.lean/declarations/mem-toaddsubmonoid.md) | 242 | `result-track:60022db48852f797af089b78eaec2af38ec6a9b0c4b76a5e69728ffaee285e17` |
| 34 | `theorem` | [coe_toAddSubmonoid](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNonUnitalSubsemiringClass.lean/declarations/coe-toaddsubmonoid.md) | 247 | `result-track:741f67d11b5acbf2b442a4fc806b1f930d9ce982680461d4de0e3731002670ad` |
| 35 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNonUnitalSubsemiringClass.lean/declarations/instance.md) | 252 | `declaration-track:3ec0e0ac723ca1da1db27b80d2c2a3a9393edd7b5d8296e3f5987a4e375d9ec1` |
| 36 | `theorem` | [mem_top](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNonUnitalSubsemiringClass.lean/declarations/mem-top.md) | 256 | `result-track:821c16cb5e30d24218edbc8799b402f223dd5277bc5c5ac4b1f1c866382ee32c` |
| 37 | `theorem` | [coe_top](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNonUnitalSubsemiringClass.lean/declarations/coe-top.md) | 261 | `result-track:456fe1f26742f408549853547551579c5f976ebf26ae219f4d5a8c67f65d6661` |
| 38 | `def` | [topEquiv](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNonUnitalSubsemiringClass.lean/declarations/topequiv.md) | 267 | `declaration-track:d104db6578a2af92c7d3b916bd37186f12503f389a15e0c924e7e0e861f293f8` |
| 39 | `def` | [comap](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNonUnitalSubsemiringClass.lean/declarations/comap.md) | 272 | `declaration-track:9ad8434c7ad07d90c2f70b4ee05e0705f41dbc5ccd737c194ecfbe582a5d07f3` |
| 40 | `theorem` | [coe_comap](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNonUnitalSubsemiringClass.lean/declarations/coe-comap.md) | 278 | `result-track:250bad4e44f23d3d9537b95ebda67e8ddc58c900f92e1f8907126471b43f1b0e` |
| 41 | `theorem` | [mem_comap](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNonUnitalSubsemiringClass.lean/declarations/mem-comap.md) | 283 | `result-track:6937e3e4e18ecce466a013ecafa3ddba2c07bdab31aa478b6cdf887c012977a8` |
| 42 | `theorem` | [comap_comap](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNonUnitalSubsemiringClass.lean/declarations/comap-comap.md) | 288 | `result-track:5e312bc7b83a2ab22fbf140a853c999f07e0341bd277140473af4d92f7317f7b` |
| 43 | `def` | [map](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNonUnitalSubsemiringClass.lean/declarations/map.md) | 295 | `declaration-track:a7fabaaa32f5d7218d468296f0d948fe9e2a8b22c67e04a447a9a068354c5225` |
| 44 | `theorem` | [coe_map](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNonUnitalSubsemiringClass.lean/declarations/coe-map.md) | 300 | `result-track:fb0781dd7b46e563c591f9604669790cf8e5d12e5ab0f362b45e78fc1612525c` |
| 45 | `theorem` | [mem_map](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNonUnitalSubsemiringClass.lean/declarations/mem-map.md) | 305 | `result-track:285a7a3eb9020f1038796b67116c29e789279bb16f7ae475913d9e874ddece86` |
| 46 | `theorem` | [map_id](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNonUnitalSubsemiringClass.lean/declarations/map-id.md) | 311 | `result-track:8f7a2c0a8d63dd64773dd5fde6ed108f383442903be78ee92ae6f59502159102` |
| 47 | `theorem` | [map_map](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNonUnitalSubsemiringClass.lean/declarations/map-map.md) | 316 | `result-track:9016fc5cdb2043e721dde6aa6d4cf2062051649270b4c734108281a2dedc0f88` |
| 48 | `theorem` | [map_le_iff_le_comap](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNonUnitalSubsemiringClass.lean/declarations/map-le-iff-le-comap.md) | 321 | `result-track:12232df441d514d535cb713e7b55795feefb4011ea75d2ed71022053bf797740` |
| 49 | `theorem` | [gc_map_comap](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNonUnitalSubsemiringClass.lean/declarations/gc-map-comap.md) | 326 | `result-track:e79acaf20abcbf158a122ef5733e0644e33b0a33f41ca16d71ce6efbdc6ccc5c` |
| 50 | `def` | [equivMapOfInjective](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNonUnitalSubsemiringClass.lean/declarations/equivmapofinjective.md) | 332 | `declaration-track:a4d7667f4970670e1dcc09edb2121f20a319c7660fd7024e66420ea25c62a527` |
| 51 | `theorem` | [coe_equivMapOfInjective_apply](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNonUnitalSubsemiringClass.lean/declarations/coe-equivmapofinjective-apply.md) | 340 | `result-track:15ac3fdde63e26217548588de71314f37fe1d9df05f5378c59544baf53eb6785` |
| 52 | `def` | [srange](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNonUnitalSubsemiringClass.lean/declarations/srange.md) | 355 | `declaration-track:062d26d0957f81e9d8c91c180a2c90bd20c9b0696f922a79ba6c738dc6f737ea` |
| 53 | `theorem` | [coe_srange](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNonUnitalSubsemiringClass.lean/declarations/coe-srange.md) | 360 | `result-track:4aa1e2b59fae5d6c7ac8e0cb898f5498b5763438e12b3432e8e54fc88e945537` |
| 54 | `theorem` | [mem_srange](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNonUnitalSubsemiringClass.lean/declarations/mem-srange.md) | 365 | `result-track:4750333fc7a4908a7d0b883e8e8517f0a356f9b20d84051bb2c3e52bddc8ebe7` |
| 55 | `theorem` | [srange_eq_map](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNonUnitalSubsemiringClass.lean/declarations/srange-eq-map.md) | 369 | `result-track:3f222c723234a0a9fddf7fb4d9705dcd6c181eea3f0143f48c6773962bdbb0b1` |
| 56 | `theorem` | [mem_srange_self](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNonUnitalSubsemiringClass.lean/declarations/mem-srange-self.md) | 374 | `result-track:dde833edd74fe756b3314be394e1c161b7a93cd5db4b413903ee9e7463947cde` |
| 57 | `theorem` | [map_srange](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNonUnitalSubsemiringClass.lean/declarations/map-srange.md) | 378 | `result-track:33bff9188831542b401ae3d13b4e60640df2c9b0740b1d43461899a0ff43391b` |
| 58 | `instance` | [finite_srange](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNonUnitalSubsemiringClass.lean/declarations/finite-srange.md) | 383 | `declaration-track:fc3d887993fd4176a31853cc4a442a33b8c76a383bfd6fa87ef7275dab36d1c3` |
| 59 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNonUnitalSubsemiringClass.lean/declarations/instance-source-edition-8.md) | 392 | `declaration-track:c80c1f61dcb6929a437410daa3613f2977c82a1c5be3d7f090dadb5b4570888d` |
| 60 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNonUnitalSubsemiringClass.lean/declarations/instance-source-edition-6.md) | 398 | `declaration-track:5f48612ff839ead1fa98a5fbeda84d45bc171dd97b96edd3a1c610102ff5a70b` |
| 61 | `theorem` | [coe_bot](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNonUnitalSubsemiringClass.lean/declarations/coe-bot.md) | 401 | `result-track:5d4fb68bdcad6135bb5f87fa6645be57e9075d4ebd76188ff025b319ced37148` |
| 62 | `theorem` | [mem_bot](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNonUnitalSubsemiringClass.lean/declarations/mem-bot.md) | 405 | `result-track:817609792e82150b140bfcd88385165b04c2fae57004d55f012eb946367ead1f` |
| 63 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNonUnitalSubsemiringClass.lean/declarations/instance-source-edition-7.md) | 410 | `declaration-track:933d10e8e9cbac12115c0f89297ebc0450f4d2ed67f0d5861486fde23dcb8af6` |
| 64 | `theorem` | [coe_inf](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNonUnitalSubsemiringClass.lean/declarations/coe-inf.md) | 416 | `result-track:d55587d30774eba0de0c06870840b9370b8231fc5f6ff44e3975372d5132f5a2` |
| 65 | `theorem` | [mem_inf](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNonUnitalSubsemiringClass.lean/declarations/mem-inf.md) | 422 | `result-track:07116a5911d32e4525051839fd09cdaa5ec60aa86e563f419f09199f974f40d2` |
| 66 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNonUnitalSubsemiringClass.lean/declarations/instance-source-edition-3.md) | 426 | `declaration-track:4e551699f30f10244bedf4e84c6d86d2798de435f5b0775c272968d13f392fba` |
| 67 | `theorem` | [coe_sInf](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNonUnitalSubsemiringClass.lean/declarations/coe-sinf.md) | 432 | `result-track:06e9f737159567a722eb972ddde1e6fc294dd02bdc4d3e12148024a6ddad0044` |
| 68 | `theorem` | [mem_sInf](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNonUnitalSubsemiringClass.lean/declarations/mem-sinf.md) | 437 | `result-track:8f2e21fc2164a532fe40adbe2635914c7fbd2ef95733507160dafdfdaf79f78c` |
| 69 | `theorem` | [sInf_toSubsemigroup](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNonUnitalSubsemiringClass.lean/declarations/sinf-tosubsemigroup.md) | 442 | `result-track:2d2122c8f36f061ed851f3273e29d64766b442d8196d7ed6a5942ea107217d65` |
| 70 | `theorem` | [sInf_toAddSubmonoid](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNonUnitalSubsemiringClass.lean/declarations/sinf-toaddsubmonoid.md) | 448 | `result-track:7ae25b82697a32bfe94feaf148cf66a8fba910cb96e69896ebe6154e73003ecc` |
| 71 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNonUnitalSubsemiringClass.lean/declarations/instance-source-edition-2.md) | 454 | `declaration-track:48d67a974715a0788547cd7b5491f67a188f02e7e90310690ec7031391e3dc4b` |
| 72 | `theorem` | [eq_top_iff'](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNonUnitalSubsemiringClass.lean/declarations/eq-top-iff.md) | 466 | `result-track:3cd75c167665f4623f7a667815fc4b7ca0e14530ec8ef6322bc6cd0a1444a824` |
| 73 | `def` | [center](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNonUnitalSubsemiringClass.lean/declarations/center.md) | 473 | `declaration-track:d6d69f0e98844e10c67db71d8bf504790efc826b09ea02f0a25f91575a277c19` |
| 74 | `theorem` | [coe_center](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNonUnitalSubsemiringClass.lean/declarations/coe-center.md) | 480 | `result-track:e8e835434572be5df56b4c757c7edbdd78ad6e92f45c2f96ad1bbb26ce8785a9` |
| 75 | `theorem` | [center_toSubsemigroup](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNonUnitalSubsemiringClass.lean/declarations/center-tosubsemigroup.md) | 485 | `result-track:4378b695fc9639561cb7eed4df1ab5ae6e24a5fe6a1b4d10ea5b09676c9bc360` |
| 76 | `theorem` | [mem_center_iff](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNonUnitalSubsemiringClass.lean/declarations/mem-center-iff.md) | 490 | `result-track:9eadf5307c3c13193daf5f234eafc9c968fde53b47995f245fd0b9323b2db6fd` |
| 77 | `instance` | [decidableMemCenter](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNonUnitalSubsemiringClass.lean/declarations/decidablememcenter.md) | 494 | `declaration-track:741048aeeac835b70126aa123d355e6043a2de95f52483c67430fd7b2a7e23de` |
| 78 | `theorem` | [center_eq_top](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNonUnitalSubsemiringClass.lean/declarations/center-eq-top.md) | 499 | `result-track:94b2eba02bcfc014f910e1ce41a8ed6dea64ed32ec5e4be49ad4335053a5255e` |
| 79 | `instance` | [center.instNonUnitalCommSemiring](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNonUnitalSubsemiringClass.lean/declarations/center-instnonunitalcommsemiring.md) | 504 | `declaration-track:874bec53c74b8ccc38997d749d9d8b449e594b7a697135fce8d77039ecd9b877` |
| 80 | `def` | [centralizer](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNonUnitalSubsemiringClass.lean/declarations/centralizer.md) | 514 | `declaration-track:1009f6cf5b54a97946c60e61404a5871c93e64f238b03e1d3bf35967ca80ee96` |
| 81 | `theorem` | [coe_centralizer](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNonUnitalSubsemiringClass.lean/declarations/coe-centralizer.md) | 522 | `result-track:81a99b6ae65f748838c6b97c0f139d17ba39ed10f53607c59ec72ed6d9523e05` |
| 82 | `theorem` | [centralizer_toSubsemigroup](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNonUnitalSubsemiringClass.lean/declarations/centralizer-tosubsemigroup.md) | 527 | `result-track:17752bf6d16ae8a887501c841d37b12ebd4694e1aa39a3db7c1dfaded28508d2` |
| 83 | `theorem` | [mem_centralizer_iff](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNonUnitalSubsemiringClass.lean/declarations/mem-centralizer-iff.md) | 532 | `result-track:55b814f64d7bc8bc7a65d47782b2b3d7f1309cb52234b0ef4a078ed2d4629be8` |
| 84 | `theorem` | [center_le_centralizer](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNonUnitalSubsemiringClass.lean/declarations/center-le-centralizer.md) | 537 | `result-track:4b38dcf53a95d9dc7bde9f0b2f76e2bf3f05a1602481dc48fae53f88aa8563b7` |
| 85 | `theorem` | [centralizer_le](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNonUnitalSubsemiringClass.lean/declarations/centralizer-le.md) | 541 | `result-track:8f132429b36f90d255bd71e392ece54d96d3d2076be0d5a9913b8b5d5b8101c6` |
| 86 | `theorem` | [centralizer_eq_top_iff_subset](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNonUnitalSubsemiringClass.lean/declarations/centralizer-eq-top-iff-subset.md) | 547 | `result-track:97c7db7349d9a4e82ec5f7a987e891f75d7670dad2d486fbf559685901670089` |
| 87 | `theorem` | [centralizer_univ](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNonUnitalSubsemiringClass.lean/declarations/centralizer-univ.md) | 553 | `result-track:056087cff1846247c2445f2a866a4838fffba608fd4eaa573ef0bb54e94c4955` |
| 88 | `def` | [closure](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNonUnitalSubsemiringClass.lean/declarations/closure.md) | 560 | `declaration-track:42ddf7c6fc1f1c42c7cdc54e709b7a4c65fcf5b9d0b25de30b2d301a6b7d5fbe` |
| 89 | `theorem` | [mem_closure](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNonUnitalSubsemiringClass.lean/declarations/mem-closure.md) | 564 | `result-track:9d0890bade3e58b5c34b9be1b2f9ab666d1c9054b93a4038bd0c4c26c78d7126` |
| 90 | `theorem` | [subset_closure](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNonUnitalSubsemiringClass.lean/declarations/subset-closure.md) | 571 | `result-track:5a7846be1fe066a8e7f66d81aea6c1232e31425b9971cb8d41e99f8f434eed44` |
| 91 | `theorem` | [not_mem_of_not_mem_closure](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNonUnitalSubsemiringClass.lean/declarations/not-mem-of-not-mem-closure.md) | 574 | `result-track:489568d3818e743158669753637fb5f8ad8704fd46835c591f0f926766e54b77` |
| 92 | `theorem` | [closure_le](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNonUnitalSubsemiringClass.lean/declarations/closure-le.md) | 580 | `result-track:7fb468efd069aede06035992fe13ae641890f1046ef5619061bfff880a209dbd` |
| 93 | `theorem` | [closure_mono](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNonUnitalSubsemiringClass.lean/declarations/closure-mono.md) | 586 | `result-track:8bbb6c8253a5261cf72a87285bc5dd5dfd92f6d17c5190cac79c047c81cb0f8d` |
| 94 | `theorem` | [closure_eq_of_le](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNonUnitalSubsemiringClass.lean/declarations/closure-eq-of-le.md) | 590 | `result-track:aba86b383af330898c052e074a1497559616e04253ff570cd183230ddd057435` |
| 95 | `theorem` | [mem_map_equiv](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNonUnitalSubsemiringClass.lean/declarations/mem-map-equiv.md) | 595 | `result-track:072b224b3bf88ecc7140a8051ed4ae9e6a5e33e7b6b10f34a13f971ca2693d2a` |
| 96 | `theorem` | [map_equiv_eq_comap_symm](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNonUnitalSubsemiringClass.lean/declarations/map-equiv-eq-comap-symm.md) | 600 | `result-track:2cca75d43d800f9ffe2d3119a692cc06a7d13e6d9194bfcd64c1d1a72dc9b6da` |
| 97 | `theorem` | [comap_equiv_eq_map_symm](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNonUnitalSubsemiringClass.lean/declarations/comap-equiv-eq-map-symm.md) | 605 | `result-track:fd43b870c5d2e7dd3dbc9e0f5e9cc2df052a54a04674a41fc6f780edf900e63e` |
| 98 | `def` | [nonUnitalSubsemiringClosure](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNonUnitalSubsemiringClass.lean/declarations/nonunitalsubsemiringclosure.md) | 615 | `declaration-track:84c41cdfc610b75ff24a35ea7ccd375c6fee5835c92b9e8f56db9eb83758c9ec` |
| 99 | `theorem` | [nonUnitalSubsemiringClosure_coe](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNonUnitalSubsemiringClass.lean/declarations/nonunitalsubsemiringclosure-coe.md) | 619 | `result-track:cb2093159a56af86716614a14157586203f2919a6631fe1c6d164ae8cfc01741` |
| 100 | `theorem` | [nonUnitalSubsemiringClosure_toAddSubmonoid](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNonUnitalSubsemiringClass.lean/declarations/nonunitalsubsemiringclosure-toaddsubmonoid.md) | 624 | `result-track:bafc66aa79b4cbaf720e15765ff655ae9b1840732e8d8fc6c2c005a7d1dfc1a0` |
| 101 | `theorem` | [nonUnitalSubsemiringClosure_eq_closure](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNonUnitalSubsemiringClass.lean/declarations/nonunitalsubsemiringclosure-eq-closure.md) | 631 | `result-track:3f689f982f3e1c967543e7baee062decd08937bc3f3d0fa1c7789336141c45ea` |
| 102 | `theorem` | [closure_subsemigroup_closure](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNonUnitalSubsemiringClass.lean/declarations/closure-subsemigroup-closure.md) | 647 | `result-track:74b2ec47fcdb060c2f657dc0a2b7b54849a85aaf1e40eb60419498a9fa4ba3a8` |
| 103 | `theorem` | [coe_closure_eq](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNonUnitalSubsemiringClass.lean/declarations/coe-closure-eq.md) | 656 | `result-track:6a9d2c868a5230d97cb333899cdc80cc52a9894faccfd46bb925b50a4dad692f` |
| 104 | `theorem` | [mem_closure_iff](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNonUnitalSubsemiringClass.lean/declarations/mem-closure-iff.md) | 662 | `result-track:5bb153f422e7d664b1fc636e8894e61ce8ca2497b1f56c6094aad0cb30039970` |
| 105 | `theorem` | [closure_addSubmonoid_closure](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNonUnitalSubsemiringClass.lean/declarations/closure-addsubmonoid-closure.md) | 668 | `result-track:67aaee0d66f660aebf7b2535bab71d3e7052ac438b62c660a349329d74573767` |
| 106 | `theorem` | [closure_induction](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNonUnitalSubsemiringClass.lean/declarations/closure-induction-source-edition-2.md) | 683 | `result-track:ee90b2f6840033e85bb1b5957d34238ae02e8656bb94088e3585856004551b94` |
| 107 | `theorem` | [closure_induction₂](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNonUnitalSubsemiringClass.lean/declarations/closure-induction.md) | 690 | `result-track:0f4b8c638aaa180bd972849687d994c1910fe3f79e5716936b49e4d11dcbf601` |
| 108 | `def` | [gi](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNonUnitalSubsemiringClass.lean/declarations/gi.md) | 704 | `declaration-track:1577e88a8b2167ad58068eb25eb23ff8d5ffce26fe91ff398aae460fe02ea8bc` |
| 109 | `theorem` | [closure_eq](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNonUnitalSubsemiringClass.lean/declarations/closure-eq.md) | 715 | `result-track:84a79b7d7ccd8f2996acfa16efe062e65ac1f1a1d0a17b1d83512ec12e3de5aa` |
| 110 | `theorem` | [closure_empty](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNonUnitalSubsemiringClass.lean/declarations/closure-empty.md) | 720 | `result-track:9fe94a8f518fd9ea6e1727b587dcd1a40cea99d8086d78239b9768e8e0bc1fed` |
| 111 | `theorem` | [closure_univ](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNonUnitalSubsemiringClass.lean/declarations/closure-univ.md) | 725 | `result-track:af4af7575c538a90b54386ab33945321b2f09fd2ac92169cae7ac217d4cf38b9` |
| 112 | `theorem` | [closure_union](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNonUnitalSubsemiringClass.lean/declarations/closure-union.md) | 729 | `result-track:014205b6fb2a996c88ca881ade2186fae0956f03914e0bf8073dd91570b3b2cd` |
| 113 | `theorem` | [closure_iUnion](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNonUnitalSubsemiringClass.lean/declarations/closure-iunion.md) | 733 | `result-track:c3523c2c60feb15705c6e1300b97ec99265a8b76ec0b807c63e04720a9d8781e` |
| 114 | `theorem` | [closure_sUnion](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNonUnitalSubsemiringClass.lean/declarations/closure-sunion.md) | 737 | `result-track:41f3cff92bd840867ada2464b6d85bbcc786874aac35857b81913266a01d81d1` |
| 115 | `theorem` | [map_sup](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNonUnitalSubsemiringClass.lean/declarations/map-sup.md) | 741 | `result-track:cc4d4645260c9600ebea253b0f439a37dadc426ede75eef7bec6fa1a2e8d1df2` |
| 116 | `theorem` | [map_iSup](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNonUnitalSubsemiringClass.lean/declarations/map-isup.md) | 746 | `result-track:e7edae98e11668e78592c5f52f87acb92f9bbbd4f3e7c2e126ea176bdce03833` |
| 117 | `theorem` | [comap_inf](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNonUnitalSubsemiringClass.lean/declarations/comap-inf.md) | 751 | `result-track:2a1a332fa63efbc5d7b2755029b0eb19eecf1d42d797d588ae759d63719b31eb` |
| 118 | `theorem` | [comap_iInf](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNonUnitalSubsemiringClass.lean/declarations/comap-iinf.md) | 756 | `result-track:e662b34630f7186184bb637c963d6bb4a520b364c0d3adc2f162362357d18c0b` |
| 119 | `theorem` | [map_bot](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNonUnitalSubsemiringClass.lean/declarations/map-bot.md) | 762 | `result-track:f0655cfcd2d23c7833a6c61a685132db0a07c8e79fb1c6d0b96f784f8eff3610` |
| 120 | `theorem` | [comap_top](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNonUnitalSubsemiringClass.lean/declarations/comap-top.md) | 767 | `result-track:3f41493915d661814d95011e63e61fe37990225e867f682b2ce952927d8096e7` |
| 121 | `def` | [prod](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNonUnitalSubsemiringClass.lean/declarations/prod.md) | 773 | `declaration-track:b3470795cea9316ec25dc000fe2af3372e4f27dc5335db02791fb7a5249c346d` |
| 122 | `theorem` | [coe_prod](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNonUnitalSubsemiringClass.lean/declarations/coe-prod.md) | 779 | `result-track:e5b67d3c99fece729f6f108227f7e7a6ecc768cd1f5441b2e35a937bfe59ecf5` |
| 123 | `theorem` | [mem_prod](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNonUnitalSubsemiringClass.lean/declarations/mem-prod.md) | 784 | `result-track:0a506c1f09942366d70eada1f6a1922d7ffabc29f5da1c301eefed9590413b75` |
| 124 | `theorem` | [prod_mono](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNonUnitalSubsemiringClass.lean/declarations/prod-mono.md) | 790 | `result-track:261ef3f1657085bfc77232f731e934044903bf25d8e71f0b9431bb49885924a7` |
| 125 | `theorem` | [prod_mono_right](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNonUnitalSubsemiringClass.lean/declarations/prod-mono-right.md) | 795 | `result-track:f1a48c81c6992a9ae9bd0793967771956415c84fe95a3a3d99389e104d255a9d` |
| 126 | `theorem` | [prod_mono_left](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNonUnitalSubsemiringClass.lean/declarations/prod-mono-left.md) | 800 | `result-track:dc10a14e9a018e278ba419382caaaae472ae14168c55c139e3b3823861ca5ddb` |
| 127 | `theorem` | [prod_top](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNonUnitalSubsemiringClass.lean/declarations/prod-top.md) | 804 | `result-track:2865ec64863e9c5c2211b369fde5da1326c656f4753df8c80e2756aa43367393` |
| 128 | `theorem` | [top_prod](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNonUnitalSubsemiringClass.lean/declarations/top-prod.md) | 809 | `result-track:58a1ec18b2b898c2cd586d74dc90cbf2f482a1c25f10443c57859febd66f2e91` |
| 129 | `theorem` | [top_prod_top](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNonUnitalSubsemiringClass.lean/declarations/top-prod-top.md) | 815 | `result-track:fb87320de932cdee666c8a11962965cdff32e7083d5a62103d39bb66d78bd69b` |
| 130 | `def` | [prodEquiv](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNonUnitalSubsemiringClass.lean/declarations/prodequiv.md) | 820 | `declaration-track:35660029838fb1a8c9f28c96078a5dd00202424e2a1d20203c6bcff45f5f0e57` |
| 131 | `theorem` | [mem_iSup_of_directed](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNonUnitalSubsemiringClass.lean/declarations/mem-isup-of-directed.md) | 826 | `result-track:97988681a57dc57fb602796103967bc4756d8ace1d61a7e0265a47a8e3b2c9e4` |
| 132 | `theorem` | [coe_iSup_of_directed](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNonUnitalSubsemiringClass.lean/declarations/coe-isup-of-directed.md) | 839 | `result-track:b4c3acbdb4690b8f8a18784e7c0a31a89c95a78eb9d175b030584e58ad59aefe` |
| 133 | `theorem` | [mem_sSup_of_directedOn](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNonUnitalSubsemiringClass.lean/declarations/mem-ssup-of-directedon.md) | 844 | `result-track:0e390da952b8c24c1717ab99bcd0b3df360fcc8e60aa01155f10edb5f0142851` |
| 134 | `theorem` | [coe_sSup_of_directedOn](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNonUnitalSubsemiringClass.lean/declarations/coe-ssup-of-directedon.md) | 850 | `result-track:8e1d7afb077be7e71ca3c696b027563bc50258365e7be7339c42259b02bdd106` |
| 135 | `def` | [codRestrict](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNonUnitalSubsemiringClass.lean/declarations/codrestrict.md) | 866 | `declaration-track:2baab458ee99e26e4aa2875fd8f31ed733d7a72a455a5df793fe1951aa4ad979` |
| 136 | `def` | [srangeRestrict](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNonUnitalSubsemiringClass.lean/declarations/srangerestrict.md) | 877 | `declaration-track:d2c5c68eebc120e22a3e404c9f5d5477eb5239faac3063dc8a22b489240af6bd` |
| 137 | `theorem` | [coe_srangeRestrict](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNonUnitalSubsemiringClass.lean/declarations/coe-srangerestrict.md) | 882 | `result-track:bd6f77501128a761606eb5f353a05d08e74a2b55565bfa6db17297a474fa6d3d` |
| 138 | `theorem` | [srangeRestrict_surjective](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNonUnitalSubsemiringClass.lean/declarations/srangerestrict-surjective.md) | 886 | `result-track:b033c9ab7502ec991434108e1cc44748452946333e2b3dcc55c5915e059aba48` |
| 139 | `theorem` | [srange_top_iff_surjective](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNonUnitalSubsemiringClass.lean/declarations/srange-top-iff-surjective.md) | 893 | `result-track:57b2a127826b851adf66410652d1fd1b8708fb36db6e7d34cfefc55273b6ee52` |
| 140 | `theorem` | [srange_top_of_surjective](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNonUnitalSubsemiringClass.lean/declarations/srange-top-of-surjective.md) | 900 | `result-track:e67b27367f20de617d252ad5d2f5048d86d4d39d5886f28f58284af17c543471` |
| 141 | `def` | [eqSlocus](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNonUnitalSubsemiringClass.lean/declarations/eqslocus.md) | 906 | `declaration-track:6fdb23d2c8ad32629deb518e1444c65b508386f4cd500c7d13c49d76a1a98409` |
| 142 | `theorem` | [eqOn_sclosure](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNonUnitalSubsemiringClass.lean/declarations/eqon-sclosure.md) | 913 | `result-track:8595b5223eada15fe9f582e1d8dadd0eddc50a0c672e3fa488508a9a5b123d20` |
| 143 | `theorem` | [eq_of_eqOn_stop](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNonUnitalSubsemiringClass.lean/declarations/eq-of-eqon-stop.md) | 918 | `result-track:122505bc9e4ee662f3537a849d457bf63fd3b5c481e08441aed544eb4a282fb9` |
| 144 | `theorem` | [eq_of_eqOn_sdense](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNonUnitalSubsemiringClass.lean/declarations/eq-of-eqon-sdense.md) | 923 | `result-track:db81c6d96413e36d94c58c417c4eea3cebd7b256b56c01c2ba975eae862bad73` |
| 145 | `theorem` | [sclosure_preimage_le](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNonUnitalSubsemiringClass.lean/declarations/sclosure-preimage-le.md) | 928 | `result-track:2bb46202f55434d134ac5ea2df1a48e1f7ec4daebc7574f705c68d96a7beca91` |
| 146 | `theorem` | [map_sclosure](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNonUnitalSubsemiringClass.lean/declarations/map-sclosure.md) | 935 | `result-track:724de574394bdbfc339466c61dbe2278d065c48840fd218e96caac44c1575ff6` |
| 147 | `def` | [inclusion](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNonUnitalSubsemiringClass.lean/declarations/inclusion.md) | 950 | `declaration-track:9442369174fb254186f7a2abe7e2a11653a3c67de821e7fa11f11d7800714f9e` |
| 148 | `theorem` | [srange_subtype](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNonUnitalSubsemiringClass.lean/declarations/srange-subtype.md) | 955 | `result-track:97df73ae8a53972a82f72fafeadaa38ba85458147d2b8aa5f8475c811a72d034` |
| 149 | `theorem` | [range_fst](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNonUnitalSubsemiringClass.lean/declarations/range-fst.md) | 960 | `result-track:5b2a93a8027684b5d541c8824ab90a1b6ce1dbdd92ec99e16780f64feaf4dfa4` |
| 150 | `theorem` | [range_snd](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNonUnitalSubsemiringClass.lean/declarations/range-snd.md) | 965 | `result-track:9a1b379439d385ebaec586c648cc93b11a330e877d58340aec7ae362337743c6` |
| 151 | `def` | [nonUnitalSubsemiringCongr](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNonUnitalSubsemiringClass.lean/declarations/nonunitalsubsemiringcongr.md) | 981 | `declaration-track:24e8a3af2e42e10b261b8c2de2e98847bd850fad5c76a2980c2330be940998d1` |
| 152 | `def` | [sofLeftInverse'](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNonUnitalSubsemiringClass.lean/declarations/sofleftinverse.md) | 989 | `declaration-track:57679c5eacd1ee2d69c34ecc78091ff568552acb9a6ad8773f8f57d22b77252b` |
| 153 | `theorem` | [sofLeftInverse'_apply](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNonUnitalSubsemiringClass.lean/declarations/sofleftinverse-apply.md) | 1001 | `result-track:9bd18d5ba6be7229366e3b952d0754380927c3dbc31b4e4aea078c8e3d8f8c93` |
| 154 | `theorem` | [sofLeftInverse'_symm_apply](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNonUnitalSubsemiringClass.lean/declarations/sofleftinverse-symm-apply.md) | 1007 | `result-track:b33649d7817e0f6b2bc1f897507218cd965d5b9373411a5d66f14acafe7cfb2d` |
| 155 | `def` | [nonUnitalSubsemiringMap](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNonUnitalSubsemiringClass.lean/declarations/nonunitalsubsemiringmap.md) | 1016 | `declaration-track:aafc76a1227b5f08dfc73d53ca4acdaeb5ca04b735ed0e2ff44211f1094f01d3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=767adcd94cff53272435f2532c281f4ae17f987f8e82748a2bc0e09562de29c4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant70bf0fe1f8a9bda11aac2f249a0d5610bb110f5756986e2d16fc39bbfb458e11.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant70bf0fe1f8a9bda11aac2f249a0d5610bb110f5756986e2d16fc39bbfb458e11.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
