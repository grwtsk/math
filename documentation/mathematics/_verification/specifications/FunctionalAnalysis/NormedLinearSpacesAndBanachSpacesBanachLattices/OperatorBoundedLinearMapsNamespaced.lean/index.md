# Verification target: Operator Bounded Linear Maps Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8ae0ea87026778970e97be71402c752d5a59db13",
  "lexical_observation_count": 64,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/BoundedLinearMaps/Variant04477af7edc9d42c5eecc55ccbdaa2c01ea4070a796bf9cd014a05b7fe4823dc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMapsNamespaced.lean/index.md) · [Full source](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMapsNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8ae0ea87026778970e97be71402c752d5a59db13`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/BoundedLinearMaps/Variant04477af7edc9d42c5eecc55ccbdaa2c01ea4070a796bf9cd014a05b7fe4823dc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/BoundedLinearMaps/Variant04477af7edc9d42c5eecc55ccbdaa2c01ea4070a796bf9cd014a05b7fe4823dc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.NormedSpace.Multilinear.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Ring.Units` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.OperatorNorm.Mul` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IsBoundedLinearMap](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMapsNamespaced.lean/declarations/isboundedlinearmap.md) | 75 | `declaration-track:4578a321a0aa757fc241e6934c2540af4c6fddbd1cafdcb0a15ab25417ad677b` |
| 2 | `lemma` | [isBoundedLinearMap_iff](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMapsNamespaced.lean/declarations/isboundedlinearmap-iff.md) | 80 | `result-track:cbeff4c97b74662297d7ef548a3393eb98a935d731a6086ba7114561acc89961` |
| 3 | `theorem` | [IsLinearMap.with_bound](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMapsNamespaced.lean/declarations/islinearmap-with-bound.md) | 84 | `result-track:05e877d72834eaf30f111ff7ddf0182f13272ee001949d434564ece6dc8cbdf2` |
| 4 | `theorem` | [ContinuousLinearMap.isBoundedLinearMap](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMapsNamespaced.lean/declarations/continuouslinearmap-isboundedlinearmap.md) | 94 | `result-track:226931045c4afc58537bae9ab8d632a627518f4aa13016a20a2ecb8deb344f29` |
| 5 | `def` | [toLinearMap](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMapsNamespaced.lean/declarations/tolinearmap.md) | 100 | `declaration-track:5ecf51d74ebba228f650130206f3261beb9af5b902bf2daf22ae4da5606a508f` |
| 6 | `def` | [toContinuousLinearMap](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMapsNamespaced.lean/declarations/tocontinuouslinearmap.md) | 104 | `declaration-track:015a0f6148c24c61ed4af6d7fbd27a02c85c64882cd398fae778e54d04a5663a` |
| 7 | `theorem` | [zero](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMapsNamespaced.lean/declarations/zero.md) | 110 | `result-track:fe1b75822e0654588cc1136045225e8ff4055d593606cbe63e383f2d5f14257c` |
| 8 | `theorem` | [id](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMapsNamespaced.lean/declarations/id.md) | 113 | `result-track:10e4e92266daf3619764996c60e98317574c9a0cba69b16cdaa7581f3b4bc212` |
| 9 | `theorem` | [fst](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMapsNamespaced.lean/declarations/fst.md) | 116 | `result-track:dcba8600e8c93dbd8359a8811b0aa4fa06424580471fd4e4f9e3fdd0c25b4ae4` |
| 10 | `theorem` | [snd](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMapsNamespaced.lean/declarations/snd.md) | 121 | `result-track:0fc071cfd8403509007eded4f28bf358d8f1e0014e7aa7a2fc7f9267d5310e89` |
| 11 | `theorem` | [smul](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMapsNamespaced.lean/declarations/smul.md) | 128 | `result-track:c11556cea9b03cab0ba7842f2eeee57b6c67a2dc1cd251743893c5c136ce4869` |
| 12 | `theorem` | [neg](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMapsNamespaced.lean/declarations/neg.md) | 136 | `result-track:36db3027ce9401912d22034979c5319178b0233716360631297b4a98fe723a82` |
| 13 | `theorem` | [add](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMapsNamespaced.lean/declarations/add.md) | 140 | `result-track:a4dc574e3f34e9554b8233d0bcb86d55628ce835c1dd4acafcae727b37f2d3c9` |
| 14 | `theorem` | [sub](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMapsNamespaced.lean/declarations/sub.md) | 149 | `result-track:92205be64458c4244bc30d8f52fbb79e52a01b9a629ab4058d39d28c9fa245a8` |
| 15 | `theorem` | [comp](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMapsNamespaced.lean/declarations/comp.md) | 152 | `result-track:a679ee80715af3e5f169b2a5b3d5c19f717ec58f1b26d3736b9ae571f6f46ed6` |
| 16 | `theorem` | [tendsto](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMapsNamespaced.lean/declarations/tendsto.md) | 156 | `result-track:c077d48b0cf08221c13aae9c338bdeb293473736514d9c9b08bde4c88f729ffa` |
| 17 | `theorem` | [continuous](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMapsNamespaced.lean/declarations/continuous.md) | 168 | `result-track:3299e25882df423c33a9c5b3a7b5e6eac20b430c799eab96a564fd4c07c3f288` |
| 18 | `theorem` | [isLinearMap_and_continuous_iff_isBoundedLinearMap](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMapsNamespaced.lean/declarations/islinearmap-and-continuous-iff-isboundedlinearmap.md) | 172 | `result-track:88a7b892669335cf089375eff5fa64ff5601d39c0165052378f1f63f238c896b` |
| 19 | `theorem` | [lim_zero_bounded_linear_map](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMapsNamespaced.lean/declarations/lim-zero-bounded-linear-map.md) | 178 | `result-track:887d6fd1e013fa2ad5f0ec570fcafcbbbbc1251d3d607bb32b5142b044e8b937` |
| 20 | `theorem` | [isBigO_id](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMapsNamespaced.lean/declarations/isbigo-id.md) | 185 | `result-track:1592c139bbe01b8aaf345b7b58ac25e4c0f6192a0ad6d3dddf96ad00b9c2ce85` |
| 21 | `theorem` | [isBigO_comp](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMapsNamespaced.lean/declarations/isbigo-comp.md) | 189 | `result-track:5aa224396684f53b085bf9fd4110b0954ac44d71a205ab208592e3a50d1de07a` |
| 22 | `theorem` | [isBigO_sub](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMapsNamespaced.lean/declarations/isbigo-sub.md) | 193 | `result-track:19af25fbff5505e2e949de38e5db33b80ac45a5d392f84c64efe8dd01642a581` |
| 23 | `theorem` | [isBoundedLinearMap_prod_multilinear](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMapsNamespaced.lean/declarations/isboundedlinearmap-prod-multilinear.md) | 207 | `result-track:625a69db580f7f2bfe4e38ac52b11eb1d33c0d6a40951d9e48ee292d131099bf` |
| 24 | `theorem` | [isBoundedLinearMap_continuousMultilinearMap_comp_linear](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMapsNamespaced.lean/declarations/isboundedlinearmap-continuousmultilinearmap-comp-linear.md) | 219 | `result-track:f23123f4479b2357d3aafd44e3406976ec30d4e21b507a7150eed2fb101b93a9` |
| 25 | `theorem` | [map_add₂](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMapsNamespaced.lean/declarations/map-add.md) | 252 | `result-track:bf83fd05aa6f8a528ad2ed429b1b7bdfc12342ab771fa4577c354d285ca50718` |
| 26 | `theorem` | [map_zero₂](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMapsNamespaced.lean/declarations/map-zero.md) | 255 | `result-track:17afe3263c8d445877f76fccf88b3112a0107da0816c0bb9ab4d3d8aca7f1c0d` |
| 27 | `theorem` | [map_smulₛₗ₂](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMapsNamespaced.lean/declarations/map-smul.md) | 258 | `result-track:ac863643c7caab2cb8c966476d228b343f77d9e426c1d2948f7b477c69e70b80` |
| 28 | `theorem` | [map_sub₂](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMapsNamespaced.lean/declarations/map-sub.md) | 267 | `result-track:ded53e1224fbc91a96a30fdb56024e3f3462d480d1ad88761283578c36b4b491` |
| 29 | `theorem` | [map_neg₂](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMapsNamespaced.lean/declarations/map-neg.md) | 270 | `result-track:f13dcf8e682562247a942ad6a4b1880fe8b597235dc13c7565d6905a1155e0b5` |
| 30 | `theorem` | [map_smul₂](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMapsNamespaced.lean/declarations/map-smul-source-edition-2.md) | 275 | `result-track:f05691568339fcd893bb6c92e0b8d123d51129d6b2f4c7de81e04dd80fe6946c` |
| 31 | `structure` | [IsBoundedBilinearMap](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMapsNamespaced.lean/declarations/isboundedbilinearmap.md) | 283 | `declaration-track:fb30c28904365fc9f5c39c2279a96cb671478f76ab1e1f9b5dde9242ab42731b` |
| 32 | `lemma` | [IsBoundedBilinearMap.symm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMapsNamespaced.lean/declarations/isboundedbilinearmap-symm.md) | 292 | `result-track:5830b30f846af1f5e899d7ee728ec8b062ae27fe188867cb65fb6a629e78b7cc` |
| 33 | `theorem` | [ContinuousLinearMap.isBoundedBilinearMap](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMapsNamespaced.lean/declarations/continuouslinearmap-isboundedbilinearmap.md) | 302 | `result-track:d3e88cb52493966956c286f8fc8e7cbb967597a2330729916ee7bd62cbe660aa` |
| 34 | `def` | [IsBoundedBilinearMap.toContinuousLinearMap](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMapsNamespaced.lean/declarations/isboundedbilinearmap-tocontinuouslinearmap.md) | 316 | `declaration-track:f56c4351a36721d4d228fd543992d6ff78d3694c72bf12c23bba0f8d76dcdfb1` |
| 35 | `theorem` | [IsBoundedBilinearMap.isBigO](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMapsNamespaced.lean/declarations/isboundedbilinearmap-isbigo-source-edition-2.md) | 322 | `result-track:e562e1fcd84dff9c4eed645af8e841d16d2b2c8dd9bd22c33e83915f74f3e8c3` |
| 36 | `theorem` | [IsBoundedBilinearMap.isBigO_comp](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMapsNamespaced.lean/declarations/isboundedbilinearmap-isbigo-comp.md) | 328 | `result-track:bf0348c6389dd29bfb17615489aed356797342264b4b1e78cb339068b3c2dbb1` |
| 37 | `theorem` | [IsBoundedBilinearMap.isBigO'](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMapsNamespaced.lean/declarations/isboundedbilinearmap-isbigo.md) | 332 | `result-track:97fce1a94f92f837e1e0d01e01f23c4f803be8e607a9c936460b3ade2cdfeb24` |
| 38 | `theorem` | [IsBoundedBilinearMap.map_sub_left](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMapsNamespaced.lean/declarations/isboundedbilinearmap-map-sub-left.md) | 338 | `result-track:91b2bfa493cc1f326fdd8a1ef017c4c190ca54ec2fbfc1d9329e00f4b9bcb5b2` |
| 39 | `theorem` | [IsBoundedBilinearMap.map_sub_right](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMapsNamespaced.lean/declarations/isboundedbilinearmap-map-sub-right.md) | 342 | `result-track:d85f312b3ddbfe9e46a90b9f000fbb955c70a5af7ea92173549283bc867afd0a` |
| 40 | `theorem` | [IsBoundedBilinearMap.continuous](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMapsNamespaced.lean/declarations/isboundedbilinearmap-continuous.md) | 348 | `result-track:c52e72d95db1746bda756f2733c2fd644c605eac7430ea30d7f04c77552939cb` |
| 41 | `theorem` | [IsBoundedBilinearMap.continuous_left](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMapsNamespaced.lean/declarations/isboundedbilinearmap-continuous-left.md) | 361 | `result-track:75c5ea78fe11f2e7de5ece3c193b9c7790d750f301213d8f91304bdf8a38e2da` |
| 42 | `theorem` | [IsBoundedBilinearMap.continuous_right](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMapsNamespaced.lean/declarations/isboundedbilinearmap-continuous-right.md) | 365 | `result-track:289f647b372b259f0e8f4491971ee67be76fcdaa4a6891ee833bd8b989930526` |
| 43 | `theorem` | [ContinuousLinearMap.continuous₂](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMapsNamespaced.lean/declarations/continuouslinearmap-continuous.md) | 370 | `result-track:cacfb3045bf499c437f552f5b7da9433c7e2322ba302f0bd3c06077a91cf4a68` |
| 44 | `theorem` | [IsBoundedBilinearMap.isBoundedLinearMap_left](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMapsNamespaced.lean/declarations/isboundedbilinearmap-isboundedlinearmap-left.md) | 374 | `result-track:5349cd1e108dbd9849ff66a134cff77b1c9b07bba137f1c717185a9d67e8b755` |
| 45 | `theorem` | [IsBoundedBilinearMap.isBoundedLinearMap_right](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMapsNamespaced.lean/declarations/isboundedbilinearmap-isboundedlinearmap-right.md) | 378 | `result-track:911c26d650ed04a95ead427d52a44228ba418f1ce0f8caab497f29c00db931a1` |
| 46 | `theorem` | [isBoundedBilinearMap_smul](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMapsNamespaced.lean/declarations/isboundedbilinearmap-smul.md) | 382 | `result-track:4ae41903fabc1bd37e93fc57480916f1c5c710f82234687ccba700709c59558e` |
| 47 | `theorem` | [isBoundedBilinearMap_mul](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMapsNamespaced.lean/declarations/isboundedbilinearmap-mul.md) | 387 | `result-track:3c53ba60a8488068860fa983f9625b0c6287a08c48800571413c00866df9bd4b` |
| 48 | `theorem` | [isBoundedBilinearMap_comp](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMapsNamespaced.lean/declarations/isboundedbilinearmap-comp.md) | 391 | `result-track:8fe02223b14654eec5c2d4abd8080564fdb5774802b5d36cd6e85e5eeb8e6312` |
| 49 | `theorem` | [ContinuousLinearMap.isBoundedLinearMap_comp_left](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMapsNamespaced.lean/declarations/continuouslinearmap-isboundedlinearmap-comp-left.md) | 395 | `result-track:1f9f87d57e05a4992862d2380f6fba7dc14039d85786b994509395658308449a` |
| 50 | `theorem` | [ContinuousLinearMap.isBoundedLinearMap_comp_right](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMapsNamespaced.lean/declarations/continuouslinearmap-isboundedlinearmap-comp-right.md) | 399 | `result-track:1e16ac67600f6eee77cf84930812d3bf260b183adf15c586ef9dc9d90fa71bef` |
| 51 | `theorem` | [isBoundedBilinearMap_apply](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMapsNamespaced.lean/declarations/isboundedbilinearmap-apply.md) | 403 | `result-track:9377897de985ac93ededfd8a92ebc373ffe2aad7da750ab7e433ef8d823ce98f` |
| 52 | `theorem` | [isBoundedBilinearMap_smulRight](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMapsNamespaced.lean/declarations/isboundedbilinearmap-smulright.md) | 409 | `result-track:f55bca5fca23e88d69ad6c1f3bc898cd8f63815aa8e254642fcdadd552f6a617` |
| 53 | `theorem` | [isBoundedBilinearMap_compMultilinear](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMapsNamespaced.lean/declarations/isboundedbilinearmap-compmultilinear.md) | 416 | `result-track:452085e64fec7478fcd17af49f7c26cfbd0726fc929d484e84ba5c415cea53ec` |
| 54 | `def` | [IsBoundedBilinearMap.linearDeriv](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMapsNamespaced.lean/declarations/isboundedbilinearmap-linearderiv.md) | 427 | `declaration-track:48321586e9c5b677fbae6fcd729e041ca393550d5e8a9456f4fb3e7daefea4b7` |
| 55 | `def` | [IsBoundedBilinearMap.deriv](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMapsNamespaced.lean/declarations/isboundedbilinearmap-deriv.md) | 433 | `declaration-track:0e0055a42c927f5ee7150656d245b953e084086d0e04e13ff0a796acc13a7f55` |
| 56 | `theorem` | [IsBoundedBilinearMap.deriv_apply](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMapsNamespaced.lean/declarations/isboundedbilinearmap-deriv-apply.md) | 437 | `result-track:39c52b09a7ca337636abba1d8fbd482f450e09cf8935bee3965277564fcb8442` |
| 57 | `theorem` | [ContinuousLinearMap.mulLeftRight_isBoundedBilinear](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMapsNamespaced.lean/declarations/continuouslinearmap-mulleftright-isboundedbilinear.md) | 444 | `result-track:68340f8c45914877df9712b0eb3f31056333e0fb5f67cede2f469ed42d5f6cbb` |
| 58 | `theorem` | [IsBoundedBilinearMap.isBoundedLinearMap_deriv](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMapsNamespaced.lean/declarations/isboundedbilinearmap-isboundedlinearmap-deriv.md) | 451 | `result-track:6fe232c415bce3964ca78fe94bfe3059dd7d08c6351b350d1dfcc33b061294d9` |
| 59 | `theorem` | [Continuous.clm_comp](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMapsNamespaced.lean/declarations/continuous-clm-comp.md) | 458 | `result-track:4e985c75dfb66fb7609f2b992e399abda34942baff9088a5a5c7a106d6e41e37` |
| 60 | `theorem` | [ContinuousOn.clm_comp](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMapsNamespaced.lean/declarations/continuouson-clm-comp.md) | 462 | `result-track:f6dd87115a2a362d03d9e9da62c550f77b5550f1e13a1b3ecbfa2a75c14d005a` |
| 61 | `theorem` | [Continuous.clm_apply](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMapsNamespaced.lean/declarations/continuous-clm-apply.md) | 468 | `result-track:7315811c567f29840808369e315dfe5b3061daae0944b32b9c0c53ca275298f0` |
| 62 | `theorem` | [ContinuousOn.clm_apply](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMapsNamespaced.lean/declarations/continuouson-clm-apply.md) | 472 | `result-track:8785ae74f3b34810d32b0b5dae8090a922a42909f0615a83fbc4b27c0246f4ff` |
| 63 | `theorem` | [isOpen](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMapsNamespaced.lean/declarations/isopen.md) | 495 | `result-track:e83de1bb89953668325d76856bdab96c4e79f80c87e3e4a7e4c49e3008617aa0` |
| 64 | `theorem` | [nhds](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMapsNamespaced.lean/declarations/nhds.md) | 510 | `result-track:030a6487fce6b2fb1fe3ddad0d645b0370021a3e20cea948b1ac586fb9bb0f7f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=60b43ececd34257d060b4f613a3f22a878900e68a3dc8318d84980f07e4f405a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/AsymptoticAnalysis/BoundedLinearMaps/Variant04477af7edc9d42c5eecc55ccbdaa2c01ea4070a796bf9cd014a05b7fe4823dc.lean","GRWTSK/_verification/specifications/Analysis/AsymptoticAnalysis/BoundedLinearMaps/Variant04477af7edc9d42c5eecc55ccbdaa2c01ea4070a796bf9cd014a05b7fe4823dc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
