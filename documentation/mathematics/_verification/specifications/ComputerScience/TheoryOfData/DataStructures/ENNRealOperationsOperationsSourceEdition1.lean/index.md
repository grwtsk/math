# Verification target: ENNReal Operations Operations Source Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "35cf6c846a8f5797c61bc679a9289ee4e470d950",
  "lexical_observation_count": 116,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Operations/Variant19368bfe4c9ded633d1f2509939cff4d5ff431666bd0e22a46cfb426e3557a37.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENNRealOperationsOperationsSourceEdition1.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENNRealOperationsOperationsSourceEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `35cf6c846a8f5797c61bc679a9289ee4e470d950`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Operations/Variant19368bfe4c9ded633d1f2509939cff4d5ff431666bd0e22a46cfb426e3557a37.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Operations/Variant19368bfe4c9ded633d1f2509939cff4d5ff431666bd0e22a46cfb426e3557a37.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.ENNReal.Real` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mul_lt_mul](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENNRealOperationsOperationsSourceEdition1.lean/declarations/mul-lt-mul.md) | 31 | `result-track:9941af24d4c3e22e7dbca1434b9e469fb8b6c2764d2b022098ea0ce2a42d69b5` |
| 2 | `lemma` | [pow_right_strictMono](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENNRealOperationsOperationsSourceEdition1.lean/declarations/pow-right-strictmono.md) | 33 | `result-track:537532fd5d582848c8e90b4f68cba8068b12e8b6f2e87a0d13a8284f53ed0d8f` |
| 3 | `lemma` | [pow_lt_pow_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENNRealOperationsOperationsSourceEdition1.lean/declarations/pow-lt-pow-left.md) | 36 | `result-track:8b38ae37992c8d8f81d9a818967bb77172626d0d150ae54b337ff2d3290b47c8` |
| 4 | `theorem` | [mul_left_strictMono](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENNRealOperationsOperationsSourceEdition1.lean/declarations/mul-left-strictmono.md) | 40 | `result-track:580b3210308fe03ea6f2ddc6704acd9efece8b594af453db32c96d36af8c15df` |
| 5 | `theorem` | [mul_lt_mul_left'](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENNRealOperationsOperationsSourceEdition1.lean/declarations/mul-lt-mul-left.md) | 48 | `result-track:5003c7a43f47e8615d1d0822b91567381b4015811c57f8cf8e198e3036c4437f` |
| 6 | `theorem` | [mul_lt_mul_right'](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENNRealOperationsOperationsSourceEdition1.lean/declarations/mul-lt-mul-right.md) | 52 | `result-track:904e39c474da7c123c69e9ae2f472876f8484c3ca0670ae70c7bb92fae8a8aba` |
| 7 | `theorem` | [mul_right_inj](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENNRealOperationsOperationsSourceEdition1.lean/declarations/mul-right-inj.md) | 57 | `result-track:5e9d31d9d9ff819cd4499ef57eba2bd61531b9713932cc36a7701f01968c36a3` |
| 8 | `theorem` | [mul_left_inj](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENNRealOperationsOperationsSourceEdition1.lean/declarations/mul-left-inj.md) | 64 | `result-track:23e590cabba92f4d9434158959edf0e54aa2f79a623697aacc919462b68dde1e` |
| 9 | `theorem` | [mul_le_mul_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENNRealOperationsOperationsSourceEdition1.lean/declarations/mul-le-mul-left.md) | 71 | `result-track:e3722e1d6d7c15a16ce0d52b56454cfcbcfc30cf4d0878b2f9f0abe8ea33c31a` |
| 10 | `theorem` | [mul_le_mul_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENNRealOperationsOperationsSourceEdition1.lean/declarations/mul-le-mul-right.md) | 75 | `result-track:574802832708743508dbdcf388e9a35ba479a249728ab85155fd53e933d552f7` |
| 11 | `theorem` | [mul_lt_mul_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENNRealOperationsOperationsSourceEdition1.lean/declarations/mul-lt-mul-left-source-edition-2.md) | 79 | `result-track:5635acc8ac79fd73e7d8e1ea27ce48f7a92a2c92933a88b57deef019dfb71294` |
| 12 | `theorem` | [mul_lt_mul_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENNRealOperationsOperationsSourceEdition1.lean/declarations/mul-lt-mul-right-source-edition-2.md) | 83 | `result-track:d607c02d5c47534b62c9cdfba72f762bc18bc4ef4291c506ff4dc10e41ac0a5e` |
| 13 | `lemma` | [mul_eq_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENNRealOperationsOperationsSourceEdition1.lean/declarations/mul-eq-left.md) | 86 | `result-track:217672af5b2ee1d16df7d17340b7ee6e722d6ca67c23265ee513f9be3ba7bc92` |
| 14 | `lemma` | [mul_eq_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENNRealOperationsOperationsSourceEdition1.lean/declarations/mul-eq-right.md) | 89 | `result-track:1fd4941d17c658750b9dd479429135751fb1d8e3da458f4d2d1d1da186808237` |
| 15 | `theorem` | [pow_pos](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENNRealOperationsOperationsSourceEdition1.lean/declarations/pow-pos.md) | 96 | `result-track:52fcc6d1e0b978c51833e06f6295bcad2fe4dbfb6fc195a5dc5d4f753a14ed31` |
| 16 | `theorem` | [pow_ne_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENNRealOperationsOperationsSourceEdition1.lean/declarations/pow-ne-zero.md) | 99 | `result-track:bf93062c1a7187f5d06f9e5a66bf19cce98b0dea8608a16dfa578242f0198b81` |
| 17 | `theorem` | [not_lt_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENNRealOperationsOperationsSourceEdition1.lean/declarations/not-lt-zero.md) | 102 | `result-track:5653d47a0ac64d4a6741ad24fa3db2b2c03cae6860cfe3a572710b4b4523f441` |
| 18 | `theorem` | [le_of_add_le_add_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENNRealOperationsOperationsSourceEdition1.lean/declarations/le-of-add-le-add-left.md) | 104 | `result-track:c9135d9cd80cf3554345b61ad6a46f9b336016783de1263b0e753f4333ac98bc` |
| 19 | `theorem` | [le_of_add_le_add_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENNRealOperationsOperationsSourceEdition1.lean/declarations/le-of-add-le-add-right.md) | 107 | `result-track:5eebbe6768c109bc97d08be08aa0cc440c5c4a5d32988d2622c8dcf088aca7aa` |
| 20 | `theorem` | [add_lt_add_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENNRealOperationsOperationsSourceEdition1.lean/declarations/add-lt-add-left.md) | 110 | `result-track:3c9e2b2558738c6707ad79c820a858b83baa6603cc54b2f3bb423372794fb4c4` |
| 21 | `theorem` | [add_lt_add_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENNRealOperationsOperationsSourceEdition1.lean/declarations/add-lt-add-right.md) | 113 | `result-track:1f168868485106a05e237270d57ef83878d27f0cd1800739b235b83386eb24c3` |
| 22 | `theorem` | [add_le_add_iff_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENNRealOperationsOperationsSourceEdition1.lean/declarations/add-le-add-iff-left.md) | 116 | `result-track:33867b1c7dfec6d55a635996d4f405bfb95fd0fa1e79a0c5c63a8896fbfcc73d` |
| 23 | `theorem` | [add_le_add_iff_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENNRealOperationsOperationsSourceEdition1.lean/declarations/add-le-add-iff-right.md) | 119 | `result-track:2e235bd9653c5180238a8e4ace26fb3dcdb21ad01deea198a93bc2915984ab53` |
| 24 | `theorem` | [add_lt_add_iff_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENNRealOperationsOperationsSourceEdition1.lean/declarations/add-lt-add-iff-left.md) | 122 | `result-track:533b07d9fe4ceac3246e7563ece9a883b93656bef1181b2542f75693741e0d30` |
| 25 | `theorem` | [add_lt_add_iff_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENNRealOperationsOperationsSourceEdition1.lean/declarations/add-lt-add-iff-right.md) | 125 | `result-track:9eb81d0a82040494e867f25646225991b409a767739ebbf914d4e97596797c55` |
| 26 | `theorem` | [add_lt_add_of_le_of_lt](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENNRealOperationsOperationsSourceEdition1.lean/declarations/add-lt-add-of-le-of-lt.md) | 128 | `result-track:31ebc5a7825b16a66b12a084fca8aee68c6f1cd2e75089abbcc9eb6f109c7b01` |
| 27 | `theorem` | [add_lt_add_of_lt_of_le](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENNRealOperationsOperationsSourceEdition1.lean/declarations/add-lt-add-of-lt-of-le.md) | 131 | `result-track:d9d9500e1acec294136a0461c29e472655d9d39de5e2a7a59ff4ca432f6262db` |
| 28 | `instance` | [addLeftReflectLT](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENNRealOperationsOperationsSourceEdition1.lean/declarations/addleftreflectlt.md) | 134 | `declaration-track:38c5f54695c5550a3e2e96ae4ecd3998ca16e729d445eda7d37b94717c9d8bf6` |
| 29 | `theorem` | [lt_add_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENNRealOperationsOperationsSourceEdition1.lean/declarations/lt-add-right.md) | 137 | `result-track:60b324017b5ee3f4f832f13c6710b3b764085d317b45683b32b880c76b3eafb3` |
| 30 | `theorem` | [add_eq_top](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENNRealOperationsOperationsSourceEdition1.lean/declarations/add-eq-top.md) | 146 | `result-track:1f4912ff47a6de40020e99c2087a230d58c22fbb6938d75f1c0c799845cce85d` |
| 31 | `theorem` | [add_lt_top](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENNRealOperationsOperationsSourceEdition1.lean/declarations/add-lt-top.md) | 148 | `result-track:ec968f00c62641ed3cbf8f3df91d132e16bdc7df1b0676e28664c8b36f33c7f0` |
| 32 | `theorem` | [toNNReal_add](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENNRealOperationsOperationsSourceEdition1.lean/declarations/tonnreal-add.md) | 150 | `result-track:17865affa7e48d764158213e9cfab8ec885796c8fa1ae33efe2c22cfb33194b9` |
| 33 | `theorem` | [toReal_le_add'](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENNRealOperationsOperationsSourceEdition1.lean/declarations/toreal-le-add.md) | 159 | `result-track:2308c559f76ffb8d2ae9e8e27a7f26c5f86eefdfda059702243de9459a691b4e` |
| 34 | `theorem` | [toReal_le_add](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENNRealOperationsOperationsSourceEdition1.lean/declarations/toreal-le-add-source-edition-2.md) | 167 | `result-track:8b6436aa5f7ee6c30cd490c22ea9148f2cb40794c1c6275cfdf2250e34286584` |
| 35 | `theorem` | [not_lt_top](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENNRealOperationsOperationsSourceEdition1.lean/declarations/not-lt-top.md) | 171 | `result-track:66120b82067e21b34c1e776d6f9ba7945cc85aecdd5459ffd3dd19f75bf13889` |
| 36 | `theorem` | [add_ne_top](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENNRealOperationsOperationsSourceEdition1.lean/declarations/add-ne-top.md) | 173 | `result-track:b516416ab3eac201b16a1ee21d351bac9d7a96326f2b6f1704d344a2fd4c33cf` |
| 37 | `lemma` | [Finiteness.add_ne_top](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENNRealOperationsOperationsSourceEdition1.lean/declarations/finiteness-add-ne-top.md) | 176 | `result-track:d03a0d20d23e38a5c7dfe3f6e8c5812ad0c034ed0c61f0e0dcee121afb278d97` |
| 38 | `theorem` | [mul_top'](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENNRealOperationsOperationsSourceEdition1.lean/declarations/mul-top.md) | 179 | `result-track:1c025c8808060a73b5f70df84c68794e91b4f1f98d85e0eb5aff3d3de6151436` |
| 39 | `theorem` | [mul_top](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENNRealOperationsOperationsSourceEdition1.lean/declarations/mul-top-source-edition-2.md) | 181 | `result-track:29ebc4cd9f246d7f8c7dd26ebcb33b6d67501d45a0026580de2e1974f10283e5` |
| 40 | `theorem` | [top_mul'](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENNRealOperationsOperationsSourceEdition1.lean/declarations/top-mul-source-edition-2.md) | 183 | `result-track:84a5cd00df7efbaa2e48a980cd25e1203da8c1e01cf53b5d21bb793d660004df` |
| 41 | `theorem` | [top_mul](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENNRealOperationsOperationsSourceEdition1.lean/declarations/top-mul.md) | 185 | `result-track:743532c55b7d77a58f25ad21b66f09a61c0071f2599a74143355793d601268b7` |
| 42 | `theorem` | [top_mul_top](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENNRealOperationsOperationsSourceEdition1.lean/declarations/top-mul-top.md) | 187 | `result-track:84e4a67f3b76e31a4f32dadf07390c1417b4ccff6436a1cc4c955df9555dd94c` |
| 43 | `theorem` | [mul_eq_top](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENNRealOperationsOperationsSourceEdition1.lean/declarations/mul-eq-top.md) | 189 | `result-track:6ac805c00621a12f9a703efe3f9ec4d42f616677935d5c926f1cdfa2593aa28a` |
| 44 | `theorem` | [mul_lt_top](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENNRealOperationsOperationsSourceEdition1.lean/declarations/mul-lt-top.md) | 192 | `result-track:206d4fbc0f4227a7d831421cf713dfa1c1013d326e95c67f3aad27b55253f45c` |
| 45 | `theorem` | [mul_ne_top](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENNRealOperationsOperationsSourceEdition1.lean/declarations/mul-ne-top.md) | 196 | `result-track:8a927d114bbfe1effb2097fff8f0062be0196dd0024b107a1783e81a8ac7e7ce` |
| 46 | `theorem` | [lt_top_of_mul_ne_top_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENNRealOperationsOperationsSourceEdition1.lean/declarations/lt-top-of-mul-ne-top-left.md) | 198 | `result-track:13da6ca8a5ea315afd0914e2e5659fed7497dcf91d0d20d61808126ce61281d0` |
| 47 | `theorem` | [lt_top_of_mul_ne_top_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENNRealOperationsOperationsSourceEdition1.lean/declarations/lt-top-of-mul-ne-top-right.md) | 201 | `result-track:56a35ce2934e0a15f8addfd10248eb2429d0aa2b72be5daf95d03545187d50de` |
| 48 | `theorem` | [mul_lt_top_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENNRealOperationsOperationsSourceEdition1.lean/declarations/mul-lt-top-iff.md) | 204 | `result-track:4b39438d017ee53ebb6bc712258e9429d1a3698e120daef57f33fd701e69e9a3` |
| 49 | `theorem` | [mul_self_lt_top_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENNRealOperationsOperationsSourceEdition1.lean/declarations/mul-self-lt-top-iff.md) | 212 | `result-track:79cf3183b71da470304fe800786dac47ad45009158475aff2b982a7ed1528ef3` |
| 50 | `theorem` | [mul_pos_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENNRealOperationsOperationsSourceEdition1.lean/declarations/mul-pos-iff.md) | 217 | `result-track:0b0597f87b223829973c867cca4610e697d8b5380adec4615ac1abb0c3a415e8` |
| 51 | `theorem` | [mul_pos](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENNRealOperationsOperationsSourceEdition1.lean/declarations/mul-pos.md) | 220 | `result-track:b6517113200d517840524ad34e1ec1554b4c2b258b9459702921f9d5017f0ff6` |
| 52 | `lemma` | [top_pow](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENNRealOperationsOperationsSourceEdition1.lean/declarations/top-pow.md) | 223 | `result-track:67c54559025c8557edda7927f94a94dd7e25613f5e795ffa11c30e78e8606969` |
| 53 | `lemma` | [pow_eq_top_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENNRealOperationsOperationsSourceEdition1.lean/declarations/pow-eq-top-iff.md) | 225 | `result-track:c2a8438a958acc0804ab5e5cc891313696f318fadb998c04477f0d1412d92c92` |
| 54 | `lemma` | [pow_ne_top_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENNRealOperationsOperationsSourceEdition1.lean/declarations/pow-ne-top-iff.md) | 227 | `result-track:2a03bdda1ea306e06bf43fc299bf5452be43989ebc7477e2a353e28a6cab185c` |
| 55 | `lemma` | [pow_lt_top_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENNRealOperationsOperationsSourceEdition1.lean/declarations/pow-lt-top-iff.md) | 229 | `result-track:58900e1ec9a804563105b25a9cf187dae104d80803b1999d347a78a9dd26eba1` |
| 56 | `lemma` | [eq_top_of_pow](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENNRealOperationsOperationsSourceEdition1.lean/declarations/eq-top-of-pow.md) | 231 | `result-track:8942c9907b514278d860d4ea8513baa999b114b9954580c04fb95d540cf3dd91` |
| 57 | `lemma` | [pow_ne_top](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENNRealOperationsOperationsSourceEdition1.lean/declarations/pow-ne-top.md) | 235 | `result-track:c898541f6ba7bb1240e804ff99d71fc157e50fa2d6e05b25e899693d05624d58` |
| 58 | `lemma` | [pow_lt_top](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENNRealOperationsOperationsSourceEdition1.lean/declarations/pow-lt-top.md) | 236 | `result-track:afc86aacb376277fd37f1ea4df88fa9cff1bea48106cdc6f2ee4131b0e13b1af` |
| 59 | `theorem` | [add_lt_add](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENNRealOperationsOperationsSourceEdition1.lean/declarations/add-lt-add.md) | 241 | `result-track:7d6ca302e1b2a2156e209fea8b57e39b04bd84fb119e5f4fa7c05ce45cfd42a7` |
| 60 | `theorem` | [addLECancellable_iff_ne](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENNRealOperationsOperationsSourceEdition1.lean/declarations/addlecancellable-iff-ne.md) | 255 | `result-track:f9683b58ea2d0104c593c329db8957dc41b273c44ca15c42b47b08ffbceaf48a` |
| 61 | `theorem` | [cancel_of_ne](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENNRealOperationsOperationsSourceEdition1.lean/declarations/cancel-of-ne.md) | 264 | `result-track:eea08ebb01fa9886e923fd3d9ec2892f362934e1cf1864e81bd23f61b2e29a44` |
| 62 | `theorem` | [cancel_of_lt](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENNRealOperationsOperationsSourceEdition1.lean/declarations/cancel-of-lt.md) | 268 | `result-track:c0a42df1e3cfa1cda0b2a0eb0dad6afd4b7dda5f634ed345611a37d8099f44dc` |
| 63 | `theorem` | [cancel_of_lt'](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENNRealOperationsOperationsSourceEdition1.lean/declarations/cancel-of-lt-source-edition-2.md) | 272 | `result-track:cdcd72a2766d0e8607ff1c82210b1a497a3d0378d5d876384a6d44fd6f1eb643` |
| 64 | `theorem` | [cancel_coe](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENNRealOperationsOperationsSourceEdition1.lean/declarations/cancel-coe.md) | 276 | `result-track:fa125a23cb0f0d66fb14a94c3de76026fc2b672f7853c52226d2260e0c7cf578` |
| 65 | `theorem` | [add_right_inj](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENNRealOperationsOperationsSourceEdition1.lean/declarations/add-right-inj.md) | 279 | `result-track:e4b5dacaa3834a6c599a31d30103d7ceea46545e9e586e0f6c0a033bf9df2924` |
| 66 | `theorem` | [add_left_inj](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENNRealOperationsOperationsSourceEdition1.lean/declarations/add-left-inj.md) | 282 | `result-track:21b49111ae22e4c0df62f4df1143ffe3fddb5cf6b2ae8d7747ef63ba0c02b6f8` |
| 67 | `theorem` | [sub_eq_sInf](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENNRealOperationsOperationsSourceEdition1.lean/declarations/sub-eq-sinf.md) | 289 | `result-track:142cd34fcbd61cc88032ede2f559e1a02024d423f0f3d94aeae9dc6f219b74a0` |
| 68 | `theorem` | [coe_sub](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENNRealOperationsOperationsSourceEdition1.lean/declarations/coe-sub.md) | 293 | `result-track:df0a166c83c07bc686a1c0a11e187fae130832bef6d6c5d8170f33446ba9c4b9` |
| 69 | `theorem` | [top_sub_coe](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENNRealOperationsOperationsSourceEdition1.lean/declarations/top-sub-coe.md) | 296 | `result-track:a6389162c6b0a0a843a7980d00fdef320812c999be2c4e4cca7959dd1d5bd2a4` |
| 70 | `lemma` | [top_sub](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENNRealOperationsOperationsSourceEdition1.lean/declarations/top-sub.md) | 298 | `result-track:24d7d6ea2508a930d32e3165186c02f659d7b166e235ddab099d560421788f6e` |
| 71 | `theorem` | [sub_top](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENNRealOperationsOperationsSourceEdition1.lean/declarations/sub-top.md) | 301 | `result-track:bd83f72c7e03b4e25c3b2e9b131825d3a9dd268a2d6b00e11a9ac34987e386a0` |
| 72 | `theorem` | [sub_eq_top_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENNRealOperationsOperationsSourceEdition1.lean/declarations/sub-eq-top-iff.md) | 303 | `result-track:c1a5d0f05c37aa1e0f72f5ae80352ec290b359f8ac6b3aafe43d6dc47309f1fb` |
| 73 | `lemma` | [sub_ne_top_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENNRealOperationsOperationsSourceEdition1.lean/declarations/sub-ne-top-iff.md) | 304 | `result-track:f0fa82650eec65938a44f450a16b5db23d3b2eb7363b21bab97c7953b8bbdb83` |
| 74 | `theorem` | [sub_ne_top](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENNRealOperationsOperationsSourceEdition1.lean/declarations/sub-ne-top.md) | 308 | `result-track:45a667467b1063095d25b0e1b53417ee2d124d3efc8b83a9d5ed1f9eeb27a3d1` |
| 75 | `theorem` | [natCast_sub](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENNRealOperationsOperationsSourceEdition1.lean/declarations/natcast-sub.md) | 311 | `result-track:e95a667e4a3198a2cfa7705cf4543131dff72c1e98da3f7ea6b43195d4694f30` |
| 76 | `theorem` | [sub_eq_of_eq_add](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENNRealOperationsOperationsSourceEdition1.lean/declarations/sub-eq-of-eq-add.md) | 316 | `result-track:3f9d52f2afe1ccfdb1db163fc7298cee156dec43b84f70fc0b98e7b39b221d2e` |
| 77 | `lemma` | [sub_eq_of_eq_add'](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENNRealOperationsOperationsSourceEdition1.lean/declarations/sub-eq-of-eq-add-source-edition-2.md) | 321 | `result-track:7b9a45a1b63c3ff4091dc6439c1d24f0d8ef1d71442c390ad9a747a0b29f2ec7` |
| 78 | `theorem` | [eq_sub_of_add_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENNRealOperationsOperationsSourceEdition1.lean/declarations/eq-sub-of-add-eq.md) | 326 | `result-track:2235b6c303428027ee32e4bfe0316ca1d50ddd50fb4d4617ab24a85417ddd99f` |
| 79 | `lemma` | [eq_sub_of_add_eq'](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENNRealOperationsOperationsSourceEdition1.lean/declarations/eq-sub-of-add-eq-source-edition-2.md) | 331 | `result-track:6ca68db31dfd30782496776838a99ffa4aff1372fa01bca953394d4d2cd1ec78` |
| 80 | `theorem` | [sub_eq_of_eq_add_rev](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENNRealOperationsOperationsSourceEdition1.lean/declarations/sub-eq-of-eq-add-rev-source-edition-2.md) | 336 | `result-track:b22f9a02c9fc1b9bc908cd76c90e1b99a428a38f967cda2d93ea3f36f66aec05` |
| 81 | `lemma` | [sub_eq_of_eq_add_rev'](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENNRealOperationsOperationsSourceEdition1.lean/declarations/sub-eq-of-eq-add-rev.md) | 341 | `result-track:3418eb13703c71bb1adfbdde5c4291ebb660c839bd5f97eb859d735821db236f` |
| 82 | `theorem` | [add_sub_cancel_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENNRealOperationsOperationsSourceEdition1.lean/declarations/add-sub-cancel-left.md) | 344 | `result-track:687f307535ee3ab385a6d1f5e7ef323f810d99dc2947e0065c0d8b508668921d` |
| 83 | `theorem` | [add_sub_cancel_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENNRealOperationsOperationsSourceEdition1.lean/declarations/add-sub-cancel-right.md) | 347 | `result-track:c276309eab668fe27d6bf0bd89a498123af22d09daaddf7b2925151e821b7205` |
| 84 | `theorem` | [sub_add_eq_add_sub](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENNRealOperationsOperationsSourceEdition1.lean/declarations/sub-add-eq-add-sub.md) | 350 | `result-track:d07b3a49194e9da9e9c190610e77b74c93431fcffcd1ca194430025303a6cbeb` |
| 85 | `theorem` | [lt_add_of_sub_lt_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENNRealOperationsOperationsSourceEdition1.lean/declarations/lt-add-of-sub-lt-left.md) | 358 | `result-track:4db40d32df8c512bea9e09ff4a45fc9fe629658022e94028ce482ddb7f049206` |
| 86 | `theorem` | [lt_add_of_sub_lt_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENNRealOperationsOperationsSourceEdition1.lean/declarations/lt-add-of-sub-lt-right.md) | 364 | `result-track:89389e5e97c1ca9bc29813b83d9e6fe0ace81aef4067e5b5d5a077de07d95ef2` |
| 87 | `theorem` | [le_sub_of_add_le_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENNRealOperationsOperationsSourceEdition1.lean/declarations/le-sub-of-add-le-left.md) | 367 | `result-track:73a28ceee35fd5b1d22a6848b76910f095d12cd9bd727ec43b5446f94be3238e` |
| 88 | `theorem` | [le_sub_of_add_le_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENNRealOperationsOperationsSourceEdition1.lean/declarations/le-sub-of-add-le-right.md) | 370 | `result-track:7b5c040028631f3067bf69401c0c64e641d3fcd46f2ca4dd5a7a9cef63aa6a23` |
| 89 | `theorem` | [sub_lt_of_lt_add](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENNRealOperationsOperationsSourceEdition1.lean/declarations/sub-lt-of-lt-add.md) | 373 | `result-track:e9a63d8874afbd9e3176ac17a96fb8399e89a80ad0170da98c3a56eb044c0bbf` |
| 90 | `theorem` | [sub_lt_iff_lt_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENNRealOperationsOperationsSourceEdition1.lean/declarations/sub-lt-iff-lt-right.md) | 376 | `result-track:02affa4cb67ca61cb7f598d1296bd7f842715225216949d3225862c52c0d5a60` |
| 91 | `theorem` | [sub_lt_self](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENNRealOperationsOperationsSourceEdition1.lean/declarations/sub-lt-self.md) | 379 | `result-track:6f6518b0408a25a1a1c29c66885d35193e72b9206ba6b4beaba44cd9f2aff05e` |
| 92 | `theorem` | [sub_lt_self_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENNRealOperationsOperationsSourceEdition1.lean/declarations/sub-lt-self-iff.md) | 382 | `result-track:78234347e2a41a85aa98d9ccb3632967938e3419f9fe0223dc039954da28e543` |
| 93 | `theorem` | [sub_lt_of_sub_lt](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENNRealOperationsOperationsSourceEdition1.lean/declarations/sub-lt-of-sub-lt.md) | 385 | `result-track:9eb7341785ad78d12b3477818519320dbe8ce20342e0dc56cfdc62c10c064a95` |
| 94 | `theorem` | [sub_sub_cancel](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENNRealOperationsOperationsSourceEdition1.lean/declarations/sub-sub-cancel.md) | 388 | `result-track:5bff7e65e8215c4f6e6f5b77743b2163eb1928895c23698331eb332a9c627913` |
| 95 | `theorem` | [sub_right_inj](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENNRealOperationsOperationsSourceEdition1.lean/declarations/sub-right-inj.md) | 391 | `result-track:dd1781cbac0d8526708540764021796d632ac42e650f47ab7b7987b725f974d5` |
| 96 | `theorem` | [sub_mul](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENNRealOperationsOperationsSourceEdition1.lean/declarations/sub-mul.md) | 396 | `result-track:3723d3e19dae2304dffc6e23d6bfc2c4a15b80c595e42c6f3cc01f20f920e15b` |
| 97 | `theorem` | [mul_sub](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENNRealOperationsOperationsSourceEdition1.lean/declarations/mul-sub.md) | 401 | `result-track:0b611dd00213c62c88f0c7a6351925c6ecb31a0c31bc642bdd1916cdaca17f42` |
| 98 | `theorem` | [sub_le_sub_iff_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENNRealOperationsOperationsSourceEdition1.lean/declarations/sub-le-sub-iff-left.md) | 405 | `result-track:9e1c6da428afcca9b444134f044993f8b5b94e62aa970726b2fb366adbfab54c` |
| 99 | `theorem` | [le_toReal_sub](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENNRealOperationsOperationsSourceEdition1.lean/declarations/le-toreal-sub.md) | 409 | `result-track:8fba8d2fb1545e6ac6c0da6ea2cc9c6b348aa22c7f4504ebfd8aec9470608c6c` |
| 100 | `lemma` | [toNNReal_sub](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENNRealOperationsOperationsSourceEdition1.lean/declarations/tonnreal-sub.md) | 417 | `result-track:30bb07b94093a087e50ebf73fc3dcbcabe0540f34ce91091ed5324b39dce5c9a` |
| 101 | `lemma` | [toReal_sub_of_le](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENNRealOperationsOperationsSourceEdition1.lean/declarations/toreal-sub-of-le.md) | 421 | `result-track:703f6dee4629d21f7786e1fb279b26178156a550932ac97275ecd87572de4f5c` |
| 102 | `theorem` | [ofReal_sub](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENNRealOperationsOperationsSourceEdition1.lean/declarations/ofreal-sub.md) | 424 | `result-track:3c7578123adc7087d0cb37d4a5a218ae4b49ab6476e0c702502818c0236237b5` |
| 103 | `theorem` | [Ico_eq_Iio](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENNRealOperationsOperationsSourceEdition1.lean/declarations/ico-eq-iio.md) | 437 | `result-track:44747c93d908a65c4517c4c224344eabfe5ee94c0bb41e42984f12886c2ab784` |
| 104 | `theorem` | [mem_Iio_self_add](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENNRealOperationsOperationsSourceEdition1.lean/declarations/mem-iio-self-add.md) | 440 | `result-track:a0fdea89a79ebe8342a87901eb3ce30818e298b56a1d12e0104b4fed34966971` |
| 105 | `theorem` | [mem_Ioo_self_sub_add](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENNRealOperationsOperationsSourceEdition1.lean/declarations/mem-ioo-self-sub-add.md) | 442 | `result-track:0cff22e2de247f64f611db8f4f368960c8c683b2a6b6d638f5160661cdb13869` |
| 106 | `theorem` | [image_coe_Iic](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENNRealOperationsOperationsSourceEdition1.lean/declarations/image-coe-iic.md) | 446 | `result-track:2f200107e8b8b42150b387265baa143100db22d6bb52117a34488ab9840c632a` |
| 107 | `theorem` | [image_coe_Ici](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENNRealOperationsOperationsSourceEdition1.lean/declarations/image-coe-ici.md) | 449 | `result-track:d4c8881a230df88280a5ff0ef4272833faecf573ad8d258c536d5e75c64ee0f0` |
| 108 | `theorem` | [image_coe_Iio](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENNRealOperationsOperationsSourceEdition1.lean/declarations/image-coe-iio.md) | 452 | `result-track:c5893c8ed16e6681cd0a7d126da726936d2fdeee22d1d377e975655e073f37c2` |
| 109 | `theorem` | [image_coe_Ioi](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENNRealOperationsOperationsSourceEdition1.lean/declarations/image-coe-ioi.md) | 455 | `result-track:3db0e90d3aea04c5fc3507eab78afcd1effa5c3e812155cb83479e864a649d07` |
| 110 | `theorem` | [image_coe_Icc](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENNRealOperationsOperationsSourceEdition1.lean/declarations/image-coe-icc.md) | 458 | `result-track:0aae021164ed86d432edd4c4ffd6367c4ab8183da1e008bb2624a85f3738ca81` |
| 111 | `theorem` | [image_coe_Ico](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENNRealOperationsOperationsSourceEdition1.lean/declarations/image-coe-ico.md) | 461 | `result-track:5d249114e7a2556ead71fd7727a5b8ca99afb38248f19c4cbcaec61f2e73fe6f` |
| 112 | `theorem` | [image_coe_Ioc](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENNRealOperationsOperationsSourceEdition1.lean/declarations/image-coe-ioc.md) | 464 | `result-track:65d90e87e6df6aa9120e24bbaa8cccf9faa7dee18e4c0d4cf2788d115ab2dcd1` |
| 113 | `theorem` | [image_coe_Ioo](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENNRealOperationsOperationsSourceEdition1.lean/declarations/image-coe-ioo.md) | 467 | `result-track:c335ed225475b5510aac2f20495781db66a8cc3c945e48d1f8250400efabd371` |
| 114 | `theorem` | [image_coe_uIcc](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENNRealOperationsOperationsSourceEdition1.lean/declarations/image-coe-uicc.md) | 470 | `result-track:666c77ebce4aa5ad4dda034bdbc2c26539b2a8563e4332127e4942e4fcbc8048` |
| 115 | `theorem` | [image_coe_uIoc](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENNRealOperationsOperationsSourceEdition1.lean/declarations/image-coe-uioc.md) | 473 | `result-track:142f135d88723e03fdacc23959abd258e0574a0fd58c09848f95d14f678b2ced` |
| 116 | `theorem` | [image_coe_uIoo](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENNRealOperationsOperationsSourceEdition1.lean/declarations/image-coe-uioo.md) | 476 | `result-track:f06aa7bb0be8f3ef8778a3d4b62744715f13d5b4543c6630d48ba187aafb743f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0d199dd595576afb49ddd51e54207333f9d6d7f733388db8bc9412cd8686b274 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Operations/Variant19368bfe4c9ded633d1f2509939cff4d5ff431666bd0e22a46cfb426e3557a37.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Operations/Variant19368bfe4c9ded633d1f2509939cff4d5ff431666bd0e22a46cfb426e3557a37.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
