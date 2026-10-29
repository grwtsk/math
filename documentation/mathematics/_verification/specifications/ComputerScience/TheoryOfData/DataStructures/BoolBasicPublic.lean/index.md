# Verification target: Bool Basic Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "379f3330aa8e7d36fbc36ae2041ea7af0f235813",
  "lexical_observation_count": 68,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant3ce3bd75ab40d3b03752e1f268dbb2ee1a3c9646de141ebabcad900c2a9df96c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `379f3330aa8e7d36fbc36ae2041ea7af0f235813`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant3ce3bd75ab40d3b03752e1f268dbb2ee1a3c9646de141ebabcad900c2a9df96c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant3ce3bd75ab40d3b03752e1f268dbb2ee1a3c9646de141ebabcad900c2a9df96c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [true_eq_false_eq_False](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicPublic.lean/declarations/true-eq-false-eq-false.md) | 33 | `result-track:a8e9afd5d10bbca2f593677348796dda1d2fcc6bb1c2f0ab120f05746bc0be6d` |
| 2 | `theorem` | [false_eq_true_eq_False](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicPublic.lean/declarations/false-eq-true-eq-false.md) | 35 | `result-track:11d694944eb64cf96942b5fe62f860fa84b3e0db79f5d493e9158c0fa5086a13` |
| 3 | `theorem` | [eq_false_eq_not_eq_true](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicPublic.lean/declarations/eq-false-eq-not-eq-true.md) | 37 | `result-track:30021e1c9eb6242592762ccec54d55fd46c19225f4d175b8ebc3ceb859577f43` |
| 4 | `theorem` | [eq_true_eq_not_eq_false](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicPublic.lean/declarations/eq-true-eq-not-eq-false.md) | 39 | `result-track:7b4f2f97535303c380108d24193c8bddde8364389688520beb5894124eed935f` |
| 5 | `theorem` | [eq_false_of_not_eq_true](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicPublic.lean/declarations/eq-false-of-not-eq-true-source-edition-2.md) | 41 | `result-track:2879aa0158685b884dee7b5ac5619fd63beea2d475172cdf9094fb7a471f82b7` |
| 6 | `theorem` | [eq_true_of_not_eq_false](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicPublic.lean/declarations/eq-true-of-not-eq-false.md) | 44 | `result-track:87c0f696ba9b81239910abd8776974cfaecdff8e911d22f8af95b024a5cca186` |
| 7 | `theorem` | [and_eq_true_eq_eq_true_and_eq_true](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicPublic.lean/declarations/and-eq-true-eq-eq-true-and-eq-true.md) | 47 | `result-track:e14fd1c2af81df76993ed4c41198d1cafdfcb5bf89f8ceee69288c0b2f803100` |
| 8 | `theorem` | [or_eq_true_eq_eq_true_or_eq_true](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicPublic.lean/declarations/or-eq-true-eq-eq-true-or-eq-true.md) | 50 | `result-track:1c453e6cb28ab1e1ced4e88fdc378c426e8dfc7ec3e690793ce7adfaaaacc6df` |
| 9 | `theorem` | [not_eq_true_eq_eq_false](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicPublic.lean/declarations/not-eq-true-eq-eq-false.md) | 53 | `result-track:b925ad14d4be94118990b863296d3bb610a58ceabaa0640f6cba827ff0108be9` |
| 10 | `theorem` | [and_eq_false_eq_eq_false_or_eq_false](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicPublic.lean/declarations/and-eq-false-eq-eq-false-or-eq-false.md) | 55 | `result-track:6fb0c9f4cf886fba0b78d54e8303ca2d141708f9aa0c0048ee69287cdf8cd43c` |
| 11 | `theorem` | [or_eq_false_eq_eq_false_and_eq_false](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicPublic.lean/declarations/or-eq-false-eq-eq-false-and-eq-false.md) | 58 | `result-track:354cebf45d1cc29631c22c9eb2cf575238333a8fd3cc32fc3a6e9d2710aef83d` |
| 12 | `theorem` | [not_eq_false_eq_eq_true](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicPublic.lean/declarations/not-eq-false-eq-eq-true.md) | 61 | `result-track:83f48cf9e23d542b0a7d7fc20c562a9edfb6d8c01894a1ad98aa158abbf865ca` |
| 13 | `theorem` | [coe_false](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicPublic.lean/declarations/coe-false.md) | 63 | `result-track:56252e159618c13bbd06e46262cc678213b8739e42e9b78653d92e5d4e7a9769` |
| 14 | `theorem` | [coe_true](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicPublic.lean/declarations/coe-true.md) | 65 | `result-track:2e54b5e38e5754a78d4f191bf815b77fca5e0eddd0e71c8de9bb549592d83710` |
| 15 | `theorem` | [coe_sort_false](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicPublic.lean/declarations/coe-sort-false.md) | 67 | `result-track:3d003887a4ebcdf2c5aaca3474af01401305988e6a449a4969d09e921f138f92` |
| 16 | `theorem` | [coe_sort_true](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicPublic.lean/declarations/coe-sort-true.md) | 69 | `result-track:26b083fc4b2fcf86ae0fcc230cbe708d5fae558e25c42d1386973b04de8b94d4` |
| 17 | `theorem` | [decide_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicPublic.lean/declarations/decide-iff.md) | 71 | `result-track:0f61123078e3ccff2a5cdc22ecf7e412c1af78a146bfa9a258345f9741c5c4d3` |
| 18 | `theorem` | [decide_true](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicPublic.lean/declarations/decide-true.md) | 73 | `result-track:1639d2a16c39a202504846fcec832c37f22bd2a289e0a4094de0b133789b6a66` |
| 19 | `theorem` | [of_decide_true](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicPublic.lean/declarations/of-decide-true.md) | 76 | `result-track:a175d7a20078dfdebaa26694ee18968fdca0961612dc4602658a1e2c8a16e5a5` |
| 20 | `theorem` | [bool_iff_false](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicPublic.lean/declarations/bool-iff-false.md) | 79 | `result-track:8567ab3d8a5e93ddc84bde9ed2fce11ef802673a36697380951dd27e1507c614` |
| 21 | `theorem` | [bool_eq_false](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicPublic.lean/declarations/bool-eq-false.md) | 81 | `result-track:c4fcbaaf2f907abcf3cd51e230195d5ef13c9e8b41f357a074212dc9e5dcf3e7` |
| 22 | `theorem` | [decide_false_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicPublic.lean/declarations/decide-false-iff.md) | 84 | `result-track:19cd1c365f1c694288baa83dcb38a729646467cf5ecccb0e5b295ab9445fcca2` |
| 23 | `theorem` | [decide_false](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicPublic.lean/declarations/decide-false.md) | 87 | `result-track:4a1bc8bf9bec4c62124f760ed2a5fe9027e0c4e03f892051c2ec05b09e58c647` |
| 24 | `theorem` | [of_decide_false](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicPublic.lean/declarations/of-decide-false.md) | 90 | `result-track:e1b99aa6bd613f53376df6aa042cb85e0ad1eafc2ea50f41539039e87b44eead` |
| 25 | `theorem` | [decide_congr](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicPublic.lean/declarations/decide-congr.md) | 93 | `result-track:637b2f2319ed3124c149d7bc569758f16ec4e009bf9835305741f30faac01961` |
| 26 | `theorem` | [coe_xor_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicPublic.lean/declarations/coe-xor-iff.md) | 96 | `result-track:7858172bc1200dc235574d834ceb6d21aac0ba9488b10bbc2e668fdd0afcb129` |
| 27 | `theorem` | [dichotomy](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicPublic.lean/declarations/dichotomy.md) | 100 | `result-track:c71daed6559267ca47035b79c50d73471cc0f135b5b2de0b9838befbfd5780ae` |
| 28 | `theorem` | [not_ne_id](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicPublic.lean/declarations/not-ne-id.md) | 102 | `result-track:eb0d96e23ae135d811658d90c56133a520a3d6c382deffc7954a320b478a05b1` |
| 29 | `theorem` | [or_inl](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicPublic.lean/declarations/or-inl.md) | 104 | `result-track:0453e0f808b6ece053f504ba4b0fda45f0383e297cffb816e9e866296d3809f4` |
| 30 | `theorem` | [or_inr](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicPublic.lean/declarations/or-inr.md) | 106 | `result-track:802ddf02742ea8c59fe1da37d71e388dd9f1cb21c65238e8d1b990b9d37de7f4` |
| 31 | `theorem` | [and_elim_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicPublic.lean/declarations/and-elim-left.md) | 108 | `result-track:b973010b5c56aa1396521f9a4639d720c5208744be4bcfde8baa29edf2bb983a` |
| 32 | `theorem` | [and_intro](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicPublic.lean/declarations/and-intro.md) | 110 | `result-track:fda3dc9cba4d7560bb821bae9906962a0be70f3c05870b319d00a26777ef3285` |
| 33 | `theorem` | [and_elim_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicPublic.lean/declarations/and-elim-right.md) | 112 | `result-track:522ddd96709a155627f040501c134ed55ac110a58a537ca1818a8dda3b82968a` |
| 34 | `lemma` | [eq_not_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicPublic.lean/declarations/eq-not-iff.md) | 114 | `result-track:92b37d2f947e234c06bdab84a2ad8499a966ec52d241d3e8619243b9b330a206` |
| 35 | `lemma` | [not_eq_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicPublic.lean/declarations/not-eq-iff.md) | 116 | `result-track:455167552b6086add6ad48245f0685c2b82ec5d8bdf5d3f238c99168c9a1382a` |
| 36 | `theorem` | [ne_not](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicPublic.lean/declarations/ne-not.md) | 118 | `result-track:d55f74fd0d3d7a6ecfcf0912b644d65257a417e891c7ddf9e2e1bd7327301ca4` |
| 37 | `lemma` | [not_ne_self](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicPublic.lean/declarations/not-ne-self.md) | 121 | `result-track:a2b6f0ad1da4124b1a461aad9d897ad75b36b9cb681081ffd360bec772351d7c` |
| 38 | `lemma` | [self_ne_not](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicPublic.lean/declarations/self-ne-not.md) | 123 | `result-track:b432fe0f3bce0c518eafb93408dda0fe688c1908aca068e8cd1ed8bcb9c97a24` |
| 39 | `lemma` | [eq_or_eq_not](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicPublic.lean/declarations/eq-or-eq-not.md) | 125 | `result-track:e4001fc13e86186d761b9b2a2288a038459bcfa66d1833c021f3dde7a39bb859` |
| 40 | `theorem` | [not_iff_not](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicPublic.lean/declarations/not-iff-not.md) | 128 | `result-track:cfc751f0b375059ac0e423ab6f09982096bf976510302dff51da74b61902c9e4` |
| 41 | `theorem` | [eq_true_of_not_eq_false'](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicPublic.lean/declarations/eq-true-of-not-eq-false-source-edition-2.md) | 130 | `result-track:f0c96a5531c81475fffc311ebdd3071aaf60e15a72c1d97a5dafa82689602ffc` |
| 42 | `theorem` | [eq_false_of_not_eq_true'](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicPublic.lean/declarations/eq-false-of-not-eq-true.md) | 132 | `result-track:20b58a21e4e904f2b525fd9a6335221e13d1de867dba056a3c9218714f5fbbae` |
| 43 | `theorem` | [bne_eq_xor](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicPublic.lean/declarations/bne-eq-xor.md) | 134 | `result-track:5375245cf535a447661b195c74bfb96d0bf43d08472f46e93d8423d845cf8492` |
| 44 | `theorem` | [xor_iff_ne](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicPublic.lean/declarations/xor-iff-ne.md) | 138 | `result-track:a98ff4271d2b92ae17d780720605718e57d5fe88d90f6cdcc840fe16fe6819c2` |
| 45 | `instance` | [linearOrder](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicPublic.lean/declarations/linearorder.md) | 142 | `declaration-track:6e38d6410c2ea6d1c1793c92c4ee564a04809ede75cbcc7ee5ac0397acde2a68` |
| 46 | `theorem` | [lt_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicPublic.lean/declarations/lt-iff.md) | 154 | `result-track:289301499ea0fbaac84e61a897ae7937d5eb6d6b18a82206fc009c574a46bf8c` |
| 47 | `theorem` | [false_lt_true](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicPublic.lean/declarations/false-lt-true.md) | 157 | `result-track:50628bb3bf5916128db2089aa257bc4bab5e348c2ff02b7f41a1c7e5679337c0` |
| 48 | `theorem` | [le_iff_imp](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicPublic.lean/declarations/le-iff-imp.md) | 160 | `result-track:f931165d1779f655f984cdf95ec11a5159c5d4f0204a2bfccffa5c1b79243181` |
| 49 | `theorem` | [and_le_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicPublic.lean/declarations/and-le-left.md) | 162 | `result-track:d18e8f5c40ded384d2d0b356b1934eed20bafbf1f6add7c2b115da17210a699d` |
| 50 | `theorem` | [and_le_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicPublic.lean/declarations/and-le-right.md) | 164 | `result-track:ca0792d0abc4231ff43cb315f127091b859cd94b5a17fb0d9bb41319eea91411` |
| 51 | `theorem` | [le_and](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicPublic.lean/declarations/le-and.md) | 166 | `result-track:0e3b68fa13e3c775cec7af55d9bc0b9de057fce57e14e62af2c12ce177d819c1` |
| 52 | `theorem` | [left_le_or](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicPublic.lean/declarations/left-le-or.md) | 168 | `result-track:b7eed98f54b18ae76a5c2d7d6ce50a82f8c7be0362febb3b26c4e5b3c318e8c3` |
| 53 | `theorem` | [right_le_or](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicPublic.lean/declarations/right-le-or.md) | 170 | `result-track:fbb56190cd40a93e9ed1adfeabd7d6952c7c0821bb80e8a734cc6bb6953fd4c7` |
| 54 | `theorem` | [or_le](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicPublic.lean/declarations/or-le.md) | 172 | `result-track:7caa42f8b728275a1d6a966c3e4472faeb6cb392a2e78ea215138a150086f3ac` |
| 55 | `def` | [ofNat](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicPublic.lean/declarations/ofnat.md) | 175 | `declaration-track:b52ac0cad666eb098b2ba47eea580634bbd85281f78d4a01e12e612605dce806` |
| 56 | `theorem` | [ofNat_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicPublic.lean/declarations/ofnat-zero.md) | 179 | `result-track:0bd93416ac58398bca8272483e81261f3b483b5bf91975b6e794adfeb3d1688d` |
| 57 | `theorem` | [ofNat_add_one](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicPublic.lean/declarations/ofnat-add-one.md) | 182 | `result-track:f124eaefcf1cf79c5682922660fab9cded03b9de95b731d742a0842460c8d5f9` |
| 58 | `lemma` | [toNat_beq_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicPublic.lean/declarations/tonat-beq-zero.md) | 184 | `result-track:b3179af1c543e79f5f41d18dcd22de249828a5572e92c06a690362f44eb2cdf0` |
| 59 | `lemma` | [toNat_bne_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicPublic.lean/declarations/tonat-bne-zero.md) | 185 | `result-track:81d046e825d6b145e7a935aef3649d90dab8c1dece1cceb009ce94c6356f3421` |
| 60 | `lemma` | [toNat_beq_one](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicPublic.lean/declarations/tonat-beq-one.md) | 186 | `result-track:690d142202a6c1786d7f5f1acb4dcc104d514c8c50a75f66092deb9795f28df8` |
| 61 | `lemma` | [toNat_bne_one](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicPublic.lean/declarations/tonat-bne-one.md) | 187 | `result-track:82aacbd2cee89ea3d5e5a64bfd04fa0213ec31cd18c54e9c05fc0ce4aa852aa5` |
| 62 | `theorem` | [ofNat_le_ofNat](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicPublic.lean/declarations/ofnat-le-ofnat.md) | 189 | `result-track:fd4799075cfb5fffd661d8ed77c0d50763c93e290e967eb9cb052a4828ca1193` |
| 63 | `theorem` | [toNat_le_toNat](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicPublic.lean/declarations/tonat-le-tonat.md) | 195 | `result-track:26274d4d79436e588d97fd3c5e223322fc5db6ea9cc9f17b7ba64732f0adda9f` |
| 64 | `theorem` | [ofNat_toNat](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicPublic.lean/declarations/ofnat-tonat.md) | 198 | `result-track:123e269b4882da2b08bbfffb1717cb71edee0e556ee31d17f24c565a8908c971` |
| 65 | `theorem` | [injective_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicPublic.lean/declarations/injective-iff.md) | 201 | `result-track:b857cb529710355cadd5d3085dde97eadf2bf68a73bade82f97801cba5adcbe4` |
| 66 | `theorem` | [apply_apply_apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicPublic.lean/declarations/apply-apply-apply.md) | 205 | `result-track:ca33f13d156c979db237022e5311c4abe270ec19a880650d370a623479bf3ddd` |
| 67 | `def` | [xor3](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicPublic.lean/declarations/xor3.md) | 209 | `declaration-track:8c2a3dc187d40c94c1e793a5de5b8753e61e2f8dd11e3a0fd5d7134d1d7b3170` |
| 68 | `def` | [carry](../../../../../../ComputerScience/TheoryOfData/DataStructures/BoolBasicPublic.lean/declarations/carry.md) | 213 | `declaration-track:d164f47e060f5372aff0730e0ac1944b093ae3c714b4baa3bfc6227a3141cb27` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2691f678bca2010f548f7caec15e8e9cc49b57cde724ae765e702a082921614f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant3ce3bd75ab40d3b03752e1f268dbb2ee1a3c9646de141ebabcad900c2a9df96c.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant3ce3bd75ab40d3b03752e1f268dbb2ee1a3c9646de141ebabcad900c2a9df96c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
