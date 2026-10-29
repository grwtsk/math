# Verification target: Densely Ordered Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8853c94337063b4122b45b773ba5a70050b23fe5",
  "lexical_observation_count": 72,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/DenselyOrdered/Variantaca3ddab1f8352e4721a594cec1ead1a7fa8ef26b78cae2bf45af1d349aa4475.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/DenselyOrderedNamespaced.lean/index.md) · [Full source](../../../../GeneralTopology/DenselyOrderedNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8853c94337063b4122b45b773ba5a70050b23fe5`.

Source path: `GRWTSK/Topology/GeneralTopology/DenselyOrdered/Variantaca3ddab1f8352e4721a594cec1ead1a7fa8ef26b78cae2bf45af1d349aa4475.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/DenselyOrdered/Variantaca3ddab1f8352e4721a594cec1ead1a7fa8ef26b78cae2bf45af1d349aa4475.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Order.IsLUB` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [closure_Ioi'](../../../../GeneralTopology/DenselyOrderedNamespaced.lean/declarations/closure-ioi-source-edition-2.md) | 33 | `result-track:b9e9ede0b18a8331b6bb35fb245b55e607e314aa3ce42dd0cf62741fc58abf44` |
| 2 | `theorem` | [closure_Ioi](../../../../GeneralTopology/DenselyOrderedNamespaced.lean/declarations/closure-ioi.md) | 41 | `result-track:ad7522f3ea45fdffd4c6ed00bcd1ae717b6141055c691733c7fc63164f0d6586` |
| 3 | `theorem` | [closure_Iio'](../../../../GeneralTopology/DenselyOrderedNamespaced.lean/declarations/closure-iio-source-edition-2.md) | 46 | `result-track:9bebe4592597511fd71e3b0606e037c5ef00ddf5527264d7becf0e44695cbdae` |
| 4 | `theorem` | [closure_Iio](../../../../GeneralTopology/DenselyOrderedNamespaced.lean/declarations/closure-iio.md) | 51 | `result-track:5f6820b77d5c46757e4d4266b75c33e8c591c616a2c937b9a85fa31309b6c910` |
| 5 | `theorem` | [closure_Ioo](../../../../GeneralTopology/DenselyOrderedNamespaced.lean/declarations/closure-ioo.md) | 56 | `result-track:f9c36a90ffda99f5c2c5989954158a8406f2890bcdf875761182abb7fcf4adf0` |
| 6 | `theorem` | [closure_Ioc](../../../../GeneralTopology/DenselyOrderedNamespaced.lean/declarations/closure-ioc.md) | 69 | `result-track:5c131b57b61e94e5dfafbd908fd00deb7d0e1c32b8027250133474216473a6ac` |
| 7 | `theorem` | [closure_Ico](../../../../GeneralTopology/DenselyOrderedNamespaced.lean/declarations/closure-ico.md) | 77 | `result-track:5936c50425ae8b78f156523dfeb66820e2d1b467b6a335ca772b17c49fe8ce32` |
| 8 | `theorem` | [interior_Ici'](../../../../GeneralTopology/DenselyOrderedNamespaced.lean/declarations/interior-ici.md) | 84 | `result-track:091c8eaeeb60a4f23b32c59ae54eeffd0e928a6b3a2e87dd0a0c52833118f304` |
| 9 | `theorem` | [interior_Ici](../../../../GeneralTopology/DenselyOrderedNamespaced.lean/declarations/interior-ici-source-edition-2.md) | 87 | `result-track:23febb404bb7f62bec837ac9963a6b8930a7239a0fc2361e7a1af4eab500261d` |
| 10 | `theorem` | [interior_Iic'](../../../../GeneralTopology/DenselyOrderedNamespaced.lean/declarations/interior-iic-source-edition-2.md) | 91 | `result-track:f70fe02bcbfd8e803d34fe0766107dcddbd4ae6a6a68e5a7dc8f56c5ab5f0582` |
| 11 | `theorem` | [interior_Iic](../../../../GeneralTopology/DenselyOrderedNamespaced.lean/declarations/interior-iic.md) | 94 | `result-track:0d2ed0adb97459cded90473a04f7cae12cc3c42fc38c6cdc74223ca64b348dcf` |
| 12 | `theorem` | [interior_Icc](../../../../GeneralTopology/DenselyOrderedNamespaced.lean/declarations/interior-icc.md) | 98 | `result-track:736c8e81852edef8409f3ae7ee5d18776b7e66cc4a5b3f2ae783cf3ce0c3a5fe` |
| 13 | `theorem` | [Icc_mem_nhds_iff](../../../../GeneralTopology/DenselyOrderedNamespaced.lean/declarations/icc-mem-nhds-iff.md) | 102 | `result-track:739f41e41c2a0b0feec0b592236676f5e24321df7a07931f0b248909b6f0451d` |
| 14 | `theorem` | [interior_Ico](../../../../GeneralTopology/DenselyOrderedNamespaced.lean/declarations/interior-ico.md) | 107 | `result-track:92d0944c9e90b99efd21a578d8c4b9b9ac33a45b1b1396e79ac1ddf4bf42f8f1` |
| 15 | `theorem` | [Ico_mem_nhds_iff](../../../../GeneralTopology/DenselyOrderedNamespaced.lean/declarations/ico-mem-nhds-iff.md) | 111 | `result-track:0b3fb3ff47c4b239938f8c3a6bd9eef82d6ea7d89ebeef879fc4b80d924fa7f8` |
| 16 | `theorem` | [interior_Ioc](../../../../GeneralTopology/DenselyOrderedNamespaced.lean/declarations/interior-ioc.md) | 115 | `result-track:6915212e222f82236bd6909951c34f02bc2444d764b88e453f38635403fc657d` |
| 17 | `theorem` | [Ioc_mem_nhds_iff](../../../../GeneralTopology/DenselyOrderedNamespaced.lean/declarations/ioc-mem-nhds-iff.md) | 119 | `result-track:7d1add60d2912c98da1c74430a626d28ca586e96b9b8a016b9169c8113b4a9a5` |
| 18 | `theorem` | [closure_interior_Icc](../../../../GeneralTopology/DenselyOrderedNamespaced.lean/declarations/closure-interior-icc.md) | 122 | `result-track:92e7e09a4e9c8da1e466cb0bae18ac967b880dbc8c103bcf2472ea2b210767ff` |
| 19 | `theorem` | [Ioc_subset_closure_interior](../../../../GeneralTopology/DenselyOrderedNamespaced.lean/declarations/ioc-subset-closure-interior.md) | 129 | `result-track:a536cd7f6f3c7cfbc3615dbd0282d8a77f654a303c0231eb330d880aa787792d` |
| 20 | `theorem` | [Ico_subset_closure_interior](../../../../GeneralTopology/DenselyOrderedNamespaced.lean/declarations/ico-subset-closure-interior.md) | 138 | `result-track:ecc46d8152bf67f7766b8ba4a1845debec1f8eee3f058fcc797dfd84b040e1df` |
| 21 | `theorem` | [frontier_Ici'](../../../../GeneralTopology/DenselyOrderedNamespaced.lean/declarations/frontier-ici.md) | 143 | `result-track:0c1cb2bcd1095cbbea79be8633642bb8b222b53c9edb103dc7b8ce8c619cf50b` |
| 22 | `theorem` | [frontier_Ici](../../../../GeneralTopology/DenselyOrderedNamespaced.lean/declarations/frontier-ici-source-edition-2.md) | 146 | `result-track:bc9a54b232ab121522e57ab21103a3f2811a94c5af9937757a1a666d0fdf8c4b` |
| 23 | `theorem` | [frontier_Iic'](../../../../GeneralTopology/DenselyOrderedNamespaced.lean/declarations/frontier-iic.md) | 150 | `result-track:4b6d9ad290cdb1a9f57368f0ece765574b0a3f7e9b5cd1218ccf5e3c4a0a644d` |
| 24 | `theorem` | [frontier_Iic](../../../../GeneralTopology/DenselyOrderedNamespaced.lean/declarations/frontier-iic-source-edition-2.md) | 153 | `result-track:682dc4f8cc0b37516b787e6bb726605469bbfb42a0c89d0054178a3154fd0ed9` |
| 25 | `theorem` | [frontier_Ioi'](../../../../GeneralTopology/DenselyOrderedNamespaced.lean/declarations/frontier-ioi-source-edition-2.md) | 157 | `result-track:33c47da9b18d41f3bde1d37336dbe1995e97317c642595e707d17e0423789705` |
| 26 | `theorem` | [frontier_Ioi](../../../../GeneralTopology/DenselyOrderedNamespaced.lean/declarations/frontier-ioi.md) | 160 | `result-track:1ac0637dc2a72a13450e8ccb7d5cb6da08c361acb50b54fbfdebf46203b3b3d1` |
| 27 | `theorem` | [frontier_Iio'](../../../../GeneralTopology/DenselyOrderedNamespaced.lean/declarations/frontier-iio.md) | 164 | `result-track:6dbd79fc16429735fdcd99278df8e19bf330940f5f135b1daef5cdeb1cdfab33` |
| 28 | `theorem` | [frontier_Iio](../../../../GeneralTopology/DenselyOrderedNamespaced.lean/declarations/frontier-iio-source-edition-2.md) | 167 | `result-track:c2bcedb6c2de3c7753f39190a57c035ccf44924fc9763558efac322884d380a2` |
| 29 | `theorem` | [frontier_Icc](../../../../GeneralTopology/DenselyOrderedNamespaced.lean/declarations/frontier-icc.md) | 171 | `result-track:ee14f9e89d6d508a34b4d24c2c897ab229fa46e37ced988cccd3d4e2541f2df9` |
| 30 | `theorem` | [frontier_Ioo](../../../../GeneralTopology/DenselyOrderedNamespaced.lean/declarations/frontier-ioo.md) | 175 | `result-track:f92a99358882070e9b2498c4625f62660aa54351196400a7db9e993af651fa56` |
| 31 | `theorem` | [frontier_Ico](../../../../GeneralTopology/DenselyOrderedNamespaced.lean/declarations/frontier-ico.md) | 179 | `result-track:ce42244a8ee717d2a2b74db4f0e5383164e8a2e99b2c2384caff5cb2f818c538` |
| 32 | `theorem` | [frontier_Ioc](../../../../GeneralTopology/DenselyOrderedNamespaced.lean/declarations/frontier-ioc.md) | 183 | `result-track:5094a2797e26b42a519d61a037a7cf7c413ea0a5fb5f35056041f5c0f9eec84f` |
| 33 | `theorem` | [nhdsWithin_Ioi_neBot'](../../../../GeneralTopology/DenselyOrderedNamespaced.lean/declarations/nhdswithin-ioi-nebot-source-edition-2.md) | 186 | `result-track:955d5e7ddb16ad16dcd49793c4071e5d5a575daeed574d92e313976781797a27` |
| 34 | `theorem` | [nhdsWithin_Ioi_neBot](../../../../GeneralTopology/DenselyOrderedNamespaced.lean/declarations/nhdswithin-ioi-nebot.md) | 190 | `result-track:4903c244fbf12bac61c0ca93e4dc9380f027ecf3d3853bdca2ea387190bb7462` |
| 35 | `theorem` | [nhdsGT_neBot_of_exists_gt](../../../../GeneralTopology/DenselyOrderedNamespaced.lean/declarations/nhdsgt-nebot-of-exists-gt.md) | 193 | `result-track:eeccae2759689417e7c39414dce65f7a2c5212b49fd2d237a93afb65a35da01d` |
| 36 | `instance` | [nhdsGT_neBot](../../../../GeneralTopology/DenselyOrderedNamespaced.lean/declarations/nhdsgt-nebot.md) | 199 | `declaration-track:91b36e38203632f255fdf058fe1bb5270b2e763f31f292821a67b55f6e14d1f3` |
| 37 | `theorem` | [nhdsWithin_Ioi_self_neBot](../../../../GeneralTopology/DenselyOrderedNamespaced.lean/declarations/nhdswithin-ioi-self-nebot.md) | 202 | `result-track:840d8058982f7968b68e4b82b3f9fadb6d98fdabccb7db3ddf4972c4d6dd9734` |
| 38 | `theorem` | [nhdsWithin_Iio_neBot'](../../../../GeneralTopology/DenselyOrderedNamespaced.lean/declarations/nhdswithin-iio-nebot.md) | 204 | `result-track:827726259321f6358d9f7819ab103b38860c177403e820aea144be935278602a` |
| 39 | `theorem` | [nhdsWithin_Iio_neBot](../../../../GeneralTopology/DenselyOrderedNamespaced.lean/declarations/nhdswithin-iio-nebot-source-edition-2.md) | 208 | `result-track:9f9cfecf14bcbcaa5b7b75e054ce1eff91a17ab5616388f7e804d806bb81381b` |
| 40 | `theorem` | [nhdsWithin_Iio_self_neBot'](../../../../GeneralTopology/DenselyOrderedNamespaced.lean/declarations/nhdswithin-iio-self-nebot-source-edition-2.md) | 211 | `result-track:dc22bec6c7223a452fe7a2c7527cc9154bd9267f03ed4f15b7e673282af660ec` |
| 41 | `instance` | [nhdsLT_neBot](../../../../GeneralTopology/DenselyOrderedNamespaced.lean/declarations/nhdslt-nebot.md) | 214 | `declaration-track:cb0f292bced7caf6581af5885da3db848acaaccf73c7e7626482fcbfd254924a` |
| 42 | `theorem` | [nhdsWithin_Iio_self_neBot](../../../../GeneralTopology/DenselyOrderedNamespaced.lean/declarations/nhdswithin-iio-self-nebot.md) | 217 | `result-track:d1f89e8a9815a9654fac09981d8978867bc57caba394186ffdbc1bea5df0d20c` |
| 43 | `theorem` | [right_nhdsWithin_Ico_neBot](../../../../GeneralTopology/DenselyOrderedNamespaced.lean/declarations/right-nhdswithin-ico-nebot.md) | 219 | `result-track:006944d9ed490ff97dad9954efe5b39053d1a587a981cc82ee9ed6a3be4a9a5e` |
| 44 | `theorem` | [left_nhdsWithin_Ioc_neBot](../../../../GeneralTopology/DenselyOrderedNamespaced.lean/declarations/left-nhdswithin-ioc-nebot.md) | 222 | `result-track:a3ba4937ad7ca9ecf9ed90e215e3e4b00a2503d90a169f3c58d4908cc7229a85` |
| 45 | `theorem` | [left_nhdsWithin_Ioo_neBot](../../../../GeneralTopology/DenselyOrderedNamespaced.lean/declarations/left-nhdswithin-ioo-nebot.md) | 225 | `result-track:01cac159c87a3e13ba6884099f31d4aa20dea8d7b54edc78b3a368e9d7dafed6` |
| 46 | `theorem` | [right_nhdsWithin_Ioo_neBot](../../../../GeneralTopology/DenselyOrderedNamespaced.lean/declarations/right-nhdswithin-ioo-nebot.md) | 228 | `result-track:a606318789b9f60a3592a82794a02630b8f55c0890a45bec226b88cc91d3f840` |
| 47 | `theorem` | [comap_coe_nhdsLT_of_Ioo_subset](../../../../GeneralTopology/DenselyOrderedNamespaced.lean/declarations/comap-coe-nhdslt-of-ioo-subset.md) | 231 | `result-track:1ad653506b5acd92220984201b11af770d68a67919af58f690c402c8b531cbb1` |
| 48 | `theorem` | [comap_coe_nhdsGT_of_Ioo_subset](../../../../GeneralTopology/DenselyOrderedNamespaced.lean/declarations/comap-coe-nhdsgt-of-ioo-subset.md) | 251 | `result-track:1a02ebf4a65e31935c8651f46a9aac00e19cc3d2831be16da9fe7a348c82461e` |
| 49 | `theorem` | [map_coe_atTop_of_Ioo_subset](../../../../GeneralTopology/DenselyOrderedNamespaced.lean/declarations/map-coe-attop-of-ioo-subset.md) | 260 | `result-track:2d475cc9bc3e348f091bab823588230df10f53b23da5cd8c26be6e3d8c1b6728` |
| 50 | `theorem` | [map_coe_atBot_of_Ioo_subset](../../../../GeneralTopology/DenselyOrderedNamespaced.lean/declarations/map-coe-atbot-of-ioo-subset.md) | 269 | `result-track:bd7c689d02823da71520d05c697a0a2d0b102b146847f240d83f0418a4e2fb2c` |
| 51 | `theorem` | [comap_coe_Ioo_nhdsLT](../../../../GeneralTopology/DenselyOrderedNamespaced.lean/declarations/comap-coe-ioo-nhdslt.md) | 278 | `result-track:75897b73ca479efda98be411691f8ab4f0b2a561e4a466b851bf547455d92ec8` |
| 52 | `theorem` | [comap_coe_Ioo_nhdsGT](../../../../GeneralTopology/DenselyOrderedNamespaced.lean/declarations/comap-coe-ioo-nhdsgt.md) | 286 | `result-track:df2572850a8fc2f836615120fbb5c4dca076fa69263e312693305270aeac5950` |
| 53 | `theorem` | [comap_coe_Ioi_nhdsGT](../../../../GeneralTopology/DenselyOrderedNamespaced.lean/declarations/comap-coe-ioi-nhdsgt.md) | 292 | `result-track:7edbdaf0f37f57fdff79c9c365dcf614757c9e7ced8adb3ff2f1c547c141a794` |
| 54 | `theorem` | [comap_coe_Iio_nhdsLT](../../../../GeneralTopology/DenselyOrderedNamespaced.lean/declarations/comap-coe-iio-nhdslt.md) | 298 | `result-track:0dee27d9becb5c5d7fa7cc444b3770faa5c4207cd3533005d777baeac682367c` |
| 55 | `theorem` | [map_coe_Ioo_atTop](../../../../GeneralTopology/DenselyOrderedNamespaced.lean/declarations/map-coe-ioo-attop.md) | 305 | `result-track:1c8f4777684ee1fd3ad87eff1f00896db77f857c6e8bf9193c570d1039813ca0` |
| 56 | `theorem` | [map_coe_Ioo_atBot](../../../../GeneralTopology/DenselyOrderedNamespaced.lean/declarations/map-coe-ioo-atbot.md) | 309 | `result-track:cd46e4941b0aa8504fcb6b98335cf36aa09bf7d352eeda1e8dff1c4b8c0ee705` |
| 57 | `theorem` | [map_coe_Ioi_atBot](../../../../GeneralTopology/DenselyOrderedNamespaced.lean/declarations/map-coe-ioi-atbot.md) | 313 | `result-track:f950a10faf7b97f5a242aa449642d78dfe3177164d22f9ef218014588beb8bfa` |
| 58 | `theorem` | [map_coe_Iio_atTop](../../../../GeneralTopology/DenselyOrderedNamespaced.lean/declarations/map-coe-iio-attop.md) | 317 | `result-track:20545bf910d4d41edcc659347486353090c3412a15acfcfdfc8411d577c655ec` |
| 59 | `theorem` | [tendsto_comp_coe_Ioo_atTop](../../../../GeneralTopology/DenselyOrderedNamespaced.lean/declarations/tendsto-comp-coe-ioo-attop.md) | 323 | `result-track:2927a69378b7a4f31fa9e4647eeb4bcc11263d2010b7218cc6cbe7608151260a` |
| 60 | `theorem` | [tendsto_comp_coe_Ioo_atBot](../../../../GeneralTopology/DenselyOrderedNamespaced.lean/declarations/tendsto-comp-coe-ioo-atbot.md) | 328 | `result-track:ecf5f14d95f9d3a2712f2503abec433f7d6099a8fbf58fecf3c52ed5d9ae6e23` |
| 61 | `theorem` | [tendsto_comp_coe_Ioi_atBot](../../../../GeneralTopology/DenselyOrderedNamespaced.lean/declarations/tendsto-comp-coe-ioi-atbot.md) | 333 | `result-track:6531208799707a21602c357c503a299ad98fe3090ef0af945b08790e43258166` |
| 62 | `theorem` | [tendsto_comp_coe_Iio_atTop](../../../../GeneralTopology/DenselyOrderedNamespaced.lean/declarations/tendsto-comp-coe-iio-attop.md) | 338 | `result-track:8f90133c59c22fd622ea0e230c4e92166975f6f6261f93ccd981d638c526480e` |
| 63 | `theorem` | [tendsto_Ioo_atTop](../../../../GeneralTopology/DenselyOrderedNamespaced.lean/declarations/tendsto-ioo-attop.md) | 343 | `result-track:39998dbd193179a4748276d160a0cbd5ccf3912b0eee8dc18f680172953234dd` |
| 64 | `theorem` | [tendsto_Ioo_atBot](../../../../GeneralTopology/DenselyOrderedNamespaced.lean/declarations/tendsto-ioo-atbot.md) | 348 | `result-track:46a641d6c154cdbc121d3870c86cfeee079310f8d3622132456f1c9214cd59be` |
| 65 | `theorem` | [tendsto_Ioi_atBot](../../../../GeneralTopology/DenselyOrderedNamespaced.lean/declarations/tendsto-ioi-atbot.md) | 353 | `result-track:dc48977c6350c8b430795f9ad66a6337c2f9525433b8bccb614b55a2a53e04f9` |
| 66 | `theorem` | [tendsto_Iio_atTop](../../../../GeneralTopology/DenselyOrderedNamespaced.lean/declarations/tendsto-iio-attop.md) | 358 | `result-track:46a850a057b6dabe5b8edeff0f4e8ca21d98296cc4a6ac95da9210abb4d71fa5` |
| 67 | `instance` | [(anonymous)](../../../../GeneralTopology/DenselyOrderedNamespaced.lean/declarations/instance.md) | 362 | `declaration-track:d90d8929deb00d4fe45e57e71601d71cd9dd1ca3095a21cb2ba093519e5b904a` |
| 68 | `theorem` | [Dense.exists_countable_dense_subset_no_bot_top](../../../../GeneralTopology/DenselyOrderedNamespaced.lean/declarations/dense-exists-countable-dense-subset-no-bot-top.md) | 375 | `result-track:a879997f2b4a8d1540ab89d639aea6dec753c230025a49525202661317069b0a` |
| 69 | `theorem` | [exists_countable_dense_no_bot_top](../../../../GeneralTopology/DenselyOrderedNamespaced.lean/declarations/exists-countable-dense-no-bot-top.md) | 391 | `result-track:faee13e185a9dceab537f5b0525d4b5b9360f3f837f08fbe241dc7979f9c17cf` |
| 70 | `theorem` | [isClosed_Ico_iff](../../../../GeneralTopology/DenselyOrderedNamespaced.lean/declarations/isclosed-ico-iff.md) | 397 | `result-track:408d231760690a56132999de23137fca8f00997c51443d461a97cf3532caa451` |
| 71 | `theorem` | [isClosed_Ioc_iff](../../../../GeneralTopology/DenselyOrderedNamespaced.lean/declarations/isclosed-ioc-iff.md) | 405 | `result-track:56a7062f345e9fd3cce093bdf6e41d726022fd4e98cda730cb21ff09ca559fda` |
| 72 | `theorem` | [isClosed_Ioo_iff](../../../../GeneralTopology/DenselyOrderedNamespaced.lean/declarations/isclosed-ioo-iff.md) | 413 | `result-track:2bddfd956b04c54490bd5f008c11bdc1def5175720f38f3b26a51b597e433b95` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d0409d91b53643cd7c0556e7392d638b8c815a05e0b46e58c217b34d9f2d946c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/DenselyOrdered/Variantaca3ddab1f8352e4721a594cec1ead1a7fa8ef26b78cae2bf45af1d349aa4475.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/DenselyOrdered/Variantaca3ddab1f8352e4721a594cec1ead1a7fa8ef26b78cae2bf45af1d349aa4475.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
