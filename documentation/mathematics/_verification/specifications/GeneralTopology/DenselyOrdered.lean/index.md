# Verification target: Densely Ordered

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "38c3e22d1ac41c38fa67e148255859fe54a5c0d4",
  "lexical_observation_count": 72,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/DenselyOrdered/Variant4d8097e15684fa9ab3858dc5274606b81e2246d471e8fcb27bcd94969da92546.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/DenselyOrdered.lean/index.md) · [Full source](../../../../GeneralTopology/DenselyOrdered.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `38c3e22d1ac41c38fa67e148255859fe54a5c0d4`.

Source path: `GRWTSK/Topology/GeneralTopology/DenselyOrdered/Variant4d8097e15684fa9ab3858dc5274606b81e2246d471e8fcb27bcd94969da92546.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/DenselyOrdered/Variant4d8097e15684fa9ab3858dc5274606b81e2246d471e8fcb27bcd94969da92546.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Order.IsLUB` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [closure_Ioi'](../../../../GeneralTopology/DenselyOrdered.lean/declarations/closure-ioi-source-edition-2.md) | 25 | `result-track:9855d43fb274fa79a09fc67d565fc84be2af651ca4ab04d9132eca93e696212b` |
| 2 | `theorem` | [closure_Ioi](../../../../GeneralTopology/DenselyOrdered.lean/declarations/closure-ioi.md) | 33 | `result-track:4461e1e36b12951fc0f2c665f05d61b2b83a8da08ac3eefd9ab27f5c7cb3ff71` |
| 3 | `theorem` | [closure_Iio'](../../../../GeneralTopology/DenselyOrdered.lean/declarations/closure-iio-source-edition-2.md) | 38 | `result-track:f2c71ba3f48b644db724e92b60f09bf428daa03cbc71934f67de242e2967e2ae` |
| 4 | `theorem` | [closure_Iio](../../../../GeneralTopology/DenselyOrdered.lean/declarations/closure-iio.md) | 43 | `result-track:c8f812fad1161396784eb1662c2e66a29e2ecaa697ee6075512fad026a3393d0` |
| 5 | `theorem` | [closure_Ioo](../../../../GeneralTopology/DenselyOrdered.lean/declarations/closure-ioo.md) | 48 | `result-track:ef5140b9cf2a19aa66e276283516d61a26c8033e901bd0485b282a43a1ff6dd2` |
| 6 | `theorem` | [closure_Ioc](../../../../GeneralTopology/DenselyOrdered.lean/declarations/closure-ioc.md) | 61 | `result-track:63d95c876163a3b29e0fbf9473199722de28cb8adbb57f6c6fe69cd07f2149f1` |
| 7 | `theorem` | [closure_Ico](../../../../GeneralTopology/DenselyOrdered.lean/declarations/closure-ico.md) | 69 | `result-track:20b47ef73e9013f0ccb9b59631b6a30f45e71048d41e8fe44a8267a65cbd0733` |
| 8 | `theorem` | [interior_Ici'](../../../../GeneralTopology/DenselyOrdered.lean/declarations/interior-ici.md) | 76 | `result-track:cd8339a0d7eeb19ad79892506e14496cf1c252800df499829e6eaf945d8247fb` |
| 9 | `theorem` | [interior_Ici](../../../../GeneralTopology/DenselyOrdered.lean/declarations/interior-ici-source-edition-2.md) | 79 | `result-track:d6afc4706744fb2f13646e556c3c947fba496a96b164b04ad560738b78b30d7a` |
| 10 | `theorem` | [interior_Iic'](../../../../GeneralTopology/DenselyOrdered.lean/declarations/interior-iic.md) | 83 | `result-track:88ace78fa02c300cc282f91023eee3c65f96c178bee213ba4c4610aba7853c58` |
| 11 | `theorem` | [interior_Iic](../../../../GeneralTopology/DenselyOrdered.lean/declarations/interior-iic-source-edition-2.md) | 86 | `result-track:e69eb1a7ddd61530669ab965256768ed6c1b280917bbb0c0ca6f26b663d21e2c` |
| 12 | `theorem` | [interior_Icc](../../../../GeneralTopology/DenselyOrdered.lean/declarations/interior-icc.md) | 90 | `result-track:d01596c3cd04e67a6adb115a98fbedca4ba37d761c25115c239aaefe5a28236c` |
| 13 | `theorem` | [Icc_mem_nhds_iff](../../../../GeneralTopology/DenselyOrdered.lean/declarations/icc-mem-nhds-iff.md) | 94 | `result-track:e8cd6384f606cca08f6e0eb4a34f6218689f5ec2fe1c1f17f85c7b63d3c3a345` |
| 14 | `theorem` | [interior_Ico](../../../../GeneralTopology/DenselyOrdered.lean/declarations/interior-ico.md) | 99 | `result-track:b7ae4a3ba7b6a951a786bb7d107ffd3fef1b2818368b0d0ec9da79a0fe7c5b67` |
| 15 | `theorem` | [Ico_mem_nhds_iff](../../../../GeneralTopology/DenselyOrdered.lean/declarations/ico-mem-nhds-iff.md) | 103 | `result-track:0ec364633b19bb5c36c5da46340fd63af4609f0e0b0f0cbb8c25f1d9b0522bfa` |
| 16 | `theorem` | [interior_Ioc](../../../../GeneralTopology/DenselyOrdered.lean/declarations/interior-ioc.md) | 107 | `result-track:be0c653ab19aff75b9367b22e420dc63e4f1f27e1ee57ea8533d2dff4de82dd9` |
| 17 | `theorem` | [Ioc_mem_nhds_iff](../../../../GeneralTopology/DenselyOrdered.lean/declarations/ioc-mem-nhds-iff.md) | 111 | `result-track:fe5141e0605af061edb3f97534a2456be9fc3b68024a2c65bde42b56d4c0406f` |
| 18 | `theorem` | [closure_interior_Icc](../../../../GeneralTopology/DenselyOrdered.lean/declarations/closure-interior-icc.md) | 114 | `result-track:48692d6afec58a7bbeb5f30dd19319cb69123ece0e98d9b9e1345e07a2fb1b01` |
| 19 | `theorem` | [Ioc_subset_closure_interior](../../../../GeneralTopology/DenselyOrdered.lean/declarations/ioc-subset-closure-interior.md) | 121 | `result-track:efe041c16cd80c5c1920bef0f69cd3ea890804594c0c9ea82f343bbe924fe6bd` |
| 20 | `theorem` | [Ico_subset_closure_interior](../../../../GeneralTopology/DenselyOrdered.lean/declarations/ico-subset-closure-interior.md) | 130 | `result-track:2903c751c9c8a3fad907f626a17781694391f715de75f513c1918fbe7287a1b0` |
| 21 | `theorem` | [frontier_Ici'](../../../../GeneralTopology/DenselyOrdered.lean/declarations/frontier-ici-source-edition-2.md) | 135 | `result-track:8258797d5c8f336487478f3e2a19cc8e111125263af1f30e01a8a99a3e768705` |
| 22 | `theorem` | [frontier_Ici](../../../../GeneralTopology/DenselyOrdered.lean/declarations/frontier-ici.md) | 138 | `result-track:3b1f5667754c29af907dd4d9a68ee97a1071f49732820242899b33ddc207aec0` |
| 23 | `theorem` | [frontier_Iic'](../../../../GeneralTopology/DenselyOrdered.lean/declarations/frontier-iic.md) | 142 | `result-track:23212389ee65213f1cd33e86e4b74e14bac79dd1ffcadfb5dc606a58b4ccc586` |
| 24 | `theorem` | [frontier_Iic](../../../../GeneralTopology/DenselyOrdered.lean/declarations/frontier-iic-source-edition-2.md) | 145 | `result-track:b21a9bdf8421c7acabff53c4dc2370200d88f943367816e31a10a042dfe02c3d` |
| 25 | `theorem` | [frontier_Ioi'](../../../../GeneralTopology/DenselyOrdered.lean/declarations/frontier-ioi.md) | 149 | `result-track:66058f9373250e7b2f713aea8f377a2562ba2713867719bf38744ba5471a8062` |
| 26 | `theorem` | [frontier_Ioi](../../../../GeneralTopology/DenselyOrdered.lean/declarations/frontier-ioi-source-edition-2.md) | 152 | `result-track:f9cb6cbcf6e0c8ba98388b6693220a31b247af13675bc61f4935e36c0b91072e` |
| 27 | `theorem` | [frontier_Iio'](../../../../GeneralTopology/DenselyOrdered.lean/declarations/frontier-iio.md) | 156 | `result-track:759f2b91a797d58a1d6eea0aed84d702796aecf87234517be541a1f9b848d2fc` |
| 28 | `theorem` | [frontier_Iio](../../../../GeneralTopology/DenselyOrdered.lean/declarations/frontier-iio-source-edition-2.md) | 159 | `result-track:c712f2d7c8362a6ebe92052230899f48cdc62f5c8b7688653fec39a4c65dcb72` |
| 29 | `theorem` | [frontier_Icc](../../../../GeneralTopology/DenselyOrdered.lean/declarations/frontier-icc.md) | 163 | `result-track:63d98060ec0e33cbe244654bfa9dff4d2bfe7ec9433b1b8976815cf4fcffe81d` |
| 30 | `theorem` | [frontier_Ioo](../../../../GeneralTopology/DenselyOrdered.lean/declarations/frontier-ioo.md) | 167 | `result-track:0d7883351c1b53b4951ce65236b2a1c237c99438fa679cf573a9c53321d45591` |
| 31 | `theorem` | [frontier_Ico](../../../../GeneralTopology/DenselyOrdered.lean/declarations/frontier-ico.md) | 171 | `result-track:da441a0481a7b4ee1a6ad7d4d5d25e202b3c40cae24d1014495bc08237e81b4c` |
| 32 | `theorem` | [frontier_Ioc](../../../../GeneralTopology/DenselyOrdered.lean/declarations/frontier-ioc.md) | 175 | `result-track:26fb3ba3a895dd1c93c24db1a651d5fd0803edfb8ffae0e4015342615ac06db0` |
| 33 | `theorem` | [nhdsWithin_Ioi_neBot'](../../../../GeneralTopology/DenselyOrdered.lean/declarations/nhdswithin-ioi-nebot.md) | 178 | `result-track:02c307977e30ec19c80816691b02c3ba3fa53b3dee91a1d75080930864d2ace4` |
| 34 | `theorem` | [nhdsWithin_Ioi_neBot](../../../../GeneralTopology/DenselyOrdered.lean/declarations/nhdswithin-ioi-nebot-source-edition-2.md) | 182 | `result-track:a7032512f53f178b84ff71a4371f3963c464ae21e8f1e91dc95cf093f7b7bed0` |
| 35 | `theorem` | [nhdsGT_neBot_of_exists_gt](../../../../GeneralTopology/DenselyOrdered.lean/declarations/nhdsgt-nebot-of-exists-gt.md) | 185 | `result-track:6d640aec56037722c41536cf2bc503c1f0b3f2806321edf7cbf9aa0cff2a95bc` |
| 36 | `instance` | [nhdsGT_neBot](../../../../GeneralTopology/DenselyOrdered.lean/declarations/nhdsgt-nebot.md) | 191 | `declaration-track:5f2d7e35b86d951efd4374d40ab61596a965b44a1f6bf372bc439e78f3414909` |
| 37 | `theorem` | [nhdsWithin_Ioi_self_neBot](../../../../GeneralTopology/DenselyOrdered.lean/declarations/nhdswithin-ioi-self-nebot.md) | 194 | `result-track:027ea0c28103f191e38d5bcfe6c570a1fbade684248f57b964001a7d3074f853` |
| 38 | `theorem` | [nhdsWithin_Iio_neBot'](../../../../GeneralTopology/DenselyOrdered.lean/declarations/nhdswithin-iio-nebot.md) | 196 | `result-track:afc91959b7e7646ccd9b7b380f2aea2cf24f04bfe87c224632457f3188695ca4` |
| 39 | `theorem` | [nhdsWithin_Iio_neBot](../../../../GeneralTopology/DenselyOrdered.lean/declarations/nhdswithin-iio-nebot-source-edition-2.md) | 200 | `result-track:fc392eaa75e2e056c4f34af312ee3ab314d059912ec67ab86cf21ae076646be0` |
| 40 | `theorem` | [nhdsWithin_Iio_self_neBot'](../../../../GeneralTopology/DenselyOrdered.lean/declarations/nhdswithin-iio-self-nebot.md) | 203 | `result-track:1eb4d607889449a3602290c1b57f29cd9328e7cb12909ce42812dc55da650510` |
| 41 | `instance` | [nhdsLT_neBot](../../../../GeneralTopology/DenselyOrdered.lean/declarations/nhdslt-nebot.md) | 206 | `declaration-track:8f065cffe56e4816540d1f9baa6a0777ce70eeaeb05113c82558d2fdb946b0c4` |
| 42 | `theorem` | [nhdsWithin_Iio_self_neBot](../../../../GeneralTopology/DenselyOrdered.lean/declarations/nhdswithin-iio-self-nebot-source-edition-2.md) | 209 | `result-track:3d683c0d96dcc182f2f3bd3c5375c63662ee599c9388a416146fb57d489a8c1c` |
| 43 | `theorem` | [right_nhdsWithin_Ico_neBot](../../../../GeneralTopology/DenselyOrdered.lean/declarations/right-nhdswithin-ico-nebot.md) | 211 | `result-track:aba0a94dadfd6634d2e9b263a99a710b4541137cfaced703654a595bd2a4cb3d` |
| 44 | `theorem` | [left_nhdsWithin_Ioc_neBot](../../../../GeneralTopology/DenselyOrdered.lean/declarations/left-nhdswithin-ioc-nebot.md) | 214 | `result-track:91686d638342238f7cdc51e2d7427b893420755056ea83437048ba3d22de7a4a` |
| 45 | `theorem` | [left_nhdsWithin_Ioo_neBot](../../../../GeneralTopology/DenselyOrdered.lean/declarations/left-nhdswithin-ioo-nebot.md) | 217 | `result-track:2d8c3d0d0b2ba76a6b3976d7dfe12cccf9c8003cda857ac9c0545130deb8000e` |
| 46 | `theorem` | [right_nhdsWithin_Ioo_neBot](../../../../GeneralTopology/DenselyOrdered.lean/declarations/right-nhdswithin-ioo-nebot.md) | 220 | `result-track:5085b44e46f37ccf823f31b55afb0d3fedb29826913f7206f592caa3bd5de352` |
| 47 | `theorem` | [comap_coe_nhdsLT_of_Ioo_subset](../../../../GeneralTopology/DenselyOrdered.lean/declarations/comap-coe-nhdslt-of-ioo-subset.md) | 223 | `result-track:eefa7efeb80bc8eecf5d0d1b77ae4c975703413198bcd4e6ba3788f070784c75` |
| 48 | `theorem` | [comap_coe_nhdsGT_of_Ioo_subset](../../../../GeneralTopology/DenselyOrdered.lean/declarations/comap-coe-nhdsgt-of-ioo-subset.md) | 243 | `result-track:2130736469cb190f3a6ba112c2b91ba411cd93c11cc7271b8222a49d4fb98665` |
| 49 | `theorem` | [map_coe_atTop_of_Ioo_subset](../../../../GeneralTopology/DenselyOrdered.lean/declarations/map-coe-attop-of-ioo-subset.md) | 252 | `result-track:05fd931335cc4ce2c34294bfdb5d161232369f7b6097d2ea8a0ce85069863c99` |
| 50 | `theorem` | [map_coe_atBot_of_Ioo_subset](../../../../GeneralTopology/DenselyOrdered.lean/declarations/map-coe-atbot-of-ioo-subset.md) | 261 | `result-track:9faec829190184f085ed62b7bfe3f6790ec11a170583823268202b0271dd34c2` |
| 51 | `theorem` | [comap_coe_Ioo_nhdsLT](../../../../GeneralTopology/DenselyOrdered.lean/declarations/comap-coe-ioo-nhdslt.md) | 270 | `result-track:94fb8438a92005f6d05e4c53ef99317d9f36b063b2e6d3deaff0ef1ea181a3b2` |
| 52 | `theorem` | [comap_coe_Ioo_nhdsGT](../../../../GeneralTopology/DenselyOrdered.lean/declarations/comap-coe-ioo-nhdsgt.md) | 278 | `result-track:ab869f8b36c52372af9d5729d7eab711d2a725ebe2fdf0dc1529096909f9bc48` |
| 53 | `theorem` | [comap_coe_Ioi_nhdsGT](../../../../GeneralTopology/DenselyOrdered.lean/declarations/comap-coe-ioi-nhdsgt.md) | 284 | `result-track:520ff393a57f4bf68bf302c65eea691efe3b81fe36e9c6f7b67fe1438c49ff90` |
| 54 | `theorem` | [comap_coe_Iio_nhdsLT](../../../../GeneralTopology/DenselyOrdered.lean/declarations/comap-coe-iio-nhdslt.md) | 290 | `result-track:7ce631794179f56d37c847ef3ee8ab77850e22c2a523caac81bb68d951e1aa40` |
| 55 | `theorem` | [map_coe_Ioo_atTop](../../../../GeneralTopology/DenselyOrdered.lean/declarations/map-coe-ioo-attop.md) | 297 | `result-track:8d1e575a1682f98ab6b79173138ec20f12ad99a396dde836a8424f4442ebde2f` |
| 56 | `theorem` | [map_coe_Ioo_atBot](../../../../GeneralTopology/DenselyOrdered.lean/declarations/map-coe-ioo-atbot.md) | 301 | `result-track:651deef0e9fa88790d530993a839fb2a0254fdad5dc17db27f88ee781b036454` |
| 57 | `theorem` | [map_coe_Ioi_atBot](../../../../GeneralTopology/DenselyOrdered.lean/declarations/map-coe-ioi-atbot.md) | 305 | `result-track:2ec809fb1067f7dbd598eb16c2e6efc09149bb06fd7aadcf86ef3cf0bb06c8cc` |
| 58 | `theorem` | [map_coe_Iio_atTop](../../../../GeneralTopology/DenselyOrdered.lean/declarations/map-coe-iio-attop.md) | 309 | `result-track:43c2ad53808584b9ed6b51032145fb6a0b31e278e848999ce47ac07623a14511` |
| 59 | `theorem` | [tendsto_comp_coe_Ioo_atTop](../../../../GeneralTopology/DenselyOrdered.lean/declarations/tendsto-comp-coe-ioo-attop.md) | 315 | `result-track:d2adcf927514879d08ca16a6132fd51cfc0bf6c0de41f544bc6d71fce8ee0353` |
| 60 | `theorem` | [tendsto_comp_coe_Ioo_atBot](../../../../GeneralTopology/DenselyOrdered.lean/declarations/tendsto-comp-coe-ioo-atbot.md) | 320 | `result-track:8ba6a4da88dc7128060a33772708769f4a28a267bfddf868b280be3f6973ded8` |
| 61 | `theorem` | [tendsto_comp_coe_Ioi_atBot](../../../../GeneralTopology/DenselyOrdered.lean/declarations/tendsto-comp-coe-ioi-atbot.md) | 325 | `result-track:bf1540191899081ccd5efac9865ebdea99eeba52b0b12b04679f3d80f4fff15a` |
| 62 | `theorem` | [tendsto_comp_coe_Iio_atTop](../../../../GeneralTopology/DenselyOrdered.lean/declarations/tendsto-comp-coe-iio-attop.md) | 330 | `result-track:50222fc0d33cb42962223aba5e452d0acaed7f8df4642c188aa27c93bea26896` |
| 63 | `theorem` | [tendsto_Ioo_atTop](../../../../GeneralTopology/DenselyOrdered.lean/declarations/tendsto-ioo-attop.md) | 335 | `result-track:1e2f9c27eee9f75c0dd10cc48d71cf1a18c3105a0c62e2bc50c6e7a8d2fce64b` |
| 64 | `theorem` | [tendsto_Ioo_atBot](../../../../GeneralTopology/DenselyOrdered.lean/declarations/tendsto-ioo-atbot.md) | 340 | `result-track:1bdf8dea2f08bb8ab005f37d8d300e7c2e3c6197677485d8de82619b1404dacc` |
| 65 | `theorem` | [tendsto_Ioi_atBot](../../../../GeneralTopology/DenselyOrdered.lean/declarations/tendsto-ioi-atbot.md) | 345 | `result-track:e2e1b4392bcf3e06066673ec73fa7d922eb05a55a63b38e9b351c0e21a9a3fa4` |
| 66 | `theorem` | [tendsto_Iio_atTop](../../../../GeneralTopology/DenselyOrdered.lean/declarations/tendsto-iio-attop.md) | 350 | `result-track:50176f4324f8c39b58107938b9713a9396e79fc6caf1f390aeec98fc72578ba3` |
| 67 | `instance` | [(anonymous)](../../../../GeneralTopology/DenselyOrdered.lean/declarations/instance.md) | 354 | `declaration-track:a8642e1dcce101b3afcd4fbc65e59fb67e15b41ab38524a4827d20dce7aae837` |
| 68 | `theorem` | [Dense.exists_countable_dense_subset_no_bot_top](../../../../GeneralTopology/DenselyOrdered.lean/declarations/dense-exists-countable-dense-subset-no-bot-top.md) | 367 | `result-track:61d74e17211a76ca99a185f23ee6d7fc1b8462d5778d56fc1fa6f7e107508f8f` |
| 69 | `theorem` | [exists_countable_dense_no_bot_top](../../../../GeneralTopology/DenselyOrdered.lean/declarations/exists-countable-dense-no-bot-top.md) | 383 | `result-track:8e27c23cad287d95b283417b3eea43181cbd82db23ac5631f460fc73d3862ee9` |
| 70 | `theorem` | [isClosed_Ico_iff](../../../../GeneralTopology/DenselyOrdered.lean/declarations/isclosed-ico-iff.md) | 389 | `result-track:25fd7fc1ef6a7466d9e5f5d140cd158ef0af9310a6c3f291edd6e028b29350f3` |
| 71 | `theorem` | [isClosed_Ioc_iff](../../../../GeneralTopology/DenselyOrdered.lean/declarations/isclosed-ioc-iff.md) | 397 | `result-track:0da873d4277b4b32dba9c7043934f1e17cb8391bcb5e16467476423b18c94aae` |
| 72 | `theorem` | [isClosed_Ioo_iff](../../../../GeneralTopology/DenselyOrdered.lean/declarations/isclosed-ioo-iff.md) | 405 | `result-track:45bfbb31d459db81843093038d5747e6c068d4699165ea6e6bc4cfa73278cc1a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e581a109269341ab09e522a24ddcea10d5d02ee51ede5e8c44cb6099b9af0f56 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/DenselyOrdered/Variant4d8097e15684fa9ab3858dc5274606b81e2246d471e8fcb27bcd94969da92546.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/DenselyOrdered/Variant4d8097e15684fa9ab3858dc5274606b81e2246d471e8fcb27bcd94969da92546.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
