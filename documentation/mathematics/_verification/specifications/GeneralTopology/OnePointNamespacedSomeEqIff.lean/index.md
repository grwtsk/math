# Verification target: One Point Namespaced Some Eq Iff

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "83555410976d8c68660209dce7cf3d24711cb52c",
  "lexical_observation_count": 104,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/OnePoint/Variantb6cb6d6913fbea4b4b611cecc0df149f7bdc849ef181c7e1095fc3b203be5a8e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/OnePointNamespacedSomeEqIff.lean/index.md) · [Full source](../../../../GeneralTopology/OnePointNamespacedSomeEqIff.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `83555410976d8c68660209dce7cf3d24711cb52c`.

Source path: `GRWTSK/Topology/GeneralTopology/OnePoint/Variantb6cb6d6913fbea4b4b611cecc0df149f7bdc849ef181c7e1095fc3b203be5a8e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/OnePoint/Variantb6cb6d6913fbea4b4b611cecc0df149f7bdc849ef181c7e1095fc3b203be5a8e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fintype.Option` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Homeomorph.Lemmas` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Sets.Opens` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [OnePoint](../../../../GeneralTopology/OnePointNamespacedSomeEqIff.lean/declarations/onepoint.md) | 58 | `declaration-track:7175a8c4ed9a41c61c8ac92f34d19360fc9843b4a083183080c8536699be917a` |
| 2 | `instance` | [(anonymous)](../../../../GeneralTopology/OnePointNamespacedSomeEqIff.lean/declarations/instance-source-edition-3.md) | 62 | `declaration-track:4e62b32e3d5750f305a0256614926c78800ff4670c59b30127601f39da01bb40` |
| 3 | `def` | [infty](../../../../GeneralTopology/OnePointNamespacedSomeEqIff.lean/declarations/infty.md) | 71 | `declaration-track:0a63c2d4c148cecf652b92eeae3c59a087cdd161286947f9b85a5cc3e9d40be2` |
| 4 | `def` | [some](../../../../GeneralTopology/OnePointNamespacedSomeEqIff.lean/declarations/some.md) | 77 | `declaration-track:feb0f0e207562c3cf5fc66f9896a1a027728d589b1edb686cc6ff8e14460b67a` |
| 5 | `lemma` | [some_eq_iff](../../../../GeneralTopology/OnePointNamespacedSomeEqIff.lean/declarations/some-eq-iff.md) | 80 | `result-track:ed88203aeeb1c16bacf6a1164557f36fdcf4e312d757a504379a88784ac7aa95` |
| 6 | `instance` | [(anonymous)](../../../../GeneralTopology/OnePointNamespacedSomeEqIff.lean/declarations/instance-source-edition-6.md) | 84 | `declaration-track:88a339fff2aa41956ab1df10201b445586ca54a31b387cbe05a1d2daa5a1ede9` |
| 7 | `instance` | [(anonymous)](../../../../GeneralTopology/OnePointNamespacedSomeEqIff.lean/declarations/instance.md) | 86 | `declaration-track:19cb2cc3cd3d52b3110b6a4e11e1542e1d03c37138ed0fa1e61b21e8c7b4d596` |
| 8 | `lemma` | [«forall»](../../../../GeneralTopology/OnePointNamespacedSomeEqIff.lean/declarations/forall.md) | 88 | `result-track:ac98f01935db549c6ff269b1631928454d39f51a2b7562af1586a68e525fa280` |
| 9 | `lemma` | [«exists»](../../../../GeneralTopology/OnePointNamespacedSomeEqIff.lean/declarations/exists.md) | 92 | `result-track:5b9c53cddc5fe2094e4b092f03f43252090bbff4b1993ba4944b5ada18d3499e` |
| 10 | `instance` | [(anonymous)](../../../../GeneralTopology/OnePointNamespacedSomeEqIff.lean/declarations/instance-source-edition-10.md) | 96 | `declaration-track:c1767b4a8d3caf436c98618c3f3b740231abef9ff964282d0ff33fa2f2ed593c` |
| 11 | `instance` | [infinite](../../../../GeneralTopology/OnePointNamespacedSomeEqIff.lean/declarations/infinite.md) | 99 | `declaration-track:44306b9d86c45ffc2a03040f1df1d6fbd3a6817d120b8c1882b2c5d376f585bb` |
| 12 | `theorem` | [coe_injective](../../../../GeneralTopology/OnePointNamespacedSomeEqIff.lean/declarations/coe-injective.md) | 102 | `result-track:dabdadd63b71f532d1f07ebdc4323e8fef2cc9a017e83808ba3613755e08dd62` |
| 13 | `theorem` | [coe_eq_coe](../../../../GeneralTopology/OnePointNamespacedSomeEqIff.lean/declarations/coe-eq-coe.md) | 106 | `result-track:2830dc2c551a8093ca129bf288b225cebcad031baea4bae45435130f80fa8816` |
| 14 | `theorem` | [coe_ne_infty](../../../../GeneralTopology/OnePointNamespacedSomeEqIff.lean/declarations/coe-ne-infty.md) | 110 | `result-track:7b2cc7fd0c283ddc8e9ebc74ab2ab06921876a92a6b8717a07bfa7c3a0b0eef9` |
| 15 | `theorem` | [infty_ne_coe](../../../../GeneralTopology/OnePointNamespacedSomeEqIff.lean/declarations/infty-ne-coe.md) | 114 | `result-track:5209826253bce50e7460ed84e47a06afea32f2dd1b5e0c560b28a4a07a6f2f9d` |
| 16 | `def` | [rec](../../../../GeneralTopology/OnePointNamespacedSomeEqIff.lean/declarations/rec.md) | 119 | `declaration-track:764f6734299776120f26173e2b3359a99bd90a252e136a25f56e7e8c768d6421` |
| 17 | `def` | [elim](../../../../GeneralTopology/OnePointNamespacedSomeEqIff.lean/declarations/elim.md) | 125 | `declaration-track:29bc877b4ccc060798389c396a04fe638be0f642e5e42ee6fc07e0fb946a23d1` |
| 18 | `theorem` | [elim_infty](../../../../GeneralTopology/OnePointNamespacedSomeEqIff.lean/declarations/elim-infty.md) | 127 | `result-track:806d90bc3bfa813bc566afe4751b28a30ce43d444575ad3debe81f07efb8b673` |
| 19 | `theorem` | [elim_some](../../../../GeneralTopology/OnePointNamespacedSomeEqIff.lean/declarations/elim-some.md) | 129 | `result-track:80661bb04d30f8436597c3f96fd79483f4e763c365c4ccf689e85ebc93c3bbdf` |
| 20 | `theorem` | [isCompl_range_coe_infty](../../../../GeneralTopology/OnePointNamespacedSomeEqIff.lean/declarations/iscompl-range-coe-infty.md) | 131 | `result-track:92ee69342c65214248be5be14806e5286897d4695ac74f37f8f0b19e70b18c64` |
| 21 | `theorem` | [range_coe_union_infty](../../../../GeneralTopology/OnePointNamespacedSomeEqIff.lean/declarations/range-coe-union-infty.md) | 134 | `result-track:b7556f85dad1c192f1de0a0e33ceb40031c5be555506606b3fe65646f38a64af` |
| 22 | `theorem` | [insert_infty_range_coe](../../../../GeneralTopology/OnePointNamespacedSomeEqIff.lean/declarations/insert-infty-range-coe.md) | 138 | `result-track:71a4e54fdd76d9224c1e6c26d82fe42bbaa540c383ac2a5d87061c076427be38` |
| 23 | `theorem` | [range_coe_inter_infty](../../../../GeneralTopology/OnePointNamespacedSomeEqIff.lean/declarations/range-coe-inter-infty.md) | 142 | `result-track:41618771f5b2d804cf4017ed6fc824f729eb5e6a4f3b88a2f35045d4e07ae4b4` |
| 24 | `theorem` | [compl_range_coe](../../../../GeneralTopology/OnePointNamespacedSomeEqIff.lean/declarations/compl-range-coe.md) | 146 | `result-track:b26282965b727bc79cc7b0ccea933d2be131598036f2bf18d3266f98580fbba5` |
| 25 | `theorem` | [compl_infty](../../../../GeneralTopology/OnePointNamespacedSomeEqIff.lean/declarations/compl-infty.md) | 149 | `result-track:b701dfa1bc288fa4e332fe97ac87243910762b3e60b072d4339a0f09751439e5` |
| 26 | `theorem` | [compl_image_coe](../../../../GeneralTopology/OnePointNamespacedSomeEqIff.lean/declarations/compl-image-coe.md) | 152 | `result-track:6fa8c6084c66eab530cee03045a32a82508b05aa3f8e02659514af53860b7dd4` |
| 27 | `theorem` | [ne_infty_iff_exists](../../../../GeneralTopology/OnePointNamespacedSomeEqIff.lean/declarations/ne-infty-iff-exists.md) | 155 | `result-track:e632756ed687f47d6ced53d33577c4562ba06c87c570640111cac1d9cb50499e` |
| 28 | `instance` | [canLift](../../../../GeneralTopology/OnePointNamespacedSomeEqIff.lean/declarations/canlift.md) | 158 | `declaration-track:e60037442f15836d11d1c2da4a4c20fce8454277fb7c40e0944e8a0d005e522d` |
| 29 | `theorem` | [notMem_range_coe_iff](../../../../GeneralTopology/OnePointNamespacedSomeEqIff.lean/declarations/notmem-range-coe-iff.md) | 161 | `result-track:1186b8778b028700f0fb36637961df03cf1c8ba2b5a4eee2779ddcb129886f12` |
| 30 | `theorem` | [infty_notMem_range_coe](../../../../GeneralTopology/OnePointNamespacedSomeEqIff.lean/declarations/infty-notmem-range-coe.md) | 166 | `result-track:a239b73718488fc088ba552efb76fd28ba85f9c6c44cdc02b3eae9fe6ab510d9` |
| 31 | `theorem` | [infty_notMem_image_coe](../../../../GeneralTopology/OnePointNamespacedSomeEqIff.lean/declarations/infty-notmem-image-coe.md) | 171 | `result-track:1961d6cc5bf1b3405a7bf07a2d6a3a5a83e0de06ed8b203f21ffbdcb78ba4c94` |
| 32 | `theorem` | [coe_preimage_infty](../../../../GeneralTopology/OnePointNamespacedSomeEqIff.lean/declarations/coe-preimage-infty.md) | 177 | `result-track:852b342cb13b4dc88a1768fa851279f2bddc204da19ec5164f6eeba6db86d949` |
| 33 | `def` | [map](../../../../GeneralTopology/OnePointNamespacedSomeEqIff.lean/declarations/map.md) | 183 | `declaration-track:02959f1e355a496b07c5f934e43a645f73fa95214c62bff832b19f0bc7ed3741` |
| 34 | `theorem` | [map_infty](../../../../GeneralTopology/OnePointNamespacedSomeEqIff.lean/declarations/map-infty.md) | 186 | `result-track:b82d599a72870d36b10b5a960c4acf9145a3bb4204b7ac48a58478e8eda1471a` |
| 35 | `theorem` | [map_some](../../../../GeneralTopology/OnePointNamespacedSomeEqIff.lean/declarations/map-some.md) | 187 | `result-track:2bfdc1b2c74cfb92358c51065a20daa8c19d1343c6c500b1bb295b79261c406b` |
| 36 | `theorem` | [map_id](../../../../GeneralTopology/OnePointNamespacedSomeEqIff.lean/declarations/map-id.md) | 188 | `result-track:66c2790b6867d52d757a7bef59579b3d087e6c0ac3501001ed232cf6e932a0c5` |
| 37 | `theorem` | [map_comp](../../../../GeneralTopology/OnePointNamespacedSomeEqIff.lean/declarations/map-comp.md) | 190 | `result-track:a10d0ddbd3eae5aceba30148d321d561e31f81b05a14aa4820056c429c3294b4` |
| 38 | `instance` | [(anonymous)](../../../../GeneralTopology/OnePointNamespacedSomeEqIff.lean/declarations/instance-source-edition-7.md) | 210 | `declaration-track:a367137c5049477bb59ffc7d529795f4060a7c8ced55363d1cd6e2026f974623` |
| 39 | `theorem` | [isOpen_def](../../../../GeneralTopology/OnePointNamespacedSomeEqIff.lean/declarations/isopen-def.md) | 230 | `result-track:f3cd10aeca1216d260d3d7d5701f3d1d19741a10d077e4bca1206513f3d8dbc8` |
| 40 | `theorem` | [isOpen_iff_of_mem'](../../../../GeneralTopology/OnePointNamespacedSomeEqIff.lean/declarations/isopen-iff-of-mem-source-edition-2.md) | 234 | `result-track:d770265113198b2185a7b06418b01f98d96c67e35e6d5f431bb841e154aedad8` |
| 41 | `theorem` | [isOpen_iff_of_mem](../../../../GeneralTopology/OnePointNamespacedSomeEqIff.lean/declarations/isopen-iff-of-mem.md) | 238 | `result-track:6f0840b6be6c87d9fd0e3c7a5722d72efed73256ee9e70d4d78c919efed49619` |
| 42 | `theorem` | [isOpen_iff_of_notMem](../../../../GeneralTopology/OnePointNamespacedSomeEqIff.lean/declarations/isopen-iff-of-notmem.md) | 242 | `result-track:c80d6b43bd21d333977776883790435def4babb3752c3cf4638c88c1086537ba` |
| 43 | `theorem` | [isClosed_iff_of_mem](../../../../GeneralTopology/OnePointNamespacedSomeEqIff.lean/declarations/isclosed-iff-of-mem.md) | 247 | `result-track:3b07defd843767447b97c6625a7865f35fab538e0fa3ade6686d81a486e5549f` |
| 44 | `theorem` | [isClosed_iff_of_notMem](../../../../GeneralTopology/OnePointNamespacedSomeEqIff.lean/declarations/isclosed-iff-of-notmem.md) | 251 | `result-track:b26b90a8b3260350c19152d0c010c81e7e7bb08d730d43a871066770f14c6601` |
| 45 | `theorem` | [isOpen_image_coe](../../../../GeneralTopology/OnePointNamespacedSomeEqIff.lean/declarations/isopen-image-coe.md) | 258 | `result-track:1f105edfa12414022bf7dc2f44fe76589491e3d048f411997b2e82d0a7a937c8` |
| 46 | `theorem` | [isOpen_compl_image_coe](../../../../GeneralTopology/OnePointNamespacedSomeEqIff.lean/declarations/isopen-compl-image-coe.md) | 261 | `result-track:cfabc82062335343b4b323146010ef9e633b9dc66e7dad5c4e1441320c5bb21f` |
| 47 | `theorem` | [isClosed_image_coe](../../../../GeneralTopology/OnePointNamespacedSomeEqIff.lean/declarations/isclosed-image-coe.md) | 267 | `result-track:84ca6d10ca2e38522eb65c1fd532599b3ba91534c9ee5dbff95cdd77919c3b80` |
| 48 | `def` | [opensOfCompl](../../../../GeneralTopology/OnePointNamespacedSomeEqIff.lean/declarations/opensofcompl.md) | 272 | `declaration-track:78f1f63046b433d700cf60be6c4dbd13b6808f9fa2ab1c6c91ddb4ef9df8e9b1` |
| 49 | `theorem` | [infty_mem_opensOfCompl](../../../../GeneralTopology/OnePointNamespacedSomeEqIff.lean/declarations/infty-mem-opensofcompl.md) | 276 | `result-track:67d244ac1694c1cb115b7491231a28e8b6d9ede2b55b677b4e59797538f6340c` |
| 50 | `theorem` | [continuous_coe](../../../../GeneralTopology/OnePointNamespacedSomeEqIff.lean/declarations/continuous-coe.md) | 281 | `result-track:c2e16ce2cf276c92454cc0bc7e6e27d8b93b2ca180bd8e0d731ace3b5123fcba` |
| 51 | `theorem` | [isOpenMap_coe](../../../../GeneralTopology/OnePointNamespacedSomeEqIff.lean/declarations/isopenmap-coe.md) | 284 | `result-track:64e125f2d6f65cd420a87d0b69e5f1758a352dd4e26ecf3618a677740cc7775a` |
| 52 | `theorem` | [isOpenEmbedding_coe](../../../../GeneralTopology/OnePointNamespacedSomeEqIff.lean/declarations/isopenembedding-coe.md) | 286 | `result-track:bad1a7f562976d340f1447d0e973c0375561e536aa37eee1ae78b1556d326f53` |
| 53 | `theorem` | [isOpen_range_coe](../../../../GeneralTopology/OnePointNamespacedSomeEqIff.lean/declarations/isopen-range-coe.md) | 289 | `result-track:96c6b42c3325da00e3e633f53cae8784d0b344eef1d2f265fc45e79925aea43d` |
| 54 | `theorem` | [isClosed_infty](../../../../GeneralTopology/OnePointNamespacedSomeEqIff.lean/declarations/isclosed-infty.md) | 292 | `result-track:73c9fc7d771802f53b63a8180456ff972622f5a293a545ef4681d10ab9428b35` |
| 55 | `theorem` | [nhds_coe_eq](../../../../GeneralTopology/OnePointNamespacedSomeEqIff.lean/declarations/nhds-coe-eq.md) | 296 | `result-track:755ab36686039ef867995aad3481023f40e2a04953ba1bcad86451c099885ea6` |
| 56 | `theorem` | [nhdsWithin_coe_image](../../../../GeneralTopology/OnePointNamespacedSomeEqIff.lean/declarations/nhdswithin-coe-image.md) | 299 | `result-track:ab4e1329f9b040685cd3c8fb61bf52779571b27734c2e9a5801130a8a3b2be55` |
| 57 | `theorem` | [nhdsWithin_coe](../../../../GeneralTopology/OnePointNamespacedSomeEqIff.lean/declarations/nhdswithin-coe.md) | 303 | `result-track:10d829132725eb47937d92d620cd2ee0de2146b361affc3ed1438cdeafb1f5ba` |
| 58 | `theorem` | [comap_coe_nhds](../../../../GeneralTopology/OnePointNamespacedSomeEqIff.lean/declarations/comap-coe-nhds.md) | 306 | `result-track:86b601952fb5d1a8e64c05c27ffe3c8a50bf880141cfd975e3f8009083331015` |
| 59 | `instance` | [nhdsNE_coe_neBot](../../../../GeneralTopology/OnePointNamespacedSomeEqIff.lean/declarations/nhdsne-coe-nebot.md) | 311 | `declaration-track:b1ab19570e1e8568b3e57d6613aafeb32aadc0576d3bab2cdb072d911236842a` |
| 60 | `theorem` | [nhdsNE_infty_eq](../../../../GeneralTopology/OnePointNamespacedSomeEqIff.lean/declarations/nhdsne-infty-eq.md) | 317 | `result-track:783c8f0fa0b94de0b9699f9056dce7813955c30f7bb8433575788f0faa2fc32f` |
| 61 | `instance` | [nhdsNE_infty_neBot](../../../../GeneralTopology/OnePointNamespacedSomeEqIff.lean/declarations/nhdsne-infty-nebot.md) | 330 | `declaration-track:db694552d79060f6fff2f14761df240863da3fb04b83a561657de18336e44fd5` |
| 62 | `instance` | [(anonymous)](../../../../GeneralTopology/OnePointNamespacedSomeEqIff.lean/declarations/instance-source-edition-8.md) | 337 | `declaration-track:ad5f407f94f5804c2474e1f9c1a017abe0579049fb935a0fae1cc57b065bf10c` |
| 63 | `theorem` | [nhds_infty_eq](../../../../GeneralTopology/OnePointNamespacedSomeEqIff.lean/declarations/nhds-infty-eq.md) | 344 | `result-track:69f2a55a6e5463ef9ba0ca17aec07d80b725b54b4a10664600d664bd6b78fe49` |
| 64 | `theorem` | [tendsto_coe_infty](../../../../GeneralTopology/OnePointNamespacedSomeEqIff.lean/declarations/tendsto-coe-infty.md) | 347 | `result-track:8adec7f7afa7d5d88eb1c57157a25a6be42702360a9180d56665eb5f2cb05d5e` |
| 65 | `theorem` | [hasBasis_nhds_infty](../../../../GeneralTopology/OnePointNamespacedSomeEqIff.lean/declarations/hasbasis-nhds-infty.md) | 351 | `result-track:42cb704f4df19bd3f9d16d0a643a4e93b79cc162080f177598279ec819410e11` |
| 66 | `theorem` | [comap_coe_nhds_infty](../../../../GeneralTopology/OnePointNamespacedSomeEqIff.lean/declarations/comap-coe-nhds-infty.md) | 358 | `result-track:36c68264aa097abbbe5f2c8889ab71d0d0420c5fb89a844b1d46667dd8ee9c3d` |
| 67 | `theorem` | [le_nhds_infty](../../../../GeneralTopology/OnePointNamespacedSomeEqIff.lean/declarations/le-nhds-infty.md) | 361 | `result-track:39478a4c0c46ca28816553a549fada7fb535209d20b410072b36dd638755cb68` |
| 68 | `theorem` | [ultrafilter_le_nhds_infty](../../../../GeneralTopology/OnePointNamespacedSomeEqIff.lean/declarations/ultrafilter-le-nhds-infty.md) | 365 | `result-track:efcc8ab3c8a8f75161346c5d84d209b32e8124c1417210548b29865b96f6c952` |
| 69 | `theorem` | [tendsto_nhds_infty'](../../../../GeneralTopology/OnePointNamespacedSomeEqIff.lean/declarations/tendsto-nhds-infty.md) | 370 | `result-track:a1760b139fdbe768ed48161010117356679c1aa0e928338d6953312fc9d49467` |
| 70 | `theorem` | [tendsto_nhds_infty](../../../../GeneralTopology/OnePointNamespacedSomeEqIff.lean/declarations/tendsto-nhds-infty-source-edition-2.md) | 374 | `result-track:a774926fc610209a3c2f2d75653094b32abb5f0c9460e87ef697953ce1ac1082` |
| 71 | `theorem` | [continuousAt_infty'](../../../../GeneralTopology/OnePointNamespacedSomeEqIff.lean/declarations/continuousat-infty.md) | 381 | `result-track:4129958d4d529d37401ddcbd9fdd040c5995825522af6395db56749827e331e5` |
| 72 | `theorem` | [continuousAt_infty](../../../../GeneralTopology/OnePointNamespacedSomeEqIff.lean/declarations/continuousat-infty-source-edition-2.md) | 385 | `result-track:fe54f5531fe62caf3860a2a8f246aa2695b6474ba50d7d61e970e7788ff6d5a5` |
| 73 | `theorem` | [continuousAt_coe](../../../../GeneralTopology/OnePointNamespacedSomeEqIff.lean/declarations/continuousat-coe.md) | 390 | `result-track:cafa9166ab20f6379332580782b4c69d010ca3135dfe76624a7b386771c9e4f4` |
| 74 | `lemma` | [continuous_iff](../../../../GeneralTopology/OnePointNamespacedSomeEqIff.lean/declarations/continuous-iff.md) | 394 | `result-track:07340a56d1a52b7b1b287911aa92cf09beb4a37179fbfff5cb4354bcc181e8a6` |
| 75 | `def` | [continuousMapMk](../../../../GeneralTopology/OnePointNamespacedSomeEqIff.lean/declarations/continuousmapmk.md) | 403 | `declaration-track:ab96db328c6a6db7f3018e4281c40d3d156385445e6f799ccf1cae9a2abf6f8f` |
| 76 | `lemma` | [continuous_iff_from_discrete](../../../../GeneralTopology/OnePointNamespacedSomeEqIff.lean/declarations/continuous-iff-from-discrete.md) | 410 | `result-track:036a3e7d5f5b39bad32e1aedc9ccc53e35c6c538a99849bdcd24b2f4487a5555` |
| 77 | `def` | [continuousMapMkDiscrete](../../../../GeneralTopology/OnePointNamespacedSomeEqIff.lean/declarations/continuousmapmkdiscrete.md) | 419 | `declaration-track:10a981843438c6e6afb25442238f19ae20b3cb7f79b24471afa31b48ee60468d` |
| 78 | `def` | [continuousMapDiscreteEquiv](../../../../GeneralTopology/OnePointNamespacedSomeEqIff.lean/declarations/continuousmapdiscreteequiv.md) | 429 | `declaration-track:58fb271dc936cb7c52d2e3c9666291f11a38ebaa8ce81b252dd35185acd06b5f` |
| 79 | `lemma` | [continuous_iff_from_nat](../../../../GeneralTopology/OnePointNamespacedSomeEqIff.lean/declarations/continuous-iff-from-nat.md) | 448 | `result-track:b3beb2dd6f1ca0bf18c8cdecb9c547c47208eb44dbd95cf95e50d247209c18da` |
| 80 | `def` | [continuousMapMkNat](../../../../GeneralTopology/OnePointNamespacedSomeEqIff.lean/declarations/continuousmapmknat.md) | 456 | `declaration-track:ead031ffab6e60f735f6be6415d56cf33d266d827e4cba532b54a8f7c851b1f7` |
| 81 | `def` | [continuousMapNatEquiv](../../../../GeneralTopology/OnePointNamespacedSomeEqIff.lean/declarations/continuousmapnatequiv.md) | 465 | `declaration-track:3916da6716d77c3fce52a78067a912f8504025d1250ac043e71c6587823408ad` |
| 82 | `theorem` | [denseRange_coe](../../../../GeneralTopology/OnePointNamespacedSomeEqIff.lean/declarations/denserange-coe.md) | 475 | `result-track:0c80f4142c1f64d82d3f92b96bfdb2dc37f2d3e41c703e60624c0d7420a40bc5` |
| 83 | `theorem` | [isDenseEmbedding_coe](../../../../GeneralTopology/OnePointNamespacedSomeEqIff.lean/declarations/isdenseembedding-coe.md) | 479 | `result-track:25acfd00542e072a107f2d65a599dda2b9d7ddf553482d5a38452783493d62a1` |
| 84 | `theorem` | [specializes_coe](../../../../GeneralTopology/OnePointNamespacedSomeEqIff.lean/declarations/specializes-coe.md) | 483 | `result-track:b6fa9dfde3cbb2a71f0a7e5593d46f6ad13a4c5e7b0b3d5cd136f1f2e2afcdd3` |
| 85 | `theorem` | [inseparable_coe](../../../../GeneralTopology/OnePointNamespacedSomeEqIff.lean/declarations/inseparable-coe.md) | 487 | `result-track:8e43b7c49e3f50af7489a5d06506e2565906091db0edc592c3c70ed2f24a17d1` |
| 86 | `theorem` | [not_specializes_infty_coe](../../../../GeneralTopology/OnePointNamespacedSomeEqIff.lean/declarations/not-specializes-infty-coe.md) | 490 | `result-track:8d60cc12f0b07eb78192fff7649772082b3add89f990ed5dd5c5170ccb463605` |
| 87 | `theorem` | [not_inseparable_infty_coe](../../../../GeneralTopology/OnePointNamespacedSomeEqIff.lean/declarations/not-inseparable-infty-coe.md) | 493 | `result-track:44bba735c9f83a46b7c289b096c8ed1a44e9aff27b95bcace704708606d8791f` |
| 88 | `theorem` | [not_inseparable_coe_infty](../../../../GeneralTopology/OnePointNamespacedSomeEqIff.lean/declarations/not-inseparable-coe-infty.md) | 496 | `result-track:fd9b52b0c955892d0ed1a0fd9f9d606d1654ae5ae9c25c3e85ab54ee33e450ad` |
| 89 | `theorem` | [inseparable_iff](../../../../GeneralTopology/OnePointNamespacedSomeEqIff.lean/declarations/inseparable-iff.md) | 499 | `result-track:3c5fa44c8b30946f403af051864a17b0ddfe595188e75b5f2a723647d4316823` |
| 90 | `theorem` | [continuous_map_iff](../../../../GeneralTopology/OnePointNamespacedSomeEqIff.lean/declarations/continuous-map-iff.md) | 504 | `result-track:71d088cd4eb85d3025fffd702bf3b276af84fb4574ab6bbd5bad4bc34361160c` |
| 91 | `theorem` | [continuous_map](../../../../GeneralTopology/OnePointNamespacedSomeEqIff.lean/declarations/continuous-map.md) | 511 | `result-track:4b1447609d7d63bb1a7e3f677d903d79ad7557f71c28b843181ecf6197f295a1` |
| 92 | `instance` | [(anonymous)](../../../../GeneralTopology/OnePointNamespacedSomeEqIff.lean/declarations/instance-source-edition-12.md) | 528 | `declaration-track:d314d46e5bd069d7656a16d032e3694b8ae0f4e5251bb8989f0c356fa195c75a` |
| 93 | `instance` | [(anonymous)](../../../../GeneralTopology/OnePointNamespacedSomeEqIff.lean/declarations/instance-source-edition-9.md) | 537 | `declaration-track:b0cda5a18ae26a5f5b2cc956c61032f38642ed44aca0517114c33787ba7a4a72` |
| 94 | `instance` | [(anonymous)](../../../../GeneralTopology/OnePointNamespacedSomeEqIff.lean/declarations/instance-source-edition-4.md) | 543 | `declaration-track:66ad6a45a58f5df971da7286e25c10e4d04db01b1415ca1ee40ef7d767f105c2` |
| 95 | `instance` | [(anonymous)](../../../../GeneralTopology/OnePointNamespacedSomeEqIff.lean/declarations/instance-source-edition-5.md) | 552 | `declaration-track:7bb28bb4110dfd4301c0967705b801a635c785a3dc2e2102a7de54c9dae221bc` |
| 96 | `example` | [(anonymous)](../../../../GeneralTopology/OnePointNamespacedSomeEqIff.lean/declarations/example.md) | 568 | `declaration-track:6c4b81f826b601269eef4e2665846f5d9356cfb4857d2d5fbcb5c3c032c4ad82` |
| 97 | `instance` | [(anonymous)](../../../../GeneralTopology/OnePointNamespacedSomeEqIff.lean/declarations/instance-source-edition-2.md) | 571 | `declaration-track:26caa1d273f0035ffa1111015293ab33a0a2e1809d3851efd0018dec70daadbc` |
| 98 | `theorem` | [not_continuous_cofiniteTopology_of_symm](../../../../GeneralTopology/OnePointNamespacedSomeEqIff.lean/declarations/not-continuous-cofinitetopology-of-symm.md) | 577 | `result-track:f5216a8d29fef3ddfe7195d37d24a36c2db2676d8f20638f38bb9013683eb755` |
| 99 | `instance` | [(anonymous)](../../../../GeneralTopology/OnePointNamespacedSomeEqIff.lean/declarations/instance-source-edition-11.md) | 585 | `declaration-track:d00db615e1b366576467c06ef745fb953cc06db1378cf45b551a119956252b1d` |
| 100 | `def` | [equivOfIsEmbeddingOfRangeEq](../../../../GeneralTopology/OnePointNamespacedSomeEqIff.lean/declarations/equivofisembeddingofrangeeq.md) | 608 | `declaration-track:748fefac46f863bc57062de1661cc9a3add9e0a605724a46283a862e41941026` |
| 101 | `lemma` | [equivOfIsEmbeddingOfRangeEq_apply_coe](../../../../GeneralTopology/OnePointNamespacedSomeEqIff.lean/declarations/equivofisembeddingofrangeeq-apply-coe.md) | 635 | `result-track:f52a08dd18aa8e7a72452ff60bbb4ca436bb6b4fecbff358204bd40a42cfb074` |
| 102 | `lemma` | [equivOfIsEmbeddingOfRangeEq_apply_infty](../../../../GeneralTopology/OnePointNamespacedSomeEqIff.lean/declarations/equivofisembeddingofrangeeq-apply-infty.md) | 640 | `result-track:6f430f86eefea36874b6b02324665a2103c521317430894f2d85c1828542f67f` |
| 103 | `def` | [onePointCongr](../../../../GeneralTopology/OnePointNamespacedSomeEqIff.lean/declarations/onepointcongr.md) | 657 | `declaration-track:14a7cd42ae2450648a07dc8d65b90214ed2988047235d65c2851cb68a6365035` |
| 104 | `theorem` | [Continuous.homeoOfEquivCompactToT2.t1_counterexample](../../../../GeneralTopology/OnePointNamespacedSomeEqIff.lean/declarations/continuous-homeoofequivcompacttot2-t1-counterexample.md) | 673 | `result-track:e3a9251a8a957b9576db8dd535e398c291a90c11357d0fafca46d705ca857533` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=529ebe89f4d63ed5bf07887429d9191e4c6c1b1bc8b358f9bbb702adb42a0a63 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/OnePoint/Variantb6cb6d6913fbea4b4b611cecc0df149f7bdc849ef181c7e1095fc3b203be5a8e.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/OnePoint/Variantb6cb6d6913fbea4b4b611cecc0df149f7bdc849ef181c7e1095fc3b203be5a8e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
