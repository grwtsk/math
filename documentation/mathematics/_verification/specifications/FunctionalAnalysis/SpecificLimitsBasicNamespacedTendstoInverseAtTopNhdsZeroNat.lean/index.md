# Verification target: Specific Limits Basic Namespaced Tendsto Inverse At Top Nhds Zero Nat

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "45d61887e17c52bdaa0091563890dace3d6f25ae",
  "lexical_observation_count": 83,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variant8dea2f4b11df0502ae8794bc67f7b21f3569863b8a27168260c38d2cbae6f46e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/SpecificLimitsBasicNamespacedTendstoInverseAtTopNhdsZeroNat.lean/index.md) · [Full source](../../../../FunctionalAnalysis/SpecificLimitsBasicNamespacedTendstoInverseAtTopNhdsZeroNat.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `45d61887e17c52bdaa0091563890dace3d6f25ae`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variant8dea2f4b11df0502ae8794bc67f7b21f3569863b8a27168260c38d2cbae6f46e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variant8dea2f4b11df0502ae8794bc67f7b21f3569863b8a27168260c38d2cbae6f46e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GeomSum` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.AtTopBot.Archimedean` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Iterate` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Algebra` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.InfiniteSum.Real` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Instances.EReal.Lemmas` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [tendsto_inverse_atTop_nhds_zero_nat](../../../../FunctionalAnalysis/SpecificLimitsBasicNamespacedTendstoInverseAtTopNhdsZeroNat.lean/declarations/tendsto-inverse-attop-nhds-zero-nat.md) | 37 | `result-track:5b1683b2d60c14805a6f1ecd545f7dfd67d8dc386458eef540363c4d1684f88e` |
| 2 | `theorem` | [tendsto_const_div_atTop_nhds_zero_nat](../../../../FunctionalAnalysis/SpecificLimitsBasicNamespacedTendstoInverseAtTopNhdsZeroNat.lean/declarations/tendsto-const-div-attop-nhds-zero-nat.md) | 40 | `result-track:4ff9e92497ac4aaeda62f5c563279594135e5cd66368952ce975e08ffab7c572` |
| 3 | `theorem` | [tendsto_one_div_atTop_nhds_zero_nat](../../../../FunctionalAnalysis/SpecificLimitsBasicNamespacedTendstoInverseAtTopNhdsZeroNat.lean/declarations/tendsto-one-div-attop-nhds-zero-nat.md) | 44 | `result-track:16df5a5f4123a983bfab7017e183fe88b299a9176c962764d3d1165869e9fb48` |
| 4 | `theorem` | [NNReal.tendsto_inverse_atTop_nhds_zero_nat](../../../../FunctionalAnalysis/SpecificLimitsBasicNamespacedTendstoInverseAtTopNhdsZeroNat.lean/declarations/nnreal-tendsto-inverse-attop-nhds-zero-nat.md) | 47 | `result-track:f2b04d50e15fac409edb81c153027d71764c229fe0428dcf90369cb7d72b6f69` |
| 5 | `theorem` | [NNReal.tendsto_const_div_atTop_nhds_zero_nat](../../../../FunctionalAnalysis/SpecificLimitsBasicNamespacedTendstoInverseAtTopNhdsZeroNat.lean/declarations/nnreal-tendsto-const-div-attop-nhds-zero-nat.md) | 52 | `result-track:19dc05c362a7755f9535926ad67b4c233d3b7be5dc5b7f6baafe19ca4752be8a` |
| 6 | `theorem` | [EReal.tendsto_const_div_atTop_nhds_zero_nat](../../../../FunctionalAnalysis/SpecificLimitsBasicNamespacedTendstoInverseAtTopNhdsZeroNat.lean/declarations/ereal-tendsto-const-div-attop-nhds-zero-nat.md) | 56 | `result-track:63c469a39093e001770b13494e21be84bff5fc35cae669d960057603aa382f09` |
| 7 | `theorem` | [tendsto_one_div_add_atTop_nhds_zero_nat](../../../../FunctionalAnalysis/SpecificLimitsBasicNamespacedTendstoInverseAtTopNhdsZeroNat.lean/declarations/tendsto-one-div-add-attop-nhds-zero-nat.md) | 64 | `result-track:9c23bef64bd9aecac3ed812b72ae336aaf3642813d67b23a0d63fb40c5fdc6eb` |
| 8 | `theorem` | [NNReal.tendsto_algebraMap_inverse_atTop_nhds_zero_nat](../../../../FunctionalAnalysis/SpecificLimitsBasicNamespacedTendstoInverseAtTopNhdsZeroNat.lean/declarations/nnreal-tendsto-algebramap-inverse-attop-nhds-zero-nat.md) | 69 | `result-track:b4235a52a7f70e1c4fd94def654c3c890bb7ae2b9633185683cb8b20f2e61f45` |
| 9 | `theorem` | [tendsto_algebraMap_inverse_atTop_nhds_zero_nat](../../../../FunctionalAnalysis/SpecificLimitsBasicNamespacedTendstoInverseAtTopNhdsZeroNat.lean/declarations/tendsto-algebramap-inverse-attop-nhds-zero-nat.md) | 76 | `result-track:ac7f564576ab94e22d9b389701048aca5f28263ac297a586944213334b823e52` |
| 10 | `theorem` | [tendsto_natCast_div_add_atTop](../../../../FunctionalAnalysis/SpecificLimitsBasicNamespacedTendstoInverseAtTopNhdsZeroNat.lean/declarations/tendsto-natcast-div-add-attop.md) | 86 | `result-track:573d032cda1c2b4450a36e3b5dbce36798510c98ff2185a1364f97a37800b4d8` |
| 11 | `theorem` | [tendsto_mod_div_atTop_nhds_zero_nat](../../../../FunctionalAnalysis/SpecificLimitsBasicNamespacedTendstoInverseAtTopNhdsZeroNat.lean/declarations/tendsto-mod-div-attop-nhds-zero-nat.md) | 105 | `result-track:145448b33c193a9571d241343377cd973a5f4e31c5295f4c5bc058d077c9850b` |
| 12 | `theorem` | [Filter.EventuallyEq.div_mul_cancel](../../../../FunctionalAnalysis/SpecificLimitsBasicNamespacedTendstoInverseAtTopNhdsZeroNat.lean/declarations/filter-eventuallyeq-div-mul-cancel.md) | 111 | `result-track:d95aab31f56b73f620be01dd42d37984327d058d36bd5adfc75a170d09bcb465` |
| 13 | `theorem` | [Filter.EventuallyEq.div_mul_cancel_atTop](../../../../FunctionalAnalysis/SpecificLimitsBasicNamespacedTendstoInverseAtTopNhdsZeroNat.lean/declarations/filter-eventuallyeq-div-mul-cancel-attop.md) | 117 | `result-track:3d19f171ff833098b97030c2a6e1697b4d0c7a566ef48ed32680a7b39ad57e45` |
| 14 | `theorem` | [Tendsto.num](../../../../FunctionalAnalysis/SpecificLimitsBasicNamespacedTendstoInverseAtTopNhdsZeroNat.lean/declarations/tendsto-num.md) | 126 | `result-track:f6718e61d439f3ddf295cad1232236c4a14ac8d36f46c0dac9a6d06b67a6d1e1` |
| 15 | `theorem` | [Tendsto.den](../../../../FunctionalAnalysis/SpecificLimitsBasicNamespacedTendstoInverseAtTopNhdsZeroNat.lean/declarations/tendsto-den.md) | 135 | `result-track:357540bc8450738021bc7545f6d935d675743c6ed28a20779f1d06ff44f494cf` |
| 16 | `theorem` | [Tendsto.num_atTop_iff_den_atTop](../../../../FunctionalAnalysis/SpecificLimitsBasicNamespacedTendstoInverseAtTopNhdsZeroNat.lean/declarations/tendsto-num-attop-iff-den-attop.md) | 147 | `result-track:43fb787584ab6887a0d3ffd3c91c150cf3c931f29268817b5c684909d5ca0866` |
| 17 | `theorem` | [tendsto_add_one_pow_atTop_atTop_of_pos](../../../../FunctionalAnalysis/SpecificLimitsBasicNamespacedTendstoInverseAtTopNhdsZeroNat.lean/declarations/tendsto-add-one-pow-attop-attop-of-pos.md) | 157 | `result-track:7689159d096e0b94ded39ddb8700ce1e0c88e0c2b57d2b47fafbd23e673b4228` |
| 18 | `theorem` | [tendsto_pow_atTop_atTop_of_one_lt](../../../../FunctionalAnalysis/SpecificLimitsBasicNamespacedTendstoInverseAtTopNhdsZeroNat.lean/declarations/tendsto-pow-attop-attop-of-one-lt.md) | 163 | `result-track:98ecfb98793d5eb71e9c4aad2ab52b964608e2d2ab2741c776a0a4dc7b0413af` |
| 19 | `theorem` | [Nat.tendsto_pow_atTop_atTop_of_one_lt](../../../../FunctionalAnalysis/SpecificLimitsBasicNamespacedTendstoInverseAtTopNhdsZeroNat.lean/declarations/nat-tendsto-pow-attop-attop-of-one-lt.md) | 168 | `result-track:9cc3bec88860d6e2bd90d5f709124dad9f1978a2dbcf6a00fff2e3d8c54583b2` |
| 20 | `theorem` | [tendsto_pow_atTop_nhds_zero_of_lt_one](../../../../FunctionalAnalysis/SpecificLimitsBasicNamespacedTendstoInverseAtTopNhdsZeroNat.lean/declarations/tendsto-pow-attop-nhds-zero-of-lt-one.md) | 172 | `result-track:8b02538403f1b835b60985af59a0e995ad78afd7bdbbeba266463a03324d21ea` |
| 21 | `theorem` | [tendsto_pow_atTop_nhds_zero_iff](../../../../FunctionalAnalysis/SpecificLimitsBasicNamespacedTendstoInverseAtTopNhdsZeroNat.lean/declarations/tendsto-pow-attop-nhds-zero-iff.md) | 183 | `result-track:2d5fc24a006fdfec661e5e7b35f6cb6bba1b7c1c9fd45f68c6bc4b221527642a` |
| 22 | `theorem` | [tendsto_pow_atTop_nhdsWithin_zero_of_lt_one](../../../../FunctionalAnalysis/SpecificLimitsBasicNamespacedTendstoInverseAtTopNhdsZeroNat.lean/declarations/tendsto-pow-attop-nhdswithin-zero-of-lt-one.md) | 201 | `result-track:30681a05ca1c049559177c51747ae5efbb8ab34bbe3b1a25511a2238c49c19c1` |
| 23 | `theorem` | [uniformity_basis_dist_pow_of_lt_one](../../../../FunctionalAnalysis/SpecificLimitsBasicNamespacedTendstoInverseAtTopNhdsZeroNat.lean/declarations/uniformity-basis-dist-pow-of-lt-one.md) | 209 | `result-track:8dd7940071a05ded259721356eb5ab0c847057303fcc3bb6de53d51912588de3` |
| 24 | `theorem` | [geom_lt](../../../../FunctionalAnalysis/SpecificLimitsBasicNamespacedTendstoInverseAtTopNhdsZeroNat.lean/declarations/geom-lt.md) | 215 | `result-track:7270ba3bcd56757de6863fdd483996c1a5dd5205aae225d4716423fb67e5dba4` |
| 25 | `theorem` | [geom_le](../../../../FunctionalAnalysis/SpecificLimitsBasicNamespacedTendstoInverseAtTopNhdsZeroNat.lean/declarations/geom-le.md) | 221 | `result-track:d665b963fa6941eb00735eb97c42626324157985ceb7fd6450eb634914498f78` |
| 26 | `theorem` | [lt_geom](../../../../FunctionalAnalysis/SpecificLimitsBasicNamespacedTendstoInverseAtTopNhdsZeroNat.lean/declarations/lt-geom.md) | 226 | `result-track:4958afc90aa508d55e8e8e47d6964c561cdf6ac2d3ab23ae73d41ba204357f14` |
| 27 | `theorem` | [le_geom](../../../../FunctionalAnalysis/SpecificLimitsBasicNamespacedTendstoInverseAtTopNhdsZeroNat.lean/declarations/le-geom.md) | 232 | `result-track:50d72276991c093de56108189f0ecdb96eacd638bf0535bae700556f99f06b30` |
| 28 | `theorem` | [tendsto_atTop_of_geom_le](../../../../FunctionalAnalysis/SpecificLimitsBasicNamespacedTendstoInverseAtTopNhdsZeroNat.lean/declarations/tendsto-attop-of-geom-le.md) | 239 | `result-track:f6cd8d8525734dd5a61e749cfda031a05c642093e73365f8a371ddde6dbbe4a4` |
| 29 | `theorem` | [NNReal.tendsto_pow_atTop_nhds_zero_of_lt_one](../../../../FunctionalAnalysis/SpecificLimitsBasicNamespacedTendstoInverseAtTopNhdsZeroNat.lean/declarations/nnreal-tendsto-pow-attop-nhds-zero-of-lt-one.md) | 244 | `result-track:11c437c4dbecdf4c8f99b93f916044bad8f1524bea82cab029b2dd8ad9646e14` |
| 30 | `theorem` | [NNReal.tendsto_pow_atTop_nhds_zero_iff](../../../../FunctionalAnalysis/SpecificLimitsBasicNamespacedTendstoInverseAtTopNhdsZeroNat.lean/declarations/nnreal-tendsto-pow-attop-nhds-zero-iff.md) | 251 | `result-track:73e54e180332f116b05ff97195ca9ca4d883b974824a93501a1e90c609bda045` |
| 31 | `theorem` | [ENNReal.tendsto_pow_atTop_nhds_zero_of_lt_one](../../../../FunctionalAnalysis/SpecificLimitsBasicNamespacedTendstoInverseAtTopNhdsZeroNat.lean/declarations/ennreal-tendsto-pow-attop-nhds-zero-of-lt-one.md) | 256 | `result-track:2bd2c2036f44f6e7dd281c03a5fd19b5a75eebde62a6f245bec2181172c4e3e5` |
| 32 | `theorem` | [ENNReal.tendsto_pow_atTop_nhds_zero_iff](../../../../FunctionalAnalysis/SpecificLimitsBasicNamespacedTendstoInverseAtTopNhdsZeroNat.lean/declarations/ennreal-tendsto-pow-attop-nhds-zero-iff.md) | 264 | `result-track:e94cc2d22d9f86a96568cee890e9f674f1965d544b4712980490599b916b97ef` |
| 33 | `theorem` | [ENNReal.tendsto_pow_atTop_nhds_top_iff](../../../../FunctionalAnalysis/SpecificLimitsBasicNamespacedTendstoInverseAtTopNhdsZeroNat.lean/declarations/ennreal-tendsto-pow-attop-nhds-top-iff.md) | 275 | `result-track:b208abef915a2f7c619f97eb339454dfb353847063d8fee3ce5e1f8ee3878832` |
| 34 | `lemma` | [ENNReal.eq_zero_of_le_mul_pow](../../../../FunctionalAnalysis/SpecificLimitsBasicNamespacedTendstoInverseAtTopNhdsZeroNat.lean/declarations/ennreal-eq-zero-of-le-mul-pow.md) | 289 | `result-track:16366b1c724ea9d1d7c554ae354bb5af04e810be4e3a16773d24c30d67157a87` |
| 35 | `theorem` | [hasSum_geometric_of_lt_one](../../../../FunctionalAnalysis/SpecificLimitsBasicNamespacedTendstoInverseAtTopNhdsZeroNat.lean/declarations/hassum-geometric-of-lt-one.md) | 300 | `result-track:f0dff73dc716ce5cb81d19feed0003c83d0e23b38e189c661956e9c223904bdf` |
| 36 | `theorem` | [summable_geometric_of_lt_one](../../../../FunctionalAnalysis/SpecificLimitsBasicNamespacedTendstoInverseAtTopNhdsZeroNat.lean/declarations/summable-geometric-of-lt-one.md) | 308 | `result-track:c58f219ab0955b0926847517576cc357b574ab53ae7c03fbf7567065aa1fb4c8` |
| 37 | `theorem` | [tsum_geometric_of_lt_one](../../../../FunctionalAnalysis/SpecificLimitsBasicNamespacedTendstoInverseAtTopNhdsZeroNat.lean/declarations/tsum-geometric-of-lt-one.md) | 313 | `result-track:3f2be7347580cf6742ec8cd41c2f40c2137484deb923f854b23b354452e055d1` |
| 38 | `theorem` | [hasSum_geometric_two](../../../../FunctionalAnalysis/SpecificLimitsBasicNamespacedTendstoInverseAtTopNhdsZeroNat.lean/declarations/hassum-geometric-two-source-edition-2.md) | 316 | `result-track:de45ee2cd5f92a3f32f481da08914418884379e41a108967709621b94fa87566` |
| 39 | `theorem` | [summable_geometric_two](../../../../FunctionalAnalysis/SpecificLimitsBasicNamespacedTendstoInverseAtTopNhdsZeroNat.lean/declarations/summable-geometric-two.md) | 319 | `result-track:0d5381fbd2d9867917319af9350c25a74fa52e28a54b8a2dbea98cad3626daa9` |
| 40 | `theorem` | [summable_geometric_two_encode](../../../../FunctionalAnalysis/SpecificLimitsBasicNamespacedTendstoInverseAtTopNhdsZeroNat.lean/declarations/summable-geometric-two-encode.md) | 322 | `result-track:6b378545158c85b49f4893142c7be569831f705b968f07caebbe5a81d27b520f` |
| 41 | `theorem` | [tsum_geometric_two](../../../../FunctionalAnalysis/SpecificLimitsBasicNamespacedTendstoInverseAtTopNhdsZeroNat.lean/declarations/tsum-geometric-two.md) | 326 | `result-track:8afc8e8878a8a8162ec4353d59afa1cc8109d196198f97ea71765e550dc5b8f8` |
| 42 | `theorem` | [sum_geometric_two_le](../../../../FunctionalAnalysis/SpecificLimitsBasicNamespacedTendstoInverseAtTopNhdsZeroNat.lean/declarations/sum-geometric-two-le.md) | 329 | `result-track:680988d0598eb209888d01ba63d31160f48d60b8c91549abdc5ec38e2ec79a13` |
| 43 | `theorem` | [tsum_geometric_inv_two](../../../../FunctionalAnalysis/SpecificLimitsBasicNamespacedTendstoInverseAtTopNhdsZeroNat.lean/declarations/tsum-geometric-inv-two.md) | 337 | `result-track:920694931c3fe8336943e3f5cb9debc8f88665e4ab2534e31a79478ff807446a` |
| 44 | `theorem` | [tsum_geometric_inv_two_ge](../../../../FunctionalAnalysis/SpecificLimitsBasicNamespacedTendstoInverseAtTopNhdsZeroNat.lean/declarations/tsum-geometric-inv-two-ge.md) | 341 | `result-track:cf895d9421151ed389bcd1d6d60f2563c7f8f0a606986f0ec39b9eb857bb48a8` |
| 45 | `theorem` | [hasSum_geometric_two'](../../../../FunctionalAnalysis/SpecificLimitsBasicNamespacedTendstoInverseAtTopNhdsZeroNat.lean/declarations/hassum-geometric-two.md) | 352 | `result-track:8c7cb3ce92db97637c4620b76faf073e1fba967430a87c9d2e2fb40665921b34` |
| 46 | `theorem` | [summable_geometric_two'](../../../../FunctionalAnalysis/SpecificLimitsBasicNamespacedTendstoInverseAtTopNhdsZeroNat.lean/declarations/summable-geometric-two-source-edition-2.md) | 360 | `result-track:c4105ed73a6ae29b373ef6cc0e13cb4be476f3c4de890f4639bb820917618ce9` |
| 47 | `theorem` | [tsum_geometric_two'](../../../../FunctionalAnalysis/SpecificLimitsBasicNamespacedTendstoInverseAtTopNhdsZeroNat.lean/declarations/tsum-geometric-two-source-edition-2.md) | 363 | `result-track:e16ea8758c5e71c1fe1599f94b6362ff2ed70814fbe9dd413df0b60d1f5c9383` |
| 48 | `theorem` | [NNReal.hasSum_geometric](../../../../FunctionalAnalysis/SpecificLimitsBasicNamespacedTendstoInverseAtTopNhdsZeroNat.lean/declarations/nnreal-hassum-geometric.md) | 367 | `result-track:4d68e8d6be25cb576efb2f8a7644ea83460ef35182beebea4ead0caa39d2ae9a` |
| 49 | `theorem` | [NNReal.summable_geometric](../../../../FunctionalAnalysis/SpecificLimitsBasicNamespacedTendstoInverseAtTopNhdsZeroNat.lean/declarations/nnreal-summable-geometric.md) | 373 | `result-track:21849f1ff9cefbf85af57bb36dbba3505214d014b1aec7e7917ee77db8cab44b` |
| 50 | `theorem` | [tsum_geometric_nnreal](../../../../FunctionalAnalysis/SpecificLimitsBasicNamespacedTendstoInverseAtTopNhdsZeroNat.lean/declarations/tsum-geometric-nnreal.md) | 376 | `result-track:6b31bc96eb37fd87e24224e97244c57dd1357d5e9484f0a617c55a9a10895ed2` |
| 51 | `theorem` | [ENNReal.tsum_geometric](../../../../FunctionalAnalysis/SpecificLimitsBasicNamespacedTendstoInverseAtTopNhdsZeroNat.lean/declarations/ennreal-tsum-geometric.md) | 382 | `result-track:1db6a48bb7060450e998e69c12410fb59d726a066c358aa06cf573d869d98b8c` |
| 52 | `theorem` | [ENNReal.tsum_geometric_add_one](../../../../FunctionalAnalysis/SpecificLimitsBasicNamespacedTendstoInverseAtTopNhdsZeroNat.lean/declarations/ennreal-tsum-geometric-add-one.md) | 395 | `result-track:a93efd48c23f4996fb41a1dcff0c93f0f852832101dfd138ae73d66d33f6019e` |
| 53 | `theorem` | [cauchySeq_of_edist_le_geometric](../../../../FunctionalAnalysis/SpecificLimitsBasicNamespacedTendstoInverseAtTopNhdsZeroNat.lean/declarations/cauchyseq-of-edist-le-geometric.md) | 418 | `result-track:8045d1b48b019187f1df548ddf3fbaa903d98ac2aca3f00925b85cd8146fd4cb` |
| 54 | `theorem` | [edist_le_of_edist_le_geometric_of_tendsto](../../../../FunctionalAnalysis/SpecificLimitsBasicNamespacedTendstoInverseAtTopNhdsZeroNat.lean/declarations/edist-le-of-edist-le-geometric-of-tendsto-source-edition-2.md) | 427 | `result-track:f11fbba324ea3edacc6956da10eee4ddc7c8d2c44d43483ff15a0411cde7a064` |
| 55 | `theorem` | [edist_le_of_edist_le_geometric_of_tendsto₀](../../../../FunctionalAnalysis/SpecificLimitsBasicNamespacedTendstoInverseAtTopNhdsZeroNat.lean/declarations/edist-le-of-edist-le-geometric-of-tendsto.md) | 435 | `result-track:3e1518130b61591d95e2e1939f905337fa2d8ed8dd26dbc95832b730a9a0e02e` |
| 56 | `theorem` | [cauchySeq_of_edist_le_geometric_two](../../../../FunctionalAnalysis/SpecificLimitsBasicNamespacedTendstoInverseAtTopNhdsZeroNat.lean/declarations/cauchyseq-of-edist-le-geometric-two.md) | 448 | `result-track:f8956379c7abf194bd56ad688da2533ddc4366240624b016d76baff5c896c958` |
| 57 | `theorem` | [edist_le_of_edist_le_geometric_two_of_tendsto](../../../../FunctionalAnalysis/SpecificLimitsBasicNamespacedTendstoInverseAtTopNhdsZeroNat.lean/declarations/edist-le-of-edist-le-geometric-two-of-tendsto.md) | 456 | `result-track:4dc1c0dfb390d3c16a76a832118886cbc5a9482d49c57a8ce8efb5ce7e118626` |
| 58 | `theorem` | [edist_le_of_edist_le_geometric_two_of_tendsto₀](../../../../FunctionalAnalysis/SpecificLimitsBasicNamespacedTendstoInverseAtTopNhdsZeroNat.lean/declarations/edist-le-of-edist-le-geometric-two-of-tendsto-source-edition-2.md) | 465 | `result-track:600fae45b1763157248ec54ea94ad629df91542a956d16581e5f0c4ebd413904` |
| 59 | `theorem` | [aux_hasSum_of_le_geometric](../../../../FunctionalAnalysis/SpecificLimitsBasicNamespacedTendstoInverseAtTopNhdsZeroNat.lean/declarations/aux-hassum-of-le-geometric.md) | 480 | `result-track:e17773aed33406bd6b6e6f74aebd85e039ba3abd84fe7c1791875295a120ced7` |
| 60 | `theorem` | [cauchySeq_of_le_geometric](../../../../FunctionalAnalysis/SpecificLimitsBasicNamespacedTendstoInverseAtTopNhdsZeroNat.lean/declarations/cauchyseq-of-le-geometric.md) | 490 | `result-track:4b092e4648bf640a79036faebbe8025575f084259175774383cf8fdad48ea550` |
| 61 | `theorem` | [dist_le_of_le_geometric_of_tendsto₀](../../../../FunctionalAnalysis/SpecificLimitsBasicNamespacedTendstoInverseAtTopNhdsZeroNat.lean/declarations/dist-le-of-le-geometric-of-tendsto-source-edition-2.md) | 495 | `result-track:9c96bed4ec925605f3d5a73f2af6d14bccf36715b80004d6c064d1f3f0b29145` |
| 62 | `theorem` | [dist_le_of_le_geometric_of_tendsto](../../../../FunctionalAnalysis/SpecificLimitsBasicNamespacedTendstoInverseAtTopNhdsZeroNat.lean/declarations/dist-le-of-le-geometric-of-tendsto.md) | 502 | `result-track:96bb55d174142ce7c064cf5d7264516669964ac93d6218ae107924fa40a7e202` |
| 63 | `theorem` | [cauchySeq_of_le_geometric_two](../../../../FunctionalAnalysis/SpecificLimitsBasicNamespacedTendstoInverseAtTopNhdsZeroNat.lean/declarations/cauchyseq-of-le-geometric-two.md) | 516 | `result-track:9df069d2884ad6c29228d938043312bb0574ccf5746091902142a4cacae05098` |
| 64 | `theorem` | [dist_le_of_le_geometric_two_of_tendsto₀](../../../../FunctionalAnalysis/SpecificLimitsBasicNamespacedTendstoInverseAtTopNhdsZeroNat.lean/declarations/dist-le-of-le-geometric-two-of-tendsto-source-edition-2.md) | 521 | `result-track:db8cfef7b139c239d37eac2923f3ce2cc772b52bb54926359eca8a5548c3dfbf` |
| 65 | `theorem` | [dist_le_of_le_geometric_two_of_tendsto](../../../../FunctionalAnalysis/SpecificLimitsBasicNamespacedTendstoInverseAtTopNhdsZeroNat.lean/declarations/dist-le-of-le-geometric-two-of-tendsto.md) | 527 | `result-track:4df134154a61da51984c9bf42e9eb149f5520d06e4a04d4bc2d232ab5558d613` |
| 66 | `theorem` | [summable_one_div_pow_of_le](../../../../FunctionalAnalysis/SpecificLimitsBasicNamespacedTendstoInverseAtTopNhdsZeroNat.lean/declarations/summable-one-div-pow-of-le.md) | 540 | `result-track:2ac12abccb1fc5744e359ead284ae453bb887fc51f2e40fe73b491fe527db0a4` |
| 67 | `def` | [posSumOfEncodable](../../../../FunctionalAnalysis/SpecificLimitsBasicNamespacedTendstoInverseAtTopNhdsZeroNat.lean/declarations/possumofencodable.md) | 553 | `declaration-track:6bcd9abe07b7dbd87356c1f26de7d0d17768eadb3b194f199955a4170109783a` |
| 68 | `theorem` | [Set.Countable.exists_pos_hasSum_le](../../../../FunctionalAnalysis/SpecificLimitsBasicNamespacedTendstoInverseAtTopNhdsZeroNat.lean/declarations/set-countable-exists-pos-hassum-le.md) | 566 | `result-track:4270a1beab78429843c81886cb1050ce84b8826fc86d25d6616d4c91f8451f69` |
| 69 | `theorem` | [Set.Countable.exists_pos_forall_sum_le](../../../../FunctionalAnalysis/SpecificLimitsBasicNamespacedTendstoInverseAtTopNhdsZeroNat.lean/declarations/set-countable-exists-pos-forall-sum-le.md) | 577 | `result-track:f0446d964343af737f67be963472e360d2eee282f476c3bdcd44ce6da27f7af9` |
| 70 | `theorem` | [exists_pos_sum_of_countable](../../../../FunctionalAnalysis/SpecificLimitsBasicNamespacedTendstoInverseAtTopNhdsZeroNat.lean/declarations/exists-pos-sum-of-countable-source-edition-2.md) | 589 | `result-track:77d4f52d38e7da569575d99404de322af07c957dc3653111c4718102344ca626` |
| 71 | `theorem` | [exists_pos_sum_of_countable](../../../../FunctionalAnalysis/SpecificLimitsBasicNamespacedTendstoInverseAtTopNhdsZeroNat.lean/declarations/exists-pos-sum-of-countable-source-edition-3.md) | 603 | `result-track:aaca1b291aa8c93042b461888245ab565a83eb0329722efd5932bca176d27234` |
| 72 | `theorem` | [exists_pos_sum_of_countable'](../../../../FunctionalAnalysis/SpecificLimitsBasicNamespacedTendstoInverseAtTopNhdsZeroNat.lean/declarations/exists-pos-sum-of-countable.md) | 610 | `result-track:159da70b3be336b8a76481e1e170e3a1b1df1352c9a0f099512763640ab33f33` |
| 73 | `theorem` | [exists_pos_tsum_mul_lt_of_countable](../../../../FunctionalAnalysis/SpecificLimitsBasicNamespacedTendstoInverseAtTopNhdsZeroNat.lean/declarations/exists-pos-tsum-mul-lt-of-countable.md) | 615 | `result-track:f2b8fb6c0a34db7ec971ff7b52ce6372d158f92f8606360f10e39bc2e39e11c1` |
| 74 | `theorem` | [factorial_tendsto_atTop](../../../../FunctionalAnalysis/SpecificLimitsBasicNamespacedTendstoInverseAtTopNhdsZeroNat.lean/declarations/factorial-tendsto-attop.md) | 633 | `result-track:df90b450f6f8ce32fc85192c4bbc1fc4c692fc02cda479ccf06d6de27bfa226c` |
| 75 | `theorem` | [tendsto_factorial_div_pow_self_atTop](../../../../FunctionalAnalysis/SpecificLimitsBasicNamespacedTendstoInverseAtTopNhdsZeroNat.lean/declarations/tendsto-factorial-div-pow-self-attop.md) | 636 | `result-track:845914654e7ea534403d268e6715f9c3913fdda434232409dc0dcca87170c490` |
| 76 | `theorem` | [tendsto_nat_floor_atTop](../../../../FunctionalAnalysis/SpecificLimitsBasicNamespacedTendstoInverseAtTopNhdsZeroNat.lean/declarations/tendsto-nat-floor-attop.md) | 666 | `result-track:9b32be734dff3528abbe136f886768737844ed8d88fc78ad7caf68f104b9da0e` |
| 77 | `lemma` | [tendsto_nat_ceil_atTop](../../../../FunctionalAnalysis/SpecificLimitsBasicNamespacedTendstoInverseAtTopNhdsZeroNat.lean/declarations/tendsto-nat-ceil-attop.md) | 671 | `result-track:c5fb64045b74864591ffdd84b58b7aca58c9165c2f613d1a986972d24ad8ec62` |
| 78 | `lemma` | [tendsto_nat_floor_mul_atTop](../../../../FunctionalAnalysis/SpecificLimitsBasicNamespacedTendstoInverseAtTopNhdsZeroNat.lean/declarations/tendsto-nat-floor-mul-attop.md) | 677 | `result-track:517b37cc33bcbc5174f64bb170638c03eba215f0fe0fc7aa00fa9d8ffadc7328` |
| 79 | `theorem` | [tendsto_nat_floor_mul_div_atTop](../../../../FunctionalAnalysis/SpecificLimitsBasicNamespacedTendstoInverseAtTopNhdsZeroNat.lean/declarations/tendsto-nat-floor-mul-div-attop.md) | 686 | `result-track:b07432b77bcaf1dbef38a24ad2d38760c4e60e2834694c2b5acb55ca7fea8b81` |
| 80 | `theorem` | [tendsto_nat_floor_div_atTop](../../../../FunctionalAnalysis/SpecificLimitsBasicNamespacedTendstoInverseAtTopNhdsZeroNat.lean/declarations/tendsto-nat-floor-div-attop.md) | 701 | `result-track:a69536839570f364464d821dd1157a53045678cf4cdc72466b4d1cfd873c0e09` |
| 81 | `theorem` | [tendsto_nat_ceil_mul_div_atTop](../../../../FunctionalAnalysis/SpecificLimitsBasicNamespacedTendstoInverseAtTopNhdsZeroNat.lean/declarations/tendsto-nat-ceil-mul-div-attop.md) | 704 | `result-track:10ec43f75afcbbf25dff6cc54647e525a3e5bbf1c13cfc014d805a8dd6b828ea` |
| 82 | `theorem` | [tendsto_nat_ceil_div_atTop](../../../../FunctionalAnalysis/SpecificLimitsBasicNamespacedTendstoInverseAtTopNhdsZeroNat.lean/declarations/tendsto-nat-ceil-div-attop.md) | 717 | `result-track:3ea747a0517a57d285979185aae4f4df2165627aabfe2bc6a5f66d31b83e4ab8` |
| 83 | `lemma` | [Nat.tendsto_div_const_atTop](../../../../FunctionalAnalysis/SpecificLimitsBasicNamespacedTendstoInverseAtTopNhdsZeroNat.lean/declarations/nat-tendsto-div-const-attop.md) | 720 | `result-track:d649224d40128ce78e3d1761ea478638bd4d379b058b5d472f08339e786ef2c9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=92b81cda218c91e2e55def54a4d8b390e51798c041586128cd38745f324e56ed -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Basic/Variant8dea2f4b11df0502ae8794bc67f7b21f3569863b8a27168260c38d2cbae6f46e.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Basic/Variant8dea2f4b11df0502ae8794bc67f7b21f3569863b8a27168260c38d2cbae6f46e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
