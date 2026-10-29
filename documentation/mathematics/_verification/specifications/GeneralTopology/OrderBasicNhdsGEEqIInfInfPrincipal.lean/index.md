# Verification target: Order Basic Nhds GEEq IInf Inf Principal

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "55a7510276f30c2bbe70b43993143d137ed0ed25",
  "lexical_observation_count": 98,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variant7abbc2255c0efe89274b440c3401ef7f707e39b498e092152e924dc48d23e639.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/OrderBasicNhdsGEEqIInfInfPrincipal.lean/index.md) · [Full source](../../../../GeneralTopology/OrderBasicNhdsGEEqIInfInfPrincipal.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `55a7510276f30c2bbe70b43993143d137ed0ed25`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variant7abbc2255c0efe89274b440c3401ef7f707e39b498e092152e924dc48d23e639.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variant7abbc2255c0efe89274b440c3401ef7f707e39b498e092152e924dc48d23e639.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Filter.Interval` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Set.Pi` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.OrdContinuous` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.TFAE` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Order.LeftRight` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Order.OrderClosed` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [OrderTopology](../../../../GeneralTopology/OrderBasicNhdsGEEqIInfInfPrincipal.lean/declarations/ordertopology.md) | 66 | `declaration-track:3baa2870506551cfc7f20b06d97be9b8ad56b840096bfd754738a034ec17b23a` |
| 2 | `def` | [Preorder.topology](../../../../GeneralTopology/OrderBasicNhdsGEEqIInfInfPrincipal.lean/declarations/preorder-topology.md) | 74 | `declaration-track:fd328bdbd305f5e1aa6734727818940f91562e1309d88dc004afc437874c9981` |
| 3 | `instance` | [(anonymous)](../../../../GeneralTopology/OrderBasicNhdsGEEqIInfInfPrincipal.lean/declarations/instance-source-edition-2.md) | 81 | `declaration-track:bf101f6796ca01f72230795ef40789ef0f7d2c6058347eddcd3ecf2f895aafee` |
| 4 | `theorem` | [isOpen_iff_generate_intervals](../../../../GeneralTopology/OrderBasicNhdsGEEqIInfInfPrincipal.lean/declarations/isopen-iff-generate-intervals.md) | 86 | `result-track:a97209012826e5f979f0bedf74d1802d81938ce5b4f132fb2c12f8b31147d210` |
| 5 | `theorem` | [isOpen_lt'](../../../../GeneralTopology/OrderBasicNhdsGEEqIInfInfPrincipal.lean/declarations/isopen-lt.md) | 90 | `result-track:dde28989edce623e32b56e1669a716ffe8d4c1f39d24ab52d7a1dd200888e45a` |
| 6 | `theorem` | [isOpen_gt'](../../../../GeneralTopology/OrderBasicNhdsGEEqIInfInfPrincipal.lean/declarations/isopen-gt.md) | 93 | `result-track:783cd30458da145b9b05305a41ff36c095951b845b91ef5c3320b2f03eaf2f93` |
| 7 | `theorem` | [lt_mem_nhds](../../../../GeneralTopology/OrderBasicNhdsGEEqIInfInfPrincipal.lean/declarations/lt-mem-nhds.md) | 96 | `result-track:14056b4fc22dadd1ae7affa6407fe4702c5b3c59036719ec69612c60a44e5672` |
| 8 | `theorem` | [le_mem_nhds](../../../../GeneralTopology/OrderBasicNhdsGEEqIInfInfPrincipal.lean/declarations/le-mem-nhds.md) | 99 | `result-track:b7c9c9952a50bb37e1cf295bf4a9583b167269a7ea4c9b03d0c872269c9d7b72` |
| 9 | `theorem` | [gt_mem_nhds](../../../../GeneralTopology/OrderBasicNhdsGEEqIInfInfPrincipal.lean/declarations/gt-mem-nhds.md) | 102 | `result-track:7980d8c6d077437a013a680c420a5af9834379d8a709ee22d85591ebac034bfd` |
| 10 | `theorem` | [ge_mem_nhds](../../../../GeneralTopology/OrderBasicNhdsGEEqIInfInfPrincipal.lean/declarations/ge-mem-nhds.md) | 105 | `result-track:ba9457acc02c8a32f54ab7861e511d0bd38f22f6f67a169b63b3edc1fc7e695a` |
| 11 | `theorem` | [nhds_eq_order](../../../../GeneralTopology/OrderBasicNhdsGEEqIInfInfPrincipal.lean/declarations/nhds-eq-order.md) | 108 | `result-track:7adc86dd431a6f78069517bb50c3ba56acb02d7e7c226afa06c79797f4fbf781` |
| 12 | `theorem` | [tendsto_order](../../../../GeneralTopology/OrderBasicNhdsGEEqIInfInfPrincipal.lean/declarations/tendsto-order.md) | 114 | `result-track:026c3a902dcc0196faee3e286361e2256a0259ac6ded4222875804235a5088e4` |
| 13 | `instance` | [tendstoIccClassNhds](../../../../GeneralTopology/OrderBasicNhdsGEEqIInfInfPrincipal.lean/declarations/tendstoiccclassnhds.md) | 117 | `declaration-track:7ce1cbbede049165360689c760753d5c72fa514044b84ca32dedc756ea4d7979` |
| 14 | `instance` | [tendstoIcoClassNhds](../../../../GeneralTopology/OrderBasicNhdsGEEqIInfInfPrincipal.lean/declarations/tendstoicoclassnhds.md) | 125 | `declaration-track:a9d772f234e2796ce2243328cd8c434b9a1598d9f669b9de323515ed84964aa6` |
| 15 | `instance` | [tendstoIocClassNhds](../../../../GeneralTopology/OrderBasicNhdsGEEqIInfInfPrincipal.lean/declarations/tendstoiocclassnhds.md) | 128 | `declaration-track:b495ceb94ae09740a022fe12ac11fe9177aab0a04eace46dbb4c6f2c7e3b2fc1` |
| 16 | `instance` | [tendstoIooClassNhds](../../../../GeneralTopology/OrderBasicNhdsGEEqIInfInfPrincipal.lean/declarations/tendstoiooclassnhds.md) | 131 | `declaration-track:64dbb42483252af4e110daebc350105056b7b18548d28e36cd5b38962ca5a941` |
| 17 | `theorem` | [tendsto_of_tendsto_of_tendsto_of_le_of_le'](../../../../GeneralTopology/OrderBasicNhdsGEEqIInfInfPrincipal.lean/declarations/tendsto-of-tendsto-of-tendsto-of-le-of-le-source-edition-2.md) | 136 | `result-track:dfff7251421749998c85500332dc44fcdda46a2acd37335cbc8e66ce74e9ddf9` |
| 18 | `theorem` | [tendsto_of_tendsto_of_tendsto_of_le_of_le](../../../../GeneralTopology/OrderBasicNhdsGEEqIInfInfPrincipal.lean/declarations/tendsto-of-tendsto-of-tendsto-of-le-of-le.md) | 145 | `result-track:d9bea13d82662a32e8ce32609ba0410b5ded70e4e5cdfc196aea13f42519e02b` |
| 19 | `theorem` | [nhds_order_unbounded](../../../../GeneralTopology/OrderBasicNhdsGEEqIInfInfPrincipal.lean/declarations/nhds-order-unbounded.md) | 153 | `result-track:08ea1dde8088f2c45871a156f20c505f783e6ca85398cd74428d0a0b162ead83` |
| 20 | `theorem` | [tendsto_order_unbounded](../../../../GeneralTopology/OrderBasicNhdsGEEqIInfInfPrincipal.lean/declarations/tendsto-order-unbounded.md) | 157 | `result-track:714010c578ed8aef5767dc1274fb919b9ce988284b793a6908f894052b8ac54d` |
| 21 | `instance` | [tendstoIxxNhdsWithin](../../../../GeneralTopology/OrderBasicNhdsGEEqIInfInfPrincipal.lean/declarations/tendstoixxnhdswithin.md) | 165 | `declaration-track:96de2f34bb79788d60737b000a0afd0d393e9da224a767299009abfe5fb7f811` |
| 22 | `instance` | [tendstoIccClassNhdsPi](../../../../GeneralTopology/OrderBasicNhdsGEEqIInfInfPrincipal.lean/declarations/tendstoiccclassnhdspi.md) | 170 | `declaration-track:83a0b80d0ba41f342b0dee639ca8810f65bbe6c080207e221f83272742a0dcd3` |
| 23 | `theorem` | [induced_topology_le_preorder](../../../../GeneralTopology/OrderBasicNhdsGEEqIInfInfPrincipal.lean/declarations/induced-topology-le-preorder.md) | 181 | `result-track:bd7e2415bfb5583fc54db510f6f59e7db05efea3099edfcfb9aa217cf784085b` |
| 24 | `theorem` | [induced_topology_eq_preorder](../../../../GeneralTopology/OrderBasicNhdsGEEqIInfInfPrincipal.lean/declarations/induced-topology-eq-preorder.md) | 190 | `result-track:62b78d52e5aa4c491a78659da59229d0bf31895ed45fe7646843f0a829f38494` |
| 25 | `theorem` | [induced_orderTopology'](../../../../GeneralTopology/OrderBasicNhdsGEEqIInfInfPrincipal.lean/declarations/induced-ordertopology-source-edition-2.md) | 211 | `result-track:b9f999fd91eae8a4b93bd03cdb63000cd294f04cdec4e6c939dcff7c83f0f916` |
| 26 | `theorem` | [induced_orderTopology](../../../../GeneralTopology/OrderBasicNhdsGEEqIInfInfPrincipal.lean/declarations/induced-ordertopology.md) | 218 | `result-track:54fb1643a00818a75924b793df50e075f2818ac788739cc5ef5e6e5e77195255` |
| 27 | `theorem` | [StrictMono.induced_topology_eq_preorder](../../../../GeneralTopology/OrderBasicNhdsGEEqIInfInfPrincipal.lean/declarations/strictmono-induced-topology-eq-preorder.md) | 227 | `result-track:ec9339bc9003ca188ad95534eb823038e7887d241f170d8dd4dd785e8d6fd06f` |
| 28 | `theorem` | [StrictMono.isEmbedding_of_ordConnected](../../../../GeneralTopology/OrderBasicNhdsGEEqIInfInfPrincipal.lean/declarations/strictmono-isembedding-of-ordconnected.md) | 238 | `result-track:1269056d27922b74c3748fc5902fccb42d3aeffbb71ceaec1dcb3ca0c8390d95` |
| 29 | `instance` | [orderTopology_of_ordConnected](../../../../GeneralTopology/OrderBasicNhdsGEEqIInfInfPrincipal.lean/declarations/ordertopology-of-ordconnected.md) | 248 | `declaration-track:c8458ae50f701c2797cb2f887c6e86892cf5071c1e384a1d6296711e6a1502d7` |
| 30 | `theorem` | [nhdsGE_eq_iInf_inf_principal](../../../../GeneralTopology/OrderBasicNhdsGEEqIInfInfPrincipal.lean/declarations/nhdsge-eq-iinf-inf-principal.md) | 253 | `result-track:7932eb11d7000e883b05a12f07a4ab0282eb669a10cee10d8f7d7b07b0e05d06` |
| 31 | `theorem` | [nhdsLE_eq_iInf_inf_principal](../../../../GeneralTopology/OrderBasicNhdsGEEqIInfInfPrincipal.lean/declarations/nhdsle-eq-iinf-inf-principal.md) | 261 | `result-track:61412bc15a516d26748e0f61a1be4498139831b0c8d392ce359f8bd278218a40` |
| 32 | `theorem` | [nhdsGE_eq_iInf_principal](../../../../GeneralTopology/OrderBasicNhdsGEEqIInfInfPrincipal.lean/declarations/nhdsge-eq-iinf-principal.md) | 267 | `result-track:317b0258e9dcf678989174a24b74896df7c6264f7b9befc30b23ecbd4b94b61c` |
| 33 | `theorem` | [nhdsLE_eq_iInf_principal](../../../../GeneralTopology/OrderBasicNhdsGEEqIInfInfPrincipal.lean/declarations/nhdsle-eq-iinf-principal.md) | 273 | `result-track:d757d7bbec4ef9818fe90ec57156e46d19e8f103cfaf97d28bb40f5f125c932f` |
| 34 | `theorem` | [nhdsGE_basis_of_exists_gt](../../../../GeneralTopology/OrderBasicNhdsGEEqIInfInfPrincipal.lean/declarations/nhdsge-basis-of-exists-gt.md) | 279 | `result-track:8dc1085dbf07c8262da32dab597e83ba9d67b701cc93e7de858d136151d1baf8` |
| 35 | `theorem` | [nhdsLE_basis_of_exists_lt](../../../../GeneralTopology/OrderBasicNhdsGEEqIInfInfPrincipal.lean/declarations/nhdsle-basis-of-exists-lt.md) | 289 | `result-track:6bf3b6fd1d3db9ae52e80293fe2d47a53309a1407f18b4e0ede7282c3940e222` |
| 36 | `theorem` | [nhdsGE_basis](../../../../GeneralTopology/OrderBasicNhdsGEEqIInfInfPrincipal.lean/declarations/nhdsge-basis.md) | 296 | `result-track:bd9b6766a09dba6671659109e920604d7afec67ebd47746048beddac790e195c` |
| 37 | `theorem` | [nhdsLE_basis](../../../../GeneralTopology/OrderBasicNhdsGEEqIInfInfPrincipal.lean/declarations/nhdsle-basis.md) | 302 | `result-track:754d65b393b808f063d77d56d8fc1e0c81632ddd1b9d6e54fc1e8cb7a5fd9360` |
| 38 | `theorem` | [nhds_top_order](../../../../GeneralTopology/OrderBasicNhdsGEEqIInfInfPrincipal.lean/declarations/nhds-top-order.md) | 308 | `result-track:12850e3c4c9e4a9b7f9b9b9afea6d409ca4c100fa9a89a8b9df31def09680b8f` |
| 39 | `theorem` | [nhds_bot_order](../../../../GeneralTopology/OrderBasicNhdsGEEqIInfInfPrincipal.lean/declarations/nhds-bot-order.md) | 311 | `result-track:9f4eb6cbe1b9cd2961e443971b49ddd6eb2f41dfce19637254b89d7e2fe19346` |
| 40 | `theorem` | [nhds_top_basis](../../../../GeneralTopology/OrderBasicNhdsGEEqIInfInfPrincipal.lean/declarations/nhds-top-basis.md) | 314 | `result-track:2622e6d2d8054971f0703e434526670451eb1237b89d41c99b767493f7977a97` |
| 41 | `theorem` | [nhds_bot_basis](../../../../GeneralTopology/OrderBasicNhdsGEEqIInfInfPrincipal.lean/declarations/nhds-bot-basis.md) | 319 | `result-track:70121b90a9f354595bff83a402cb9b0cc3cdae26f9760e76ee4bff6dbde00849` |
| 42 | `theorem` | [nhds_top_basis_Ici](../../../../GeneralTopology/OrderBasicNhdsGEEqIInfInfPrincipal.lean/declarations/nhds-top-basis-ici.md) | 323 | `result-track:dcad10002119cefe784860336ca692ab14d7a7a805657085e724857cd292e344` |
| 43 | `theorem` | [nhds_bot_basis_Iic](../../../../GeneralTopology/OrderBasicNhdsGEEqIInfInfPrincipal.lean/declarations/nhds-bot-basis-iic.md) | 329 | `result-track:40ea8966ee65eb6299f02a951c8e7f3b26f87bd2f7b20d2bbe6207d9090ef185` |
| 44 | `theorem` | [tendsto_nhds_top_mono](../../../../GeneralTopology/OrderBasicNhdsGEEqIInfInfPrincipal.lean/declarations/tendsto-nhds-top-mono-source-edition-2.md) | 333 | `result-track:f4ad9fc9073f24712576f77266000b193a5556e99da5c4a8150f60acc95a8475` |
| 45 | `theorem` | [tendsto_nhds_bot_mono](../../../../GeneralTopology/OrderBasicNhdsGEEqIInfInfPrincipal.lean/declarations/tendsto-nhds-bot-mono-source-edition-2.md) | 339 | `result-track:3c35faa8a9e937582aab15d06b0bc66ae0af3abe921720ea190af9d34f8d2611` |
| 46 | `theorem` | [tendsto_nhds_top_mono'](../../../../GeneralTopology/OrderBasicNhdsGEEqIInfInfPrincipal.lean/declarations/tendsto-nhds-top-mono.md) | 343 | `result-track:bf86792840313fc6a83a3475f939cffd9152021936e88dc13e07e2883c0477b9` |
| 47 | `theorem` | [tendsto_nhds_bot_mono'](../../../../GeneralTopology/OrderBasicNhdsGEEqIInfInfPrincipal.lean/declarations/tendsto-nhds-bot-mono.md) | 347 | `result-track:0206087ade72bcfe7f9384fa3db51f823dcc856636094ab513d19f80f13d0aac` |
| 48 | `theorem` | [order_separated](../../../../GeneralTopology/OrderBasicNhdsGEEqIInfInfPrincipal.lean/declarations/order-separated.md) | 357 | `result-track:f5256c5228791ca6cdb99a4e8f2b0dd96f994ecb30bc001ab629a852f805eeb3` |
| 49 | `instance` | [(anonymous)](../../../../GeneralTopology/OrderBasicNhdsGEEqIInfInfPrincipal.lean/declarations/instance.md) | 363 | `declaration-track:45eec7931de8e4fb8a3a9fe372a543b91390ffe479e5feb7c284d4170d8b9b55` |
| 50 | `theorem` | [exists_Ioc_subset_of_mem_nhds](../../../../GeneralTopology/OrderBasicNhdsGEEqIInfInfPrincipal.lean/declarations/exists-ioc-subset-of-mem-nhds.md) | 370 | `result-track:548d837a02826c52e96ab50f3f5c88e2ca3ff52d166355ed1ce8349c462886d1` |
| 51 | `theorem` | [exists_Ioc_subset_of_mem_nhds'](../../../../GeneralTopology/OrderBasicNhdsGEEqIInfInfPrincipal.lean/declarations/exists-ioc-subset-of-mem-nhds-source-edition-2.md) | 374 | `result-track:77979224a83ec72af14b9089de557b88d9b9cd25539b217482baaf44c776a295` |
| 52 | `theorem` | [exists_Ico_subset_of_mem_nhds'](../../../../GeneralTopology/OrderBasicNhdsGEEqIInfInfPrincipal.lean/declarations/exists-ico-subset-of-mem-nhds-source-edition-2.md) | 380 | `result-track:c79010a5bc4630e78c6ad8edce23af121361f240a46f757fa1b8501fee0ac459` |
| 53 | `theorem` | [exists_Ico_subset_of_mem_nhds](../../../../GeneralTopology/OrderBasicNhdsGEEqIInfInfPrincipal.lean/declarations/exists-ico-subset-of-mem-nhds.md) | 385 | `result-track:78f1571a7a2272fe2844e74fb9386744578d46093b883e4da6444d4d6ce8703d` |
| 54 | `theorem` | [exists_Icc_mem_subset_of_mem_nhdsGE](../../../../GeneralTopology/OrderBasicNhdsGEEqIInfInfPrincipal.lean/declarations/exists-icc-mem-subset-of-mem-nhdsge.md) | 391 | `result-track:0d96cf3d649e9aab12bd7423a9abef662ddd18341f2b7580eda2df930be49e88` |
| 55 | `theorem` | [exists_Icc_mem_subset_of_mem_nhdsLE](../../../../GeneralTopology/OrderBasicNhdsGEEqIInfInfPrincipal.lean/declarations/exists-icc-mem-subset-of-mem-nhdsle.md) | 406 | `result-track:99241f45af731a795daaaadbe3e3296b4383761364af8038142c555a9cd8c5a9` |
| 56 | `theorem` | [exists_Icc_mem_subset_of_mem_nhds](../../../../GeneralTopology/OrderBasicNhdsGEEqIInfInfPrincipal.lean/declarations/exists-icc-mem-subset-of-mem-nhds.md) | 414 | `result-track:b4a9b768a6a46ee4893bf74aa32254db20693e9cb672cd2f5ba576b0f27e89ff` |
| 57 | `theorem` | [IsOpen.exists_Ioo_subset](../../../../GeneralTopology/OrderBasicNhdsGEEqIInfInfPrincipal.lean/declarations/isopen-exists-ioo-subset.md) | 424 | `result-track:fb94258c37891a68de759587e5bb60d103f29bdc47250dc0295ea60e0dda1b91` |
| 58 | `theorem` | [dense_of_exists_between](../../../../GeneralTopology/OrderBasicNhdsGEEqIInfInfPrincipal.lean/declarations/dense-of-exists-between.md) | 437 | `result-track:8f6b9df5cd28d4783fbd935dd793bc255643e15db6b37a618239839d7bb276fd` |
| 59 | `theorem` | [dense_iff_exists_between](../../../../GeneralTopology/OrderBasicNhdsGEEqIInfInfPrincipal.lean/declarations/dense-iff-exists-between.md) | 447 | `result-track:d37653a1c7ff828c1f86c564cd4675e2eebc31b211897064dd89442bf645d02b` |
| 60 | `theorem` | [mem_nhds_iff_exists_Ioo_subset'](../../../../GeneralTopology/OrderBasicNhdsGEEqIInfInfPrincipal.lean/declarations/mem-nhds-iff-exists-ioo-subset.md) | 453 | `result-track:bd50d9a2344aa69be4fd0592d214c6efb129ed4b627b9fef4832a54a4c278dd0` |
| 61 | `theorem` | [mem_nhds_iff_exists_Ioo_subset](../../../../GeneralTopology/OrderBasicNhdsGEEqIInfInfPrincipal.lean/declarations/mem-nhds-iff-exists-ioo-subset-source-edition-2.md) | 465 | `result-track:ddeb91b4f799e7b83de5f31462a9e04cf7030b926311f3f7d8a0861515feb7f8` |
| 62 | `theorem` | [nhds_basis_Ioo'](../../../../GeneralTopology/OrderBasicNhdsGEEqIInfInfPrincipal.lean/declarations/nhds-basis-ioo.md) | 469 | `result-track:5a68a1afbc34d7705127b09a91d1a7e575ab97b0f4a373faf68770667d6fcfcb` |
| 63 | `theorem` | [nhds_basis_Ioo](../../../../GeneralTopology/OrderBasicNhdsGEEqIInfInfPrincipal.lean/declarations/nhds-basis-ioo-source-edition-2.md) | 473 | `result-track:d2af6901e0f2575e30290447438e1ce01a0eb3e932db465f3a56a652ac875177` |
| 64 | `theorem` | [Filter.Eventually.exists_Ioo_subset](../../../../GeneralTopology/OrderBasicNhdsGEEqIInfInfPrincipal.lean/declarations/filter-eventually-exists-ioo-subset.md) | 477 | `result-track:0f477e9088cb8c77b6d6ec4fc0cfaa1a64db6a46bf7c3c50f053035e1b562ae9` |
| 65 | `theorem` | [Dense.topology_eq_generateFrom](../../../../GeneralTopology/OrderBasicNhdsGEEqIInfInfPrincipal.lean/declarations/dense-topology-eq-generatefrom.md) | 481 | `result-track:7fc81c0daf2c3810b6a85b46e904ea9ac2bc921a6932f9a0842c4e2eccde973a` |
| 66 | `theorem` | [PredOrder.hasBasis_nhds_Ioc_of_exists_gt](../../../../GeneralTopology/OrderBasicNhdsGEEqIInfInfPrincipal.lean/declarations/predorder-hasbasis-nhds-ioc-of-exists-gt.md) | 495 | `result-track:2859b966dc213d2413ae2cca5159c4d4ff213d50f1cd457ce9bcd57524dcec85` |
| 67 | `theorem` | [PredOrder.hasBasis_nhds_Ioc](../../../../GeneralTopology/OrderBasicNhdsGEEqIInfInfPrincipal.lean/declarations/predorder-hasbasis-nhds-ioc.md) | 499 | `result-track:adc1aef7135167f18bf7b746d4472c957ac2330b9ec87dd157408b5d7271844d` |
| 68 | `theorem` | [SuccOrder.hasBasis_nhds_Ioc_of_exists_lt](../../../../GeneralTopology/OrderBasicNhdsGEEqIInfInfPrincipal.lean/declarations/succorder-hasbasis-nhds-ioc-of-exists-lt.md) | 503 | `result-track:edb8294f744d2d9c001ecadc5e08389f4dadb3a88ac2188af828663dfa2f217b` |
| 69 | `theorem` | [SuccOrder.hasBasis_nhds_Ioc](../../../../GeneralTopology/OrderBasicNhdsGEEqIInfInfPrincipal.lean/declarations/succorder-hasbasis-nhds-ioc.md) | 507 | `result-track:5734ef8279e0a975f2f82044fe8f6f0115d49211eae274764a005d8afa658715` |
| 70 | `theorem` | [SecondCountableTopology.of_separableSpace_orderTopology](../../../../GeneralTopology/OrderBasicNhdsGEEqIInfInfPrincipal.lean/declarations/secondcountabletopology-of-separablespace-ordertopology.md) | 515 | `result-track:1f19c33823574d69e7857cd24e84c72adebf9a018f8b66a26e7e65499bf79988` |
| 71 | `theorem` | [countable_setOf_covBy_right](../../../../GeneralTopology/OrderBasicNhdsGEEqIInfInfPrincipal.lean/declarations/countable-setof-covby-right.md) | 523 | `result-track:2821520ba8ff6432e33f1c77db7456b0ed5b4cb65df5140650d710615cfd53e2` |
| 72 | `theorem` | [countable_setOf_covBy_left](../../../../GeneralTopology/OrderBasicNhdsGEEqIInfInfPrincipal.lean/declarations/countable-setof-covby-left.md) | 565 | `result-track:6681bb3349ce263ec03018e7ec1a17bf96fccde153255da7aad074a7f69100e1` |
| 73 | `theorem` | [countable_of_isolated_left'](../../../../GeneralTopology/OrderBasicNhdsGEEqIInfInfPrincipal.lean/declarations/countable-of-isolated-left.md) | 572 | `result-track:879b11c4acd57c2499b1c1c5c2ec255aad39ad9967d48a7686c1feffffc9d918` |
| 74 | `theorem` | [Set.PairwiseDisjoint.countable_of_Ioo](../../../../GeneralTopology/OrderBasicNhdsGEEqIInfInfPrincipal.lean/declarations/set-pairwisedisjoint-countable-of-ioo.md) | 580 | `result-track:d4cc4eeba248876e1e168e5a5f42e1226495c3cc9700a0fc5c94ea78e400b88b` |
| 75 | `theorem` | [countable_image_lt_image_Ioi](../../../../GeneralTopology/OrderBasicNhdsGEEqIInfInfPrincipal.lean/declarations/countable-image-lt-image-ioi.md) | 590 | `result-track:ee2b63db827f2b059695b914d1c8fec3c42ab874315b8a8d9ed7cb198ccb30ce` |
| 76 | `theorem` | [countable_image_gt_image_Ioi](../../../../GeneralTopology/OrderBasicNhdsGEEqIInfInfPrincipal.lean/declarations/countable-image-gt-image-ioi.md) | 626 | `result-track:ce9d653decb35403381e738328ec917741f6f786156ba4e8236ae94c8baf86c7` |
| 77 | `theorem` | [countable_image_lt_image_Iio](../../../../GeneralTopology/OrderBasicNhdsGEEqIInfInfPrincipal.lean/declarations/countable-image-lt-image-iio.md) | 632 | `result-track:6adecdb075a23fd66b0c2c609b2bfd118f8dfcbc0589483f70ec7e55c59101af` |
| 78 | `theorem` | [countable_image_gt_image_Iio](../../../../GeneralTopology/OrderBasicNhdsGEEqIInfInfPrincipal.lean/declarations/countable-image-gt-image-iio.md) | 638 | `result-track:aaab6ffd6c4976d9fa7ea7f7dc2f3494a23cf3b3b13400c29600c0d1fe44c44e` |
| 79 | `instance` | [instIsCountablyGenerated_atTop](../../../../GeneralTopology/OrderBasicNhdsGEEqIInfInfPrincipal.lean/declarations/instiscountablygenerated-attop.md) | 642 | `declaration-track:e65e8cb4a7a1693b107ec69cfd770e59e6d0b0109c2e401f54c28baddbddfcc2` |
| 80 | `instance` | [instIsCountablyGenerated_atBot](../../../../GeneralTopology/OrderBasicNhdsGEEqIInfInfPrincipal.lean/declarations/instiscountablygenerated-atbot.md) | 672 | `declaration-track:70316ba7c3450aad7125f68407b91b61b5982a3eeefcf326e91eb0da789b01b9` |
| 81 | `theorem` | [pi_Iic_mem_nhds](../../../../GeneralTopology/OrderBasicNhdsGEEqIInfInfPrincipal.lean/declarations/pi-iic-mem-nhds.md) | 689 | `result-track:6f5e8ed876005ee2b74c577f442f19aba5cc6bd1bfd500a2965733d5dc0f6b39` |
| 82 | `theorem` | [pi_Iic_mem_nhds'](../../../../GeneralTopology/OrderBasicNhdsGEEqIInfInfPrincipal.lean/declarations/pi-iic-mem-nhds-source-edition-2.md) | 692 | `result-track:9bd89302af4b6eb96c435afba44f25c226befc95dcdadbcb7b53394f556f1ca7` |
| 83 | `theorem` | [pi_Ici_mem_nhds](../../../../GeneralTopology/OrderBasicNhdsGEEqIInfInfPrincipal.lean/declarations/pi-ici-mem-nhds.md) | 695 | `result-track:5d3763c68dea4003b2064e009a0d9685e659ae67b210af652260be2af0fb434b` |
| 84 | `theorem` | [pi_Ici_mem_nhds'](../../../../GeneralTopology/OrderBasicNhdsGEEqIInfInfPrincipal.lean/declarations/pi-ici-mem-nhds-source-edition-2.md) | 698 | `result-track:c4fd6ede639fd61a9861a11093f20ba82d897f1b43d54e07b82bc27f8b074fda` |
| 85 | `theorem` | [pi_Icc_mem_nhds](../../../../GeneralTopology/OrderBasicNhdsGEEqIInfInfPrincipal.lean/declarations/pi-icc-mem-nhds.md) | 701 | `result-track:7271f359c5b75dc9ad0ab3baa2eef30982bb5f34ffe6ff4f01e19bd4725bd148` |
| 86 | `theorem` | [pi_Icc_mem_nhds'](../../../../GeneralTopology/OrderBasicNhdsGEEqIInfInfPrincipal.lean/declarations/pi-icc-mem-nhds-source-edition-2.md) | 704 | `result-track:9460bf5655ad5885ec5350036cedffebd82e3c107103d8fef3509d17003cfdc8` |
| 87 | `theorem` | [pi_Iio_mem_nhds](../../../../GeneralTopology/OrderBasicNhdsGEEqIInfInfPrincipal.lean/declarations/pi-iio-mem-nhds.md) | 709 | `result-track:85dac63e39d05db8ab386c11867f166bfc291a7f233934e467cd1bbaecf0a2a1` |
| 88 | `theorem` | [pi_Iio_mem_nhds'](../../../../GeneralTopology/OrderBasicNhdsGEEqIInfInfPrincipal.lean/declarations/pi-iio-mem-nhds-source-edition-2.md) | 712 | `result-track:9b842c1027cecfda2f1a25380a6df3051419b6d7e18a52983ddb755219ca2c5c` |
| 89 | `theorem` | [pi_Ioi_mem_nhds](../../../../GeneralTopology/OrderBasicNhdsGEEqIInfInfPrincipal.lean/declarations/pi-ioi-mem-nhds-source-edition-2.md) | 715 | `result-track:b27923cdb506b86cdbb5c2a8d78906f36aff150f5a8ee72155dc7cff8577d136` |
| 90 | `theorem` | [pi_Ioi_mem_nhds'](../../../../GeneralTopology/OrderBasicNhdsGEEqIInfInfPrincipal.lean/declarations/pi-ioi-mem-nhds.md) | 718 | `result-track:59b1e54c5a3000d8cc250c279d3f51790197703b38ffc69e8b1e53aad6dc3afc` |
| 91 | `theorem` | [pi_Ioc_mem_nhds](../../../../GeneralTopology/OrderBasicNhdsGEEqIInfInfPrincipal.lean/declarations/pi-ioc-mem-nhds-source-edition-2.md) | 721 | `result-track:8b1ac690ac0b1d33ee8a7bccb4d339b19ad6aace3b801c7b6e3aa794f0c68878` |
| 92 | `theorem` | [pi_Ioc_mem_nhds'](../../../../GeneralTopology/OrderBasicNhdsGEEqIInfInfPrincipal.lean/declarations/pi-ioc-mem-nhds.md) | 725 | `result-track:0c1d130198860033a1181e1d2649301c169b96f1de4605b4319951bc8bc6b678` |
| 93 | `theorem` | [pi_Ico_mem_nhds](../../../../GeneralTopology/OrderBasicNhdsGEEqIInfInfPrincipal.lean/declarations/pi-ico-mem-nhds.md) | 728 | `result-track:379895e88a3e07ea01eda17cffb7ea88bfbc1d54df9009969cb83911dc48df70` |
| 94 | `theorem` | [pi_Ico_mem_nhds'](../../../../GeneralTopology/OrderBasicNhdsGEEqIInfInfPrincipal.lean/declarations/pi-ico-mem-nhds-source-edition-2.md) | 732 | `result-track:b645673360d69f3bc38b358e687ed8ce5be987acd950d0ab53ee6e026e12b453` |
| 95 | `theorem` | [pi_Ioo_mem_nhds](../../../../GeneralTopology/OrderBasicNhdsGEEqIInfInfPrincipal.lean/declarations/pi-ioo-mem-nhds.md) | 735 | `result-track:58d3082f06d7cef7e214253ed8673e678bb228e9f8de75ae3405d0a228fbff15` |
| 96 | `theorem` | [pi_Ioo_mem_nhds'](../../../../GeneralTopology/OrderBasicNhdsGEEqIInfInfPrincipal.lean/declarations/pi-ioo-mem-nhds-source-edition-2.md) | 739 | `result-track:d9f8b2c36d55f2ecc099f2a8962588a1f875f6a91caaf6dec78abdabc3bec126` |
| 97 | `lemma` | [LeftOrdContinuous.continuousWithinAt_Iic](../../../../GeneralTopology/OrderBasicNhdsGEEqIInfInfPrincipal.lean/declarations/leftordcontinuous-continuouswithinat-iic.md) | 756 | `result-track:8b553f49f378084b19c0df135584921222533c128ea2d295a242efc3eb267e55` |
| 98 | `lemma` | [RightOrdContinuous.continuousWithinAt_Ici](../../../../GeneralTopology/OrderBasicNhdsGEEqIInfInfPrincipal.lean/declarations/rightordcontinuous-continuouswithinat-ici.md) | 770 | `result-track:5fd39713f4599d94bca18a03069372ac5a7cf9f88325f4de303b3e02fb031aea` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6b6a3f9bb57cb4e8ffe9b90255b79e1d784b840dc0d67e2e8ea0fb4fa502735f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Basic/Variant7abbc2255c0efe89274b440c3401ef7f707e39b498e092152e924dc48d23e639.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Basic/Variant7abbc2255c0efe89274b440c3401ef7f707e39b498e092152e924dc48d23e639.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
