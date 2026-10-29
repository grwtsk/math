# Verification target: BKLNWNamespaced Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ffde19a257af38792c1e302adf6bb58acc6c98a4",
  "lexical_observation_count": 107,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/BKLNW/Variantb86fd97d6d3f5a548080bdb3246099e1f385fa14bd7b0cf76a7a9123f00a2831.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/BKLNWNamespacedEdition1.lean/index.md) · [Full source](../../../../GeneralTopology/BKLNWNamespacedEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ffde19a257af38792c1e302adf6bb58acc6c98a4`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/BKLNW/Variantb86fd97d6d3f5a548080bdb3246099e1f385fa14bd7b0cf76a7a9123f00a2831.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/BKLNW/Variantb86fd97d6d3f5a548080bdb3246099e1f385fa14bd7b0cf76a7a9123f00a2831.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Rat.Cast.OfScientific` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum.Prime` — import line 7; external provider; requires a separately pinned dependency.
- `PrimeNumberTheoremAnd.IEANTN.FioriKadiriSwidinsky.FioriKadiriSwidinsky` — import line 8; external provider; requires a separately pinned dependency.
- `PrimeNumberTheoremAnd.IEANTN.SecondaryDefinitions` — import line 9; external provider; requires a separately pinned dependency.
- `PrimeNumberTheoremAnd.IEANTN.CostaPereira` — import line 10; external provider; requires a separately pinned dependency.
- `PrimeNumberTheoremAnd.IEANTN.RosserSchoenfeld.RosserSchoenfeldPrime` — import line 11; external provider; requires a separately pinned dependency.
- `PrimeNumberTheoremAnd.IEANTN.BKLNW.BKLNW_app` — import line 12; external provider; requires a separately pinned dependency.
- `PrimeNumberTheoremAnd.IEANTN.BKLNW.BKLNW_tables` — import line 13; external provider; requires a separately pinned dependency.
- `PrimeNumberTheoremAnd.IEANTN.Buthe` — import line 14; external provider; requires a separately pinned dependency.
- `PrimeNumberTheoremAnd.IEANTN.LogTables` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Pre_inputs](../../../../GeneralTopology/BKLNWNamespacedEdition1.lean/declarations/pre-inputs.md) | 37 | `declaration-track:2ea6d8c546c090ce436e782f7e3a5a5c4df6ab23a42ad705b246513ec6000d74` |
| 2 | `lemma` | [Pre_inputs.epsilon_nonneg](../../../../GeneralTopology/BKLNWNamespacedEdition1.lean/declarations/pre-inputs-epsilon-nonneg.md) | 44 | `result-track:8732f80498f68aa30b3934d6f2d8b351b79b5cc91cd5f6b41aa0471c62bbc19e` |
| 3 | `theorem` | [buthe_eq_1_7](../../../../GeneralTopology/BKLNWNamespacedEdition1.lean/declarations/buthe-eq-1-7.md) | 56 | `result-track:a667dcb2e9647d420636f27c69a0d76bda1fd8fe1aa7b857bb921f06c7e839c2` |
| 4 | `def` | [Pre_inputs.default](../../../../GeneralTopology/BKLNWNamespacedEdition1.lean/declarations/pre-inputs-default.md) | 75 | `declaration-track:6cf7b2a2a9500f92b895c69fc90d256c523d22b2140336e1408ee4089fae112f` |
| 5 | `theorem` | [lemma_11a](../../../../GeneralTopology/BKLNWNamespacedEdition1.lean/declarations/lemma-11a.md) | 90 | `result-track:56a0d6de97fd486c42611b4b3dcf1b577ec61a692e7699e5a3922e919c762e9a` |
| 6 | `theorem` | [lemma_11b](../../../../GeneralTopology/BKLNWNamespacedEdition1.lean/declarations/lemma-11b.md) | 105 | `result-track:60807b376c8d3c561b449989886f92936f1bbb03d46ad2eee3b1bfadfa07e9e9` |
| 7 | `theorem` | [thm_1a](../../../../GeneralTopology/BKLNWNamespacedEdition1.lean/declarations/thm-1a.md) | 149 | `result-track:f5d1a839c0974a23502a601668ae290b7caf1bbee7c9bbe917ecafb3c947fef8` |
| 8 | `theorem` | [thm_1a_crit](../../../../GeneralTopology/BKLNWNamespacedEdition1.lean/declarations/thm-1a-crit.md) | 172 | `result-track:25cd05cabb156c77335d967763675313df1eb973cae50e3649d5664abe26327e` |
| 9 | `theorem` | [thm_1a_table](../../../../GeneralTopology/BKLNWNamespacedEdition1.lean/declarations/thm-1a-table.md) | 187 | `result-track:0b6fd40a45572642fd4f9c9b88ae810016442a5ff2823abdc487954f2c5cc190` |
| 10 | `theorem` | [cor_2_1](../../../../GeneralTopology/BKLNWNamespacedEdition1.lean/declarations/cor-2-1.md) | 198 | `result-track:a9e51d836fc622222424e96ae60621e5cf4b546c417592db956790019026d8bf` |
| 11 | `structure` | [Inputs](../../../../GeneralTopology/BKLNWNamespacedEdition1.lean/declarations/inputs.md) | 214 | `declaration-track:47945414e2693e09d8cc3b65e24bfc3d9f0f623be3481b30177f1c0af26e0147` |
| 12 | `def` | [Inputs.default](../../../../GeneralTopology/BKLNWNamespacedEdition1.lean/declarations/inputs-default.md) | 223 | `declaration-track:3757d43c5a79e4618d93766aad53f15db6b3dab7bec7882a57f4cf7e9131a9a8` |
| 13 | `def` | [f](../../../../GeneralTopology/BKLNWNamespacedEdition1.lean/declarations/f.md) | 243 | `declaration-track:f19ebfbfe3348aef5d542f4ad6bc99ddda2b6668e56528558d990189febe6b04` |
| 14 | `theorem` | [prop_3_sub_1](../../../../GeneralTopology/BKLNWNamespacedEdition1.lean/declarations/prop-3-sub-1.md) | 256 | `result-track:1ce99129c6811a75bf120e9567a19d59373832b5b7bff1c820b068bf44631bad` |
| 15 | `theorem` | [prop_3_sub_2](../../../../GeneralTopology/BKLNWNamespacedEdition1.lean/declarations/prop-3-sub-2.md) | 310 | `result-track:81ae216e9f89e02d0aff7b8b9b989673294e81b6bf04909d2a5142bc5629daae` |
| 16 | `def` | [u](../../../../GeneralTopology/BKLNWNamespacedEdition1.lean/declarations/u.md) | 331 | `declaration-track:0ec8eedcb7565dab1f1d9119f8ac7462f06208f78eb12096d6a71b8ccf0cbc9f` |
| 17 | `theorem` | [prop_3_sub_3](../../../../GeneralTopology/BKLNWNamespacedEdition1.lean/declarations/prop-3-sub-3.md) | 340 | `result-track:18d9087fb4c8d245ea78e7b2280950685a951813f62cd09bca381a9e125be9f8` |
| 18 | `def` | [summand](../../../../GeneralTopology/BKLNWNamespacedEdition1.lean/declarations/summand.md) | 348 | `declaration-track:fdfd2b2ccb4b0a2e05639233a738ec531048cab6afa93577b25c0759cc68c0b9` |
| 19 | `lemma` | [summand_pos.aux](../../../../GeneralTopology/BKLNWNamespacedEdition1.lean/declarations/summand-pos-aux.md) | 351 | `result-track:083335e92e7f69b53b03861a265146c3ab5633c44d57f2fdf3b675aff8d892e4` |
| 20 | `lemma` | [summand_pos](../../../../GeneralTopology/BKLNWNamespacedEdition1.lean/declarations/summand-pos.md) | 355 | `result-track:061e6186978c036b4f7295aca27fe564dac09ab3315482341661d65e376ab834` |
| 21 | `lemma` | [summand_mono](../../../../GeneralTopology/BKLNWNamespacedEdition1.lean/declarations/summand-mono.md) | 358 | `result-track:367a781bc75e8192c9faf91fcdd8dbeabeccb3fddc6b4c62351a33a1a09e6312` |
| 22 | `lemma` | [sum_gt.aux](../../../../GeneralTopology/BKLNWNamespacedEdition1.lean/declarations/sum-gt-aux.md) | 363 | `result-track:cf84dac7ecf0de4b283b14cac8cb9c6ed5a5c7da0863648073fa1a3d3034ba81` |
| 23 | `lemma` | [sum_gt](../../../../GeneralTopology/BKLNWNamespacedEdition1.lean/declarations/sum-gt.md) | 389 | `result-track:eff1ba3a0f73485b1d0e5778c066ff32b89fdf779b09e712560248b23a39665f` |
| 24 | `lemma` | [u_diff_factored](../../../../GeneralTopology/BKLNWNamespacedEdition1.lean/declarations/u-diff-factored.md) | 400 | `result-track:c4d9f7fdbd01ddaa6ec643989f6062316b6ee2a434ea733997fc437808e05329` |
| 25 | `theorem` | [prop_3_sub_4](../../../../GeneralTopology/BKLNWNamespacedEdition1.lean/declarations/prop-3-sub-4.md) | 428 | `result-track:fbfd5de1eb0386a6fc21690c10f0041430e3e09d932c3425a500125f38e40278` |
| 26 | `theorem` | [prop_3_sub_5](../../../../GeneralTopology/BKLNWNamespacedEdition1.lean/declarations/prop-3-sub-5.md) | 440 | `result-track:38b9d441087ef93c8b54f58b8288f166fcc0f08b6e750bbddda1405a110f58e0` |
| 27 | `theorem` | [prop_3_sub_6](../../../../GeneralTopology/BKLNWNamespacedEdition1.lean/declarations/prop-3-sub-6.md) | 451 | `result-track:c2b2a43d0bd339ce66dc347289f50113f5f5c78be93a87642116c6b7b1a9a864` |
| 28 | `theorem` | [prop_3_sub_7](../../../../GeneralTopology/BKLNWNamespacedEdition1.lean/declarations/prop-3-sub-7.md) | 492 | `result-track:00fa74700f69288fb03ae17166c90c8443a5c92ab11c76bfe7f61f89884f1cc2` |
| 29 | `theorem` | [prop_3_sub_8](../../../../GeneralTopology/BKLNWNamespacedEdition1.lean/declarations/prop-3-sub-8.md) | 526 | `result-track:1a7f35ad0154986c0e0f4bd52429cf8045906d180da686c8d5b6796f5218ef55` |
| 30 | `theorem` | [prop_3](../../../../GeneralTopology/BKLNWNamespacedEdition1.lean/declarations/prop-3.md) | 552 | `result-track:a4c90b700fbc9e0bd4f9f1e42e8a0e7ee826132aeb7030a02541485f3f8cd740` |
| 31 | `theorem` | [cor_3_1](../../../../GeneralTopology/BKLNWNamespacedEdition1.lean/declarations/cor-3-1.md) | 590 | `result-track:b0a63b07e0af6733a34b8eb5c9ca0c6ebe44a3520b1ef8645f16cbece9a54e3a` |
| 32 | `theorem` | [prop_4_a](../../../../GeneralTopology/BKLNWNamespacedEdition1.lean/declarations/prop-4-a.md) | 651 | `result-track:439623e441c46dc11ea7db7341311b4e970096534398318cab8af7a755e32dee` |
| 33 | `theorem` | [prop_4_b](../../../../GeneralTopology/BKLNWNamespacedEdition1.lean/declarations/prop-4-b.md) | 687 | `result-track:272ddf8a2547db7d6a0f42a17492a2ca6c7a6438b79b056c79f5e20237dc22d0` |
| 34 | `def` | [Inputs.a₁](../../../../GeneralTopology/BKLNWNamespacedEdition1.lean/declarations/inputs-a.md) | 701 | `declaration-track:b57c41f792e6622afd54b72b825f5ac2ccbcc79d950670cad7f679ee647d3e86` |
| 35 | `def` | [Inputs.a₂](../../../../GeneralTopology/BKLNWNamespacedEdition1.lean/declarations/inputs-a-source-edition-2.md) | 713 | `declaration-track:c310997309f83a04e65df3725db1aed6d6ca608e2fe7f6f8f8fdcb79cd947635` |
| 36 | `theorem` | [thm_5](../../../../GeneralTopology/BKLNWNamespacedEdition1.lean/declarations/thm-5.md) | 751 | `result-track:49f205b57d809853c10f4174345af0fb86bb365fe8a0429703af9711b23716ef` |
| 37 | `def` | [a₁](../../../../GeneralTopology/BKLNWNamespacedEdition1.lean/declarations/a-source-edition-2.md) | 764 | `declaration-track:d29283f5667e89b736f186bbb316a22ab28b743e8800619fa045ce690efc9371` |
| 38 | `def` | [a₂](../../../../GeneralTopology/BKLNWNamespacedEdition1.lean/declarations/a.md) | 766 | `declaration-track:55f4e3e6d3a58cc7440b0d3cb844d955ceb309e035996b56492009c6669913e9` |
| 39 | `theorem` | [cor_5_1](../../../../GeneralTopology/BKLNWNamespacedEdition1.lean/declarations/cor-5-1.md) | 775 | `result-track:d47a9954c62a7f2274d20ce9b528ba47419d76e9696501ce2454eb5ee17337f5` |
| 40 | `def` | [table_cor_5_1](../../../../GeneralTopology/BKLNWNamespacedEdition1.lean/declarations/table-cor-5-1.md) | 779 | `declaration-track:a4e06f9959dc90291c20927405681456e666a5fb497f7e74dd0d20009e97c1dd` |
| 41 | `lemma` | [g_decreasing_interval](../../../../GeneralTopology/BKLNWNamespacedEdition1.lean/declarations/g-decreasing-interval.md) | 813 | `result-track:9a657e0979012f7af90ac5daf040f0701d31beee6edc54915667e1a309566679` |
| 42 | `theorem` | [lem_6](../../../../GeneralTopology/BKLNWNamespacedEdition1.lean/declarations/lem-6.md) | 857 | `result-track:0590ccd246f5b3a6f95cfdd418098d09154aa47cdf9d45fc5a5a5d6798dc39ba` |
| 43 | `theorem` | [cor_14_1](../../../../GeneralTopology/BKLNWNamespacedEdition1.lean/declarations/cor-14-1.md) | 905 | `result-track:727f57d2bdeef12a3e76e1d3a624f19dded64ee7edb3e081a6da75966d3de4eb` |
| 44 | `def` | [B](../../../../GeneralTopology/BKLNWNamespacedEdition1.lean/declarations/b.md) | 1048 | `declaration-track:93d65eadabde60c2fe12a1dd5b7c8fab3f4a42eadc82b3c8335102fc6608f3b5` |
| 45 | `def` | [Btilde](../../../../GeneralTopology/BKLNWNamespacedEdition1.lean/declarations/btilde.md) | 1051 | `declaration-track:dfacd2675f998b50157127f6ceb890f408517fc15a0ab4b204c76436d0bd3d55` |
| 46 | `lemma` | [bklnw_lemma_8_term_eq](../../../../GeneralTopology/BKLNWNamespacedEdition1.lean/declarations/bklnw-lemma-8-term-eq.md) | 1054 | `result-track:527cc4ebd526569cc31caeeebf296431e7aed4b0909e4f15c907ae37b8e57e0c` |
| 47 | `lemma` | [bklnw_lemma_8_bound_le_B](../../../../GeneralTopology/BKLNWNamespacedEdition1.lean/declarations/bklnw-lemma-8-bound-le-b.md) | 1074 | `result-track:3098a00b502a31a023abde45e86b0423eb962806959bee634c51021dfbd73bea` |
| 48 | `theorem` | [bklnw_lemma_8](../../../../GeneralTopology/BKLNWNamespacedEdition1.lean/declarations/bklnw-lemma-8.md) | 1136 | `result-track:18d05076900033afcca846ca9c0a23ed6a198d60df34df87707eb189e5c19cde` |
| 49 | `lemma` | [bklnw_eq_3_11_deriv_nonpos](../../../../GeneralTopology/BKLNWNamespacedEdition1.lean/declarations/bklnw-eq-3-11-deriv-nonpos.md) | 1168 | `result-track:e3e493e6af23110d0d3df51cea6e71788d2fb91d9d19419f9e79f522ccf1716c` |
| 50 | `lemma` | [bklnw_eq_3_11_antitone](../../../../GeneralTopology/BKLNWNamespacedEdition1.lean/declarations/bklnw-eq-3-11-antitone.md) | 1189 | `result-track:01a16b35650e17464ca60dc01bb238a0fb304500293d4067cf7768997223cb91` |
| 51 | `lemma` | [bklnw_eq_3_11_term_le](../../../../GeneralTopology/BKLNWNamespacedEdition1.lean/declarations/bklnw-eq-3-11-term-le.md) | 1197 | `result-track:1e421c5cd3fda7de18dffe21fac0f123cfd87276d8ea0d58f6d23d18e672e4df` |
| 52 | `theorem` | [bklnw_eq_3_11](../../../../GeneralTopology/BKLNWNamespacedEdition1.lean/declarations/bklnw-eq-3-11.md) | 1224 | `result-track:e4ab8b04db3a9a354c80668587421d4404080d5a399a2a533bd1c30d5a7957da` |
| 53 | `abbrev` | [K](../../../../GeneralTopology/BKLNWNamespacedEdition1.lean/declarations/k.md) | 1262 | `declaration-track:873d80cdf9b455b7f61954fada2231841bfc9a8e1cf083cf7e480ebe6c447e71` |
| 54 | `abbrev` | [table_10_entries](../../../../GeneralTopology/BKLNWNamespacedEdition1.lean/declarations/table-10-entries.md) | 1265 | `declaration-track:753911d3e95012acd69ff9664ce419445b906a814434d354d924cc503d7c6bd0` |
| 55 | `def` | [table_10_bs](../../../../GeneralTopology/BKLNWNamespacedEdition1.lean/declarations/table-10-bs.md) | 1268 | `declaration-track:ceb434b4082aba803553235556aed9615eb0bfaec92a6ccc8c50e2142e4cfa0e` |
| 56 | `def` | [table_10_next](../../../../GeneralTopology/BKLNWNamespacedEdition1.lean/declarations/table-10-next.md) | 1271 | `declaration-track:b71c34847f466a73b5f4e20305948eae88a164472e99539969b32627490dc8bc` |
| 57 | `def` | [B_8_1](../../../../GeneralTopology/BKLNWNamespacedEdition1.lean/declarations/b-8-1-source-edition-2.md) | 1274 | `declaration-track:735c2dd325946ed75d5a2118b6a51cb443bfa5340e1155b02af05a90ff370dbe` |
| 58 | `def` | [B_8_1'](../../../../GeneralTopology/BKLNWNamespacedEdition1.lean/declarations/b-8-1.md) | 1277 | `declaration-track:2357ee71e707ebf6e32a65d591867d9795996bbd83fe47f6a236116b4b82c999` |
| 59 | `theorem` | [bklnw_cor_8_1a](../../../../GeneralTopology/BKLNWNamespacedEdition1.lean/declarations/bklnw-cor-8-1a.md) | 1307 | `result-track:f5cf75904479b3301f1aa5c86c7bef3723da9e66544ad257b0bea7c51d4069a4` |
| 60 | `theorem` | [bklnw_table_10_verification](../../../../GeneralTopology/BKLNWNamespacedEdition1.lean/declarations/bklnw-table-10-verification.md) | 1364 | `result-track:8c3e243b4ea34b1ed4bd50589d31fb571a3bec2bd20cf62f5038dd4dc542ac22` |
| 61 | `lemma` | [table_10_entries_ge_20](../../../../GeneralTopology/BKLNWNamespacedEdition1.lean/declarations/table-10-entries-ge-20.md) | 1367 | `result-track:0f78c45142955f0b2161bfc4400665c0f16779715a3b5f10d90629d2915cb24a` |
| 62 | `lemma` | [table_10_next_eq_min'](../../../../GeneralTopology/BKLNWNamespacedEdition1.lean/declarations/table-10-next-eq-min.md) | 1376 | `result-track:8198d6f221a41cce464130f20bf7bc6a6dc4fd679a80485edc3ff924f715100d` |
| 63 | `lemma` | [table_10_next_gt](../../../../GeneralTopology/BKLNWNamespacedEdition1.lean/declarations/table-10-next-gt.md) | 1380 | `result-track:8d3bbc42652336c15918d62b29f7d4feee6a424f61c4ec8d770e0896d46e29d9` |
| 64 | `lemma` | [table_10_entry_lt_K](../../../../GeneralTopology/BKLNWNamespacedEdition1.lean/declarations/table-10-entry-lt-k.md) | 1388 | `result-track:d16b1e4662e5c4cf322d4f9fa23114d883f9808f86feb82b64ac985711e579ad` |
| 65 | `lemma` | [table_10_coverage](../../../../GeneralTopology/BKLNWNamespacedEdition1.lean/declarations/table-10-coverage.md) | 1397 | `result-track:672ab8eb3a0ff49c878535d3185b154bf0eafda9c73b6327b00e271002700931` |
| 66 | `theorem` | [bklnw_cor_8_1b](../../../../GeneralTopology/BKLNWNamespacedEdition1.lean/declarations/bklnw-cor-8-1b.md) | 1445 | `result-track:233770ec0f065bb737752ef6a4c429f36e3f0debb137c29a60abdd7ae34b97bb` |
| 67 | `theorem` | [bklnw_table_11_verification](../../../../GeneralTopology/BKLNWNamespacedEdition1.lean/declarations/bklnw-table-11-verification.md) | 1493 | `result-track:182fe8102e9ad60db8379dc32be0bda578e6a73fab6705f476739db61dbde2af` |
| 68 | `theorem` | [bklnw_eq_3_17](../../../../GeneralTopology/BKLNWNamespacedEdition1.lean/declarations/bklnw-eq-3-17.md) | 1511 | `result-track:d258f25935558c7b6778796bcfca60650e0881ea147231aec7733aecacda600a` |
| 69 | `theorem` | [bklnw_eq_3_18](../../../../GeneralTopology/BKLNWNamespacedEdition1.lean/declarations/bklnw-eq-3-18.md) | 1521 | `result-track:54bdd9c7630d572f96172b505b4df7b56e5eb20788f3739879ecb3693aa29ea3` |
| 70 | `theorem` | [bklnw_lemma_9](../../../../GeneralTopology/BKLNWNamespacedEdition1.lean/declarations/bklnw-lemma-9.md) | 1552 | `result-track:c2a4ed33dd816f3a563db311513e001908fff41feaac9092691df5974598f3a0` |
| 71 | `def` | [table_from_buthe](../../../../GeneralTopology/BKLNWNamespacedEdition1.lean/declarations/table-from-buthe.md) | 1602 | `declaration-track:390b9483247f0ff51bca467ec69a433ffd88f9fea66d7a14a5d5ba76bd44425b` |
| 72 | `theorem` | [bklnw_table_from_buthe](../../../../GeneralTopology/BKLNWNamespacedEdition1.lean/declarations/bklnw-table-from-buthe.md) | 1619 | `result-track:6fcfead6cad4cd2cca203034de4c18de259f59a60a8c11066265d92698e4fe80` |
| 73 | `def` | [C_bk](../../../../GeneralTopology/BKLNWNamespacedEdition1.lean/declarations/c-bk.md) | 1627 | `declaration-track:91292491cf759a93521dc357f165d1ee31a1a70b8a9af484d1e52249bc9b9d34` |
| 74 | `lemma` | [exp_half_mem_Icc_of_exp_mem](../../../../GeneralTopology/BKLNWNamespacedEdition1.lean/declarations/exp-half-mem-icc-of-exp-mem.md) | 1630 | `result-track:3d6c7c5b2da1501e8746dd3a10b920286ea0759054dc94220990ebf1e73b11dd` |
| 75 | `lemma` | [table_from_buthe_cC_nonneg](../../../../GeneralTopology/BKLNWNamespacedEdition1.lean/declarations/table-from-buthe-cc-nonneg.md) | 1657 | `result-track:9b140e31f3c4ac4a82099420a14322eca10ec598d189dbda0c299aceb45f3aeb` |
| 76 | `lemma` | [log_pow_mul_rpow_neg_le_pow_mul_exp_neg](../../../../GeneralTopology/BKLNWNamespacedEdition1.lean/declarations/log-pow-mul-rpow-neg-le-pow-mul-exp-neg.md) | 1667 | `result-track:3a1c351d5ac432a4d10617afea8c99b7cb751c461fdb0593a93dfbbfc0214bfe` |
| 77 | `lemma` | [rpow_one_div_succ_eq_rpow_neg_div_mul](../../../../GeneralTopology/BKLNWNamespacedEdition1.lean/declarations/rpow-one-div-succ-eq-rpow-neg-div-mul.md) | 1683 | `result-track:187308905b535ea1135ae11e99fd40148649ae227327c2d465c13d22f94743f5` |
| 78 | `theorem` | [bklnw_corollary_9_1](../../../../GeneralTopology/BKLNWNamespacedEdition1.lean/declarations/bklnw-corollary-9-1.md) | 1721 | `result-track:df39e142ade145e24ec3c4692c2ee082f29be5cfcd063d4d721be2b28f49253e` |
| 79 | `theorem` | [bklnw_table_12_verification](../../../../GeneralTopology/BKLNWNamespacedEdition1.lean/declarations/bklnw-table-12-verification.md) | 1794 | `result-track:ce374d7e758940853e59be5d8f935e92f6339f475b7acf44e134b6a7a963ce22` |
| 80 | `lemma` | [mem_table_from_buthe_and_bounds_of_mem_table_12](../../../../GeneralTopology/BKLNWNamespacedEdition1.lean/declarations/mem-table-from-buthe-and-bounds-of-mem-table-12.md) | 1804 | `result-track:05b634b320bc59cda058d894ccf791bbb3cc0cc0ca52a9fb1333e8821a760ec7` |
| 81 | `lemma` | [theta_sub_ge_of_cbk_le](../../../../GeneralTopology/BKLNWNamespacedEdition1.lean/declarations/theta-sub-ge-of-cbk-le.md) | 1825 | `result-track:1a611b2701ac03015ecdce91e0807234fa659fbedbdfdfdafb2d7dd4fa415137` |
| 82 | `lemma` | [exp_two_k_le_exp_ten](../../../../GeneralTopology/BKLNWNamespacedEdition1.lean/declarations/exp-two-k-le-exp-ten.md) | 1836 | `result-track:d3e41c9ebd150d8d71b5c27f93757e5395d02e0375b4c0f814f3b4d8cf3877ae` |
| 83 | `lemma` | [le_of_le_of_mem_Icc_one_five](../../../../GeneralTopology/BKLNWNamespacedEdition1.lean/declarations/le-of-le-of-mem-icc-one-five.md) | 1842 | `result-track:d108375adb6cbd7a0280c5cbbca51331cb399ec95e27c5ac66e9e3520a7dfda5` |
| 84 | `def` | [table_12_row_b](../../../../GeneralTopology/BKLNWNamespacedEdition1.lean/declarations/table-12-row-b.md) | 1850 | `declaration-track:1bb34a9fe189a0fd26664f36e3062acfdafbd2fe118255ccf39ce6bbeb9d8780` |
| 85 | `def` | [table_12_row_Cb](../../../../GeneralTopology/BKLNWNamespacedEdition1.lean/declarations/table-12-row-cb.md) | 1854 | `declaration-track:91855e522699c5f5c0731cdeabcc39bc7d015fd154c017917bd8b175bd5a1899` |
| 86 | `def` | [table_12_row_c](../../../../GeneralTopology/BKLNWNamespacedEdition1.lean/declarations/table-12-row-c.md) | 1863 | `declaration-track:1cb06af287d8c104c9182245c331ff8f894f5add60c7e3a021ca846f322f806f` |
| 87 | `def` | [table_12_row_C](../../../../GeneralTopology/BKLNWNamespacedEdition1.lean/declarations/table-12-row-c-source-edition-2.md) | 1867 | `declaration-track:1d52365168a0a2370883921064d25b4a50f3c97fb2d18f6aa6aff77602819689` |
| 88 | `def` | [table_12_row_M](../../../../GeneralTopology/BKLNWNamespacedEdition1.lean/declarations/table-12-row-m.md) | 1871 | `declaration-track:28b4a13d0822c4207543c57461526f68892c04db0cfb3d7a3890874a28854544` |
| 89 | `def` | [bklnw_b_row6](../../../../GeneralTopology/BKLNWNamespacedEdition1.lean/declarations/bklnw-b-row6.md) | 1875 | `declaration-track:963f469c8728a670ac79abf0b331a07f56c33afeb1142bfabae4461a374a82fd` |
| 90 | `def` | [bklnw_Cb_row6](../../../../GeneralTopology/BKLNWNamespacedEdition1.lean/declarations/bklnw-cb-row6.md) | 1876 | `declaration-track:475098449c2240ee181f9331e127dde24530e4c93ed9dfb1253c407270556d40` |
| 91 | `def` | [bklnw_c_row6](../../../../GeneralTopology/BKLNWNamespacedEdition1.lean/declarations/bklnw-c-row6-source-edition-2.md) | 1877 | `declaration-track:7473e658016ae80f4ccf01fc9a7ce05541e06dc11fb2e60a9122ca80b8492ac0` |
| 92 | `def` | [bklnw_C_row6](../../../../GeneralTopology/BKLNWNamespacedEdition1.lean/declarations/bklnw-c-row6.md) | 1878 | `declaration-track:681ccddf0e45cde1bd8ca6e667458fbf94c72253d0c74f8308102c12473a4ab9` |
| 93 | `def` | [bklnw_M_row6](../../../../GeneralTopology/BKLNWNamespacedEdition1.lean/declarations/bklnw-m-row6.md) | 1879 | `declaration-track:a30017f896bf73dc1ac94049c1365279e69b82ba097cede9cd79c5ecc0d338e9` |
| 94 | `def` | [bklnw_b_row14](../../../../GeneralTopology/BKLNWNamespacedEdition1.lean/declarations/bklnw-b-row14.md) | 1881 | `declaration-track:0ecf170cb57c16355ffeb9edf82327610ac1902d03e1aa6455285eebc1d89b49` |
| 95 | `def` | [bklnw_Cb_row14](../../../../GeneralTopology/BKLNWNamespacedEdition1.lean/declarations/bklnw-cb-row14.md) | 1882 | `declaration-track:5a3193ce3696428f08487347f3cc558ae5d9bc52ebf26221c7e78d777327e854` |
| 96 | `def` | [bklnw_c_row14](../../../../GeneralTopology/BKLNWNamespacedEdition1.lean/declarations/bklnw-c-row14-source-edition-2.md) | 1883 | `declaration-track:f04e73552d03056104891257f81f0647097e4350e0b36a759fc2d6f06ac01dcb` |
| 97 | `def` | [bklnw_C_row14](../../../../GeneralTopology/BKLNWNamespacedEdition1.lean/declarations/bklnw-c-row14.md) | 1884 | `declaration-track:e012c9a04414fc57fd9a51f6107490bca7bc16151564205b8fa135ae4fdeffb0` |
| 98 | `def` | [bklnw_M_row14](../../../../GeneralTopology/BKLNWNamespacedEdition1.lean/declarations/bklnw-m-row14.md) | 1885 | `declaration-track:052321fd1e9f68aedc517d9d298e908333e3d39f3fed5d3698a6e26fa90ccae3` |
| 99 | `macro` | [(anonymous)](../../../../GeneralTopology/BKLNWNamespacedEdition1.lean/declarations/macro.md) | 1887 | `declaration-track:68a1510bf2f375bbce660d46275680208cff1fbbe2197e1efd2ffc4329be513a` |
| 100 | `macro` | [(anonymous)](../../../../GeneralTopology/BKLNWNamespacedEdition1.lean/declarations/macro-source-edition-2.md) | 1897 | `declaration-track:e83fa76a99d6c1fd933f4ee2a00dd4c5165709b31311e6e43ae2345f2f9f719c` |
| 101 | `lemma` | [table_12_Cb_bounds](../../../../GeneralTopology/BKLNWNamespacedEdition1.lean/declarations/table-12-cb-bounds.md) | 1907 | `result-track:240e34f26dca60cad8fc2a7a38450e83701aa12d6366db86dcbd3de69288e5ff` |
| 102 | `lemma` | [C_bk_le_Cb_of_M_eq_five_mul_ten_pow_ten](../../../../GeneralTopology/BKLNWNamespacedEdition1.lean/declarations/c-bk-le-cb-of-m-eq-five-mul-ten-pow-ten.md) | 1931 | `result-track:9a95fd1661e7c2a54f0a7a4e5a8cafa8e9a795ae6bf46dfbdaa570b183630697` |
| 103 | `lemma` | [C_bk_le_Cb_of_M_ne_ten_pow_nineteen](../../../../GeneralTopology/BKLNWNamespacedEdition1.lean/declarations/c-bk-le-cb-of-m-ne-ten-pow-nineteen.md) | 1939 | `result-track:620838ea446470c493e94d2e23dac767d2a6eca2c939cedf0e9dd7ea7c89da73` |
| 104 | `theorem` | [bklnw_corollary_9_1_explicit](../../../../GeneralTopology/BKLNWNamespacedEdition1.lean/declarations/bklnw-corollary-9-1-explicit.md) | 1955 | `result-track:7aec9b2ac44ab45c5192756913d47ee3955c4e8f4808f56b21a97403faa78dcf` |
| 105 | `def` | [Table_15](../../../../GeneralTopology/BKLNWNamespacedEdition1.lean/declarations/table-15.md) | 2061 | `declaration-track:3c0efa6ba16b652d6b9be2e87e91163262e58e9e8109333e6f0aed04bb5a52ce` |
| 106 | `theorem` | [thm_1b_table](../../../../GeneralTopology/BKLNWNamespacedEdition1.lean/declarations/thm-1b-table.md) | 2159 | `result-track:040cbec60226e41381c39c5de81e939f0616edc3d975693fd70735559470b43c` |
| 107 | `theorem` | [thm_1b](../../../../GeneralTopology/BKLNWNamespacedEdition1.lean/declarations/thm-1b.md) | 2176 | `result-track:11c3e0f62c0281f5257cb11746331fd04cefc547f8b32b697482e7d31728bf78` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ecf55769e82e501e37dc899c926723792da80ed2e794e5eb5bdd130bb95e5d8c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/BKLNW/Variantb86fd97d6d3f5a548080bdb3246099e1f385fa14bd7b0cf76a7a9123f00a2831.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/BKLNW/Variantb86fd97d6d3f5a548080bdb3246099e1f385fa14bd7b0cf76a7a9123f00a2831.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
