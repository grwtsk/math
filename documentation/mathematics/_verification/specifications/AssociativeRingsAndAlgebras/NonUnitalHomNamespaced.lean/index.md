# Verification target: Non Unital Hom Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "902cf38c0c4f339377ad4cad47fcff4af6f0fd5e",
  "lexical_observation_count": 73,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/NonUnitalHom/Variantd03fe3ea0375f24de00e3bfb6b80dbca22e00de77017d59b3c9c27706e2fd367.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../AssociativeRingsAndAlgebras/NonUnitalHomNamespaced.lean/index.md) · [Full source](../../../../AssociativeRingsAndAlgebras/NonUnitalHomNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `902cf38c0c4f339377ad4cad47fcff4af6f0fd5e`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/NonUnitalHom/Variantd03fe3ea0375f24de00e3bfb6b80dbca22e00de77017d59b3c9c27706e2fd367.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/NonUnitalHom/Variantd03fe3ea0375f24de00e3bfb6b80dbca22e00de77017d59b3c9c27706e2fd367.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Hom` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Action.Prod` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [NonUnitalAlgHom](../../../../AssociativeRingsAndAlgebras/NonUnitalHomNamespaced.lean/declarations/nonunitalalghom.md) | 61 | `declaration-track:c4df2eb4117cb95f3637777584d60a523aad6102f1d25a8eccc6c4ad56681f78` |
| 2 | `class` | [NonUnitalAlgSemiHomClass](../../../../AssociativeRingsAndAlgebras/NonUnitalHomNamespaced.lean/declarations/nonunitalalgsemihomclass.md) | 78 | `declaration-track:66327dc49bb8e869345c2ccddaf633ea180ac86fc273589f4f2c6bb34f7eefd8` |
| 3 | `abbrev` | [NonUnitalAlgHomClass](../../../../AssociativeRingsAndAlgebras/NonUnitalHomNamespaced.lean/declarations/nonunitalalghomclass.md) | 88 | `declaration-track:5a45038d208e2340fbf793e0bbfdef264e95cc886c14fd60a17da6cd1d2ad556` |
| 4 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/NonUnitalHomNamespaced.lean/declarations/instance-source-edition-7.md) | 96 | `declaration-track:b8a10083690761e3c576b2b1ef8411e6cad415c5e2f024da5c25779f44f64b31` |
| 5 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/NonUnitalHomNamespaced.lean/declarations/instance-source-edition-9.md) | 108 | `declaration-track:c924a27dc85b6f4137638d6ee45c02bebe973afe0ba2335eed65403e5245a713` |
| 6 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/NonUnitalHomNamespaced.lean/declarations/instance-source-edition-6.md) | 115 | `declaration-track:9b838cf7e29901599d12e7bbbcdc3ab1cf1fd6beca74b131733b84ed390d6d7d` |
| 7 | `def` | [toNonUnitalAlgSemiHom](../../../../AssociativeRingsAndAlgebras/NonUnitalHomNamespaced.lean/declarations/tononunitalalgsemihom.md) | 122 | `declaration-track:06aa49777b4e332a0e2556147c43376fc327d0c8e8d8e175e4e51057aec5f88c` |
| 8 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/NonUnitalHomNamespaced.lean/declarations/instance-source-edition-4.md) | 130 | `declaration-track:7982c9ec94fad1786b069e25ef85ef9434c1a9e5e954b7525d05a658deef44b1` |
| 9 | `def` | [toNonUnitalAlgHom](../../../../AssociativeRingsAndAlgebras/NonUnitalHomNamespaced.lean/declarations/tononunitalalghom-source-edition-2.md) | 140 | `declaration-track:6bd0e6244b05b7fba4177ba143f2e75b2f7fbcf2d8f558eb8214de62d0aefd1b` |
| 10 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/NonUnitalHomNamespaced.lean/declarations/instance-source-edition-8.md) | 148 | `declaration-track:bcb203ed07fca0b7b4a9e2063df22cfd2744a0d77d6c9889676c8a4ea8ee6105` |
| 11 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/NonUnitalHomNamespaced.lean/declarations/instance.md) | 165 | `declaration-track:1f5d534ad67dd83ac10db9b3f4795fe20fa627a540686cce8eed1e654583528f` |
| 12 | `theorem` | [toFun_eq_coe](../../../../AssociativeRingsAndAlgebras/NonUnitalHomNamespaced.lean/declarations/tofun-eq-coe.md) | 170 | `result-track:24817350a6fcaae5892820cbf093e645734a858aa038e96f21d2b5345928211d` |
| 13 | `def` | [Simps.apply](../../../../AssociativeRingsAndAlgebras/NonUnitalHomNamespaced.lean/declarations/simps-apply.md) | 174 | `declaration-track:619bac7952d0fb63518b368f85618e898a9a269e870e6caf973b83415e6a4213` |
| 14 | `theorem` | [coe_coe](../../../../AssociativeRingsAndAlgebras/NonUnitalHomNamespaced.lean/declarations/coe-coe.md) | 181 | `result-track:4e78a80e63cc2796b9398ee3e2202c20fa00533bedae0ba361a593daa9971614` |
| 15 | `theorem` | [coe_injective](../../../../AssociativeRingsAndAlgebras/NonUnitalHomNamespaced.lean/declarations/coe-injective.md) | 186 | `result-track:3d1a7102994718fbed6dc0a9c3aa59ed7a2ca09f87434b4d5b8999b742cad6aa` |
| 16 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/NonUnitalHomNamespaced.lean/declarations/instance-source-edition-2.md) | 188 | `declaration-track:2cedcbe39e93491d1e7544878389bd1478a7bc985434fcf2ed6467f2eba09764` |
| 17 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/NonUnitalHomNamespaced.lean/declarations/instance-source-edition-5.md) | 192 | `declaration-track:88243204fa0d695f173fb3483ae4ec1682de54d0169c5341ff4a384a0a5861e9` |
| 18 | `theorem` | [ext](../../../../AssociativeRingsAndAlgebras/NonUnitalHomNamespaced.lean/declarations/ext.md) | 199 | `result-track:5c313f491e8a0374232dd9a1ca38c242fa12afad69d5ac2874795e3446222b12` |
| 19 | `theorem` | [congr_fun](../../../../AssociativeRingsAndAlgebras/NonUnitalHomNamespaced.lean/declarations/congr-fun.md) | 202 | `result-track:3e0189a615c8eb7c27cbae8611393d932857b3d194da95a68bfa270ede1612d0` |
| 20 | `theorem` | [coe_mk](../../../../AssociativeRingsAndAlgebras/NonUnitalHomNamespaced.lean/declarations/coe-mk.md) | 206 | `result-track:d6a3850b2643996c61865077c5231e90a4624487e8a4a9ce38b3a1502625b111` |
| 21 | `theorem` | [mk_coe](../../../../AssociativeRingsAndAlgebras/NonUnitalHomNamespaced.lean/declarations/mk-coe.md) | 210 | `result-track:0691d4f1f8296713c350081a2ad7482e5b85795472eb4c3f98954c68126dc571` |
| 22 | `lemma` | [addHomMk_coe](../../../../AssociativeRingsAndAlgebras/NonUnitalHomNamespaced.lean/declarations/addhommk-coe.md) | 213 | `result-track:62d030941c0a8165bc5ecfcc5cadd2fe074db2383b983558e4b76274be149fa9` |
| 23 | `theorem` | [toDistribMulActionHom_eq_coe](../../../../AssociativeRingsAndAlgebras/NonUnitalHomNamespaced.lean/declarations/todistribmulactionhom-eq-coe.md) | 216 | `result-track:8f04ed7ad3a82ef53b052d332ab819a32282f45facd5c35c38af37d48ed0d3bb` |
| 24 | `theorem` | [toMulHom_eq_coe](../../../../AssociativeRingsAndAlgebras/NonUnitalHomNamespaced.lean/declarations/tomulhom-eq-coe.md) | 220 | `result-track:bd88305f5337df9824da0bafd1c8d50387c297558042b71962732b73495f0f5c` |
| 25 | `theorem` | [coe_to_distribMulActionHom](../../../../AssociativeRingsAndAlgebras/NonUnitalHomNamespaced.lean/declarations/coe-to-distribmulactionhom.md) | 224 | `result-track:5a3b4c2ff7e58e83400c17128b30c2a04c3675bc63ceef2742fcfb5cf2bc2f68` |
| 26 | `theorem` | [coe_to_mulHom](../../../../AssociativeRingsAndAlgebras/NonUnitalHomNamespaced.lean/declarations/coe-to-mulhom.md) | 228 | `result-track:4b8dfaacf119b6b71d9235c54543ba700b577e4e2efb97501c78dab4be3142c9` |
| 27 | `theorem` | [to_distribMulActionHom_injective](../../../../AssociativeRingsAndAlgebras/NonUnitalHomNamespaced.lean/declarations/to-distribmulactionhom-injective.md) | 231 | `result-track:c78034528ce2648c05debbcfc186a1b21173595d3ae1e429dccb4faccca9e31c` |
| 28 | `theorem` | [to_mulHom_injective](../../../../AssociativeRingsAndAlgebras/NonUnitalHomNamespaced.lean/declarations/to-mulhom-injective.md) | 236 | `result-track:4d39d5ec7f2a467af2f15d01d6f2e9387a5a895c2c032b3cd1dbef559be6ac3b` |
| 29 | `theorem` | [coe_distribMulActionHom_mk](../../../../AssociativeRingsAndAlgebras/NonUnitalHomNamespaced.lean/declarations/coe-distribmulactionhom-mk.md) | 241 | `result-track:554cbc2a30cfe8a635b2da0ad8dbe2b6c1fdcdeeca0c706f7be12c5e9eefe921` |
| 30 | `theorem` | [coe_mulHom_mk](../../../../AssociativeRingsAndAlgebras/NonUnitalHomNamespaced.lean/declarations/coe-mulhom-mk.md) | 246 | `result-track:82dd5fb8119299043df7bc02eb41a1f38f35b58967e8137bd59990b56b9dc1bb` |
| 31 | `theorem` | [map_smul](../../../../AssociativeRingsAndAlgebras/NonUnitalHomNamespaced.lean/declarations/map-smul.md) | 251 | `result-track:57e366fde75cd3168b65df1d8c0d3c36412d1c065ea222de4b87e2e7b4587f18` |
| 32 | `theorem` | [map_add](../../../../AssociativeRingsAndAlgebras/NonUnitalHomNamespaced.lean/declarations/map-add.md) | 254 | `result-track:9c20eab6a40d0dec7dcdd05c5403391a0ad0fa7d7fc9f7a174126d5a4cbab5df` |
| 33 | `theorem` | [map_mul](../../../../AssociativeRingsAndAlgebras/NonUnitalHomNamespaced.lean/declarations/map-mul.md) | 257 | `result-track:a453c4b41556dc9b2e3a9213a08a2a659aeb698a846536cc2f3aa863543b7e88` |
| 34 | `theorem` | [map_zero](../../../../AssociativeRingsAndAlgebras/NonUnitalHomNamespaced.lean/declarations/map-zero.md) | 260 | `result-track:df5d56811ca1bc685e235ddc7868ad7de339388ee213a2ff38cefb2c39eb456b` |
| 35 | `def` | [id](../../../../AssociativeRingsAndAlgebras/NonUnitalHomNamespaced.lean/declarations/id.md) | 264 | `declaration-track:4c5a4d5e09fe4e928e6dc72f1edc90615368a14d32253965a681219c601099b9` |
| 36 | `theorem` | [coe_id](../../../../AssociativeRingsAndAlgebras/NonUnitalHomNamespaced.lean/declarations/coe-id.md) | 271 | `result-track:556c8e5f4535e8564eeaac01e8ec47f45b8de6e73af4490e3955636c0154e9ed` |
| 37 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/NonUnitalHomNamespaced.lean/declarations/instance-source-edition-10.md) | 274 | `declaration-track:c977a5670a4dfffc5a0248d42b8171b171c5fb0957f90399083225d94caec71c` |
| 38 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/NonUnitalHomNamespaced.lean/declarations/instance-source-edition-12.md) | 277 | `declaration-track:e5eda3ae35d1ba73840c825813d4b32536bc0018023022e331c6940522139c03` |
| 39 | `theorem` | [coe_zero](../../../../AssociativeRingsAndAlgebras/NonUnitalHomNamespaced.lean/declarations/coe-zero.md) | 281 | `result-track:bbd65fa3e5a6d0a2408885d7ddc1e84bb221f4cd1441bce9fa4809a594d81c73` |
| 40 | `theorem` | [coe_one](../../../../AssociativeRingsAndAlgebras/NonUnitalHomNamespaced.lean/declarations/coe-one.md) | 285 | `result-track:df7a0e33104def17250e821fa5b39062438e5e1af4688d71d5830df13b6fb2fb` |
| 41 | `theorem` | [zero_apply](../../../../AssociativeRingsAndAlgebras/NonUnitalHomNamespaced.lean/declarations/zero-apply.md) | 288 | `result-track:95e216ebb13a35cc85f48114394af01e6ccf3dece511ec12b8b88f2e77e5534b` |
| 42 | `theorem` | [one_apply](../../../../AssociativeRingsAndAlgebras/NonUnitalHomNamespaced.lean/declarations/one-apply.md) | 291 | `result-track:5c68095a1a442672a392886e87642681c7a63ebfd924212af8da82cd9a04635d` |
| 43 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/NonUnitalHomNamespaced.lean/declarations/instance-source-edition-3.md) | 294 | `declaration-track:3a941dd9eebd0f94332372c87481fbb3cb4e17a5e7f5dcc76d7a40992e873bb5` |
| 44 | `def` | [comp](../../../../AssociativeRingsAndAlgebras/NonUnitalHomNamespaced.lean/declarations/comp.md) | 301 | `declaration-track:795ddaf276c0dcf13dbaf03ab4bfa28d39879153b2e33ec9b514ba3145c7686e` |
| 45 | `theorem` | [coe_comp](../../../../AssociativeRingsAndAlgebras/NonUnitalHomNamespaced.lean/declarations/coe-comp.md) | 306 | `result-track:38acbe6e2c6bcd3789cc16c7bfb3e1fb9299e751ebe25dbf356c85b7611e9b48` |
| 46 | `theorem` | [comp_apply](../../../../AssociativeRingsAndAlgebras/NonUnitalHomNamespaced.lean/declarations/comp-apply.md) | 309 | `result-track:75734eeb1fc010eeed3d5f3b921526caed699efdfe583bc1bde9cafbb87258f1` |
| 47 | `def` | [inverse](../../../../AssociativeRingsAndAlgebras/NonUnitalHomNamespaced.lean/declarations/inverse-source-edition-2.md) | 315 | `declaration-track:cef63ce9ac4759c4308f892c0ddcfe2613c2fffd5018ad13f8857820f5c9a0ca` |
| 48 | `theorem` | [coe_inverse](../../../../AssociativeRingsAndAlgebras/NonUnitalHomNamespaced.lean/declarations/coe-inverse-source-edition-2.md) | 321 | `result-track:645efedd357851302303ea9cd50abebed4e0a7763a3461ecc0aa64a24f647977` |
| 49 | `def` | [inverse'](../../../../AssociativeRingsAndAlgebras/NonUnitalHomNamespaced.lean/declarations/inverse.md) | 326 | `declaration-track:b7972b23ee2c203298d507795b1b12907360b99f2eecfe53e041d403b1ed52d9` |
| 50 | `theorem` | [coe_inverse'](../../../../AssociativeRingsAndAlgebras/NonUnitalHomNamespaced.lean/declarations/coe-inverse.md) | 339 | `result-track:5cd4876ec97b330e8129c5be2455d6fe69a7be47a91bd53e394cae3c91b04081` |
| 51 | `def` | [fst](../../../../AssociativeRingsAndAlgebras/NonUnitalHomNamespaced.lean/declarations/fst.md) | 357 | `declaration-track:edce9881aef23278c635827a00870674f61d5c03008560b80e6bb4b557d27603` |
| 52 | `def` | [snd](../../../../AssociativeRingsAndAlgebras/NonUnitalHomNamespaced.lean/declarations/snd.md) | 366 | `declaration-track:206e7dcf58849cbecc3d289206602029cbf5828de2840948ca26b389525dbba8` |
| 53 | `def` | [prod](../../../../AssociativeRingsAndAlgebras/NonUnitalHomNamespaced.lean/declarations/prod.md) | 378 | `declaration-track:bdc349a5eb3988880e820b03c69c192cff2346225700f36c565829caa4d739ac` |
| 54 | `theorem` | [coe_prod](../../../../AssociativeRingsAndAlgebras/NonUnitalHomNamespaced.lean/declarations/coe-prod.md) | 385 | `result-track:803b2e8b672dc4cc1a034ffdd1c4e2ad148fd848ea829ea633d536a67c62bdb5` |
| 55 | `theorem` | [fst_prod](../../../../AssociativeRingsAndAlgebras/NonUnitalHomNamespaced.lean/declarations/fst-prod.md) | 389 | `result-track:111c25b8f3aabbcd160c547efbcc13ad8c0d3a47816b178296a327127557be4a` |
| 56 | `theorem` | [snd_prod](../../../../AssociativeRingsAndAlgebras/NonUnitalHomNamespaced.lean/declarations/snd-prod.md) | 393 | `result-track:e5a7dd0eeecbaf1c1acd944866d862c7177f701e3ecff04d4407258dcea08235` |
| 57 | `theorem` | [prod_fst_snd](../../../../AssociativeRingsAndAlgebras/NonUnitalHomNamespaced.lean/declarations/prod-fst-snd.md) | 397 | `result-track:d0c0d60e3e55a223c3183c65d72e5707b2adc7d4dd194d36841970ce5ed59ab5` |
| 58 | `def` | [prodEquiv](../../../../AssociativeRingsAndAlgebras/NonUnitalHomNamespaced.lean/declarations/prodequiv.md) | 403 | `declaration-track:cffe6cf4c8ad04d53d1688d4349b766bc8440b8595aa78e06433afcb68b4544f` |
| 59 | `def` | [inl](../../../../AssociativeRingsAndAlgebras/NonUnitalHomNamespaced.lean/declarations/inl.md) | 412 | `declaration-track:4e76966e3c95b65ace86e7fdba987f4471b6a6724dd2f7bec2a9b82b5ec8d529` |
| 60 | `def` | [inr](../../../../AssociativeRingsAndAlgebras/NonUnitalHomNamespaced.lean/declarations/inr.md) | 416 | `declaration-track:60eb0eac179625655e171f3086bacad1ede1cc0cfbe51ebbd3494c24eec0f539` |
| 61 | `theorem` | [coe_inl](../../../../AssociativeRingsAndAlgebras/NonUnitalHomNamespaced.lean/declarations/coe-inl.md) | 422 | `result-track:08b330e372f82dd6c045fd2bdf6fe666c252b37e60102e72b0dcc28d2dbe315c` |
| 62 | `theorem` | [inl_apply](../../../../AssociativeRingsAndAlgebras/NonUnitalHomNamespaced.lean/declarations/inl-apply.md) | 425 | `result-track:4db1bdb2ef912c32501e636d9ed3ac29f897e30fddb90a90c9a5ed646737aac8` |
| 63 | `theorem` | [coe_inr](../../../../AssociativeRingsAndAlgebras/NonUnitalHomNamespaced.lean/declarations/coe-inr.md) | 429 | `result-track:861c8a2c4d204674cd7bd8c2e05456e6f95ccdf014627b1c044e68ebf631b5cf` |
| 64 | `theorem` | [inr_apply](../../../../AssociativeRingsAndAlgebras/NonUnitalHomNamespaced.lean/declarations/inr-apply.md) | 432 | `result-track:1ae72b922f81f8c541d2496dfc33a598f00450d68a082302eb82da206b8bd814` |
| 65 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/NonUnitalHomNamespaced.lean/declarations/instance-source-edition-11.md) | 448 | `declaration-track:dc5339b62dd30cabd9ced1bda77bbc18bc87a0654fd252943f6d9776985fb333` |
| 66 | `def` | [toNonUnitalAlgHom](../../../../AssociativeRingsAndAlgebras/NonUnitalHomNamespaced.lean/declarations/tononunitalalghom.md) | 453 | `declaration-track:11cddfe9245e67af5ccaaf38f4da7c4b0041e13c37fdf7b4085e142d0eb997e8` |
| 67 | `instance` | [NonUnitalAlgHom.hasCoe](../../../../AssociativeRingsAndAlgebras/NonUnitalHomNamespaced.lean/declarations/nonunitalalghom-hascoe.md) | 456 | `declaration-track:115fca2f83045639efc4d776f55d67e652cedf746220143cea8cabee446dd640` |
| 68 | `theorem` | [toNonUnitalAlgHom_eq_coe](../../../../AssociativeRingsAndAlgebras/NonUnitalHomNamespaced.lean/declarations/tononunitalalghom-eq-coe.md) | 460 | `result-track:3af8868042ac284cd9778e61f7f12a10c0c053d8e1472116efc384bfda8f721f` |
| 69 | `def` | [restrictScalars](../../../../AssociativeRingsAndAlgebras/NonUnitalHomNamespaced.lean/declarations/restrictscalars.md) | 476 | `declaration-track:484f4663ac76fb01310a6fa50f0fb784e527b710078fc3613571290d976f323d` |
| 70 | `lemma` | [restrictScalars_apply](../../../../AssociativeRingsAndAlgebras/NonUnitalHomNamespaced.lean/declarations/restrictscalars-apply.md) | 481 | `result-track:1432ab9410d7ce3f3de8daeb43ce0c49d2c4c857815831f0eaab3cd1f012dc71` |
| 71 | `lemma` | [coe_restrictScalars](../../../../AssociativeRingsAndAlgebras/NonUnitalHomNamespaced.lean/declarations/coe-restrictscalars-source-edition-2.md) | 483 | `result-track:de44444d4d6a820a1a31eb45effca5e42dc4968d28f51d29aa000984119b8540` |
| 72 | `lemma` | [coe_restrictScalars'](../../../../AssociativeRingsAndAlgebras/NonUnitalHomNamespaced.lean/declarations/coe-restrictscalars.md) | 485 | `result-track:d31933b9874b5020d73ac7221c3b70869db12df2f47949262dbd5ad14fbe5aa2` |
| 73 | `theorem` | [restrictScalars_injective](../../../../AssociativeRingsAndAlgebras/NonUnitalHomNamespaced.lean/declarations/restrictscalars-injective.md) | 487 | `result-track:675f0e2df164d77d987e956344231bc097564f959bf4457b7b42b1752b0a3964` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=07cbd49d741b7b443261e03c5cd6c6f7e9ddb698f7df8a34d116bc2294b0899d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/NonUnitalHom/Variantd03fe3ea0375f24de00e3bfb6b80dbca22e00de77017d59b3c9c27706e2fd367.lean","GRWTSK/_verification/specifications/Algebra/UniversalAlgebra/NonUnitalHom/Variantd03fe3ea0375f24de00e3bfb6b80dbca22e00de77017d59b3c9c27706e2fd367.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
