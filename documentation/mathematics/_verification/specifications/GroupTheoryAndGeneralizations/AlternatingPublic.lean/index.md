# Verification target: Alternating Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8b6fd44157ab58b460b68f932b360e762a10660d",
  "lexical_observation_count": 48,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Alternating/Variant966cdfa322077493f52706544b38322e4c73297da2c426008181c615d98c3092.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/AlternatingPublic.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/AlternatingPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8b6fd44157ab58b460b68f932b360e762a10660d`.

Source path: `GRWTSK/Algebra/GroupTheory/Alternating/Variant966cdfa322077493f52706544b38322e4c73297da2c426008181c615d98c3092.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Alternating/Variant966cdfa322077493f52706544b38322e4c73297da2c426008181c615d98c3092.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `example` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/AlternatingPublic.lean/declarations/example.md) | 63 | `declaration-track:a35bfeb0e0579037c23a0d3896cecdf06b0e3ae089f87e2e2037259c425d81d6` |
| 2 | `def` | [alternatingGroup](../../../../GroupTheoryAndGeneralizations/AlternatingPublic.lean/declarations/alternatinggroup.md) | 73 | `declaration-track:145f48cfea0bac6a90187b32650d53daccb1a6c06457ed9d3e372e3b43d91839` |
| 3 | `instance` | [alternatingGroup.instFintype](../../../../GroupTheoryAndGeneralizations/AlternatingPublic.lean/declarations/alternatinggroup-instfintype.md) | 76 | `declaration-track:5073ecaeee978e8020a1529302afc420fc2a42f08c7c19d5fac2528341b6087f` |
| 4 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/AlternatingPublic.lean/declarations/instance.md) | 79 | `declaration-track:1b70022eed6d4717944ce0cfd647394314cdcb6b29adc47d551f9fbfaf1aab3e` |
| 5 | `theorem` | [alternatingGroup_eq_sign_ker](../../../../GroupTheoryAndGeneralizations/AlternatingPublic.lean/declarations/alternatinggroup-eq-sign-ker.md) | 84 | `result-track:a41a3e694bb3a20b3b7bc302a52a2c561ab009f548111e5137f4b1994c522260` |
| 6 | `theorem` | [mem_alternatingGroup](../../../../GroupTheoryAndGeneralizations/AlternatingPublic.lean/declarations/mem-alternatinggroup.md) | 90 | `result-track:afea79620dae1682ae54c4998cb17035fab80baf85416a9e11626cb2809247b5` |
| 7 | `theorem` | [mul_mem_alternatingGroup_of_isSwap](../../../../GroupTheoryAndGeneralizations/AlternatingPublic.lean/declarations/mul-mem-alternatinggroup-of-isswap.md) | 93 | `result-track:de6ff1e9d77a08db03c7aa6a4ff966ffd350ae61d0e0e1794b32c13c4cd678b3` |
| 8 | `theorem` | [prod_list_swap_mem_alternatingGroup_iff_even_length](../../../../GroupTheoryAndGeneralizations/AlternatingPublic.lean/declarations/prod-list-swap-mem-alternatinggroup-iff-even-length.md) | 97 | `result-track:c99c62e4c5bbcb5edd16268ce33b43961ca8098fa83c6600131093a42afeba9d` |
| 9 | `theorem` | [IsThreeCycle.mem_alternatingGroup](../../../../GroupTheoryAndGeneralizations/AlternatingPublic.lean/declarations/isthreecycle-mem-alternatinggroup.md) | 102 | `result-track:aac3edd613dbb6f5ef5b03384e6053c557e10d6576c6656230146b3fdc987867` |
| 10 | `theorem` | [finRotate_bit1_mem_alternatingGroup](../../../../GroupTheoryAndGeneralizations/AlternatingPublic.lean/declarations/finrotate-bit1-mem-alternatinggroup.md) | 106 | `result-track:6cac64f5d23682815cee9259d64454fa2a21a2ddbf57799452c0f5b96339cee2` |
| 11 | `theorem` | [alternatingGroup.index_eq_two](../../../../GroupTheoryAndGeneralizations/AlternatingPublic.lean/declarations/alternatinggroup-index-eq-two.md) | 113 | `result-track:de1b558e361d2a066f5c0c32d40d22c78fed660376fbe21db1ebe57ecb00e866` |
| 12 | `theorem` | [alternatingGroup.index_eq_one](../../../../GroupTheoryAndGeneralizations/AlternatingPublic.lean/declarations/alternatinggroup-index-eq-one.md) | 119 | `result-track:f7a2d5c4b17b4252e9f4978b2ab6669810298a5c1fbe159f363ba912132c1d84` |
| 13 | `def` | [Equiv.altCongrHom](../../../../GroupTheoryAndGeneralizations/AlternatingPublic.lean/declarations/equiv-altcongrhom.md) | 124 | `declaration-track:3f5e8020558ebf684b4fa32242b4fbeb7f4670aae5882ef8d005283123bbc5b5` |
| 14 | `theorem` | [two_mul_nat_card_alternatingGroup](../../../../GroupTheoryAndGeneralizations/AlternatingPublic.lean/declarations/two-mul-nat-card-alternatinggroup.md) | 129 | `result-track:796d56659c2b0c5fb2edacdef863148db65c9bac2228d5e5cd728d311b868190` |
| 15 | `theorem` | [two_mul_card_alternatingGroup](../../../../GroupTheoryAndGeneralizations/AlternatingPublic.lean/declarations/two-mul-card-alternatinggroup.md) | 133 | `result-track:66232a828322a2ff9f640bf85f32b0eada1b11534ba13c60a004c51c23a384c1` |
| 16 | `theorem` | [card_alternatingGroup](../../../../GroupTheoryAndGeneralizations/AlternatingPublic.lean/declarations/card-alternatinggroup.md) | 137 | `result-track:61c249fdb713d299f66c30a2a776b4efc3139c4df521c3e12766013d6281c741` |
| 17 | `theorem` | [nat_card_alternatingGroup](../../../../GroupTheoryAndGeneralizations/AlternatingPublic.lean/declarations/nat-card-alternatinggroup.md) | 141 | `result-track:de5cedb08242ebf9c729fedd3da1d98d174f76ce1cfb9d830b01fef9630ed02c` |
| 18 | `theorem` | [isCyclic_of_card_le_three](../../../../GroupTheoryAndGeneralizations/AlternatingPublic.lean/declarations/iscyclic-of-card-le-three.md) | 147 | `result-track:14cfb2b4270504e2f1e5dbe4ba4cb4a79970620d987af97b67b3b3dca794ad5a` |
| 19 | `theorem` | [isMulCommutative_of_card_le_three](../../../../GroupTheoryAndGeneralizations/AlternatingPublic.lean/declarations/ismulcommutative-of-card-le-three.md) | 156 | `result-track:e328076ecabb4882520bb87bec48f78b817477ca9ed7cdd2a6dbf76363720186` |
| 20 | `instance` | [normal](../../../../GroupTheoryAndGeneralizations/AlternatingPublic.lean/declarations/normal.md) | 165 | `declaration-track:d5bc15bc52e5da633953b1449777f2a5471faea302b5586faefee635a699a75e` |
| 21 | `theorem` | [isConj_of](../../../../GroupTheoryAndGeneralizations/AlternatingPublic.lean/declarations/isconj-of.md) | 168 | `result-track:9b013857321dffd33a3c5565a68344ca1d23ff13305437e6d335309bc3287ab7` |
| 22 | `theorem` | [isThreeCycle_isConj](../../../../GroupTheoryAndGeneralizations/AlternatingPublic.lean/declarations/isthreecycle-isconj.md) | 191 | `result-track:3995f67ce3e0d12862900ff17f69a8e4e594fbc7e77d8c79e87161e4dcfdb36e` |
| 23 | `theorem` | [closure_three_cycles_eq_alternating](../../../../GroupTheoryAndGeneralizations/AlternatingPublic.lean/declarations/closure-three-cycles-eq-alternating.md) | 204 | `result-track:e971e45b75771706cf9d59a28ea98d88f7dd765514bb6df53b25148078a01952` |
| 24 | `theorem` | [isThreeCycle_subset_alternatingGroup](../../../../GroupTheoryAndGeneralizations/AlternatingPublic.lean/declarations/isthreecycle-subset-alternatinggroup.md) | 225 | `result-track:dbe6697a3e2c1db3a424e1a15a3ec7f0c62f413259e3893279aec97bb28a8bb8` |
| 25 | `theorem` | [_root_.alternatingGroup.closure_isThreeCycles_eq_top](../../../../GroupTheoryAndGeneralizations/AlternatingPublic.lean/declarations/root-alternatinggroup-closure-isthreecycles-eq-top.md) | 229 | `result-track:85fdb649237a92123b06e829f16c4db5580953044f3825961b1f0f5473d0568e` |
| 26 | `theorem` | [closure_cycleType_eq_two_two_eq_alternatingGroup](../../../../GroupTheoryAndGeneralizations/AlternatingPublic.lean/declarations/closure-cycletype-eq-two-two-eq-alternatinggroup.md) | 237 | `result-track:ee973265e85a7ee73a33d32245aa95916c3c9a4995bf83648519369a4432c45e` |
| 27 | `theorem` | [cycleType_eq_two_two_subset_alternatingGroup](../../../../GroupTheoryAndGeneralizations/AlternatingPublic.lean/declarations/cycletype-eq-two-two-subset-alternatinggroup.md) | 262 | `result-track:072fc4142b7d3ce169550d3066ed2f833c3c60baec07118e1916893372cbd0b7` |
| 28 | `theorem` | [_root_.alternatingGroup.closure_cycleType_eq_two_two_eq_top](../../../../GroupTheoryAndGeneralizations/AlternatingPublic.lean/declarations/root-alternatinggroup-closure-cycletype-eq-two-two-eq-top.md) | 268 | `result-track:6651ece9eb42efa8c183eed4191176a84a935c94b7cc579156abde06347a4061` |
| 29 | `theorem` | [isThreeCycle_sq_of_three_mem_cycleType_five](../../../../GroupTheoryAndGeneralizations/AlternatingPublic.lean/declarations/isthreecycle-sq-of-three-mem-cycletype-five.md) | 279 | `result-track:6835ea1350afb6bd265d530590d181ad8d310dc5c54791f21163a550c22bd6a0` |
| 30 | `theorem` | [eq_bot_of_card_le_two](../../../../GroupTheoryAndGeneralizations/AlternatingPublic.lean/declarations/eq-bot-of-card-le-two.md) | 300 | `result-track:bf5ee75b77c7325d60e1e6ffd519f0ab3d8374cee9d4f2cd043cde6befa1a540` |
| 31 | `theorem` | [nontrivial_of_three_le_card](../../../../GroupTheoryAndGeneralizations/AlternatingPublic.lean/declarations/nontrivial-of-three-le-card.md) | 308 | `result-track:ea2a35b485c62421a2462aa010e39e8be84ada8600e3779bcca7a97a2b220610` |
| 32 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/AlternatingPublic.lean/declarations/instance-source-edition-3.md) | 317 | `declaration-track:cc0f4d32e4a40c48474ef83287a7a3cf747e863e5285a3630ad4a8b6d553053a` |
| 33 | `theorem` | [isConj_swap_mul_swap_of_cycleType_two](../../../../GroupTheoryAndGeneralizations/AlternatingPublic.lean/declarations/isconj-swap-mul-swap-of-cycletype-two.md) | 325 | `result-track:94a1ddb645a7b65bf2dbabc3db2967c2215eff9462272510b079632d4f846135` |
| 34 | `theorem` | [center_eq_bot](../../../../GroupTheoryAndGeneralizations/AlternatingPublic.lean/declarations/center-eq-bot.md) | 349 | `result-track:fa6ec73976a12bec3ef7333f394d65b43f7094303fb4753ac1e2c117fa90ddf8` |
| 35 | `theorem` | [isMulCommutative_iff_card_le_three](../../../../GroupTheoryAndGeneralizations/AlternatingPublic.lean/declarations/ismulcommutative-iff-card-le-three.md) | 384 | `result-track:ca51a2aab5e73d3858acf1eff7a47d0c688822d158c34b57e0266690b8df6244` |
| 36 | `theorem` | [isCyclic_iff_card_le_three](../../../../GroupTheoryAndGeneralizations/AlternatingPublic.lean/declarations/iscyclic-iff-card-le-three.md) | 395 | `result-track:48518cfbfb46fd246a7e891014f6e546f37c85e96e3d3ea80e57ae68d14b3347` |
| 37 | `def` | [ofSubtype](../../../../GroupTheoryAndGeneralizations/AlternatingPublic.lean/declarations/ofsubtype.md) | 402 | `declaration-track:5853a54d50f24a551457e6c23f9089478c924c6933682f841779ebfef888c017` |
| 38 | `theorem` | [ofSubtype_injective](../../../../GroupTheoryAndGeneralizations/AlternatingPublic.lean/declarations/ofsubtype-injective.md) | 408 | `result-track:4e41806a654b3262aae5162ae211091170258c6827dbd68a40decd002d0c4ac9` |
| 39 | `theorem` | [ofSubtype_inj](../../../../GroupTheoryAndGeneralizations/AlternatingPublic.lean/declarations/ofsubtype-inj.md) | 412 | `result-track:0a1b469c5c48e13a8059e193de3f71f840e6897ac5701e8924728ed04bb64099` |
| 40 | `theorem` | [coe_ofSubtype](../../../../GroupTheoryAndGeneralizations/AlternatingPublic.lean/declarations/coe-ofsubtype.md) | 416 | `result-track:9857e00f1ee1da8005c8269ff8ab0e74071438f1602d17b45f521e10b4421b3d` |
| 41 | `theorem` | [map_ofSubtype](../../../../GroupTheoryAndGeneralizations/AlternatingPublic.lean/declarations/map-ofsubtype.md) | 420 | `result-track:88f55887f00040609abedc2cbd0f15e08d7d29df663a8903a6daaeb20c43d130` |
| 42 | `theorem` | [ofSubtype_comp_subtype](../../../../GroupTheoryAndGeneralizations/AlternatingPublic.lean/declarations/ofsubtype-comp-subtype.md) | 427 | `result-track:b428a3c6f545fdb1e527bba8cf8b9b028c5224989ff247d6ba6175269dad7647` |
| 43 | `theorem` | [range_ofSubtype](../../../../GroupTheoryAndGeneralizations/AlternatingPublic.lean/declarations/range-ofsubtype.md) | 431 | `result-track:0cf4d16a37bae91bcca1c19a2269a47a9fdafa7359827d545f3b43f016646629` |
| 44 | `theorem` | [mem_range_ofSubtype_iff](../../../../GroupTheoryAndGeneralizations/AlternatingPublic.lean/declarations/mem-range-ofsubtype-iff.md) | 436 | `result-track:0d15a579e15d100b0f723157984207c82198ea98faf5a74d9609a041aa1e4915` |
| 45 | `theorem` | [conj_smul_range_ofSubtype](../../../../GroupTheoryAndGeneralizations/AlternatingPublic.lean/declarations/conj-smul-range-ofsubtype.md) | 442 | `result-track:dfe24cede7ab5be639294a6d37fd6f29347a141426ca160130c77727350ca7ea` |
| 46 | `theorem` | [eq_alternatingGroup_of_index_eq_two](../../../../GroupTheoryAndGeneralizations/AlternatingPublic.lean/declarations/eq-alternatinggroup-of-index-eq-two.md) | 456 | `result-track:9fd03fb16d186bfbc1a098532695668febc6488412be647c4e77e0f1c69a6ce4` |
| 47 | `theorem` | [alternatingGroup_le_of_index_le_two](../../../../GroupTheoryAndGeneralizations/AlternatingPublic.lean/declarations/alternatinggroup-le-of-index-le-two.md) | 472 | `result-track:279e6bc88ecd13ccb98659575e312bdc1a6df7ff5ffe22276745a9fbe51589a4` |
| 48 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/AlternatingPublic.lean/declarations/instance-source-edition-2.md) | 484 | `declaration-track:a3500edc095faea574af012c5badd1cacfb2ffd7c6b98b949eae35133597111f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ff5b6d81869a423a60680f18894f1297b08e4db2dce5c0cc3894738b170a8138 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Alternating/Variant966cdfa322077493f52706544b38322e4c73297da2c426008181c615d98c3092.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Alternating/Variant966cdfa322077493f52706544b38322e4c73297da2c426008181c615d98c3092.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
