# Verification target: To String Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c8264d0a2a4924cec9d595d44831ad4db006999b",
  "lexical_observation_count": 77,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToString/Variant297a133950fe3a7aae3487e0b2cd77d1083e8e088b8a297503d76e24f08ec4ca.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/ToStringPublic.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/ToStringPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c8264d0a2a4924cec9d595d44831ad4db006999b`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToString/Variant297a133950fe3a7aae3487e0b2cd77d1083e8e088b8a297503d76e24f08ec4ca.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToString/Variant297a133950fe3a7aae3487e0b2cd77d1083e8e088b8a297503d76e24f08ec4ca.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.NotationExtra` — import line 14; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 16; external provider; requires a separately pinned dependency.
- `Init.RCases` — import line 17; external provider; requires a separately pinned dependency.
- `Init.Data.Nat.Lemmas` — import line 18; external provider; requires a separately pinned dependency.
- `Init.Data.Nat.Bitwise` — import line 19; external provider; requires a separately pinned dependency.
- `Init.Data.Nat.Simproc` — import line 20; external provider; requires a separately pinned dependency.
- `Init.WFTactics` — import line 21; external provider; requires a separately pinned dependency.
- `Init.Data.Char.Lemmas` — import line 22; external provider; requires a separately pinned dependency.
- `Init.Data.Nat.Div.Lemmas` — import line 23; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [isDigit_digitChar](../../../../../ComputerScience/AlgorithmsInComputerScience/ToStringPublic.lean/declarations/isdigit-digitchar.md) | 35 | `result-track:bd5c77ef0bd9ba080debd7ab20b29a8faebac9099c158f931e852b9e1d7ae080` |
| 2 | `theorem` | [digitChar_iff_aux](../../../../../ComputerScience/AlgorithmsInComputerScience/ToStringPublic.lean/declarations/digitchar-iff-aux.md) | 42 | `result-track:917f1f1cd94d329f4ddc6ec7e5969b46cb1b57cab8fe5f5b9c02d31449b87f24` |
| 3 | `theorem` | [digitChar_eq_zero](../../../../../ComputerScience/AlgorithmsInComputerScience/ToStringPublic.lean/declarations/digitchar-eq-zero.md) | 54 | `result-track:5d6573be4f84f0fd7af5e1d8cb845397ca5652180b39b8fc392473f1dc137204` |
| 4 | `theorem` | [digitChar_eq_one](../../../../../ComputerScience/AlgorithmsInComputerScience/ToStringPublic.lean/declarations/digitchar-eq-one.md) | 55 | `result-track:2282d160ab8ee7f4cde06c30a47816d64548c88c9386c5df279a9c6f94126e13` |
| 5 | `theorem` | [digitChar_eq_two](../../../../../ComputerScience/AlgorithmsInComputerScience/ToStringPublic.lean/declarations/digitchar-eq-two.md) | 56 | `result-track:287b44188fdb30988f1ddedb7bbdaf02dd9e969c7c38db996a4c46e39d7c28f7` |
| 6 | `theorem` | [digitChar_eq_three](../../../../../ComputerScience/AlgorithmsInComputerScience/ToStringPublic.lean/declarations/digitchar-eq-three.md) | 57 | `result-track:98780865235241f45abfbb5667874187054512f50cd33f31188ed36fd2815ddc` |
| 7 | `theorem` | [digitChar_eq_four](../../../../../ComputerScience/AlgorithmsInComputerScience/ToStringPublic.lean/declarations/digitchar-eq-four.md) | 58 | `result-track:6376ffee4f4a4e446228b40b0472d6d93ff25da35f93e2738343d26dfee45319` |
| 8 | `theorem` | [digitChar_eq_five](../../../../../ComputerScience/AlgorithmsInComputerScience/ToStringPublic.lean/declarations/digitchar-eq-five.md) | 59 | `result-track:4f68ba3b4ebf92eb339833df7359162bc76a739113f24e19af1f852ce43c7e3f` |
| 9 | `theorem` | [digitChar_eq_six](../../../../../ComputerScience/AlgorithmsInComputerScience/ToStringPublic.lean/declarations/digitchar-eq-six.md) | 60 | `result-track:1034290391f8f669f67a5dd8235178b83987325bed5fe71ddb590080e7f7e62e` |
| 10 | `theorem` | [digitChar_eq_seven](../../../../../ComputerScience/AlgorithmsInComputerScience/ToStringPublic.lean/declarations/digitchar-eq-seven.md) | 61 | `result-track:733107c4457a0511507d94867995fc88660fe60afae2cfcc9595900a348cbd2a` |
| 11 | `theorem` | [digitChar_eq_eight](../../../../../ComputerScience/AlgorithmsInComputerScience/ToStringPublic.lean/declarations/digitchar-eq-eight.md) | 62 | `result-track:852d781628939cd7e353d9eca60635d972cf3a5642d96d2932db43e449c843b3` |
| 12 | `theorem` | [digitChar_eq_nine](../../../../../ComputerScience/AlgorithmsInComputerScience/ToStringPublic.lean/declarations/digitchar-eq-nine.md) | 63 | `result-track:38edd44636663cbabf4a24ee9ff61e21bd3bdcbdaa757eee2a2965063935cc67` |
| 13 | `theorem` | [digitChar_eq_a](../../../../../ComputerScience/AlgorithmsInComputerScience/ToStringPublic.lean/declarations/digitchar-eq-a.md) | 64 | `result-track:3281941dfd9bdf596d9f2706c7f3e95b2fdb4ccb8ad64e80d225e9b11b006493` |
| 14 | `theorem` | [digitChar_eq_b](../../../../../ComputerScience/AlgorithmsInComputerScience/ToStringPublic.lean/declarations/digitchar-eq-b.md) | 65 | `result-track:e75db374c26ca7c1576996149a1cdc550afd047433252919446c880775884966` |
| 15 | `theorem` | [digitChar_eq_c](../../../../../ComputerScience/AlgorithmsInComputerScience/ToStringPublic.lean/declarations/digitchar-eq-c.md) | 66 | `result-track:09490197d4796085f4533d968bdef9d9d2c6936e87b8a151ee4e57f30f612b3e` |
| 16 | `theorem` | [digitChar_eq_d](../../../../../ComputerScience/AlgorithmsInComputerScience/ToStringPublic.lean/declarations/digitchar-eq-d.md) | 67 | `result-track:47174cc6910209f71cab5581ba177c0efa238eac0b1de66c438a8783113a3c89` |
| 17 | `theorem` | [digitChar_eq_e](../../../../../ComputerScience/AlgorithmsInComputerScience/ToStringPublic.lean/declarations/digitchar-eq-e.md) | 68 | `result-track:3c13baca880761874f5b9200d7394f0a7d89f1d16de94cebbc374b6583cd8478` |
| 18 | `theorem` | [digitChar_eq_f](../../../../../ComputerScience/AlgorithmsInComputerScience/ToStringPublic.lean/declarations/digitchar-eq-f.md) | 69 | `result-track:0fc1f8190dbbca8641d7b311ecb3803c0f9cad0c5fc04146f701e429cb505f4c` |
| 19 | `theorem` | [digitChar_eq_star](../../../../../ComputerScience/AlgorithmsInComputerScience/ToStringPublic.lean/declarations/digitchar-eq-star.md) | 70 | `result-track:27548f78300d98882b31d5f1bd0df0712138970428982505951b36051491e51f` |
| 20 | `theorem` | [zero_eq_digitChar](../../../../../ComputerScience/AlgorithmsInComputerScience/ToStringPublic.lean/declarations/zero-eq-digitchar.md) | 72 | `result-track:5ff51554b4a8cbb4d3421f872e71e724a2e178ea6450ea6d903faed9ce135570` |
| 21 | `theorem` | [one_eq_digitChar](../../../../../ComputerScience/AlgorithmsInComputerScience/ToStringPublic.lean/declarations/one-eq-digitchar.md) | 73 | `result-track:7fb31af7671acdd4f3cef249ef0470d7a5d038622a00fa5aa5f21e003bce3cc1` |
| 22 | `theorem` | [two_eq_digitChar](../../../../../ComputerScience/AlgorithmsInComputerScience/ToStringPublic.lean/declarations/two-eq-digitchar.md) | 74 | `result-track:6cfc8473f4a398d0df23f1dd0164013cea880be5dd350eb3463e96b2a686a6e1` |
| 23 | `theorem` | [three_eq_digitChar](../../../../../ComputerScience/AlgorithmsInComputerScience/ToStringPublic.lean/declarations/three-eq-digitchar.md) | 75 | `result-track:4115adcada9b8246a565e0bc562fb7f3be53caa88a99d24023d5f99e0f04292b` |
| 24 | `theorem` | [four_eq_digitChar](../../../../../ComputerScience/AlgorithmsInComputerScience/ToStringPublic.lean/declarations/four-eq-digitchar.md) | 76 | `result-track:ec5564f42bf7c19d46034025ff3c1b6f66c9cf76db2407a6d1935a4bdbaf194f` |
| 25 | `theorem` | [five_eq_digitChar](../../../../../ComputerScience/AlgorithmsInComputerScience/ToStringPublic.lean/declarations/five-eq-digitchar.md) | 77 | `result-track:62c1af57ea5276ac294142e190b9f9aaef3990ba6a0930c707b31937368fb411` |
| 26 | `theorem` | [six_eq_digitChar](../../../../../ComputerScience/AlgorithmsInComputerScience/ToStringPublic.lean/declarations/six-eq-digitchar.md) | 78 | `result-track:8f845d4ae905e9ad3f5149f0ef2f1630d7820a5e454324e491bf58f08bdda45c` |
| 27 | `theorem` | [seven_eq_digitChar](../../../../../ComputerScience/AlgorithmsInComputerScience/ToStringPublic.lean/declarations/seven-eq-digitchar.md) | 79 | `result-track:00fc46d904b5818402c2667e5ec5f19a094d3eda0132c87650c1666e572e2537` |
| 28 | `theorem` | [eight_eq_digitChar](../../../../../ComputerScience/AlgorithmsInComputerScience/ToStringPublic.lean/declarations/eight-eq-digitchar.md) | 80 | `result-track:61389ca1c6c08c38b74da689e57a37947d76886fc25d2851452a355435f246cf` |
| 29 | `theorem` | [nine_eq_digitChar](../../../../../ComputerScience/AlgorithmsInComputerScience/ToStringPublic.lean/declarations/nine-eq-digitchar.md) | 81 | `result-track:1cfd3e92c7083c3d6a7dbde6d455a23f3ce4a988db996de285c1b25ecc703ca7` |
| 30 | `theorem` | [a_eq_digitChar](../../../../../ComputerScience/AlgorithmsInComputerScience/ToStringPublic.lean/declarations/a-eq-digitchar.md) | 82 | `result-track:1573bde6e270ecce286151cc2cf68b767e0b542f018dd6bb802078871332f47b` |
| 31 | `theorem` | [b_eq_digitChar](../../../../../ComputerScience/AlgorithmsInComputerScience/ToStringPublic.lean/declarations/b-eq-digitchar.md) | 83 | `result-track:52552cc1ca13942901040218f9a61cf50d1205a880341bf2042ced3ad1001324` |
| 32 | `theorem` | [c_eq_digitChar](../../../../../ComputerScience/AlgorithmsInComputerScience/ToStringPublic.lean/declarations/c-eq-digitchar.md) | 84 | `result-track:910e98e2b2b5b274f92ed03da4afb57dd9996154cac551f2e8a6cbef79b335d1` |
| 33 | `theorem` | [d_eq_digitChar](../../../../../ComputerScience/AlgorithmsInComputerScience/ToStringPublic.lean/declarations/d-eq-digitchar.md) | 85 | `result-track:08d7af508d4c1bfdf3081dac49c47a4e560ada4fa07d2826c09214de5f9a4b1b` |
| 34 | `theorem` | [e_eq_digitChar](../../../../../ComputerScience/AlgorithmsInComputerScience/ToStringPublic.lean/declarations/e-eq-digitchar.md) | 86 | `result-track:7e4777e713be866ea6c0341b9200e8af42a0e4ffaa345e47c98960ccb5ecc2f3` |
| 35 | `theorem` | [f_eq_digitChar](../../../../../ComputerScience/AlgorithmsInComputerScience/ToStringPublic.lean/declarations/f-eq-digitchar.md) | 87 | `result-track:8742debe9473ba683db8d0fe3bbf1aaf3fd669becb1043d43ae2a9216e95301d` |
| 36 | `theorem` | [star_eq_digitChar](../../../../../ComputerScience/AlgorithmsInComputerScience/ToStringPublic.lean/declarations/star-eq-digitchar.md) | 88 | `result-track:7819bbf7949fdd89a946c35831b9ce80162114869666f3580e7dd93eb58a3399` |
| 37 | `theorem` | [digitChar_ne](../../../../../ComputerScience/AlgorithmsInComputerScience/ToStringPublic.lean/declarations/digitchar-ne.md) | 91 | `result-track:8419772ea1c61f5e505230f563ccb7e1e8a4a4a39cac0260d11f8f1c9d4ca877` |
| 38 | `theorem` | [toNat_digitChar_of_lt_ten](../../../../../ComputerScience/AlgorithmsInComputerScience/ToStringPublic.lean/declarations/tonat-digitchar-of-lt-ten.md) | 99 | `result-track:13fb6cb234a559d7372d8572f1a5fe28ab95770c95d0430541a5f97c4b57319c` |
| 39 | `theorem` | [toNat_digitChar_sub_48_of_lt_ten](../../../../../ComputerScience/AlgorithmsInComputerScience/ToStringPublic.lean/declarations/tonat-digitchar-sub-48-of-lt-ten.md) | 104 | `result-track:cfef1d93b0f7755a386b27630e3d89a7a9a45efe9c08d134c1d22924ae614050` |
| 40 | `theorem` | [isDigit_of_mem_toDigitsCore](../../../../../ComputerScience/AlgorithmsInComputerScience/ToStringPublic.lean/declarations/isdigit-of-mem-todigitscore.md) | 107 | `result-track:bcb13df3abe5ca2dca4643d07f1b93cad7169c62ec37024586bd7a12bccbd94b` |
| 41 | `theorem` | [isDigit_of_mem_toDigits](../../../../../ComputerScience/AlgorithmsInComputerScience/ToStringPublic.lean/declarations/isdigit-of-mem-todigits.md) | 120 | `result-track:a09c79e6b37fface4080e04fe7f057784ec1a43330db57924ddb4427682cf098` |
| 42 | `theorem` | [underscore_not_in_toDigits](../../../../../ComputerScience/AlgorithmsInComputerScience/ToStringPublic.lean/declarations/underscore-not-in-todigits.md) | 124 | `result-track:cfa76ec7695439729549bc3ae5dc91fd4ac024c1e274a15043fd9c01a70d97e0` |
| 43 | `theorem` | [toDigitsCore_of_lt_base](../../../../../ComputerScience/AlgorithmsInComputerScience/ToStringPublic.lean/declarations/todigitscore-of-lt-base.md) | 128 | `result-track:5a8d1c0f2f885c43bd0990a455fe2fc6be612616d747a1ce2110cf7bf3ad29cc` |
| 44 | `theorem` | [toDigits_of_lt_base](../../../../../ComputerScience/AlgorithmsInComputerScience/ToStringPublic.lean/declarations/todigits-of-lt-base.md) | 133 | `result-track:505ad46299907708c204a86319f074e0241626be5ad26a629202b4a34fd19080` |
| 45 | `theorem` | [toDigits_zero](../../../../../ComputerScience/AlgorithmsInComputerScience/ToStringPublic.lean/declarations/todigits-zero.md) | 137 | `result-track:239d837acc8f2d1678b7e0a4220289289fd1959f63120498e71cee0feb8d0763` |
| 46 | `theorem` | [toDigitsCore_append](../../../../../ComputerScience/AlgorithmsInComputerScience/ToStringPublic.lean/declarations/todigitscore-append.md) | 141 | `result-track:e9c977c323447b10025d93751f3736fe32ec94164437410d140f70109fec096f` |
| 47 | `theorem` | [toDigitsCore_eq_toDigitsCore_nil_append](../../../../../ComputerScience/AlgorithmsInComputerScience/ToStringPublic.lean/declarations/todigitscore-eq-todigitscore-nil-append.md) | 146 | `result-track:80f1a7fd0b7dae01c4f4ade7f0598a6a494bf5df7208ab830243b40fe94eab0c` |
| 48 | `theorem` | [toDigitsCore_eq_of_lt_fuel](../../../../../ComputerScience/AlgorithmsInComputerScience/ToStringPublic.lean/declarations/todigitscore-eq-of-lt-fuel.md) | 150 | `result-track:9928614eaa43d0819108a202a9fc46d021a136a912f00388fded8d76f15235d7` |
| 49 | `theorem` | [toDigitsCore_toDigitsCore](../../../../../ComputerScience/AlgorithmsInComputerScience/ToStringPublic.lean/declarations/todigitscore-todigitscore.md) | 159 | `result-track:54da8330669948bcc3709e3d5d4eb0874dd585a5372d9ec6167b7c4c92dd658a` |
| 50 | `theorem` | [toDigits_append_toDigits](../../../../../ComputerScience/AlgorithmsInComputerScience/ToStringPublic.lean/declarations/todigits-append-todigits.md) | 177 | `result-track:85a735bb7f2d4dd23abdea7032b5fb4ebe07020adf37a988fea3d7324581fdd1` |
| 51 | `theorem` | [toDigits_of_base_le](../../../../../ComputerScience/AlgorithmsInComputerScience/ToStringPublic.lean/declarations/todigits-of-base-le.md) | 182 | `result-track:399cb1916d38df4bf8e18ca835031448ddc664648536238c38a784a336bda227` |
| 52 | `theorem` | [toDigits_eq_if](../../../../../ComputerScience/AlgorithmsInComputerScience/ToStringPublic.lean/declarations/todigits-eq-if.md) | 189 | `result-track:050753cda1900db2a98adae5747874eeb0ffaa51975461cc48cbb21210c1ad15` |
| 53 | `theorem` | [length_toDigits_pos](../../../../../ComputerScience/AlgorithmsInComputerScience/ToStringPublic.lean/declarations/length-todigits-pos.md) | 195 | `result-track:acab8c81a28081a050c8f1e14e429769f2c78308931af4602231373cfe02cd71` |
| 54 | `theorem` | [toDigits_ne_nil](../../../../../ComputerScience/AlgorithmsInComputerScience/ToStringPublic.lean/declarations/todigits-ne-nil.md) | 205 | `result-track:721b5af2affbd27eb74e44376920b823c516dcf44f6ee93198d2a22fee3213e6` |
| 55 | `theorem` | [length_toDigits_le_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/ToStringPublic.lean/declarations/length-todigits-le-iff.md) | 209 | `result-track:02047d51584acd4ab952f34e9152230564bc5e7f45228c62a43ff98bfcb49447` |
| 56 | `theorem` | [repr_eq_ofList_toDigits](../../../../../ComputerScience/AlgorithmsInComputerScience/ToStringPublic.lean/declarations/repr-eq-oflist-todigits.md) | 230 | `result-track:5da69eb9e6ad853e747d0cd24b3d7a113197ac4b6d7a1a81cc2482497c0e3d92` |
| 57 | `theorem` | [toList_repr](../../../../../ComputerScience/AlgorithmsInComputerScience/ToStringPublic.lean/declarations/tolist-repr.md) | 235 | `result-track:a86c912e52f0b0bb6e8d88036ab5a59048da2f36886b21d82e5697cd8467a031` |
| 58 | `theorem` | [repr_ne_empty](../../../../../ComputerScience/AlgorithmsInComputerScience/ToStringPublic.lean/declarations/repr-ne-empty.md) | 239 | `result-track:c528b22fcc1ee3a9e1a59b9595ab9511ee1dbf8595b0cfe6957030302e67e435` |
| 59 | `theorem` | [toString_eq_ofList_toDigits](../../../../../ComputerScience/AlgorithmsInComputerScience/ToStringPublic.lean/declarations/tostring-eq-oflist-todigits.md) | 242 | `result-track:f1e3a83a42ba81798a548197dd27a193636628a45f4812a9d66c2fa0aaee2d96` |
| 60 | `theorem` | [toString_eq_repr](../../../../../ComputerScience/AlgorithmsInComputerScience/ToStringPublic.lean/declarations/tostring-eq-repr.md) | 247 | `result-track:408fcd3514448a18fd2751befe1fe2db2aa94659359e7a2b8752a0c2a8c9d78a` |
| 61 | `theorem` | [reprPrec_eq_repr](../../../../../ComputerScience/AlgorithmsInComputerScience/ToStringPublic.lean/declarations/reprprec-eq-repr.md) | 252 | `result-track:b961124854d6869c8edcf155a805b3eacf6c0a43b853ea5a39662c704d5f3ab5` |
| 62 | `theorem` | [repr_eq_repr](../../../../../ComputerScience/AlgorithmsInComputerScience/ToStringPublic.lean/declarations/repr-eq-repr.md) | 257 | `result-track:ecc87418ecae9de23b87924cdd68cf4f90a2d817b6d9f14d13675d81671fe1d3` |
| 63 | `theorem` | [repr_of_lt](../../../../../ComputerScience/AlgorithmsInComputerScience/ToStringPublic.lean/declarations/repr-of-lt.md) | 261 | `result-track:0b8b8eab07748cd70c2d0f8b5bd6f9e5e43540f0b4465bc3c508c991be967c2a` |
| 64 | `theorem` | [repr_of_ge](../../../../../ComputerScience/AlgorithmsInComputerScience/ToStringPublic.lean/declarations/repr-of-ge.md) | 265 | `result-track:4605927bd9fdac3a3fa2b0cfda7024842b39c488ed3214f00d92be293c48992b` |
| 65 | `theorem` | [repr_eq_repr_append_repr](../../../../../ComputerScience/AlgorithmsInComputerScience/ToStringPublic.lean/declarations/repr-eq-repr-append-repr.md) | 270 | `result-track:55336347213da23514578c75089af607ebd3d67b37da7a23756173bddafab83f` |
| 66 | `theorem` | [length_repr_pos](../../../../../ComputerScience/AlgorithmsInComputerScience/ToStringPublic.lean/declarations/length-repr-pos.md) | 274 | `result-track:95729084b974cc6d9b9dbbe490801003ee0b609ecc680e6b565a69671587fed2` |
| 67 | `theorem` | [length_repr_le_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/ToStringPublic.lean/declarations/length-repr-le-iff.md) | 278 | `result-track:108188b140041a367b2bbd05f7b302a16a1a7c0303a895a55d125d176a445cef` |
| 68 | `def` | [ofDigitChars](../../../../../ComputerScience/AlgorithmsInComputerScience/ToStringPublic.lean/declarations/ofdigitchars.md) | 286 | `declaration-track:9d2d6c9b45d4202b6f8ff946fb2302e7b2f1061c6526d31960f04a8d3db4671a` |
| 69 | `theorem` | [ofDigitChars_eq_foldl](../../../../../ComputerScience/AlgorithmsInComputerScience/ToStringPublic.lean/declarations/ofdigitchars-eq-foldl.md) | 289 | `result-track:49d178642d8d8244560d51b9ca71dfb54cf3d5404fbd0f83cb18569dff0a55cb` |
| 70 | `theorem` | [ofDigitChars_nil](../../../../../ComputerScience/AlgorithmsInComputerScience/ToStringPublic.lean/declarations/ofdigitchars-nil.md) | 294 | `result-track:6b82417edf0744f511bfb1dbf9a328a2968acb7870bfa12addacdf98bcb0cfba` |
| 71 | `theorem` | [ofDigitChars_cons](../../../../../ComputerScience/AlgorithmsInComputerScience/ToStringPublic.lean/declarations/ofdigitchars-cons.md) | 297 | `result-track:d9e1ff2b4f6198a5d296b51f2e1940ef21b6d622e008096202690669665070af` |
| 72 | `theorem` | [ofDigitChars_cons_digitChar_of_lt_ten](../../../../../ComputerScience/AlgorithmsInComputerScience/ToStringPublic.lean/declarations/ofdigitchars-cons-digitchar-of-lt-ten.md) | 301 | `result-track:5f23d0d2bd06351f4b6f5333dcf54f82bcb0445af11e627fe46c2471669bd54e` |
| 73 | `theorem` | [ofDigitChars_eq_ofDigitChars_zero](../../../../../ComputerScience/AlgorithmsInComputerScience/ToStringPublic.lean/declarations/ofdigitchars-eq-ofdigitchars-zero.md) | 305 | `result-track:c2522ac25da574a92eea76831a01dc666f296b36154839f97f27d13091038e99` |
| 74 | `theorem` | [ofDigitChars_append](../../../../../ComputerScience/AlgorithmsInComputerScience/ToStringPublic.lean/declarations/ofdigitchars-append.md) | 314 | `result-track:af2ca1cd887dab3365dcca0a789cdb3d718352f864fa0d6b43d4702319eb8cb5` |
| 75 | `theorem` | [ofDigitChars_replicate_zero](../../../../../ComputerScience/AlgorithmsInComputerScience/ToStringPublic.lean/declarations/ofdigitchars-replicate-zero.md) | 319 | `result-track:2a3ba1b70dae90936c6a589eb8a75a8e0dcf31e6ad901f3678c2b9962d24c531` |
| 76 | `theorem` | [ofDigitChars_toDigits](../../../../../ComputerScience/AlgorithmsInComputerScience/ToStringPublic.lean/declarations/ofdigitchars-todigits.md) | 324 | `result-track:fdb6ce9334e6f6d49a4299a2b7039ba1a99d0a136a43c26e891b0428c905297a` |
| 77 | `theorem` | [ofDigitChars_ten_toDigits](../../../../../ComputerScience/AlgorithmsInComputerScience/ToStringPublic.lean/declarations/ofdigitchars-ten-todigits.md) | 334 | `result-track:c38addad096ab5c014b97b19d14ec9f3aa4fb8d8237c0e3e94a7796a1172bc91` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3a096d21ef7d80eb4899450ab025050d6e5e61c7ede6ecde4bd66c9e12328293 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToString/Variant297a133950fe3a7aae3487e0b2cd77d1083e8e088b8a297503d76e24f08ec4ca.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToString/Variant297a133950fe3a7aae3487e0b2cd77d1083e8e088b8a297503d76e24f08ec4ca.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
