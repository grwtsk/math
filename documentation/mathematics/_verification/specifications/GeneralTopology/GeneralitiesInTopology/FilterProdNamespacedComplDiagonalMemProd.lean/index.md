# Verification target: Filter Prod Namespaced Compl Diagonal Mem Prod

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4bd752e4130f7138f196abd79a9207b4f99bdef8",
  "lexical_observation_count": 96,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Prod/Variant4c9e6bda6dca2bae5e87a2cd4b9940db1816c22c5768a9467bde984e570adea2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralTopology/GeneralitiesInTopology/FilterProdNamespacedComplDiagonalMemProd.lean/index.md) · [Full source](../../../../../GeneralTopology/GeneralitiesInTopology/FilterProdNamespacedComplDiagonalMemProd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4bd752e4130f7138f196abd79a9207b4f99bdef8`.

Source path: `GRWTSK/Topology/GeneralTopology/Prod/Variant4c9e6bda6dca2bae5e87a2cd4b9940db1816c22c5768a9467bde984e570adea2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Prod/Variant4c9e6bda6dca2bae5e87a2cd4b9940db1816c22c5768a9467bde984e570adea2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Filter.Tendsto` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [prod_mem_prod](../../../../../GeneralTopology/GeneralitiesInTopology/FilterProdNamespacedComplDiagonalMemProd.lean/declarations/prod-mem-prod.md) | 57 | `result-track:ed0d45b7705cb508e8b2fbd93b311f926d43166ae9fa7a39f3698d871f9e1c5f` |
| 2 | `theorem` | [mem_prod_iff](../../../../../GeneralTopology/GeneralitiesInTopology/FilterProdNamespacedComplDiagonalMemProd.lean/declarations/mem-prod-iff.md) | 60 | `result-track:37720729b5069f481278d6c35e2dfe445ef2ff19c527a19f7a38d5d1fa30c7b4` |
| 3 | `theorem` | [compl_diagonal_mem_prod](../../../../../GeneralTopology/GeneralitiesInTopology/FilterProdNamespacedComplDiagonalMemProd.lean/declarations/compl-diagonal-mem-prod.md) | 69 | `result-track:cfcdf124bd97f5b105278d0eb82bcb61e96ce8a685e3872aef3c758e56f9c7e7` |
| 4 | `theorem` | [prod_mem_prod_iff](../../../../../GeneralTopology/GeneralitiesInTopology/FilterProdNamespacedComplDiagonalMemProd.lean/declarations/prod-mem-prod-iff.md) | 73 | `result-track:987f1080e3e9d1079be43ed725a22e49bd1e8141ba9f702bf18d9a8ca691e85b` |
| 5 | `theorem` | [mem_prod_principal](../../../../../GeneralTopology/GeneralitiesInTopology/FilterProdNamespacedComplDiagonalMemProd.lean/declarations/mem-prod-principal.md) | 82 | `result-track:85eb2b88ddc7b3cd4b6d1d3f57aa7d15b9a65a6f127d13d75e579ae6e0f537d0` |
| 6 | `theorem` | [mem_prod_top](../../../../../GeneralTopology/GeneralitiesInTopology/FilterProdNamespacedComplDiagonalMemProd.lean/declarations/mem-prod-top.md) | 91 | `result-track:e58e5c1a138beba038e169dd427635f0f4933b9262b6de1f75e6a1099206c539` |
| 7 | `theorem` | [eventually_prod_principal_iff](../../../../../GeneralTopology/GeneralitiesInTopology/FilterProdNamespacedComplDiagonalMemProd.lean/declarations/eventually-prod-principal-iff.md) | 96 | `result-track:696f28db5797431701926025e9a3486f6935fefe2865e8abd82466d4cfd03ffc` |
| 8 | `theorem` | [comap_prod](../../../../../GeneralTopology/GeneralitiesInTopology/FilterProdNamespacedComplDiagonalMemProd.lean/declarations/comap-prod.md) | 101 | `result-track:1c3fe55c795a48674e4e9de5941da2d0f5e9e0f1cb3919d05e7b0754d72ac656` |
| 9 | `theorem` | [comap_prodMap_prod](../../../../../GeneralTopology/GeneralitiesInTopology/FilterProdNamespacedComplDiagonalMemProd.lean/declarations/comap-prodmap-prod.md) | 105 | `result-track:920724cb46320fd79b043205d253f4d4626e18b8532c86d009706db711e73d50` |
| 10 | `theorem` | [prod_top](../../../../../GeneralTopology/GeneralitiesInTopology/FilterProdNamespacedComplDiagonalMemProd.lean/declarations/prod-top.md) | 109 | `result-track:a4c36c499affc195a38fb08c5df8b4b0c58bbc0d56de2e0bd6c5b68daf677111` |
| 11 | `theorem` | [top_prod](../../../../../GeneralTopology/GeneralitiesInTopology/FilterProdNamespacedComplDiagonalMemProd.lean/declarations/top-prod.md) | 112 | `result-track:7ebf77373dc3a96bb05c4675a1541496568883332251d5857212c2f5407396ea` |
| 12 | `theorem` | [sup_prod](../../../../../GeneralTopology/GeneralitiesInTopology/FilterProdNamespacedComplDiagonalMemProd.lean/declarations/sup-prod.md) | 115 | `result-track:177f8a95e9e8a3cc75a7bdbe6063dab0345bfe223f786b07e2c2051188e3d715` |
| 13 | `theorem` | [prod_sup](../../../../../GeneralTopology/GeneralitiesInTopology/FilterProdNamespacedComplDiagonalMemProd.lean/declarations/prod-sup.md) | 118 | `result-track:eddca604e54513dbdd8d8bcfd753d33f70deb10bf9afcd907ad69eab0afb3fd5` |
| 14 | `theorem` | [eventually_prod_iff](../../../../../GeneralTopology/GeneralitiesInTopology/FilterProdNamespacedComplDiagonalMemProd.lean/declarations/eventually-prod-iff.md) | 121 | `result-track:d2c0ca30201ff108a03e9006440d615a92e522ab69ed2cc0cc5f3a5879855612` |
| 15 | `theorem` | [tendsto_fst](../../../../../GeneralTopology/GeneralitiesInTopology/FilterProdNamespacedComplDiagonalMemProd.lean/declarations/tendsto-fst-source-edition-2.md) | 127 | `result-track:db2c43e796f86c06e3b46b8bc5cf60d1dbfeb07e04f70ed19e39648b681f7581` |
| 16 | `theorem` | [tendsto_snd](../../../../../GeneralTopology/GeneralitiesInTopology/FilterProdNamespacedComplDiagonalMemProd.lean/declarations/tendsto-snd.md) | 130 | `result-track:47a285b38f4e1c4f4509e9ec24cd7b2c7eabac509214a11359aca1833cd6f892` |
| 17 | `theorem` | [Tendsto.fst](../../../../../GeneralTopology/GeneralitiesInTopology/FilterProdNamespacedComplDiagonalMemProd.lean/declarations/tendsto-fst.md) | 136 | `result-track:82d1c57b6f4dd64418cd02112484b2b7dea4a6312d3e0ec8413389bd58f82899` |
| 18 | `theorem` | [Tendsto.snd](../../../../../GeneralTopology/GeneralitiesInTopology/FilterProdNamespacedComplDiagonalMemProd.lean/declarations/tendsto-snd-source-edition-2.md) | 143 | `result-track:a42534e8458fd0db57b894bfb5b67c368f3510cb27bfff757705b477116cbf63` |
| 19 | `theorem` | [Tendsto.prodMk](../../../../../GeneralTopology/GeneralitiesInTopology/FilterProdNamespacedComplDiagonalMemProd.lean/declarations/tendsto-prodmk.md) | 147 | `result-track:d47ac6005db0dc1899e83a32e46ed1e4e7164492d0aa80bda79d8ed817307f14` |
| 20 | `theorem` | [tendsto_prod_swap](../../../../../GeneralTopology/GeneralitiesInTopology/FilterProdNamespacedComplDiagonalMemProd.lean/declarations/tendsto-prod-swap.md) | 154 | `result-track:aa753e77a43099f64e32010039afb95fc15122495736fed247bcbb74877c70c8` |
| 21 | `theorem` | [Eventually.prod_inl](../../../../../GeneralTopology/GeneralitiesInTopology/FilterProdNamespacedComplDiagonalMemProd.lean/declarations/eventually-prod-inl.md) | 157 | `result-track:e64bdf6e2159074f429a0a0f7b6c04b71f87deb964746c766714a99bcc5d5765` |
| 22 | `theorem` | [Eventually.prod_inr](../../../../../GeneralTopology/GeneralitiesInTopology/FilterProdNamespacedComplDiagonalMemProd.lean/declarations/eventually-prod-inr.md) | 161 | `result-track:784021862adda7770e9671f57dd7995d03c0bee065ead4d9be861d64ab7e82dc` |
| 23 | `theorem` | [Eventually.prod_mk](../../../../../GeneralTopology/GeneralitiesInTopology/FilterProdNamespacedComplDiagonalMemProd.lean/declarations/eventually-prod-mk.md) | 165 | `result-track:4eb070763bd5fdf061f768ddf2388c79b93377b6459f859f241bb5caec80a4c8` |
| 24 | `theorem` | [EventuallyEq.prodMap](../../../../../GeneralTopology/GeneralitiesInTopology/FilterProdNamespacedComplDiagonalMemProd.lean/declarations/eventuallyeq-prodmap.md) | 169 | `result-track:68d7b1de561e0db37ba03865b28edcdc6881fcbce9a6c8aaea190c4199c9a79d` |
| 25 | `theorem` | [EventuallyLE.prodMap](../../../../../GeneralTopology/GeneralitiesInTopology/FilterProdNamespacedComplDiagonalMemProd.lean/declarations/eventuallyle-prodmap.md) | 177 | `result-track:412cb7ffcf9e50a58e5d3a327b46009854bbf3d31f16c56c00c58cfa8632d374` |
| 26 | `theorem` | [Eventually.curry](../../../../../GeneralTopology/GeneralitiesInTopology/FilterProdNamespacedComplDiagonalMemProd.lean/declarations/eventually-curry.md) | 185 | `result-track:ff31e343ed0c521bdc6448abe439689cb8cf749c531eabc4b60722c6a5eee798` |
| 27 | `lemma` | [Frequently.uncurry](../../../../../GeneralTopology/GeneralitiesInTopology/FilterProdNamespacedComplDiagonalMemProd.lean/declarations/frequently-uncurry.md) | 190 | `result-track:aa8384c4c7086d79d269b40d5950aad2d4508b249d390d886d8d3b732111a201` |
| 28 | `lemma` | [Frequently.of_curry](../../../../../GeneralTopology/GeneralitiesInTopology/FilterProdNamespacedComplDiagonalMemProd.lean/declarations/frequently-of-curry.md) | 194 | `result-track:6a34b4e5215e718e87839b615d261b4422e497845f32db2ac4e8b00c560ac19f` |
| 29 | `theorem` | [Eventually.diag_of_prod](../../../../../GeneralTopology/GeneralitiesInTopology/FilterProdNamespacedComplDiagonalMemProd.lean/declarations/eventually-diag-of-prod.md) | 200 | `result-track:921d222e8de7e9c038d9f9a7eb9dd507a088576c0b87d01dcb46948498820e3c` |
| 30 | `theorem` | [Eventually.diag_of_prod_left](../../../../../GeneralTopology/GeneralitiesInTopology/FilterProdNamespacedComplDiagonalMemProd.lean/declarations/eventually-diag-of-prod-left.md) | 205 | `result-track:8a748fa49a0cfcf3c9023afd410a9140903e5265da72c65f90d436b1301f2ce9` |
| 31 | `theorem` | [Eventually.diag_of_prod_right](../../../../../GeneralTopology/GeneralitiesInTopology/FilterProdNamespacedComplDiagonalMemProd.lean/declarations/eventually-diag-of-prod-right.md) | 211 | `result-track:44b8274c955f10f944971f47105eece0431f596c3f42d35cbc6408806124b155` |
| 32 | `theorem` | [tendsto_diag](../../../../../GeneralTopology/GeneralitiesInTopology/FilterProdNamespacedComplDiagonalMemProd.lean/declarations/tendsto-diag.md) | 217 | `result-track:036f853402db64b743fd90a5a62d1ca22c504152193f03bcaca6252e43c50fde` |
| 33 | `theorem` | [prod_iInf_left](../../../../../GeneralTopology/GeneralitiesInTopology/FilterProdNamespacedComplDiagonalMemProd.lean/declarations/prod-iinf-left.md) | 220 | `result-track:fb25cbbfe4aff629490c1b943d84638438214984994b0dfcfb7c1f8a419acc4c` |
| 34 | `theorem` | [prod_iInf_right](../../../../../GeneralTopology/GeneralitiesInTopology/FilterProdNamespacedComplDiagonalMemProd.lean/declarations/prod-iinf-right.md) | 224 | `result-track:a519734cf2be3d13499ea1a62c2ba7e318b0fcbd8831bca091b9c3e518090689` |
| 35 | `theorem` | [prod_mono](../../../../../GeneralTopology/GeneralitiesInTopology/FilterProdNamespacedComplDiagonalMemProd.lean/declarations/prod-mono.md) | 229 | `result-track:0067a84cc31dd788bb8aaf5344312fd1dc7cd01f4e206f2c15f0a201c3b76dea` |
| 36 | `theorem` | [prod_mono_left](../../../../../GeneralTopology/GeneralitiesInTopology/FilterProdNamespacedComplDiagonalMemProd.lean/declarations/prod-mono-left.md) | 234 | `result-track:e746c22b12fd703ff5ad585dd1b2815accacff6ae9e051021ef503f53259f8e3` |
| 37 | `theorem` | [prod_mono_right](../../../../../GeneralTopology/GeneralitiesInTopology/FilterProdNamespacedComplDiagonalMemProd.lean/declarations/prod-mono-right.md) | 238 | `result-track:0c6910036bf53a05e0860b9b68415f9906019e36e46afd9cc3cf9b686d46a014` |
| 38 | `theorem` | [prod_comap_comap_eq.](../../../../../GeneralTopology/GeneralitiesInTopology/FilterProdNamespacedComplDiagonalMemProd.lean/declarations/prod-comap-comap-eq.md) | 241 | `result-track:b1f013d434cc0a39e3096afc244e57688bcac75ab3eadd9c11416a810882b7aa` |
| 39 | `theorem` | [prod_comm'](../../../../../GeneralTopology/GeneralitiesInTopology/FilterProdNamespacedComplDiagonalMemProd.lean/declarations/prod-comm-source-edition-2.md) | 246 | `result-track:dd03978d4d61799eb20f4d5bffcd1b7f6b221c7953f0788621cb3b9304b8a707` |
| 40 | `theorem` | [prod_comm](../../../../../GeneralTopology/GeneralitiesInTopology/FilterProdNamespacedComplDiagonalMemProd.lean/declarations/prod-comm.md) | 249 | `result-track:8007e994c4ef05bf4a64898186b0737c721b9f563aa7682c9910944d4240b515` |
| 41 | `theorem` | [mem_prod_iff_left](../../../../../GeneralTopology/GeneralitiesInTopology/FilterProdNamespacedComplDiagonalMemProd.lean/declarations/mem-prod-iff-left.md) | 253 | `result-track:b8f41088ef41ee570680fea2b81cd5e9c705bd2ceb030f1aec51c12e4d418765` |
| 42 | `theorem` | [mem_prod_iff_right](../../../../../GeneralTopology/GeneralitiesInTopology/FilterProdNamespacedComplDiagonalMemProd.lean/declarations/mem-prod-iff-right.md) | 259 | `result-track:6d61d0e59bfdf391dd0207a3df23117de6224d541327ffbd62a73c1303943962` |
| 43 | `theorem` | [map_fst_prod](../../../../../GeneralTopology/GeneralitiesInTopology/FilterProdNamespacedComplDiagonalMemProd.lean/declarations/map-fst-prod.md) | 264 | `result-track:f71bdf6f7a31c59043669f0cf5c82a3a39d4942a5f8d05475fa98792fecf4b3a` |
| 44 | `theorem` | [map_snd_prod](../../../../../GeneralTopology/GeneralitiesInTopology/FilterProdNamespacedComplDiagonalMemProd.lean/declarations/map-snd-prod.md) | 270 | `result-track:2fdd84bb1241b22aaab0757036191b3cd814b688146afc572e06f82b50300085` |
| 45 | `theorem` | [prod_le_prod](../../../../../GeneralTopology/GeneralitiesInTopology/FilterProdNamespacedComplDiagonalMemProd.lean/declarations/prod-le-prod.md) | 274 | `result-track:0cc3eaa44d6323af5831c8460e8cbc6f2d9420e0b0b336a398cda4c411f4a452` |
| 46 | `theorem` | [prod_inj](../../../../../GeneralTopology/GeneralitiesInTopology/FilterProdNamespacedComplDiagonalMemProd.lean/declarations/prod-inj.md) | 281 | `result-track:d8479b0731cac7dd9a98a96ef6a1e6d71c250da0752940b14bc7b92ac754b1c7` |
| 47 | `theorem` | [eventually_swap_iff](../../../../../GeneralTopology/GeneralitiesInTopology/FilterProdNamespacedComplDiagonalMemProd.lean/declarations/eventually-swap-iff.md) | 288 | `result-track:98acf8899311af5c4c1443fb120947cdcd04fc156bf002a63ac3913941e22ed3` |
| 48 | `theorem` | [prod_assoc](../../../../../GeneralTopology/GeneralitiesInTopology/FilterProdNamespacedComplDiagonalMemProd.lean/declarations/prod-assoc.md) | 292 | `result-track:572422f3453112f520b759f61fb731d1886ab232bb62adfd0456eeaca203670f` |
| 49 | `theorem` | [prod_assoc_symm](../../../../../GeneralTopology/GeneralitiesInTopology/FilterProdNamespacedComplDiagonalMemProd.lean/declarations/prod-assoc-symm.md) | 297 | `result-track:2344117d3848adf03062e4bdc5a347d03460975f21b73876e534d2e5409fb515` |
| 50 | `theorem` | [tendsto_prodAssoc](../../../../../GeneralTopology/GeneralitiesInTopology/FilterProdNamespacedComplDiagonalMemProd.lean/declarations/tendsto-prodassoc.md) | 302 | `result-track:7d0da51648faac6a03aa7c23184ea2db1defa0e8e77e9a0759a94a7615fe6f55` |
| 51 | `theorem` | [tendsto_prodAssoc_symm](../../../../../GeneralTopology/GeneralitiesInTopology/FilterProdNamespacedComplDiagonalMemProd.lean/declarations/tendsto-prodassoc-symm.md) | 306 | `result-track:5b238b1bb8454d86476f9ab94c8662fb9ae8f1507af9c5e620c8ded5eb8e1eb0` |
| 52 | `theorem` | [map_swap4_prod](../../../../../GeneralTopology/GeneralitiesInTopology/FilterProdNamespacedComplDiagonalMemProd.lean/declarations/map-swap4-prod.md) | 311 | `result-track:09a37b1bcfe94a987f855fe134591f35b0dc41fe98a4a36db60d13253a5dfa30` |
| 53 | `theorem` | [tendsto_swap4_prod](../../../../../GeneralTopology/GeneralitiesInTopology/FilterProdNamespacedComplDiagonalMemProd.lean/declarations/tendsto-swap4-prod.md) | 316 | `result-track:f02f100e26241802fe6010a338d0893f9adf4a9187fe158944d07c481ba228a2` |
| 54 | `theorem` | [prod_map_map_eq.](../../../../../GeneralTopology/GeneralitiesInTopology/FilterProdNamespacedComplDiagonalMemProd.lean/declarations/prod-map-map-eq-source-edition-2.md) | 321 | `result-track:df75840f6ba97d4dffb1fb57608c268b50a169bf4b70f34022a4f9b468f265e8` |
| 55 | `theorem` | [prod_map_map_eq'](../../../../../GeneralTopology/GeneralitiesInTopology/FilterProdNamespacedComplDiagonalMemProd.lean/declarations/prod-map-map-eq.md) | 331 | `result-track:4e687409523c49b7501ad33c9902834f53b17f86da351c9f3ae8b4cbded73dc0` |
| 56 | `theorem` | [prod_map_left](../../../../../GeneralTopology/GeneralitiesInTopology/FilterProdNamespacedComplDiagonalMemProd.lean/declarations/prod-map-left.md) | 336 | `result-track:817931361ee3b16ea5f90362f54ad66b6c4acf06a5f6ab6dc3d52689d32fe366` |
| 57 | `theorem` | [prod_map_right](../../../../../GeneralTopology/GeneralitiesInTopology/FilterProdNamespacedComplDiagonalMemProd.lean/declarations/prod-map-right.md) | 340 | `result-track:5c1eb8f895ce362dc193a88421e291720b4335cdb26f099fdf6fc22fda296a3a` |
| 58 | `theorem` | [le_prod_map_fst_snd](../../../../../GeneralTopology/GeneralitiesInTopology/FilterProdNamespacedComplDiagonalMemProd.lean/declarations/le-prod-map-fst-snd.md) | 344 | `result-track:f2b0a9ff09e6b44ba1626c3bd229e94e4508a9763aad5f8aa5fd64651462e408` |
| 59 | `theorem` | [Tendsto.prodMap](../../../../../GeneralTopology/GeneralitiesInTopology/FilterProdNamespacedComplDiagonalMemProd.lean/declarations/tendsto-prodmap.md) | 347 | `result-track:36be73ebedd2023aed25c824da7c4c899177e0fd0493bdc7ef9af1d9ab0cb889` |
| 60 | `theorem` | [map_prod](../../../../../GeneralTopology/GeneralitiesInTopology/FilterProdNamespacedComplDiagonalMemProd.lean/declarations/map-prod.md) | 356 | `result-track:f8dad2a89ae4ca9ac9e1ba2182e24392cf548146e572a5af31ca8ce4cf8b7b45` |
| 61 | `theorem` | [prod_eq](../../../../../GeneralTopology/GeneralitiesInTopology/FilterProdNamespacedComplDiagonalMemProd.lean/declarations/prod-eq.md) | 364 | `result-track:6f0c9255553f2e95d22be7d959a083d66e7d965205d199d594865220090a896b` |
| 62 | `theorem` | [prod_inf_prod](../../../../../GeneralTopology/GeneralitiesInTopology/FilterProdNamespacedComplDiagonalMemProd.lean/declarations/prod-inf-prod.md) | 366 | `result-track:2a4c62e95b5e387c424defa3dfa233f23ae639fe840354d291bbe67786b004f7` |
| 63 | `theorem` | [inf_prod](../../../../../GeneralTopology/GeneralitiesInTopology/FilterProdNamespacedComplDiagonalMemProd.lean/declarations/inf-prod.md) | 370 | `result-track:ea496feae08a55534ad29ba41571cf1754d248a707a84840da5c916eadad774c` |
| 64 | `theorem` | [prod_inf](../../../../../GeneralTopology/GeneralitiesInTopology/FilterProdNamespacedComplDiagonalMemProd.lean/declarations/prod-inf.md) | 373 | `result-track:e3b42c20e504b11e9148b7930427787364c33d59ee43972689c8f4111af23fe8` |
| 65 | `theorem` | [prod_principal_principal](../../../../../GeneralTopology/GeneralitiesInTopology/FilterProdNamespacedComplDiagonalMemProd.lean/declarations/prod-principal-principal.md) | 377 | `result-track:0ca849c1905a31dfb1909554402dbe08423083dde8042e85e6938d461466cac1` |
| 66 | `theorem` | [pure_prod](../../../../../GeneralTopology/GeneralitiesInTopology/FilterProdNamespacedComplDiagonalMemProd.lean/declarations/pure-prod.md) | 381 | `result-track:0761021b9f02b2bb699419b339a933270de3f63bcc5e0e7bb2b1876796c94d6e` |
| 67 | `theorem` | [map_pure_prod](../../../../../GeneralTopology/GeneralitiesInTopology/FilterProdNamespacedComplDiagonalMemProd.lean/declarations/map-pure-prod.md) | 384 | `result-track:9467b0ca93d4811f9399da4d86f73b2d0bdd14f0d2744898b826cfa0aa5c4795` |
| 68 | `theorem` | [prod_pure](../../../../../GeneralTopology/GeneralitiesInTopology/FilterProdNamespacedComplDiagonalMemProd.lean/declarations/prod-pure.md) | 389 | `result-track:2671d2055260445ef79cedfb496bbbc12056b94f7d7f3d87527893904901706a` |
| 69 | `theorem` | [prod_pure_pure](../../../../../GeneralTopology/GeneralitiesInTopology/FilterProdNamespacedComplDiagonalMemProd.lean/declarations/prod-pure-pure.md) | 392 | `result-track:e17dc80b1c26457858dca83df24d162366760bb2e746aa5d818c8d085390ef54` |
| 70 | `theorem` | [prod_eq_bot](../../../../../GeneralTopology/GeneralitiesInTopology/FilterProdNamespacedComplDiagonalMemProd.lean/declarations/prod-eq-bot.md) | 396 | `result-track:b298b5d307b6c42ce9188db0af463bb42b3901803a9b212fa82f6ce255e579a4` |
| 71 | `theorem` | [prod_bot](../../../../../GeneralTopology/GeneralitiesInTopology/FilterProdNamespacedComplDiagonalMemProd.lean/declarations/prod-bot.md) | 400 | `result-track:cd7f7619f11185925f2d14e7423aba39b4c1613bc20e503700bac9559fb9be4c` |
| 72 | `theorem` | [bot_prod](../../../../../GeneralTopology/GeneralitiesInTopology/FilterProdNamespacedComplDiagonalMemProd.lean/declarations/bot-prod.md) | 402 | `result-track:f21cf3b6edde7fb4ffa2b8373392a9007789f13973e6cad519b26830372bd796` |
| 73 | `theorem` | [prod_neBot](../../../../../GeneralTopology/GeneralitiesInTopology/FilterProdNamespacedComplDiagonalMemProd.lean/declarations/prod-nebot.md) | 404 | `result-track:1927b511326a529bc27d9bac22703e16349fc7bfab6bf9a23fbb605bc923d24d` |
| 74 | `theorem` | [NeBot.prod](../../../../../GeneralTopology/GeneralitiesInTopology/FilterProdNamespacedComplDiagonalMemProd.lean/declarations/nebot-prod.md) | 407 | `result-track:d824f1e4eed31c7e5ac42fcad8fca38d13933f506830ae73104c0a088b681327` |
| 75 | `instance` | [prod.instNeBot](../../../../../GeneralTopology/GeneralitiesInTopology/FilterProdNamespacedComplDiagonalMemProd.lean/declarations/prod-instnebot.md) | 409 | `declaration-track:30edc891f949f87f297efd5b8c2d978a0aca34916045e18c22cfa4e6eecf4378` |
| 76 | `lemma` | [disjoint_prod](../../../../../GeneralTopology/GeneralitiesInTopology/FilterProdNamespacedComplDiagonalMemProd.lean/declarations/disjoint-prod.md) | 412 | `result-track:499a529bf90a99bed73face955d9c773932c64009d43ad1e500b56fa9468d4d4` |
| 77 | `theorem` | [frequently_prod_and](../../../../../GeneralTopology/GeneralitiesInTopology/FilterProdNamespacedComplDiagonalMemProd.lean/declarations/frequently-prod-and.md) | 418 | `result-track:0dcbd361e5c6cf8bb86c2d9cb328528420eb779fcf0d9f66ac875d51247fbaf9` |
| 78 | `theorem` | [tendsto_prod_iff](../../../../../GeneralTopology/GeneralitiesInTopology/FilterProdNamespacedComplDiagonalMemProd.lean/declarations/tendsto-prod-iff.md) | 423 | `result-track:3d539a46b0eeb46e37208d75d55c6c2c7a20283206731045bf4fbaea8b791e73` |
| 79 | `theorem` | [tendsto_prod_iff'](../../../../../GeneralTopology/GeneralitiesInTopology/FilterProdNamespacedComplDiagonalMemProd.lean/declarations/tendsto-prod-iff-source-edition-2.md) | 427 | `result-track:f3abee0ac5de222e8b7d8febd47c89d89e30afb3e61a8ee524bd402d17c942e4` |
| 80 | `theorem` | [le_prod](../../../../../GeneralTopology/GeneralitiesInTopology/FilterProdNamespacedComplDiagonalMemProd.lean/declarations/le-prod.md) | 431 | `result-track:9e4c5c6a153910035ada2ba6cfc5dd024909377358b44f7b444e275b135c54ef` |
| 81 | `theorem` | [coprod_eq_prod_top_sup_top_prod](../../../../../GeneralTopology/GeneralitiesInTopology/FilterProdNamespacedComplDiagonalMemProd.lean/declarations/coprod-eq-prod-top-sup-top-prod.md) | 443 | `result-track:75e78d8257bd00bb322e900d2c250325d6fd4640d58743e8d48c0731032958c3` |
| 82 | `theorem` | [mem_coprod_iff](../../../../../GeneralTopology/GeneralitiesInTopology/FilterProdNamespacedComplDiagonalMemProd.lean/declarations/mem-coprod-iff.md) | 448 | `result-track:63ffc163c8d75ac76f68c15ad7a7771ed6f3f5a2ec49205eeea1bafb8a78f0a0` |
| 83 | `theorem` | [bot_coprod](../../../../../GeneralTopology/GeneralitiesInTopology/FilterProdNamespacedComplDiagonalMemProd.lean/declarations/bot-coprod.md) | 453 | `result-track:51a2426c6826067c2e014620f28758ca9aa69db27d189822d22e8ff06bc3e868` |
| 84 | `theorem` | [coprod_bot](../../../../../GeneralTopology/GeneralitiesInTopology/FilterProdNamespacedComplDiagonalMemProd.lean/declarations/coprod-bot.md) | 457 | `result-track:fdc1c16a061eec3c8af1ae54dd883297d1abebe2aba9dd1a0ddb20544f9f48e4` |
| 85 | `theorem` | [bot_coprod_bot](../../../../../GeneralTopology/GeneralitiesInTopology/FilterProdNamespacedComplDiagonalMemProd.lean/declarations/bot-coprod-bot.md) | 460 | `result-track:cba1b761013c09a56b46e6fe0f6b86c134d3b09f6d30fc32482cb3e355d7239e` |
| 86 | `theorem` | [compl_mem_coprod](../../../../../GeneralTopology/GeneralitiesInTopology/FilterProdNamespacedComplDiagonalMemProd.lean/declarations/compl-mem-coprod.md) | 462 | `result-track:8c91ac158982e8f35dd49eaa09713f128717d584d3ddc0e21288d95944962052` |
| 87 | `theorem` | [coprod_mono](../../../../../GeneralTopology/GeneralitiesInTopology/FilterProdNamespacedComplDiagonalMemProd.lean/declarations/coprod-mono.md) | 467 | `result-track:43872bdd4330e7466ea0a273088271ac0c34fbf4b1e988687dc432ca8e5e4bd0` |
| 88 | `theorem` | [coprod_neBot_iff](../../../../../GeneralTopology/GeneralitiesInTopology/FilterProdNamespacedComplDiagonalMemProd.lean/declarations/coprod-nebot-iff.md) | 471 | `result-track:e94682aa4285d05adc36225f46de570205733a987089506a7621fbae23620154` |
| 89 | `theorem` | [coprod_neBot_left](../../../../../GeneralTopology/GeneralitiesInTopology/FilterProdNamespacedComplDiagonalMemProd.lean/declarations/coprod-nebot-left.md) | 475 | `result-track:0720853fd5e167b66085cdb2fa5ee0484f1592cc3a320a6750416b2c24af2369` |
| 90 | `theorem` | [coprod_neBot_right](../../../../../GeneralTopology/GeneralitiesInTopology/FilterProdNamespacedComplDiagonalMemProd.lean/declarations/coprod-nebot-right.md) | 479 | `result-track:ee9f7e9ebc94bc45ce1ea9204c455590c2b493760f34f822c9b1824e2efec7a8` |
| 91 | `theorem` | [coprod_inf_prod_le](../../../../../GeneralTopology/GeneralitiesInTopology/FilterProdNamespacedComplDiagonalMemProd.lean/declarations/coprod-inf-prod-le.md) | 482 | `result-track:305ebc08c6ed7ec073ff4b838fdb8dd6edcc8c98f2e173cf589d4e50b7533aa1` |
| 92 | `theorem` | [principal_coprod_principal](../../../../../GeneralTopology/GeneralitiesInTopology/FilterProdNamespacedComplDiagonalMemProd.lean/declarations/principal-coprod-principal.md) | 491 | `result-track:ee447cffe55c439445746db4ea053a0809833fe0811dd8eac072846691f646da` |
| 93 | `theorem` | [map_prodMap_coprod_le.](../../../../../GeneralTopology/GeneralitiesInTopology/FilterProdNamespacedComplDiagonalMemProd.lean/declarations/map-prodmap-coprod-le.md) | 498 | `result-track:546a67507a0622796976001d841f3240ddaf0ce4eabe4c510baa2893f8ada38a` |
| 94 | `theorem` | [map_const_principal_coprod_map_id_principal](../../../../../GeneralTopology/GeneralitiesInTopology/FilterProdNamespacedComplDiagonalMemProd.lean/declarations/map-const-principal-coprod-map-id-principal.md) | 514 | `result-track:6bf103cb8fce80ff4fa3ce8e72f70a1492722122a51b82c09a401b7d65408928` |
| 95 | `theorem` | [map_prodMap_const_id_principal_coprod_principal](../../../../../GeneralTopology/GeneralitiesInTopology/FilterProdNamespacedComplDiagonalMemProd.lean/declarations/map-prodmap-const-id-principal-coprod-principal.md) | 525 | `result-track:f5be3b7309116e87b6b191b9845da0de4a7329a92486eebc8aa928b0bd3472e1` |
| 96 | `theorem` | [Tendsto.prodMap_coprod](../../../../../GeneralTopology/GeneralitiesInTopology/FilterProdNamespacedComplDiagonalMemProd.lean/declarations/tendsto-prodmap-coprod.md) | 542 | `result-track:36700093c895d6c4b8b87666590482e3685786683f2d6d77981edf70763988a0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=14761161b65f8ecf3efc44d79b76b3afb9ce915901a2930afca66d61a50c36a8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Prod/Variant4c9e6bda6dca2bae5e87a2cd4b9940db1816c22c5768a9467bde984e570adea2.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Prod/Variant4c9e6bda6dca2bae5e87a2cd4b9940db1816c22c5768a9467bde984e570adea2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
