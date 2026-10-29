# Verification target: Specific Limits Basic Namespaced Tendsto Inverse At Top Nhds Nat

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c902b2b00ec3c528e0f33d8de642fb31f0672aa1",
  "lexical_observation_count": 67,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variant1670a583ce912714b3e1914037dc724aad62b354efc5e6c6b2bd16fbadebe637.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/SpecificLimitsBasicNamespacedTendstoInverseAtTopNhdsNat.lean/index.md) · [Full source](../../../../FunctionalAnalysis/SpecificLimitsBasicNamespacedTendstoInverseAtTopNhdsNat.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c902b2b00ec3c528e0f33d8de642fb31f0672aa1`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variant1670a583ce912714b3e1914037dc724aad62b354efc5e6c6b2bd16fbadebe637.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variant1670a583ce912714b3e1914037dc724aad62b354efc5e6c6b2bd16fbadebe637.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GeomSum` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.Archimedean` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Iterate` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Instances.ENNReal` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Algebra` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [tendsto_inverse_atTop_nhds_0_nat](../../../../FunctionalAnalysis/SpecificLimitsBasicNamespacedTendstoInverseAtTopNhdsNat.lean/declarations/tendsto-inverse-attop-nhds-0-nat.md) | 39 | `result-track:509088c1df9c30c48e064aa6cd3e4cdc9293e6d9d1bde5d370d1aebf73bde17d` |
| 2 | `theorem` | [tendsto_const_div_atTop_nhds_0_nat](../../../../FunctionalAnalysis/SpecificLimitsBasicNamespacedTendstoInverseAtTopNhdsNat.lean/declarations/tendsto-const-div-attop-nhds-0-nat.md) | 43 | `result-track:1574bdf2433b6fc88ed4b1174d3bc207975ed091e3b13761b8b1dcab050417b9` |
| 3 | `theorem` | [NNReal.tendsto_inverse_atTop_nhds_0_nat](../../../../FunctionalAnalysis/SpecificLimitsBasicNamespacedTendstoInverseAtTopNhdsNat.lean/declarations/nnreal-tendsto-inverse-attop-nhds-0-nat.md) | 47 | `result-track:b6649826edf3586357584b37d37778077c462d64b257408b688b39b6a17f3100` |
| 4 | `theorem` | [NNReal.tendsto_const_div_atTop_nhds_0_nat](../../../../FunctionalAnalysis/SpecificLimitsBasicNamespacedTendstoInverseAtTopNhdsNat.lean/declarations/nnreal-tendsto-const-div-attop-nhds-0-nat.md) | 53 | `result-track:760ace7e49e80a4e75aabdf72632b6dfd794115b7d2c0d0e3a4098c14afdd151` |
| 5 | `theorem` | [tendsto_one_div_add_atTop_nhds_0_nat](../../../../FunctionalAnalysis/SpecificLimitsBasicNamespacedTendstoInverseAtTopNhdsNat.lean/declarations/tendsto-one-div-add-attop-nhds-0-nat.md) | 58 | `result-track:9c5460e8a536feee34cf3c423641a7abb71272ea039cd9f29986002597139f4e` |
| 6 | `theorem` | [NNReal.tendsto_algebraMap_inverse_atTop_nhds_0_nat](../../../../FunctionalAnalysis/SpecificLimitsBasicNamespacedTendstoInverseAtTopNhdsNat.lean/declarations/nnreal-tendsto-algebramap-inverse-attop-nhds-0-nat.md) | 64 | `result-track:cddc67afb3ca8585e1ef17201ff550ec4e336bf55dc93b73611dd8683175eee8` |
| 7 | `theorem` | [tendsto_algebraMap_inverse_atTop_nhds_0_nat](../../../../FunctionalAnalysis/SpecificLimitsBasicNamespacedTendstoInverseAtTopNhdsNat.lean/declarations/tendsto-algebramap-inverse-attop-nhds-0-nat.md) | 70 | `result-track:a4001e50e4c38982d2435afbc9037d3b83fd9f82e2907cc1230a230e934b5ca8` |
| 8 | `theorem` | [tendsto_coe_nat_div_add_atTop](../../../../FunctionalAnalysis/SpecificLimitsBasicNamespacedTendstoInverseAtTopNhdsNat.lean/declarations/tendsto-coe-nat-div-add-attop.md) | 80 | `result-track:284313e40738c30a965ba9af84b80208efd5df72bb78713739e926beeac895ae` |
| 9 | `theorem` | [tendsto_add_one_pow_atTop_atTop_of_pos](../../../../FunctionalAnalysis/SpecificLimitsBasicNamespacedTendstoInverseAtTopNhdsNat.lean/declarations/tendsto-add-one-pow-attop-attop-of-pos.md) | 102 | `result-track:2e348d99299fe60eadff8b333fcc1f31a9cb5d35bc26d9939497831b5b7d998b` |
| 10 | `theorem` | [tendsto_pow_atTop_atTop_of_one_lt](../../../../FunctionalAnalysis/SpecificLimitsBasicNamespacedTendstoInverseAtTopNhdsNat.lean/declarations/tendsto-pow-attop-attop-of-one-lt.md) | 108 | `result-track:e435074c62f77a43e3329e5605234a547142c37a10bb62e6f032f0861a406091` |
| 11 | `theorem` | [Nat.tendsto_pow_atTop_atTop_of_one_lt](../../../../FunctionalAnalysis/SpecificLimitsBasicNamespacedTendstoInverseAtTopNhdsNat.lean/declarations/nat-tendsto-pow-attop-attop-of-one-lt.md) | 113 | `result-track:15ae3083a5e6f1a61e91e9ab0631f40bf579fb987076a04924435744143e3a64` |
| 12 | `theorem` | [tendsto_pow_atTop_nhds_0_of_lt_1](../../../../FunctionalAnalysis/SpecificLimitsBasicNamespacedTendstoInverseAtTopNhdsNat.lean/declarations/tendsto-pow-attop-nhds-0-of-lt-1.md) | 118 | `result-track:a672d2f5843fe22f3a34734f2e23cf5fc10d90aac7d80549709718c466063163` |
| 13 | `theorem` | [tendsto_pow_atTop_nhds_0_iff](../../../../FunctionalAnalysis/SpecificLimitsBasicNamespacedTendstoInverseAtTopNhdsNat.lean/declarations/tendsto-pow-attop-nhds-0-iff.md) | 129 | `result-track:59c9730fd9031a83d268ccee9faed84f4c7a526150a4f6b431d46c62b1aa8ce2` |
| 14 | `theorem` | [tendsto_pow_atTop_nhdsWithin_0_of_lt_1](../../../../FunctionalAnalysis/SpecificLimitsBasicNamespacedTendstoInverseAtTopNhdsNat.lean/declarations/tendsto-pow-attop-nhdswithin-0-of-lt-1.md) | 145 | `result-track:f35205b851b779a46f97ddcbc728e04e018d4cdf799f7f9d55d581a21685b320` |
| 15 | `theorem` | [uniformity_basis_dist_pow_of_lt_1](../../../../FunctionalAnalysis/SpecificLimitsBasicNamespacedTendstoInverseAtTopNhdsNat.lean/declarations/uniformity-basis-dist-pow-of-lt-1.md) | 153 | `result-track:246399bec5384d01570049cc5c83062a6c0415c88e3e96c1fce701ae41b011fe` |
| 16 | `theorem` | [geom_lt](../../../../FunctionalAnalysis/SpecificLimitsBasicNamespacedTendstoInverseAtTopNhdsNat.lean/declarations/geom-lt.md) | 160 | `result-track:9f7e1c23d1f008da974cf5e867495be13fe9097f2cd4cb4590c72a6b696bbdab` |
| 17 | `theorem` | [geom_le](../../../../FunctionalAnalysis/SpecificLimitsBasicNamespacedTendstoInverseAtTopNhdsNat.lean/declarations/geom-le.md) | 167 | `result-track:5c23adcf8146d106cb3928efbb6c606b79249c0e18fcdec351460ce4bc208c33` |
| 18 | `theorem` | [lt_geom](../../../../FunctionalAnalysis/SpecificLimitsBasicNamespacedTendstoInverseAtTopNhdsNat.lean/declarations/lt-geom.md) | 173 | `result-track:88a6af7b172a7b73f94458e5b26cf07ba56b90f0a83993655811054f4faa07ad` |
| 19 | `theorem` | [le_geom](../../../../FunctionalAnalysis/SpecificLimitsBasicNamespacedTendstoInverseAtTopNhdsNat.lean/declarations/le-geom.md) | 180 | `result-track:506e10d6ff0631e82f616ab55d4b2e58275215534c7c9a32bd9469f591957835` |
| 20 | `theorem` | [tendsto_atTop_of_geom_le](../../../../FunctionalAnalysis/SpecificLimitsBasicNamespacedTendstoInverseAtTopNhdsNat.lean/declarations/tendsto-attop-of-geom-le.md) | 188 | `result-track:e0be12d2c07d3e99361b5c0104381b8d598f8460696022a9f46493578f84a1a3` |
| 21 | `theorem` | [NNReal.tendsto_pow_atTop_nhds_0_of_lt_1](../../../../FunctionalAnalysis/SpecificLimitsBasicNamespacedTendstoInverseAtTopNhdsNat.lean/declarations/nnreal-tendsto-pow-attop-nhds-0-of-lt-1.md) | 194 | `result-track:562c80ee7f344f444d6a5e45b2be0e327e367a6aefa8925e1a6a9f87506a045e` |
| 22 | `theorem` | [ENNReal.tendsto_pow_atTop_nhds_0_of_lt_1](../../../../FunctionalAnalysis/SpecificLimitsBasicNamespacedTendstoInverseAtTopNhdsNat.lean/declarations/ennreal-tendsto-pow-attop-nhds-0-of-lt-1.md) | 201 | `result-track:7cf9213207951357e49ab8827e1c6aadbcfe8db652e7378337ce5fc1d88df0d7` |
| 23 | `theorem` | [hasSum_geometric_of_lt_1](../../../../FunctionalAnalysis/SpecificLimitsBasicNamespacedTendstoInverseAtTopNhdsNat.lean/declarations/hassum-geometric-of-lt-1.md) | 214 | `result-track:83a8c403f540a9acae144aee815fb00741d64b7146ea717d58af26c9d936af60` |
| 24 | `theorem` | [summable_geometric_of_lt_1](../../../../FunctionalAnalysis/SpecificLimitsBasicNamespacedTendstoInverseAtTopNhdsNat.lean/declarations/summable-geometric-of-lt-1.md) | 223 | `result-track:46c852e12369f0a3350175060ec2a9184438b34ab4db3be4bb99af7c175cfdf3` |
| 25 | `theorem` | [tsum_geometric_of_lt_1](../../../../FunctionalAnalysis/SpecificLimitsBasicNamespacedTendstoInverseAtTopNhdsNat.lean/declarations/tsum-geometric-of-lt-1.md) | 228 | `result-track:b8f995dc90078d0705e8e9c25556b216dc0b4e108c46e06619cf64b84fc51b83` |
| 26 | `theorem` | [hasSum_geometric_two](../../../../FunctionalAnalysis/SpecificLimitsBasicNamespacedTendstoInverseAtTopNhdsNat.lean/declarations/hassum-geometric-two.md) | 232 | `result-track:5c019e0226a1036ba9dfa6c0a5f2b8194af59189a298f112eff0312caa9077a2` |
| 27 | `theorem` | [summable_geometric_two](../../../../FunctionalAnalysis/SpecificLimitsBasicNamespacedTendstoInverseAtTopNhdsNat.lean/declarations/summable-geometric-two.md) | 236 | `result-track:caad592dc1750d75007b4a9b46ec8911d3d6a7f3b4768a4448293a4950bb20e9` |
| 28 | `theorem` | [summable_geometric_two_encode](../../../../FunctionalAnalysis/SpecificLimitsBasicNamespacedTendstoInverseAtTopNhdsNat.lean/declarations/summable-geometric-two-encode.md) | 240 | `result-track:f07588daa24ae868b8b799534b2450acf3b993a8a82acceecd584bbdbdc4c213` |
| 29 | `theorem` | [tsum_geometric_two](../../../../FunctionalAnalysis/SpecificLimitsBasicNamespacedTendstoInverseAtTopNhdsNat.lean/declarations/tsum-geometric-two.md) | 245 | `result-track:95e17962229290eda0ed5e6e41deb7e4f876eb052e7eb232eb376d3ac15d03e0` |
| 30 | `theorem` | [sum_geometric_two_le](../../../../FunctionalAnalysis/SpecificLimitsBasicNamespacedTendstoInverseAtTopNhdsNat.lean/declarations/sum-geometric-two-le.md) | 249 | `result-track:93fe60438dffe12a776fa8619c46cc4b6b1d5d191072407fb0280fa172caf160` |
| 31 | `theorem` | [tsum_geometric_inv_two](../../../../FunctionalAnalysis/SpecificLimitsBasicNamespacedTendstoInverseAtTopNhdsNat.lean/declarations/tsum-geometric-inv-two.md) | 258 | `result-track:973dfb7fa6c402194bbccf0775e54584219c5258f101755cc1a7c73de2e6e4bf` |
| 32 | `theorem` | [tsum_geometric_inv_two_ge](../../../../FunctionalAnalysis/SpecificLimitsBasicNamespacedTendstoInverseAtTopNhdsNat.lean/declarations/tsum-geometric-inv-two-ge.md) | 263 | `result-track:2e90d6ee8f9934a428680fc35d3b38afdcc28e6c5b3581d56693038e9bcbbecb` |
| 33 | `theorem` | [hasSum_geometric_two'](../../../../FunctionalAnalysis/SpecificLimitsBasicNamespacedTendstoInverseAtTopNhdsNat.lean/declarations/hassum-geometric-two-source-edition-2.md) | 276 | `result-track:8d2100ee03596dd12898642d70bb8774e625c470abde488d9f8c68779087020f` |
| 34 | `theorem` | [summable_geometric_two'](../../../../FunctionalAnalysis/SpecificLimitsBasicNamespacedTendstoInverseAtTopNhdsNat.lean/declarations/summable-geometric-two-source-edition-2.md) | 285 | `result-track:cd77739e6a5dea0f84d7da1d4a96da19b4ce9ee6a55d5238a9dffc1c4abeedd5` |
| 35 | `theorem` | [tsum_geometric_two'](../../../../FunctionalAnalysis/SpecificLimitsBasicNamespacedTendstoInverseAtTopNhdsNat.lean/declarations/tsum-geometric-two-source-edition-2.md) | 289 | `result-track:a5a139f759463264afe981e6b44c799f362612db2cc535b42428fbb43ceaa48b` |
| 36 | `theorem` | [NNReal.hasSum_geometric](../../../../FunctionalAnalysis/SpecificLimitsBasicNamespacedTendstoInverseAtTopNhdsNat.lean/declarations/nnreal-hassum-geometric.md) | 294 | `result-track:caafc0bb2365fda4b658b3ad41229e06baff6624ac95cc777fbbf2b6744d5834` |
| 37 | `theorem` | [NNReal.summable_geometric](../../../../FunctionalAnalysis/SpecificLimitsBasicNamespacedTendstoInverseAtTopNhdsNat.lean/declarations/nnreal-summable-geometric.md) | 301 | `result-track:6382f37421796e80286d8f4dee42e30c4f348eafbf5b5acf0ffafe1f9f7228fc` |
| 38 | `theorem` | [tsum_geometric_nNReal](../../../../FunctionalAnalysis/SpecificLimitsBasicNamespacedTendstoInverseAtTopNhdsNat.lean/declarations/tsum-geometric-nnreal.md) | 305 | `result-track:a2497c66c5200825e78d3951af08560995e7034bbe9d9c2a654aa560beb3fa70` |
| 39 | `theorem` | [ENNReal.tsum_geometric](../../../../FunctionalAnalysis/SpecificLimitsBasicNamespacedTendstoInverseAtTopNhdsNat.lean/declarations/ennreal-tsum-geometric.md) | 312 | `result-track:cc242d8fefeffd7e2dbc413cfc79b48352393a80a69fc1152ce2ee8ac4987e0a` |
| 40 | `theorem` | [cauchySeq_of_edist_le_geometric](../../../../FunctionalAnalysis/SpecificLimitsBasicNamespacedTendstoInverseAtTopNhdsNat.lean/declarations/cauchyseq-of-edist-le-geometric.md) | 345 | `result-track:0d82ac02f27a267ce4316d40c0eb63c4f08d197a58a15816c5793130249bf43f` |
| 41 | `theorem` | [edist_le_of_edist_le_geometric_of_tendsto](../../../../FunctionalAnalysis/SpecificLimitsBasicNamespacedTendstoInverseAtTopNhdsNat.lean/declarations/edist-le-of-edist-le-geometric-of-tendsto.md) | 354 | `result-track:175e45f59a270440f7b9ed5a2e8371c241bee37441025f0d2044aefe989c7e25` |
| 42 | `theorem` | [edist_le_of_edist_le_geometric_of_tendsto₀](../../../../FunctionalAnalysis/SpecificLimitsBasicNamespacedTendstoInverseAtTopNhdsNat.lean/declarations/edist-le-of-edist-le-geometric-of-tendsto-source-edition-2.md) | 362 | `result-track:7e3c052ace622c39c38b36a62f475e29707a79d7b70079fe5ad527441a4e8a46` |
| 43 | `theorem` | [cauchySeq_of_edist_le_geometric_two](../../../../FunctionalAnalysis/SpecificLimitsBasicNamespacedTendstoInverseAtTopNhdsNat.lean/declarations/cauchyseq-of-edist-le-geometric-two.md) | 375 | `result-track:fc7753cd74dc5c452aef1256e1f5bcc71828e41eacd86ca1b8d5b574b5c97a35` |
| 44 | `theorem` | [edist_le_of_edist_le_geometric_two_of_tendsto](../../../../FunctionalAnalysis/SpecificLimitsBasicNamespacedTendstoInverseAtTopNhdsNat.lean/declarations/edist-le-of-edist-le-geometric-two-of-tendsto.md) | 383 | `result-track:3311133d980514961f845ce39de65af69d53ce00c21fd5390794d068cbfbd106` |
| 45 | `theorem` | [edist_le_of_edist_le_geometric_two_of_tendsto₀](../../../../FunctionalAnalysis/SpecificLimitsBasicNamespacedTendstoInverseAtTopNhdsNat.lean/declarations/edist-le-of-edist-le-geometric-two-of-tendsto-source-edition-2.md) | 392 | `result-track:657cf261e3ae872f6dd3685a810cf17ab7c1f84fb76a59abce06404dfbf7b71a` |
| 46 | `theorem` | [aux_hasSum_of_le_geometric](../../../../FunctionalAnalysis/SpecificLimitsBasicNamespacedTendstoInverseAtTopNhdsNat.lean/declarations/aux-hassum-of-le-geometric.md) | 404 | `result-track:2e9b581539854b391395ad0fcbe40b77bd6192caffc4a434b77ed976d3e16709` |
| 47 | `theorem` | [cauchySeq_of_le_geometric](../../../../FunctionalAnalysis/SpecificLimitsBasicNamespacedTendstoInverseAtTopNhdsNat.lean/declarations/cauchyseq-of-le-geometric.md) | 415 | `result-track:744894b7b57ab1aa98828b80e2d19c699dc906e10ea65ca44c342dda8cc401ed` |
| 48 | `theorem` | [dist_le_of_le_geometric_of_tendsto₀](../../../../FunctionalAnalysis/SpecificLimitsBasicNamespacedTendstoInverseAtTopNhdsNat.lean/declarations/dist-le-of-le-geometric-of-tendsto-source-edition-2.md) | 421 | `result-track:f4d5842b6de5ec98654c0531634a30f7238f3558c25747de62275d070bb4f87e` |
| 49 | `theorem` | [dist_le_of_le_geometric_of_tendsto](../../../../FunctionalAnalysis/SpecificLimitsBasicNamespacedTendstoInverseAtTopNhdsNat.lean/declarations/dist-le-of-le-geometric-of-tendsto.md) | 429 | `result-track:b8c7696a1bf4e1eb3c4e11b99baaa9ea6b07f90596e5a82e133e4810fa11cb03` |
| 50 | `theorem` | [cauchySeq_of_le_geometric_two](../../../../FunctionalAnalysis/SpecificLimitsBasicNamespacedTendstoInverseAtTopNhdsNat.lean/declarations/cauchyseq-of-le-geometric-two.md) | 441 | `result-track:9b8c7b4d1e1e9d08f8ec8eb01a2eae8f1a05d20606defed5762aab2e593ddb65` |
| 51 | `theorem` | [dist_le_of_le_geometric_two_of_tendsto₀](../../../../FunctionalAnalysis/SpecificLimitsBasicNamespacedTendstoInverseAtTopNhdsNat.lean/declarations/dist-le-of-le-geometric-two-of-tendsto-source-edition-2.md) | 447 | `result-track:8ea1c28557d72d3946960928f2fd8efe7e7c34e150fd235ffc6aea215b10ef9f` |
| 52 | `theorem` | [dist_le_of_le_geometric_two_of_tendsto](../../../../FunctionalAnalysis/SpecificLimitsBasicNamespacedTendstoInverseAtTopNhdsNat.lean/declarations/dist-le-of-le-geometric-two-of-tendsto.md) | 454 | `result-track:0b8cb0aff624bd6a76012ac4485b5fe6cb57c7c7c3914c6ba01770e8503ae596` |
| 53 | `theorem` | [summable_one_div_pow_of_le](../../../../FunctionalAnalysis/SpecificLimitsBasicNamespacedTendstoInverseAtTopNhdsNat.lean/declarations/summable-one-div-pow-of-le.md) | 468 | `result-track:f152eb9f99b7a7f063c3b6e0284d01fb872d292b06bb63bd67523035c6193229` |
| 54 | `def` | [posSumOfEncodable](../../../../FunctionalAnalysis/SpecificLimitsBasicNamespacedTendstoInverseAtTopNhdsNat.lean/declarations/possumofencodable.md) | 484 | `declaration-track:be4fca20e1d9be036b7fb553b45c72a022fe167b37663f1931cdc9e3cc2bd95f` |
| 55 | `theorem` | [Set.Countable.exists_pos_hasSum_le](../../../../FunctionalAnalysis/SpecificLimitsBasicNamespacedTendstoInverseAtTopNhdsNat.lean/declarations/set-countable-exists-pos-hassum-le.md) | 498 | `result-track:04e7949606c249f6938e7eafecd8a54a2c04b1371ccfee6ec7aa4af95ccab7a5` |
| 56 | `theorem` | [Set.Countable.exists_pos_forall_sum_le](../../../../FunctionalAnalysis/SpecificLimitsBasicNamespacedTendstoInverseAtTopNhdsNat.lean/declarations/set-countable-exists-pos-forall-sum-le.md) | 509 | `result-track:65d6ee7e0683cfc2f9ae1ed385ec28cfe323f0180f70ed4854a716136bdae59a` |
| 57 | `theorem` | [exists_pos_sum_of_countable](../../../../FunctionalAnalysis/SpecificLimitsBasicNamespacedTendstoInverseAtTopNhdsNat.lean/declarations/exists-pos-sum-of-countable-source-edition-3.md) | 521 | `result-track:60cc172b3137c1a41eb8c78029ec089aaf00177805079566084a3605c19802e9` |
| 58 | `theorem` | [exists_pos_sum_of_countable](../../../../FunctionalAnalysis/SpecificLimitsBasicNamespacedTendstoInverseAtTopNhdsNat.lean/declarations/exists-pos-sum-of-countable-source-edition-2.md) | 536 | `result-track:486f4f2950fa3733c59c9cd37057870e447873fb7cf151b217e3da5ce8e55f50` |
| 59 | `theorem` | [exists_pos_sum_of_countable'](../../../../FunctionalAnalysis/SpecificLimitsBasicNamespacedTendstoInverseAtTopNhdsNat.lean/declarations/exists-pos-sum-of-countable.md) | 544 | `result-track:14227f02b2106ea32fa7de18b3773a3d5704e012d0f613fc3a72d8e6e70001b4` |
| 60 | `theorem` | [exists_pos_tsum_mul_lt_of_countable](../../../../FunctionalAnalysis/SpecificLimitsBasicNamespacedTendstoInverseAtTopNhdsNat.lean/declarations/exists-pos-tsum-mul-lt-of-countable.md) | 550 | `result-track:ab2512f77402e5adda720f62b862447f698653da4f30aaf92fefd2e1d65e425d` |
| 61 | `theorem` | [factorial_tendsto_atTop](../../../../FunctionalAnalysis/SpecificLimitsBasicNamespacedTendstoInverseAtTopNhdsNat.lean/declarations/factorial-tendsto-attop.md) | 569 | `result-track:3ce094f230fe8f04d510a81d8a66de99feb823d1bd0bc5090e8467a7aaa9c44b` |
| 62 | `theorem` | [tendsto_factorial_div_pow_self_atTop](../../../../FunctionalAnalysis/SpecificLimitsBasicNamespacedTendstoInverseAtTopNhdsNat.lean/declarations/tendsto-factorial-div-pow-self-attop.md) | 573 | `result-track:32c083fd3e2586a2b53ade2e8c542195fa11897b0fe3018c2de110d698ecf56a` |
| 63 | `theorem` | [tendsto_nat_floor_atTop](../../../../FunctionalAnalysis/SpecificLimitsBasicNamespacedTendstoInverseAtTopNhdsNat.lean/declarations/tendsto-nat-floor-attop.md) | 604 | `result-track:8c19070c6d87fd011204d62d9570507f25d393eaf632e7c23188c45b839d3ae4` |
| 64 | `theorem` | [tendsto_nat_floor_mul_div_atTop](../../../../FunctionalAnalysis/SpecificLimitsBasicNamespacedTendstoInverseAtTopNhdsNat.lean/declarations/tendsto-nat-floor-mul-div-attop.md) | 611 | `result-track:d0b9fd650dea12f86120942aed79aa24c2d24a9a430f3a307d2115e58140295a` |
| 65 | `theorem` | [tendsto_nat_floor_div_atTop](../../../../FunctionalAnalysis/SpecificLimitsBasicNamespacedTendstoInverseAtTopNhdsNat.lean/declarations/tendsto-nat-floor-div-attop.md) | 627 | `result-track:65258fececf046bab340a04812e8ae180d57323cf2ff9df648758b017582962a` |
| 66 | `theorem` | [tendsto_nat_ceil_mul_div_atTop](../../../../FunctionalAnalysis/SpecificLimitsBasicNamespacedTendstoInverseAtTopNhdsNat.lean/declarations/tendsto-nat-ceil-mul-div-attop.md) | 631 | `result-track:4da047204d93a0fb7de6ffd42722f8d5cb5e9e9512e93074f711964df68d26bf` |
| 67 | `theorem` | [tendsto_nat_ceil_div_atTop](../../../../FunctionalAnalysis/SpecificLimitsBasicNamespacedTendstoInverseAtTopNhdsNat.lean/declarations/tendsto-nat-ceil-div-attop.md) | 645 | `result-track:8e01546c2432151096563bf703d1dedd36d3be2776000db0fdd317a5605b702d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bf90925f693ddcd5cb87a2a08532b6defdb19ce9906b8ad15f76de29f4161742 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Basic/Variant1670a583ce912714b3e1914037dc724aad62b354efc5e6c6b2bd16fbadebe637.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Basic/Variant1670a583ce912714b3e1914037dc724aad62b354efc5e6c6b2bd16fbadebe637.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
