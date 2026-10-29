# Verification target: Specific Limits Basic Tendsto Inverse At Top Nhds Zero Nat

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e056917bed0090d2909ab8de28047555fd6262b1",
  "lexical_observation_count": 83,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variantcbf9b6b47e6ee6b2962fb2f16ba49b7e005e9a93c0adc1244cc770c34f527315.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/SpecificLimitsBasicTendstoInverseAtTopNhdsZeroNat.lean/index.md) · [Full source](../../../../FunctionalAnalysis/SpecificLimitsBasicTendstoInverseAtTopNhdsZeroNat.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e056917bed0090d2909ab8de28047555fd6262b1`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variantcbf9b6b47e6ee6b2962fb2f16ba49b7e005e9a93c0adc1244cc770c34f527315.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variantcbf9b6b47e6ee6b2962fb2f16ba49b7e005e9a93c0adc1244cc770c34f527315.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GeomSum` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.AtTopBot.Archimedean` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Iterate` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Algebra` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.InfiniteSum.Real` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Instances.EReal.Lemmas` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [tendsto_inverse_atTop_nhds_zero_nat](../../../../FunctionalAnalysis/SpecificLimitsBasicTendstoInverseAtTopNhdsZeroNat.lean/declarations/tendsto-inverse-attop-nhds-zero-nat.md) | 29 | `result-track:0267bd358027a34c6f2c9b59eb03f00ff5fa13b8f339368f6a637a3c6f331c59` |
| 2 | `theorem` | [tendsto_const_div_atTop_nhds_zero_nat](../../../../FunctionalAnalysis/SpecificLimitsBasicTendstoInverseAtTopNhdsZeroNat.lean/declarations/tendsto-const-div-attop-nhds-zero-nat.md) | 32 | `result-track:ff5c68fa3792f1ad86baf544f34ba3c289bf87881cd088cb1683d66b6f5759eb` |
| 3 | `theorem` | [tendsto_one_div_atTop_nhds_zero_nat](../../../../FunctionalAnalysis/SpecificLimitsBasicTendstoInverseAtTopNhdsZeroNat.lean/declarations/tendsto-one-div-attop-nhds-zero-nat.md) | 36 | `result-track:c1691176f48a839731bc1cf6593bd9db17755e00e1491bc6279e0892c697a136` |
| 4 | `theorem` | [NNReal.tendsto_inverse_atTop_nhds_zero_nat](../../../../FunctionalAnalysis/SpecificLimitsBasicTendstoInverseAtTopNhdsZeroNat.lean/declarations/nnreal-tendsto-inverse-attop-nhds-zero-nat.md) | 39 | `result-track:07556a7b3ad5bffe041e0909099c253f1d4354fe52e3fbe9ba59d084b0edf1af` |
| 5 | `theorem` | [NNReal.tendsto_const_div_atTop_nhds_zero_nat](../../../../FunctionalAnalysis/SpecificLimitsBasicTendstoInverseAtTopNhdsZeroNat.lean/declarations/nnreal-tendsto-const-div-attop-nhds-zero-nat.md) | 44 | `result-track:cc423e91ec057740d3a6a7ff4ec9593f19e2363d35c5d97434afb965053b45f7` |
| 6 | `theorem` | [EReal.tendsto_const_div_atTop_nhds_zero_nat](../../../../FunctionalAnalysis/SpecificLimitsBasicTendstoInverseAtTopNhdsZeroNat.lean/declarations/ereal-tendsto-const-div-attop-nhds-zero-nat.md) | 48 | `result-track:5dabded9af705d6fd8dd35555a04ca57f5c46ebc834992c1693e8adbb246e549` |
| 7 | `theorem` | [tendsto_one_div_add_atTop_nhds_zero_nat](../../../../FunctionalAnalysis/SpecificLimitsBasicTendstoInverseAtTopNhdsZeroNat.lean/declarations/tendsto-one-div-add-attop-nhds-zero-nat.md) | 56 | `result-track:1d1cb1baf461d8269cc9604a549ebe079ca990ea25c9cec98a81eb342146a181` |
| 8 | `theorem` | [NNReal.tendsto_algebraMap_inverse_atTop_nhds_zero_nat](../../../../FunctionalAnalysis/SpecificLimitsBasicTendstoInverseAtTopNhdsZeroNat.lean/declarations/nnreal-tendsto-algebramap-inverse-attop-nhds-zero-nat.md) | 61 | `result-track:44eb59ee62ae4a67107b7b093a8d5f7a655aac2a9fd39b19fa35ba5ceb04ba2c` |
| 9 | `theorem` | [tendsto_algebraMap_inverse_atTop_nhds_zero_nat](../../../../FunctionalAnalysis/SpecificLimitsBasicTendstoInverseAtTopNhdsZeroNat.lean/declarations/tendsto-algebramap-inverse-attop-nhds-zero-nat.md) | 68 | `result-track:aa939d148878db74c8490d92270a6a5023b212a09a0548c75c8e91e4ad1a2964` |
| 10 | `theorem` | [tendsto_natCast_div_add_atTop](../../../../FunctionalAnalysis/SpecificLimitsBasicTendstoInverseAtTopNhdsZeroNat.lean/declarations/tendsto-natcast-div-add-attop.md) | 78 | `result-track:49f44a0e4d3cd4fe9381f63837f0fc45a529e4616d60bfb57d1c733a2ef8f6c2` |
| 11 | `theorem` | [tendsto_mod_div_atTop_nhds_zero_nat](../../../../FunctionalAnalysis/SpecificLimitsBasicTendstoInverseAtTopNhdsZeroNat.lean/declarations/tendsto-mod-div-attop-nhds-zero-nat.md) | 97 | `result-track:35059fba3f418105cc47b70da3c9597379225ffd9be097e5936021c2fffaaeeb` |
| 12 | `theorem` | [Filter.EventuallyEq.div_mul_cancel](../../../../FunctionalAnalysis/SpecificLimitsBasicTendstoInverseAtTopNhdsZeroNat.lean/declarations/filter-eventuallyeq-div-mul-cancel.md) | 103 | `result-track:19cc7842f9d880a4a9fe482ea2fcc2236b57d2cc27674214fd92d1f4ef7b9db1` |
| 13 | `theorem` | [Filter.EventuallyEq.div_mul_cancel_atTop](../../../../FunctionalAnalysis/SpecificLimitsBasicTendstoInverseAtTopNhdsZeroNat.lean/declarations/filter-eventuallyeq-div-mul-cancel-attop.md) | 109 | `result-track:906993c6e7996b2c606a8b5c37345ac2bc4b2e360d00a5f3cf8479e4a42b0b35` |
| 14 | `theorem` | [Tendsto.num](../../../../FunctionalAnalysis/SpecificLimitsBasicTendstoInverseAtTopNhdsZeroNat.lean/declarations/tendsto-num.md) | 118 | `result-track:d4fb651fcffdd36ed2fadcce409983d00d7ed999cadb5e32bc9557d158e52055` |
| 15 | `theorem` | [Tendsto.den](../../../../FunctionalAnalysis/SpecificLimitsBasicTendstoInverseAtTopNhdsZeroNat.lean/declarations/tendsto-den.md) | 127 | `result-track:a2554d05a7fd1e8ecc598d96c9cafcb5a87818a1212200bb958567e0d8302807` |
| 16 | `theorem` | [Tendsto.num_atTop_iff_den_atTop](../../../../FunctionalAnalysis/SpecificLimitsBasicTendstoInverseAtTopNhdsZeroNat.lean/declarations/tendsto-num-attop-iff-den-attop.md) | 139 | `result-track:55b95e0f39f4a655384106096311bee862990479124adeae4271c8ebc88ea963` |
| 17 | `theorem` | [tendsto_add_one_pow_atTop_atTop_of_pos](../../../../FunctionalAnalysis/SpecificLimitsBasicTendstoInverseAtTopNhdsZeroNat.lean/declarations/tendsto-add-one-pow-attop-attop-of-pos.md) | 149 | `result-track:a775201ea27f3ce59cea6a120792b3f5cb194c7f250dc53937a3934f97536fc4` |
| 18 | `theorem` | [tendsto_pow_atTop_atTop_of_one_lt](../../../../FunctionalAnalysis/SpecificLimitsBasicTendstoInverseAtTopNhdsZeroNat.lean/declarations/tendsto-pow-attop-attop-of-one-lt.md) | 155 | `result-track:328274ef58096bd56823ee71c407ed5cac4ee9f54022ec2eb0bf72a3b143641c` |
| 19 | `theorem` | [Nat.tendsto_pow_atTop_atTop_of_one_lt](../../../../FunctionalAnalysis/SpecificLimitsBasicTendstoInverseAtTopNhdsZeroNat.lean/declarations/nat-tendsto-pow-attop-attop-of-one-lt.md) | 160 | `result-track:8cb5ad3f1afbe39e79d383c89c66199968ae6b0dc4a1206dd2b46dd455e03fac` |
| 20 | `theorem` | [tendsto_pow_atTop_nhds_zero_of_lt_one](../../../../FunctionalAnalysis/SpecificLimitsBasicTendstoInverseAtTopNhdsZeroNat.lean/declarations/tendsto-pow-attop-nhds-zero-of-lt-one.md) | 164 | `result-track:f9710664adb5097c5cc18ddea4d009383ac8a303a1d85d66948df62be3646a2b` |
| 21 | `theorem` | [tendsto_pow_atTop_nhds_zero_iff](../../../../FunctionalAnalysis/SpecificLimitsBasicTendstoInverseAtTopNhdsZeroNat.lean/declarations/tendsto-pow-attop-nhds-zero-iff.md) | 175 | `result-track:65aba0cc2aee45733b71f36d2f25ca13e59f9f03f0999ff4faa00651caf611f8` |
| 22 | `theorem` | [tendsto_pow_atTop_nhdsWithin_zero_of_lt_one](../../../../FunctionalAnalysis/SpecificLimitsBasicTendstoInverseAtTopNhdsZeroNat.lean/declarations/tendsto-pow-attop-nhdswithin-zero-of-lt-one.md) | 193 | `result-track:d4962a2b3ed934bd4aa8ae3a27acae17b97d91154380f030d259e423361da6d8` |
| 23 | `theorem` | [uniformity_basis_dist_pow_of_lt_one](../../../../FunctionalAnalysis/SpecificLimitsBasicTendstoInverseAtTopNhdsZeroNat.lean/declarations/uniformity-basis-dist-pow-of-lt-one.md) | 201 | `result-track:c5a275963bd73b6a80a322067724aa29f94053fc93aa4e2ea6e2837a36749e31` |
| 24 | `theorem` | [geom_lt](../../../../FunctionalAnalysis/SpecificLimitsBasicTendstoInverseAtTopNhdsZeroNat.lean/declarations/geom-lt.md) | 207 | `result-track:af0a72453431d1f133868795aee636abf1cdc13eebf1b29c51f6185e9c0d18e2` |
| 25 | `theorem` | [geom_le](../../../../FunctionalAnalysis/SpecificLimitsBasicTendstoInverseAtTopNhdsZeroNat.lean/declarations/geom-le.md) | 213 | `result-track:0b5df3946c1e18e61a105214e8cd2e2d17a7354c825749faae6fa25ced89e3fb` |
| 26 | `theorem` | [lt_geom](../../../../FunctionalAnalysis/SpecificLimitsBasicTendstoInverseAtTopNhdsZeroNat.lean/declarations/lt-geom.md) | 218 | `result-track:be280aec62cde808e00f31ce7e7b8c50311f96df4599772fec19832cf8503c94` |
| 27 | `theorem` | [le_geom](../../../../FunctionalAnalysis/SpecificLimitsBasicTendstoInverseAtTopNhdsZeroNat.lean/declarations/le-geom.md) | 224 | `result-track:33fa42319472d4a586b69dfc713c7ade14ed9f96145d7b0bf16aa823b4b5f1cb` |
| 28 | `theorem` | [tendsto_atTop_of_geom_le](../../../../FunctionalAnalysis/SpecificLimitsBasicTendstoInverseAtTopNhdsZeroNat.lean/declarations/tendsto-attop-of-geom-le.md) | 231 | `result-track:9e7bf7d61e6e6c6783ba311e172495c063862767aa4eaf8ea837e74d17d1d21d` |
| 29 | `theorem` | [NNReal.tendsto_pow_atTop_nhds_zero_of_lt_one](../../../../FunctionalAnalysis/SpecificLimitsBasicTendstoInverseAtTopNhdsZeroNat.lean/declarations/nnreal-tendsto-pow-attop-nhds-zero-of-lt-one.md) | 236 | `result-track:b2ad50d481771a2bd24fb97bdd7bde2884c83adbecdf00883fcc7700cd9e6f9c` |
| 30 | `theorem` | [NNReal.tendsto_pow_atTop_nhds_zero_iff](../../../../FunctionalAnalysis/SpecificLimitsBasicTendstoInverseAtTopNhdsZeroNat.lean/declarations/nnreal-tendsto-pow-attop-nhds-zero-iff.md) | 243 | `result-track:5f52e88dd6a77cf974ad289e013aa0526f5c097585a686b2a7aea2e9a669e49c` |
| 31 | `theorem` | [ENNReal.tendsto_pow_atTop_nhds_zero_of_lt_one](../../../../FunctionalAnalysis/SpecificLimitsBasicTendstoInverseAtTopNhdsZeroNat.lean/declarations/ennreal-tendsto-pow-attop-nhds-zero-of-lt-one.md) | 248 | `result-track:c84e4cffc19a3ef4d5da66beeca13f4af14a171fcdb20603662c0a176b3f7d8d` |
| 32 | `theorem` | [ENNReal.tendsto_pow_atTop_nhds_zero_iff](../../../../FunctionalAnalysis/SpecificLimitsBasicTendstoInverseAtTopNhdsZeroNat.lean/declarations/ennreal-tendsto-pow-attop-nhds-zero-iff.md) | 256 | `result-track:0527fe6757395da943bc83eb64665523e3e35097a70aacd680c09748d3dc5e6c` |
| 33 | `theorem` | [ENNReal.tendsto_pow_atTop_nhds_top_iff](../../../../FunctionalAnalysis/SpecificLimitsBasicTendstoInverseAtTopNhdsZeroNat.lean/declarations/ennreal-tendsto-pow-attop-nhds-top-iff.md) | 267 | `result-track:9a7b7830acb11308d3e2011d7b043d5dabf4f3b902682c523cd0645bd17a12d2` |
| 34 | `lemma` | [ENNReal.eq_zero_of_le_mul_pow](../../../../FunctionalAnalysis/SpecificLimitsBasicTendstoInverseAtTopNhdsZeroNat.lean/declarations/ennreal-eq-zero-of-le-mul-pow.md) | 281 | `result-track:8c69062653232fab05be43bcedd7df09abeeeb43c563dbd92d4f7be2bbef74cd` |
| 35 | `theorem` | [hasSum_geometric_of_lt_one](../../../../FunctionalAnalysis/SpecificLimitsBasicTendstoInverseAtTopNhdsZeroNat.lean/declarations/hassum-geometric-of-lt-one.md) | 292 | `result-track:66e2899f8f4e49c1d2e7de31426b56474f81ee45fd2c3e28ab57f24203e58caf` |
| 36 | `theorem` | [summable_geometric_of_lt_one](../../../../FunctionalAnalysis/SpecificLimitsBasicTendstoInverseAtTopNhdsZeroNat.lean/declarations/summable-geometric-of-lt-one.md) | 300 | `result-track:45dc1f86d634b6e11a79cb64548a9c75928ab521e62820d042fec74d6416ab44` |
| 37 | `theorem` | [tsum_geometric_of_lt_one](../../../../FunctionalAnalysis/SpecificLimitsBasicTendstoInverseAtTopNhdsZeroNat.lean/declarations/tsum-geometric-of-lt-one.md) | 305 | `result-track:11e2b0c6d108d1e0282cd00128b85ea08c2d13bd66099fe4aadcc9fa58917128` |
| 38 | `theorem` | [hasSum_geometric_two](../../../../FunctionalAnalysis/SpecificLimitsBasicTendstoInverseAtTopNhdsZeroNat.lean/declarations/hassum-geometric-two-source-edition-2.md) | 308 | `result-track:ff1b247fdbdc81699c6366c425ae0fbd55765b9d5da6fa690689f5d245a43dd0` |
| 39 | `theorem` | [summable_geometric_two](../../../../FunctionalAnalysis/SpecificLimitsBasicTendstoInverseAtTopNhdsZeroNat.lean/declarations/summable-geometric-two.md) | 311 | `result-track:673af9ff43935ee2f0b4341992d008c7e09982cf231e66021b342e9521daf7d7` |
| 40 | `theorem` | [summable_geometric_two_encode](../../../../FunctionalAnalysis/SpecificLimitsBasicTendstoInverseAtTopNhdsZeroNat.lean/declarations/summable-geometric-two-encode.md) | 314 | `result-track:4e552f03f3139200a22452bef37d13821693e7d30ebe04ab7be2e658bc06b188` |
| 41 | `theorem` | [tsum_geometric_two](../../../../FunctionalAnalysis/SpecificLimitsBasicTendstoInverseAtTopNhdsZeroNat.lean/declarations/tsum-geometric-two.md) | 318 | `result-track:beee53d1146c2fe2eed4c31652be1749090387dbdb55bff5ab4abfdbd14d3a6d` |
| 42 | `theorem` | [sum_geometric_two_le](../../../../FunctionalAnalysis/SpecificLimitsBasicTendstoInverseAtTopNhdsZeroNat.lean/declarations/sum-geometric-two-le.md) | 321 | `result-track:dcdb30874504581a4ea3cedd712ed6439a39b5b87dc1827d7de45e090b034c59` |
| 43 | `theorem` | [tsum_geometric_inv_two](../../../../FunctionalAnalysis/SpecificLimitsBasicTendstoInverseAtTopNhdsZeroNat.lean/declarations/tsum-geometric-inv-two.md) | 329 | `result-track:b90aa1afb1cec2b11b8793788d10b9d21d01bddf0b72fd87161eae729ce68c5f` |
| 44 | `theorem` | [tsum_geometric_inv_two_ge](../../../../FunctionalAnalysis/SpecificLimitsBasicTendstoInverseAtTopNhdsZeroNat.lean/declarations/tsum-geometric-inv-two-ge.md) | 333 | `result-track:cee41611c69618b1ada7975697fb4641d1499d5261e46fc50f03a390a9f53346` |
| 45 | `theorem` | [hasSum_geometric_two'](../../../../FunctionalAnalysis/SpecificLimitsBasicTendstoInverseAtTopNhdsZeroNat.lean/declarations/hassum-geometric-two.md) | 344 | `result-track:f83f1eb84c46c4dd79627b2cfa5d2aa301c74bcb50f872ff2e4ad60f9e1da008` |
| 46 | `theorem` | [summable_geometric_two'](../../../../FunctionalAnalysis/SpecificLimitsBasicTendstoInverseAtTopNhdsZeroNat.lean/declarations/summable-geometric-two-source-edition-2.md) | 352 | `result-track:f03b5acc860ac3d567c87e906903bfad5e23880345c7da045af4d7c115abef14` |
| 47 | `theorem` | [tsum_geometric_two'](../../../../FunctionalAnalysis/SpecificLimitsBasicTendstoInverseAtTopNhdsZeroNat.lean/declarations/tsum-geometric-two-source-edition-2.md) | 355 | `result-track:c365d5a3e8693f30fd19ed783e8901b63f2b50d4cff97c74ce4ef88099933d18` |
| 48 | `theorem` | [NNReal.hasSum_geometric](../../../../FunctionalAnalysis/SpecificLimitsBasicTendstoInverseAtTopNhdsZeroNat.lean/declarations/nnreal-hassum-geometric.md) | 359 | `result-track:10e8afb5070558be052dec0da0f54eeef63aac08eecf2c811bee446c665bea7a` |
| 49 | `theorem` | [NNReal.summable_geometric](../../../../FunctionalAnalysis/SpecificLimitsBasicTendstoInverseAtTopNhdsZeroNat.lean/declarations/nnreal-summable-geometric.md) | 365 | `result-track:0639a40c4e0d3570ec857078d086eede16a586c5974af0cde89f8ddbde3b7735` |
| 50 | `theorem` | [tsum_geometric_nnreal](../../../../FunctionalAnalysis/SpecificLimitsBasicTendstoInverseAtTopNhdsZeroNat.lean/declarations/tsum-geometric-nnreal.md) | 368 | `result-track:04aba7fbbc1b4834e05632219f7b613f294757152ef1cbe2c542ac080e38989e` |
| 51 | `theorem` | [ENNReal.tsum_geometric](../../../../FunctionalAnalysis/SpecificLimitsBasicTendstoInverseAtTopNhdsZeroNat.lean/declarations/ennreal-tsum-geometric.md) | 374 | `result-track:6d2856755bf218df774bb784313bdd3b70ae661b4f28f4ec8936c4e5a3b0e11d` |
| 52 | `theorem` | [ENNReal.tsum_geometric_add_one](../../../../FunctionalAnalysis/SpecificLimitsBasicTendstoInverseAtTopNhdsZeroNat.lean/declarations/ennreal-tsum-geometric-add-one.md) | 387 | `result-track:2fb90bfaea8590481dbd88aff59296a2f5e83258ebc2dff7459e206b537dbc8e` |
| 53 | `theorem` | [cauchySeq_of_edist_le_geometric](../../../../FunctionalAnalysis/SpecificLimitsBasicTendstoInverseAtTopNhdsZeroNat.lean/declarations/cauchyseq-of-edist-le-geometric.md) | 410 | `result-track:941df229928090c083dcc8528103bf5a69e71b15b7b8a4bf8fb4d829688ca715` |
| 54 | `theorem` | [edist_le_of_edist_le_geometric_of_tendsto](../../../../FunctionalAnalysis/SpecificLimitsBasicTendstoInverseAtTopNhdsZeroNat.lean/declarations/edist-le-of-edist-le-geometric-of-tendsto-source-edition-2.md) | 419 | `result-track:4b888c1238f68979d7a6ac61471aa761efdc296e7736f39e3316d1d461da3226` |
| 55 | `theorem` | [edist_le_of_edist_le_geometric_of_tendsto₀](../../../../FunctionalAnalysis/SpecificLimitsBasicTendstoInverseAtTopNhdsZeroNat.lean/declarations/edist-le-of-edist-le-geometric-of-tendsto.md) | 427 | `result-track:44accb4d0bd7e5ab30f7b99a10c3f8f85721fcb1617b0719f19742d34b6205ba` |
| 56 | `theorem` | [cauchySeq_of_edist_le_geometric_two](../../../../FunctionalAnalysis/SpecificLimitsBasicTendstoInverseAtTopNhdsZeroNat.lean/declarations/cauchyseq-of-edist-le-geometric-two.md) | 440 | `result-track:fa956688782ac29c2438b09d8f298cf61b6e13e8756e7d960e64b4c325ed284c` |
| 57 | `theorem` | [edist_le_of_edist_le_geometric_two_of_tendsto](../../../../FunctionalAnalysis/SpecificLimitsBasicTendstoInverseAtTopNhdsZeroNat.lean/declarations/edist-le-of-edist-le-geometric-two-of-tendsto-source-edition-2.md) | 448 | `result-track:d3973ec8dbdce3b5ca48bbc7ce740926466e01cdd0581c41baa247bc640694e8` |
| 58 | `theorem` | [edist_le_of_edist_le_geometric_two_of_tendsto₀](../../../../FunctionalAnalysis/SpecificLimitsBasicTendstoInverseAtTopNhdsZeroNat.lean/declarations/edist-le-of-edist-le-geometric-two-of-tendsto.md) | 457 | `result-track:30737073b8e9c510bc8ce7226f1e24fcc654dcd061561a2d7c6b834c5e8cb4ea` |
| 59 | `theorem` | [aux_hasSum_of_le_geometric](../../../../FunctionalAnalysis/SpecificLimitsBasicTendstoInverseAtTopNhdsZeroNat.lean/declarations/aux-hassum-of-le-geometric.md) | 472 | `result-track:67da47f4e811a6c6b7b54a8ff4c646124ae76880c8f6318b762c40bbd87f047a` |
| 60 | `theorem` | [cauchySeq_of_le_geometric](../../../../FunctionalAnalysis/SpecificLimitsBasicTendstoInverseAtTopNhdsZeroNat.lean/declarations/cauchyseq-of-le-geometric.md) | 482 | `result-track:f6a8016ab9ba51ef29320a44d2cd12d050076aceb440a6ff093a0c504f99a0e5` |
| 61 | `theorem` | [dist_le_of_le_geometric_of_tendsto₀](../../../../FunctionalAnalysis/SpecificLimitsBasicTendstoInverseAtTopNhdsZeroNat.lean/declarations/dist-le-of-le-geometric-of-tendsto.md) | 487 | `result-track:35eb539da8f4c3d59f3d99929915108e6cf1aa922c8c48a2c0372840971f7f07` |
| 62 | `theorem` | [dist_le_of_le_geometric_of_tendsto](../../../../FunctionalAnalysis/SpecificLimitsBasicTendstoInverseAtTopNhdsZeroNat.lean/declarations/dist-le-of-le-geometric-of-tendsto-source-edition-2.md) | 494 | `result-track:7ba6518deab2b55348e010c535679a55d0790836f9d1f4ccd3b8df5adabe16ff` |
| 63 | `theorem` | [cauchySeq_of_le_geometric_two](../../../../FunctionalAnalysis/SpecificLimitsBasicTendstoInverseAtTopNhdsZeroNat.lean/declarations/cauchyseq-of-le-geometric-two.md) | 508 | `result-track:e25aab1a8353712f5a8cbc30de72c5ba80ff6891288d36769821c4c280011a7e` |
| 64 | `theorem` | [dist_le_of_le_geometric_two_of_tendsto₀](../../../../FunctionalAnalysis/SpecificLimitsBasicTendstoInverseAtTopNhdsZeroNat.lean/declarations/dist-le-of-le-geometric-two-of-tendsto-source-edition-2.md) | 513 | `result-track:a5ffc92b7965496e1dd3d89e312a47466ed0d6160bd9b6b69d168c9683232e31` |
| 65 | `theorem` | [dist_le_of_le_geometric_two_of_tendsto](../../../../FunctionalAnalysis/SpecificLimitsBasicTendstoInverseAtTopNhdsZeroNat.lean/declarations/dist-le-of-le-geometric-two-of-tendsto.md) | 519 | `result-track:9eed6c2b38e4923d137a0688c620c00b8851f797c07be13f09f35a7127c2e037` |
| 66 | `theorem` | [summable_one_div_pow_of_le](../../../../FunctionalAnalysis/SpecificLimitsBasicTendstoInverseAtTopNhdsZeroNat.lean/declarations/summable-one-div-pow-of-le.md) | 532 | `result-track:079fcf49769d31d7b8c08ec0fc78498facadf3dd563ee0f57f9ab7513e56061c` |
| 67 | `def` | [posSumOfEncodable](../../../../FunctionalAnalysis/SpecificLimitsBasicTendstoInverseAtTopNhdsZeroNat.lean/declarations/possumofencodable.md) | 545 | `declaration-track:0bf40b55b3801956dda9727ce00819b6957bc6712837db588837e970d3ddda09` |
| 68 | `theorem` | [Set.Countable.exists_pos_hasSum_le](../../../../FunctionalAnalysis/SpecificLimitsBasicTendstoInverseAtTopNhdsZeroNat.lean/declarations/set-countable-exists-pos-hassum-le.md) | 558 | `result-track:c104d312726190e5b22cb83eafd7b76aee4c6c6139bd7cdef7b792d1020e9bb7` |
| 69 | `theorem` | [Set.Countable.exists_pos_forall_sum_le](../../../../FunctionalAnalysis/SpecificLimitsBasicTendstoInverseAtTopNhdsZeroNat.lean/declarations/set-countable-exists-pos-forall-sum-le.md) | 569 | `result-track:70608d93db1036e133a5894be645b1840ab24645e5bdd3eb8952da0e3997f14e` |
| 70 | `theorem` | [exists_pos_sum_of_countable](../../../../FunctionalAnalysis/SpecificLimitsBasicTendstoInverseAtTopNhdsZeroNat.lean/declarations/exists-pos-sum-of-countable-source-edition-2.md) | 581 | `result-track:3029189c183d07dfee0629ae5b2516073994aeffe03063fcad2471ff8a96336f` |
| 71 | `theorem` | [exists_pos_sum_of_countable](../../../../FunctionalAnalysis/SpecificLimitsBasicTendstoInverseAtTopNhdsZeroNat.lean/declarations/exists-pos-sum-of-countable.md) | 595 | `result-track:131e7e5542bddaf3caede5b902c5b7c342e8689e6a81ee3872f740a68e15e745` |
| 72 | `theorem` | [exists_pos_sum_of_countable'](../../../../FunctionalAnalysis/SpecificLimitsBasicTendstoInverseAtTopNhdsZeroNat.lean/declarations/exists-pos-sum-of-countable-source-edition-3.md) | 602 | `result-track:c3c0c763b823068ac9feb03022f4d8d4e0b589b61c6392c82e447a53fe9b9a44` |
| 73 | `theorem` | [exists_pos_tsum_mul_lt_of_countable](../../../../FunctionalAnalysis/SpecificLimitsBasicTendstoInverseAtTopNhdsZeroNat.lean/declarations/exists-pos-tsum-mul-lt-of-countable.md) | 607 | `result-track:235ae587554beda480867bc01eef442e4e932ad438e92f09b30793f4d61deba4` |
| 74 | `theorem` | [factorial_tendsto_atTop](../../../../FunctionalAnalysis/SpecificLimitsBasicTendstoInverseAtTopNhdsZeroNat.lean/declarations/factorial-tendsto-attop.md) | 625 | `result-track:34e19c534aa99f5f902372f79db397d39126044eab98b36719c278a3c38841b2` |
| 75 | `theorem` | [tendsto_factorial_div_pow_self_atTop](../../../../FunctionalAnalysis/SpecificLimitsBasicTendstoInverseAtTopNhdsZeroNat.lean/declarations/tendsto-factorial-div-pow-self-attop.md) | 628 | `result-track:52e51cf1e9a660a3eb6d864cecffe137eba1b36f801e02a5b9f951de774eff3c` |
| 76 | `theorem` | [tendsto_nat_floor_atTop](../../../../FunctionalAnalysis/SpecificLimitsBasicTendstoInverseAtTopNhdsZeroNat.lean/declarations/tendsto-nat-floor-attop.md) | 658 | `result-track:32e9193338bcaa96baa2d90ec02a337fd44ab5c0aa358219e4724f5bd879543f` |
| 77 | `lemma` | [tendsto_nat_ceil_atTop](../../../../FunctionalAnalysis/SpecificLimitsBasicTendstoInverseAtTopNhdsZeroNat.lean/declarations/tendsto-nat-ceil-attop.md) | 663 | `result-track:ff9e2e8c304858f333ea84563bfddf39cc6401dccf714341b7372abf3dbbe1df` |
| 78 | `lemma` | [tendsto_nat_floor_mul_atTop](../../../../FunctionalAnalysis/SpecificLimitsBasicTendstoInverseAtTopNhdsZeroNat.lean/declarations/tendsto-nat-floor-mul-attop.md) | 669 | `result-track:a59e2efee2c1944380a524758c6ee100b1898dfc4f0b54116a78d866536f93f3` |
| 79 | `theorem` | [tendsto_nat_floor_mul_div_atTop](../../../../FunctionalAnalysis/SpecificLimitsBasicTendstoInverseAtTopNhdsZeroNat.lean/declarations/tendsto-nat-floor-mul-div-attop.md) | 678 | `result-track:a2a367d48f45b369bfcc922c74d8fd4bd7c4d1777011a8002c926f58c2322230` |
| 80 | `theorem` | [tendsto_nat_floor_div_atTop](../../../../FunctionalAnalysis/SpecificLimitsBasicTendstoInverseAtTopNhdsZeroNat.lean/declarations/tendsto-nat-floor-div-attop.md) | 693 | `result-track:6c13aca8589840265db5294579d3941939db5629175b10c67d617edbebaee9e2` |
| 81 | `theorem` | [tendsto_nat_ceil_mul_div_atTop](../../../../FunctionalAnalysis/SpecificLimitsBasicTendstoInverseAtTopNhdsZeroNat.lean/declarations/tendsto-nat-ceil-mul-div-attop.md) | 696 | `result-track:f71c17065e0ec2ed5ab0ccc8febf8eeb93af005f9f86f140cc20112e1a7ddaa8` |
| 82 | `theorem` | [tendsto_nat_ceil_div_atTop](../../../../FunctionalAnalysis/SpecificLimitsBasicTendstoInverseAtTopNhdsZeroNat.lean/declarations/tendsto-nat-ceil-div-attop.md) | 709 | `result-track:180f3c520bdd29d9ff0481a526a2abbede1a17d638f50211420b86e32d849706` |
| 83 | `lemma` | [Nat.tendsto_div_const_atTop](../../../../FunctionalAnalysis/SpecificLimitsBasicTendstoInverseAtTopNhdsZeroNat.lean/declarations/nat-tendsto-div-const-attop.md) | 712 | `result-track:efe8bdbda9fd585eec5dd017c8b42dcb1e38f18ec8dd13b38e440e13f33b1366` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=64d867d224be99c85bb2300d79d0136845c5dfcc393e5c12e640b46fc4cd747e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Basic/Variantcbf9b6b47e6ee6b2962fb2f16ba49b7e005e9a93c0adc1244cc770c34f527315.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Basic/Variantcbf9b6b47e6ee6b2962fb2f16ba49b7e005e9a93c0adc1244cc770c34f527315.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
