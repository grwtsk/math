# Verification target: To String Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f8dfeb93afb18f4425f9fde6d752603c4e9701bf",
  "lexical_observation_count": 77,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToString/Variant43a1553ab1a83506038f2011c3127d17950ff5cc8fe292b341409e0dcbe519bb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/ToStringNamespacedPublic.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/ToStringNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f8dfeb93afb18f4425f9fde6d752603c4e9701bf`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToString/Variant43a1553ab1a83506038f2011c3127d17950ff5cc8fe292b341409e0dcbe519bb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToString/Variant43a1553ab1a83506038f2011c3127d17950ff5cc8fe292b341409e0dcbe519bb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.NotationExtra` — import line 19; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 21; external provider; requires a separately pinned dependency.
- `Init.RCases` — import line 22; external provider; requires a separately pinned dependency.
- `Init.Data.Nat.Lemmas` — import line 23; external provider; requires a separately pinned dependency.
- `Init.Data.Nat.Bitwise` — import line 24; external provider; requires a separately pinned dependency.
- `Init.Data.Nat.Simproc` — import line 25; external provider; requires a separately pinned dependency.
- `Init.WFTactics` — import line 26; external provider; requires a separately pinned dependency.
- `Init.Data.Char.Lemmas` — import line 27; external provider; requires a separately pinned dependency.
- `Init.Data.Nat.Div.Lemmas` — import line 28; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [isDigit_digitChar](../../../../../ComputerScience/AlgorithmsInComputerScience/ToStringNamespacedPublic.lean/declarations/isdigit-digitchar.md) | 43 | `result-track:ab7576510bf83c2f9c592622b087ac071d155f6b9a24221b5c91866463780ebf` |
| 2 | `theorem` | [digitChar_iff_aux](../../../../../ComputerScience/AlgorithmsInComputerScience/ToStringNamespacedPublic.lean/declarations/digitchar-iff-aux.md) | 50 | `result-track:8bb86dd7edc1e4f2ee309147656ac74d77318b785be21110d5dda93c69740075` |
| 3 | `theorem` | [digitChar_eq_zero](../../../../../ComputerScience/AlgorithmsInComputerScience/ToStringNamespacedPublic.lean/declarations/digitchar-eq-zero.md) | 62 | `result-track:06c785dee8d62e25da5eaf1761d63f2bd7aac12313263e9ed0ed0754c7811c07` |
| 4 | `theorem` | [digitChar_eq_one](../../../../../ComputerScience/AlgorithmsInComputerScience/ToStringNamespacedPublic.lean/declarations/digitchar-eq-one.md) | 63 | `result-track:f52e522ce2f1c0ef468a6dda5cb43ea630af37c0955428884921a8e1e6368cd0` |
| 5 | `theorem` | [digitChar_eq_two](../../../../../ComputerScience/AlgorithmsInComputerScience/ToStringNamespacedPublic.lean/declarations/digitchar-eq-two.md) | 64 | `result-track:68742fa53ed35d54404058bcc134e411723b520b77da3c56b2e2c23c2d0dbd03` |
| 6 | `theorem` | [digitChar_eq_three](../../../../../ComputerScience/AlgorithmsInComputerScience/ToStringNamespacedPublic.lean/declarations/digitchar-eq-three.md) | 65 | `result-track:2ddc437ea026e25d712732924b4ef1f78c9ca6deccdebdfae1f286039663d9ee` |
| 7 | `theorem` | [digitChar_eq_four](../../../../../ComputerScience/AlgorithmsInComputerScience/ToStringNamespacedPublic.lean/declarations/digitchar-eq-four.md) | 66 | `result-track:04f0eda6a408372c58be873f0883a56f4ed5d5ef3344b800157a3d85f7859944` |
| 8 | `theorem` | [digitChar_eq_five](../../../../../ComputerScience/AlgorithmsInComputerScience/ToStringNamespacedPublic.lean/declarations/digitchar-eq-five.md) | 67 | `result-track:15c811b0fa66befb34aaa77487dc305261928e02145a9e2958f40c4d803b770f` |
| 9 | `theorem` | [digitChar_eq_six](../../../../../ComputerScience/AlgorithmsInComputerScience/ToStringNamespacedPublic.lean/declarations/digitchar-eq-six.md) | 68 | `result-track:20a57087409979f52ca6a3fc1829debd12d771de4b6292d1fb3c622e7f1b9af4` |
| 10 | `theorem` | [digitChar_eq_seven](../../../../../ComputerScience/AlgorithmsInComputerScience/ToStringNamespacedPublic.lean/declarations/digitchar-eq-seven.md) | 69 | `result-track:e5c53ab9359616870eea86694d5e65696947f370572c37f7379a9890d0e1a3e7` |
| 11 | `theorem` | [digitChar_eq_eight](../../../../../ComputerScience/AlgorithmsInComputerScience/ToStringNamespacedPublic.lean/declarations/digitchar-eq-eight.md) | 70 | `result-track:3c784a04102e7e0747e78c8597fd7991ae7b8bde64930c9019e57ba51c2e9e47` |
| 12 | `theorem` | [digitChar_eq_nine](../../../../../ComputerScience/AlgorithmsInComputerScience/ToStringNamespacedPublic.lean/declarations/digitchar-eq-nine.md) | 71 | `result-track:efe69b99615a9b4a1c707609d66c4d685ff8f8d59fd99341ecb4500a9fe9a9e7` |
| 13 | `theorem` | [digitChar_eq_a](../../../../../ComputerScience/AlgorithmsInComputerScience/ToStringNamespacedPublic.lean/declarations/digitchar-eq-a.md) | 72 | `result-track:19cf5c70004e9e37952f7571c67cebff1ee227a8d2619800c1ff16da0ede1dfd` |
| 14 | `theorem` | [digitChar_eq_b](../../../../../ComputerScience/AlgorithmsInComputerScience/ToStringNamespacedPublic.lean/declarations/digitchar-eq-b.md) | 73 | `result-track:af5ea8a25725c0881c60c43c2a88dec856237890340fe6863bad7a38475de8d2` |
| 15 | `theorem` | [digitChar_eq_c](../../../../../ComputerScience/AlgorithmsInComputerScience/ToStringNamespacedPublic.lean/declarations/digitchar-eq-c.md) | 74 | `result-track:4db89dbce2bbade52482cabc8bf587e88fff9ebf8e8fad672313a867ac5204c3` |
| 16 | `theorem` | [digitChar_eq_d](../../../../../ComputerScience/AlgorithmsInComputerScience/ToStringNamespacedPublic.lean/declarations/digitchar-eq-d.md) | 75 | `result-track:9d1a98950d311e0b0df67e8aea881df80b61dd2de2711f79099deefd4bf5c352` |
| 17 | `theorem` | [digitChar_eq_e](../../../../../ComputerScience/AlgorithmsInComputerScience/ToStringNamespacedPublic.lean/declarations/digitchar-eq-e.md) | 76 | `result-track:302aaa3d5640bf9a55149a279de7dfbb681b6dd4bcbb389cf0d337402dffe035` |
| 18 | `theorem` | [digitChar_eq_f](../../../../../ComputerScience/AlgorithmsInComputerScience/ToStringNamespacedPublic.lean/declarations/digitchar-eq-f.md) | 77 | `result-track:b25285547799b424997765aa9014a8087f186605bfc8c94ba32594ace4d5eb4f` |
| 19 | `theorem` | [digitChar_eq_star](../../../../../ComputerScience/AlgorithmsInComputerScience/ToStringNamespacedPublic.lean/declarations/digitchar-eq-star.md) | 78 | `result-track:e1b7042e42758214fbaed29228a261b635046c1319ab1792ce3dca58042fd0d8` |
| 20 | `theorem` | [zero_eq_digitChar](../../../../../ComputerScience/AlgorithmsInComputerScience/ToStringNamespacedPublic.lean/declarations/zero-eq-digitchar.md) | 80 | `result-track:13fa80b4ee331c5b787c25d40eb9ef230144523e13b20b9c152acb902c49a646` |
| 21 | `theorem` | [one_eq_digitChar](../../../../../ComputerScience/AlgorithmsInComputerScience/ToStringNamespacedPublic.lean/declarations/one-eq-digitchar.md) | 81 | `result-track:06735783e6dfa2c9521eda36630ad3d7d87713695449735c87926ac7420926ab` |
| 22 | `theorem` | [two_eq_digitChar](../../../../../ComputerScience/AlgorithmsInComputerScience/ToStringNamespacedPublic.lean/declarations/two-eq-digitchar.md) | 82 | `result-track:2f2177a75a3f4360595853b4fac623ace99d8e260d80a6c82963470dafd4d396` |
| 23 | `theorem` | [three_eq_digitChar](../../../../../ComputerScience/AlgorithmsInComputerScience/ToStringNamespacedPublic.lean/declarations/three-eq-digitchar.md) | 83 | `result-track:2d6621923169a639f382d569a68792c5ab7a7baa689e71a13049d40e51329d1e` |
| 24 | `theorem` | [four_eq_digitChar](../../../../../ComputerScience/AlgorithmsInComputerScience/ToStringNamespacedPublic.lean/declarations/four-eq-digitchar.md) | 84 | `result-track:6d83b074e72a4e0623415381b3383294b1a2d23db7bc83314ee99afb9ddf588e` |
| 25 | `theorem` | [five_eq_digitChar](../../../../../ComputerScience/AlgorithmsInComputerScience/ToStringNamespacedPublic.lean/declarations/five-eq-digitchar.md) | 85 | `result-track:26575996b3c13aceefca970242db2eae24a3c5e14163cab79417c243044645dd` |
| 26 | `theorem` | [six_eq_digitChar](../../../../../ComputerScience/AlgorithmsInComputerScience/ToStringNamespacedPublic.lean/declarations/six-eq-digitchar.md) | 86 | `result-track:b3e2be23c52af45c0b06147dc8c9d7a0571eb48f22279de0257344aa3f17b9c4` |
| 27 | `theorem` | [seven_eq_digitChar](../../../../../ComputerScience/AlgorithmsInComputerScience/ToStringNamespacedPublic.lean/declarations/seven-eq-digitchar.md) | 87 | `result-track:a65468cd5258f79caabd6e79b5b3009c3a8adc835fd7855a3ae13c249a1fae7d` |
| 28 | `theorem` | [eight_eq_digitChar](../../../../../ComputerScience/AlgorithmsInComputerScience/ToStringNamespacedPublic.lean/declarations/eight-eq-digitchar.md) | 88 | `result-track:bca11543c81baa9a577f93f15a8231b93a539391f6d53955d347d251df50b23f` |
| 29 | `theorem` | [nine_eq_digitChar](../../../../../ComputerScience/AlgorithmsInComputerScience/ToStringNamespacedPublic.lean/declarations/nine-eq-digitchar.md) | 89 | `result-track:ac21b47d31caf2f3d3886d69a6bec74bb371387a967fcc653ce5d9c163077518` |
| 30 | `theorem` | [a_eq_digitChar](../../../../../ComputerScience/AlgorithmsInComputerScience/ToStringNamespacedPublic.lean/declarations/a-eq-digitchar.md) | 90 | `result-track:f84e5593ebf9870df571b803b2cd65a134174019cd1117b4bc0244610e927bec` |
| 31 | `theorem` | [b_eq_digitChar](../../../../../ComputerScience/AlgorithmsInComputerScience/ToStringNamespacedPublic.lean/declarations/b-eq-digitchar.md) | 91 | `result-track:c053c791265c67647377311405c26dc76cec351b098afd5e808d6159b7795422` |
| 32 | `theorem` | [c_eq_digitChar](../../../../../ComputerScience/AlgorithmsInComputerScience/ToStringNamespacedPublic.lean/declarations/c-eq-digitchar.md) | 92 | `result-track:aa27eb46e1eda244fbb41c03fd810b4afb17728b84f683771fb565cd93d82ed9` |
| 33 | `theorem` | [d_eq_digitChar](../../../../../ComputerScience/AlgorithmsInComputerScience/ToStringNamespacedPublic.lean/declarations/d-eq-digitchar.md) | 93 | `result-track:00ad5a64be1c693637979e2ab4d4ccc6f72b8ea3da2e6ce7dcba0862412be27a` |
| 34 | `theorem` | [e_eq_digitChar](../../../../../ComputerScience/AlgorithmsInComputerScience/ToStringNamespacedPublic.lean/declarations/e-eq-digitchar.md) | 94 | `result-track:1e154f76db1473a338b8ebb7f4ad637c2d29b8483dbc35e12b7e5bc769c8f02b` |
| 35 | `theorem` | [f_eq_digitChar](../../../../../ComputerScience/AlgorithmsInComputerScience/ToStringNamespacedPublic.lean/declarations/f-eq-digitchar.md) | 95 | `result-track:86cd965e029b3338a60a68d04f58705cc4d02387a28a0c336db44ae7dbc7a39f` |
| 36 | `theorem` | [star_eq_digitChar](../../../../../ComputerScience/AlgorithmsInComputerScience/ToStringNamespacedPublic.lean/declarations/star-eq-digitchar.md) | 96 | `result-track:d68f3a2e149c513e15cf3983e7f45b5e64bc26d85446b2ffff9967f46b93fa8b` |
| 37 | `theorem` | [digitChar_ne](../../../../../ComputerScience/AlgorithmsInComputerScience/ToStringNamespacedPublic.lean/declarations/digitchar-ne.md) | 99 | `result-track:c632edfa61e325a6b499bdfc357fdcfb5e68bdcc615740b294e5a27a0a11a974` |
| 38 | `theorem` | [toNat_digitChar_of_lt_ten](../../../../../ComputerScience/AlgorithmsInComputerScience/ToStringNamespacedPublic.lean/declarations/tonat-digitchar-of-lt-ten.md) | 107 | `result-track:2d2e0c21d26469ab7db6120a4c231e2ea2f81e75d61ae12c8f116803edbde496` |
| 39 | `theorem` | [toNat_digitChar_sub_48_of_lt_ten](../../../../../ComputerScience/AlgorithmsInComputerScience/ToStringNamespacedPublic.lean/declarations/tonat-digitchar-sub-48-of-lt-ten.md) | 112 | `result-track:709d08481a9b574079cc0668552a521dad3980f42df2dafbe05d2e7c612d9ed8` |
| 40 | `theorem` | [isDigit_of_mem_toDigitsCore](../../../../../ComputerScience/AlgorithmsInComputerScience/ToStringNamespacedPublic.lean/declarations/isdigit-of-mem-todigitscore.md) | 115 | `result-track:b3a79fe92a8e40df228350e1ede3d8b6607472888750a6180f725d84ceb25dbb` |
| 41 | `theorem` | [isDigit_of_mem_toDigits](../../../../../ComputerScience/AlgorithmsInComputerScience/ToStringNamespacedPublic.lean/declarations/isdigit-of-mem-todigits.md) | 128 | `result-track:342f660f8fdc47009a822b75f36a7084b51ca4b5a4e6b6c1c0f53e6220845246` |
| 42 | `theorem` | [underscore_not_in_toDigits](../../../../../ComputerScience/AlgorithmsInComputerScience/ToStringNamespacedPublic.lean/declarations/underscore-not-in-todigits.md) | 132 | `result-track:272bd2ec2d434c559352e7d05a530e9c29cae502f8eb1cce7ef924d8c6caa6dc` |
| 43 | `theorem` | [toDigitsCore_of_lt_base](../../../../../ComputerScience/AlgorithmsInComputerScience/ToStringNamespacedPublic.lean/declarations/todigitscore-of-lt-base.md) | 136 | `result-track:ab07edd45e80ca49b89f245952d8be54df4e2e436a265ed08b1a9d5163ee4127` |
| 44 | `theorem` | [toDigits_of_lt_base](../../../../../ComputerScience/AlgorithmsInComputerScience/ToStringNamespacedPublic.lean/declarations/todigits-of-lt-base.md) | 141 | `result-track:60257f99fb8207c2d9d09be6c1fb51c175e2cecefb01d9388ee514c9235fdf12` |
| 45 | `theorem` | [toDigits_zero](../../../../../ComputerScience/AlgorithmsInComputerScience/ToStringNamespacedPublic.lean/declarations/todigits-zero.md) | 145 | `result-track:bdebf7896a53ca8393413bb0b3a6661c7e8cc164a0790b96f2d5cb8bd9a20375` |
| 46 | `theorem` | [toDigitsCore_append](../../../../../ComputerScience/AlgorithmsInComputerScience/ToStringNamespacedPublic.lean/declarations/todigitscore-append.md) | 149 | `result-track:871e45a70aacadc4daa03f17a3eead181f516e10cdeed7a2d7186dbf1a092b43` |
| 47 | `theorem` | [toDigitsCore_eq_toDigitsCore_nil_append](../../../../../ComputerScience/AlgorithmsInComputerScience/ToStringNamespacedPublic.lean/declarations/todigitscore-eq-todigitscore-nil-append.md) | 154 | `result-track:3aab5b589ccaf0ed8e51169722c04d449941109ee0d3a3f47330cfd5085deb91` |
| 48 | `theorem` | [toDigitsCore_eq_of_lt_fuel](../../../../../ComputerScience/AlgorithmsInComputerScience/ToStringNamespacedPublic.lean/declarations/todigitscore-eq-of-lt-fuel.md) | 158 | `result-track:89144c488be16143270a280efe542be3b536802130e6477e4e0df0f97160acd4` |
| 49 | `theorem` | [toDigitsCore_toDigitsCore](../../../../../ComputerScience/AlgorithmsInComputerScience/ToStringNamespacedPublic.lean/declarations/todigitscore-todigitscore.md) | 167 | `result-track:e75cfa950a7e2bd62ae6d91a2a8e31e9066bd06ebddba86afe10a686b258f3de` |
| 50 | `theorem` | [toDigits_append_toDigits](../../../../../ComputerScience/AlgorithmsInComputerScience/ToStringNamespacedPublic.lean/declarations/todigits-append-todigits.md) | 185 | `result-track:f483e619803c727fe13aed0dbef46e4c89a0511995b0039c425779a2622612db` |
| 51 | `theorem` | [toDigits_of_base_le](../../../../../ComputerScience/AlgorithmsInComputerScience/ToStringNamespacedPublic.lean/declarations/todigits-of-base-le.md) | 190 | `result-track:2a8eed2462b5bd6a9277b04156320dca59e1fdbd7a1bd0329d4900b0a3314d70` |
| 52 | `theorem` | [toDigits_eq_if](../../../../../ComputerScience/AlgorithmsInComputerScience/ToStringNamespacedPublic.lean/declarations/todigits-eq-if.md) | 197 | `result-track:92eb4bc3960e21afe64a45b1497e5826e770fdabc7b83ff2a2819c9e16329e83` |
| 53 | `theorem` | [length_toDigits_pos](../../../../../ComputerScience/AlgorithmsInComputerScience/ToStringNamespacedPublic.lean/declarations/length-todigits-pos.md) | 203 | `result-track:6d14a2f349c90f75b9d0e5b4c3aef797a2f64162a31bef6751bfe04e3d99a8bd` |
| 54 | `theorem` | [toDigits_ne_nil](../../../../../ComputerScience/AlgorithmsInComputerScience/ToStringNamespacedPublic.lean/declarations/todigits-ne-nil.md) | 213 | `result-track:dfab8a9a3c103fdb00bc6e115f68480693e3249856717e8e7578800fc54cb5e3` |
| 55 | `theorem` | [length_toDigits_le_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/ToStringNamespacedPublic.lean/declarations/length-todigits-le-iff.md) | 217 | `result-track:808f3544b4f633a45664662f7ba8b298431dabe5ccbfbc018b3e3b6a4a8f3154` |
| 56 | `theorem` | [repr_eq_ofList_toDigits](../../../../../ComputerScience/AlgorithmsInComputerScience/ToStringNamespacedPublic.lean/declarations/repr-eq-oflist-todigits.md) | 238 | `result-track:5fec83b6864ba603ef286ec5e35a7e0412d22e289b6bd23a5245c609923a4f3e` |
| 57 | `theorem` | [toList_repr](../../../../../ComputerScience/AlgorithmsInComputerScience/ToStringNamespacedPublic.lean/declarations/tolist-repr.md) | 243 | `result-track:7ceee4339674af5a2bc7c3d6f1e463f150359ff2b40f694eecbb836ddadbcea8` |
| 58 | `theorem` | [repr_ne_empty](../../../../../ComputerScience/AlgorithmsInComputerScience/ToStringNamespacedPublic.lean/declarations/repr-ne-empty.md) | 247 | `result-track:7e77957dedd79f6b77103e71f9c9c8ecd64a07b0f9ed707dbb584152a7d005ea` |
| 59 | `theorem` | [toString_eq_ofList_toDigits](../../../../../ComputerScience/AlgorithmsInComputerScience/ToStringNamespacedPublic.lean/declarations/tostring-eq-oflist-todigits.md) | 250 | `result-track:7666f9321523ef47ff5a33c49454fad3b86db0628a965864fa62e3163de3c8aa` |
| 60 | `theorem` | [toString_eq_repr](../../../../../ComputerScience/AlgorithmsInComputerScience/ToStringNamespacedPublic.lean/declarations/tostring-eq-repr.md) | 255 | `result-track:bcc7db5b0c78e8835ed650d3aae5909dab4ca792929daa294d3d99b3c79efd90` |
| 61 | `theorem` | [reprPrec_eq_repr](../../../../../ComputerScience/AlgorithmsInComputerScience/ToStringNamespacedPublic.lean/declarations/reprprec-eq-repr.md) | 260 | `result-track:39cda8975b6733aba1fe683793d5f759cf0ae0fa7395c291fcf12442006a41c2` |
| 62 | `theorem` | [repr_eq_repr](../../../../../ComputerScience/AlgorithmsInComputerScience/ToStringNamespacedPublic.lean/declarations/repr-eq-repr.md) | 265 | `result-track:c22504f2dd11e1281a83eb3ce6a0ab3f5e9e0481e111d9d909b575c0a8afafca` |
| 63 | `theorem` | [repr_of_lt](../../../../../ComputerScience/AlgorithmsInComputerScience/ToStringNamespacedPublic.lean/declarations/repr-of-lt.md) | 269 | `result-track:e7ab4f78dd20f9d62d0b5345352c4006761af23b4a687013ded2ad2aef17bf8b` |
| 64 | `theorem` | [repr_of_ge](../../../../../ComputerScience/AlgorithmsInComputerScience/ToStringNamespacedPublic.lean/declarations/repr-of-ge.md) | 273 | `result-track:5fa12f46fdd8d716b035862bde3f4d217e27a0d3236f9ac83280398ec82df510` |
| 65 | `theorem` | [repr_eq_repr_append_repr](../../../../../ComputerScience/AlgorithmsInComputerScience/ToStringNamespacedPublic.lean/declarations/repr-eq-repr-append-repr.md) | 278 | `result-track:3338e5451e93ce10aeb3529d5898b841ff987a45e8ec23b9bdae96cdc4cf8b24` |
| 66 | `theorem` | [length_repr_pos](../../../../../ComputerScience/AlgorithmsInComputerScience/ToStringNamespacedPublic.lean/declarations/length-repr-pos.md) | 282 | `result-track:973bedbaa608cc3bf3139bdbadb05ac88d0251a9fed66fc063eaebe4dc8336d5` |
| 67 | `theorem` | [length_repr_le_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/ToStringNamespacedPublic.lean/declarations/length-repr-le-iff.md) | 286 | `result-track:241b888af69e78dd28cb1b06f23bcec7b786e5bdd5b16cae716999831640bd9c` |
| 68 | `def` | [ofDigitChars](../../../../../ComputerScience/AlgorithmsInComputerScience/ToStringNamespacedPublic.lean/declarations/ofdigitchars.md) | 294 | `declaration-track:6eed58606288e142144560fef98811f4d44f9ef093a508dc41226fb311e8e051` |
| 69 | `theorem` | [ofDigitChars_eq_foldl](../../../../../ComputerScience/AlgorithmsInComputerScience/ToStringNamespacedPublic.lean/declarations/ofdigitchars-eq-foldl.md) | 297 | `result-track:e23deedc3bc7f17a302ed627726e58afb582edac62b28476c851758afa9a1aff` |
| 70 | `theorem` | [ofDigitChars_nil](../../../../../ComputerScience/AlgorithmsInComputerScience/ToStringNamespacedPublic.lean/declarations/ofdigitchars-nil.md) | 302 | `result-track:0401a6fb69d9aa46ee3483b8fd239f8a10a5e80b79a9c3ee4fa26ee8a238a3e0` |
| 71 | `theorem` | [ofDigitChars_cons](../../../../../ComputerScience/AlgorithmsInComputerScience/ToStringNamespacedPublic.lean/declarations/ofdigitchars-cons.md) | 305 | `result-track:c32d9bad29404d94f26e4b3805b94199cc6ffb732fbc12fed7ff469c3e2861da` |
| 72 | `theorem` | [ofDigitChars_cons_digitChar_of_lt_ten](../../../../../ComputerScience/AlgorithmsInComputerScience/ToStringNamespacedPublic.lean/declarations/ofdigitchars-cons-digitchar-of-lt-ten.md) | 309 | `result-track:24d5245234fe136f61a6af8a140f4309a448a0d5db05f6ca9876f2465cff2477` |
| 73 | `theorem` | [ofDigitChars_eq_ofDigitChars_zero](../../../../../ComputerScience/AlgorithmsInComputerScience/ToStringNamespacedPublic.lean/declarations/ofdigitchars-eq-ofdigitchars-zero.md) | 313 | `result-track:ba991c474424aae94822a67cb4bbb7739d8524c43c09082c257689e746a53d3e` |
| 74 | `theorem` | [ofDigitChars_append](../../../../../ComputerScience/AlgorithmsInComputerScience/ToStringNamespacedPublic.lean/declarations/ofdigitchars-append.md) | 322 | `result-track:77b19ce23cc4c4c81f584c40d376ce955e8cd0c7aedbe9135ccc56ffc6850513` |
| 75 | `theorem` | [ofDigitChars_replicate_zero](../../../../../ComputerScience/AlgorithmsInComputerScience/ToStringNamespacedPublic.lean/declarations/ofdigitchars-replicate-zero.md) | 327 | `result-track:9402d22f51460ed612610759f0973eb9849cc1ec4a11145a6b7bcf8e910ed5ce` |
| 76 | `theorem` | [ofDigitChars_toDigits](../../../../../ComputerScience/AlgorithmsInComputerScience/ToStringNamespacedPublic.lean/declarations/ofdigitchars-todigits.md) | 332 | `result-track:2cd804ec5a356425ed6c74a4fe488e922ba6c57a0d234b11120673f64a5f2779` |
| 77 | `theorem` | [ofDigitChars_ten_toDigits](../../../../../ComputerScience/AlgorithmsInComputerScience/ToStringNamespacedPublic.lean/declarations/ofdigitchars-ten-todigits.md) | 342 | `result-track:921724f3c993fd34311ccf5cba2c1a011575625b7d4d5c1dbe02de836cb5c0c8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=43139c76c0b417a42be31f67edec1b41fef72a2f4a2f3d38af47149c5b9d5f2c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToString/Variant43a1553ab1a83506038f2011c3127d17950ff5cc8fe292b341409e0dcbe519bb.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToString/Variant43a1553ab1a83506038f2011c3127d17950ff5cc8fe292b341409e0dcbe519bb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
