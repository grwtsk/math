# Verification target: Ring Parity

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ba62ac318a0a3cbc9cc815f83ec331ab41512b7a",
  "lexical_observation_count": 96,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Parity/Variantebf91bf7de110c702c07fccd224fb2ee84bcae16248d46170561fa20fd9e101b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../AssociativeRingsAndAlgebras/RingParity.lean/index.md) · [Full source](../../../../AssociativeRingsAndAlgebras/RingParity.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ba62ac318a0a3cbc9cc815f83ec331ab41512b7a`.

Source path: `GRWTSK/Algebra/Parity/Variantebf91bf7de110c702c07fccd224fb2ee84bcae16248d46170561fa20fd9e101b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Parity/Variantebf91bf7de110c702c07fccd224fb2ee84bcae16248d46170561fa20fd9e101b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Nat.Even` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Cast.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Cast.Commute` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Operations` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Function.Iterate` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [Even.neg_pow](../../../../AssociativeRingsAndAlgebras/RingParity.lean/declarations/even-neg-pow.md) | 39 | `result-track:3a7f4d6b44d6ceb04229ba1dc4e5b2e2603abbf1ae3917b55ab1256bed408864` |
| 2 | `lemma` | [Even.neg_one_pow](../../../../AssociativeRingsAndAlgebras/RingParity.lean/declarations/even-neg-one-pow.md) | 43 | `result-track:68a07a08475f719a1098b05cb35f7bcef9111d0239d9ddf4e9b4b5797f9c3972` |
| 3 | `lemma` | [Even.neg_zpow](../../../../AssociativeRingsAndAlgebras/RingParity.lean/declarations/even-neg-zpow.md) | 50 | `result-track:7b768e97a78920ea2cc59c1d07ab3c094aeeb99da86ba36f6d38705f1e1eb117` |
| 4 | `lemma` | [Even.neg_one_zpow](../../../../AssociativeRingsAndAlgebras/RingParity.lean/declarations/even-neg-one-zpow.md) | 53 | `result-track:99ffe53edc09deb40c020630c7353fff21df178e835c974f70ac985d3ef23fc1` |
| 5 | `lemma` | [IsSquare.zero](../../../../AssociativeRingsAndAlgebras/RingParity.lean/declarations/issquare-zero.md) | 57 | `result-track:e62e8db2d72a0c84b47d7d0bb6a1d93a2cb3da5a81d82e3507277e113beb4584` |
| 6 | `lemma` | [even_iff_exists_two_mul](../../../../AssociativeRingsAndAlgebras/RingParity.lean/declarations/even-iff-exists-two-mul.md) | 62 | `result-track:7000171f602ac02343c5a7294b4921b0f336907d1f653125eedf3e88f87573c3` |
| 7 | `lemma` | [even_iff_two_dvd](../../../../AssociativeRingsAndAlgebras/RingParity.lean/declarations/even-iff-two-dvd.md) | 64 | `result-track:6ee0719cd352e52490ca2f0365c090e014192b299674c6f0f0c128eafbac5dd4` |
| 8 | `lemma` | [Even.trans_dvd](../../../../AssociativeRingsAndAlgebras/RingParity.lean/declarations/even-trans-dvd.md) | 68 | `result-track:ea806a8542e78f237c12994a61245c712b4e9d36ff3102a045eb88c54e9dcc1a` |
| 9 | `lemma` | [Dvd.dvd.even](../../../../AssociativeRingsAndAlgebras/RingParity.lean/declarations/dvd-dvd-even.md) | 71 | `result-track:20883722a781d3c90796a4fc1626e279d0805741933f50ad3f2e1ec15ebe7a53` |
| 10 | `lemma` | [range_two_mul](../../../../AssociativeRingsAndAlgebras/RingParity.lean/declarations/range-two-mul.md) | 73 | `result-track:3a42390004e630a39404cb15590f71756577bf45e25d2f6dbe73064be21e481c` |
| 11 | `lemma` | [even_two](../../../../AssociativeRingsAndAlgebras/RingParity.lean/declarations/even-two.md) | 78 | `result-track:6f9dd10ffa84ef4b92d2b863c8fd6387de3914897126513c9481cfd5b0753c6d` |
| 12 | `lemma` | [Even.mul_left](../../../../AssociativeRingsAndAlgebras/RingParity.lean/declarations/even-mul-left.md) | 80 | `result-track:39a180e891e7d936d1b1c8ba362ce8c48cd2e71185433b3a17e149e1ebd4aca8` |
| 13 | `lemma` | [Even.mul_right](../../../../AssociativeRingsAndAlgebras/RingParity.lean/declarations/even-mul-right.md) | 82 | `result-track:77a8f8bc499dfed20b017c840f5bafaaa9e28147ac50bfb699bf4a10c458df91` |
| 14 | `lemma` | [even_two_mul](../../../../AssociativeRingsAndAlgebras/RingParity.lean/declarations/even-two-mul.md) | 84 | `result-track:caafbee7c5060289cf402825d3634c330292be6814614c2e6e5427f48154f59c` |
| 15 | `lemma` | [Even.pow_of_ne_zero](../../../../AssociativeRingsAndAlgebras/RingParity.lean/declarations/even-pow-of-ne-zero.md) | 86 | `result-track:06a7ae2bbf96006263f6bcab1a46a5cce27657cad528e9ce127a6f0f021f5ef9` |
| 16 | `def` | [Odd](../../../../AssociativeRingsAndAlgebras/RingParity.lean/declarations/odd.md) | 90 | `declaration-track:6b226f70c83e79a6c482fa516ccb8306412a6e248e54b3250807ee4c6ce4eaa9` |
| 17 | `lemma` | [odd_iff_exists_bit1](../../../../AssociativeRingsAndAlgebras/RingParity.lean/declarations/odd-iff-exists-bit1.md) | 92 | `result-track:8280540452bf6b93093da951862fa065b93029c85346ccf1cd096c8a5919aa89` |
| 18 | `lemma` | [range_two_mul_add_one](../../../../AssociativeRingsAndAlgebras/RingParity.lean/declarations/range-two-mul-add-one.md) | 96 | `result-track:e45784129548c6830b8a42f024fafa892ad25c7f907989e318570ce58956c0ca` |
| 19 | `lemma` | [Even.add_odd](../../../../AssociativeRingsAndAlgebras/RingParity.lean/declarations/even-add-odd.md) | 99 | `result-track:5be3ec15a7c942caeb7623c16b277b9a647f9ebd5710bb9b8c21b04a5c9e9508` |
| 20 | `lemma` | [Even.odd_add](../../../../AssociativeRingsAndAlgebras/RingParity.lean/declarations/even-odd-add.md) | 102 | `result-track:881251cf36654cf737cac99e6fc1f6ba871e8f84d77ffa83324bfba4a49c3e2d` |
| 21 | `lemma` | [Odd.add_even](../../../../AssociativeRingsAndAlgebras/RingParity.lean/declarations/odd-add-even.md) | 103 | `result-track:ec620cc39bf7b5c98aca49aaceb3c41373f94a43ac5b0a63746a1b334f132056` |
| 22 | `lemma` | [Odd.add_odd](../../../../AssociativeRingsAndAlgebras/RingParity.lean/declarations/odd-add-odd.md) | 105 | `result-track:0af68e85a0ecf3ef53b5bbd062640b2846c51f85e38d5dcfd14a68570ebda24f` |
| 23 | `lemma` | [odd_one](../../../../AssociativeRingsAndAlgebras/RingParity.lean/declarations/odd-one.md) | 111 | `result-track:19e650031dbe531ee86093845d6deb55676b3d42ab770d47c7f04de691821a6b` |
| 24 | `lemma` | [Even.add_one](../../../../AssociativeRingsAndAlgebras/RingParity.lean/declarations/even-add-one.md) | 114 | `result-track:ff22b129db5265be2c91a89e4ab3cde890f2ded0ebf400abc226d270dfc5e372` |
| 25 | `lemma` | [Even.one_add](../../../../AssociativeRingsAndAlgebras/RingParity.lean/declarations/even-one-add.md) | 115 | `result-track:77f2c58efd63d43fec3a8358c96ef066bbc6d64c990b4211bbdbc69fc9104518` |
| 26 | `lemma` | [Odd.add_one](../../../../AssociativeRingsAndAlgebras/RingParity.lean/declarations/odd-add-one-source-edition-2.md) | 116 | `result-track:c0ef60e6499278a04a88f428ffead06947b00a2a3c1a161f864cd00d69b138fb` |
| 27 | `lemma` | [Odd.one_add](../../../../AssociativeRingsAndAlgebras/RingParity.lean/declarations/odd-one-add.md) | 117 | `result-track:1ba2f44635e03e3b16387198ae51e451e662c8c73968022c31ac7542699e7b9e` |
| 28 | `lemma` | [odd_two_mul_add_one](../../../../AssociativeRingsAndAlgebras/RingParity.lean/declarations/odd-two-mul-add-one.md) | 119 | `result-track:769d6ee929f8cfcfc77725e8c5ab0e99ea30ac745122552acb6840a1b90d202e` |
| 29 | `lemma` | [odd_add_self_one'](../../../../AssociativeRingsAndAlgebras/RingParity.lean/declarations/odd-add-self-one.md) | 121 | `result-track:9dcda5f1de41de2c015e9c559d0034e610333bc20d0b0623d2e9be4ea257f29f` |
| 30 | `lemma` | [odd_add_one_self](../../../../AssociativeRingsAndAlgebras/RingParity.lean/declarations/odd-add-one-self-source-edition-2.md) | 122 | `result-track:bd6e79cdd46149b3774e78319080ca0afac5080595f1b74a8aa10a605c476cf6` |
| 31 | `lemma` | [odd_add_one_self'](../../../../AssociativeRingsAndAlgebras/RingParity.lean/declarations/odd-add-one-self.md) | 123 | `result-track:1400451ddc1ce36b36129dc2858662f9a7e0e1d1c7d9fa4cd42d84e61ebd2d2d` |
| 32 | `lemma` | [Odd.map](../../../../AssociativeRingsAndAlgebras/RingParity.lean/declarations/odd-map.md) | 125 | `result-track:30fa4da5f217d1d2f7dcc65fde0c2fc9947d0f6c02e0befb9976e6195ee56720` |
| 33 | `lemma` | [Odd.natCast](../../../../AssociativeRingsAndAlgebras/RingParity.lean/declarations/odd-natcast.md) | 128 | `result-track:9eb84ae4b5b70c5dd34557e5faecdda07f06f067104080ffa807b8a8e554267d` |
| 34 | `lemma` | [Odd.mul](../../../../AssociativeRingsAndAlgebras/RingParity.lean/declarations/odd-mul.md) | 131 | `result-track:10dc88d39b79708efc38df65f13abf66eb4f76cc13f005e9531a00f5950d6a50` |
| 35 | `lemma` | [Odd.pow](../../../../AssociativeRingsAndAlgebras/RingParity.lean/declarations/odd-pow.md) | 137 | `result-track:36c901bd7da62caa3fa1de679877b144d1cabf1978723b505bc4d007f811ff7c` |
| 36 | `lemma` | [Odd.pow_add_pow_eq_zero](../../../../AssociativeRingsAndAlgebras/RingParity.lean/declarations/odd-pow-add-pow-eq-zero.md) | 143 | `result-track:c7faa82366a605a6e120400b90e18b0751c356ce18ea08e4a815701467322664` |
| 37 | `lemma` | [Odd.neg_pow](../../../../AssociativeRingsAndAlgebras/RingParity.lean/declarations/odd-neg-pow.md) | 162 | `result-track:ce54c9293b5096ac96c62c5ea34eec139b726fe6faaa34483245a3a2e61b3cf1` |
| 38 | `lemma` | [Odd.neg_one_pow](../../../../AssociativeRingsAndAlgebras/RingParity.lean/declarations/odd-neg-one-pow.md) | 165 | `result-track:2ace3084e6faaa168771b2bc9580e678e237c79b7106782408927012136585b2` |
| 39 | `lemma` | [even_neg_two](../../../../AssociativeRingsAndAlgebras/RingParity.lean/declarations/even-neg-two.md) | 172 | `result-track:01337a49cc765f41a23f0988993db964b3be73ec6542c85839c11e85812797a4` |
| 40 | `lemma` | [Odd.neg](../../../../AssociativeRingsAndAlgebras/RingParity.lean/declarations/odd-neg-source-edition-2.md) | 174 | `result-track:f1972a751c12762973167f584dc29944995dd147c518d0f3356dde51c5a06ceb` |
| 41 | `lemma` | [odd_neg](../../../../AssociativeRingsAndAlgebras/RingParity.lean/declarations/odd-neg.md) | 180 | `result-track:d1464c7f1e91f6dcc5b7f3dc11c9b7920b37d86ea1a81f5b53fb6921c5fcec1b` |
| 42 | `lemma` | [odd_neg_one](../../../../AssociativeRingsAndAlgebras/RingParity.lean/declarations/odd-neg-one.md) | 182 | `result-track:f448f3e28d460e6df66541fbf55f1ca69ea8fda5d8f9c9069b17c1e190891b87` |
| 43 | `lemma` | [Odd.sub_even](../../../../AssociativeRingsAndAlgebras/RingParity.lean/declarations/odd-sub-even-source-edition-2.md) | 184 | `result-track:b819d37b0cd34ed30288b009e79229764c8e6de47aa5c7bff238630c0c44602f` |
| 44 | `lemma` | [Even.sub_odd](../../../../AssociativeRingsAndAlgebras/RingParity.lean/declarations/even-sub-odd.md) | 187 | `result-track:4232e5e1f99a69e20bfb33e52dd1e79ee0aa0b449297753db77717bc690f076d` |
| 45 | `lemma` | [Odd.sub_odd](../../../../AssociativeRingsAndAlgebras/RingParity.lean/declarations/odd-sub-odd-source-edition-2.md) | 190 | `result-track:c9d45e1d6bdfe7eb97a2c4df243e96614ef589a4f8c1fe7bdd6709b6d27d993a` |
| 46 | `lemma` | [odd_iff](../../../../AssociativeRingsAndAlgebras/RingParity.lean/declarations/odd-iff.md) | 198 | `result-track:dea7fed3c61e0b68172ec46c734d67bad71fb608301220a404dab5fc83863450` |
| 47 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/RingParity.lean/declarations/instance.md) | 201 | `declaration-track:8b20230633044f4a8d0ca27907aff1935c2b6ae8512c169db00986228871c9ec` |
| 48 | `lemma` | [not_odd_iff](../../../../AssociativeRingsAndAlgebras/RingParity.lean/declarations/not-odd-iff.md) | 203 | `result-track:6c52b0eed103db0edef9b15694d1b642c354256e47d99be8ceb764ce5fdf40e9` |
| 49 | `lemma` | [not_odd_iff_even](../../../../AssociativeRingsAndAlgebras/RingParity.lean/declarations/not-odd-iff-even.md) | 205 | `result-track:9152f75fb7cc85641947d0aa52d79245677657165c98de37c10f2a99abdc90b7` |
| 50 | `lemma` | [not_even_iff_odd](../../../../AssociativeRingsAndAlgebras/RingParity.lean/declarations/not-even-iff-odd.md) | 206 | `result-track:c32123191c013a9bc57f311baddb01c365bf07bf3c45c1ae172e2909120f865d` |
| 51 | `lemma` | [not_odd_zero](../../../../AssociativeRingsAndAlgebras/RingParity.lean/declarations/not-odd-zero.md) | 208 | `result-track:23ab7be3d3b8ec48927e3ad33d5ae4f2407cd4229655b6f97e05cb6f5d886793` |
| 52 | `lemma` | [_root_.Odd.not_two_dvd_nat](../../../../AssociativeRingsAndAlgebras/RingParity.lean/declarations/root-odd-not-two-dvd-nat.md) | 210 | `result-track:149e32960e5f5a52dab6905085d840c406c5738512c2dbae6c70e449f3d188a3` |
| 53 | `lemma` | [even_xor_odd](../../../../AssociativeRingsAndAlgebras/RingParity.lean/declarations/even-xor-odd.md) | 213 | `result-track:167e6c62706905aabdc6c0527298d06d080c52f61a819dcef210ba1bc672035a` |
| 54 | `lemma` | [even_or_odd](../../../../AssociativeRingsAndAlgebras/RingParity.lean/declarations/even-or-odd-source-edition-2.md) | 216 | `result-track:6a53d6e92a485254c813c11116c240a320a7eef541943c34c24d96369edd3b47` |
| 55 | `lemma` | [even_or_odd'](../../../../AssociativeRingsAndAlgebras/RingParity.lean/declarations/even-or-odd.md) | 218 | `result-track:1b371c445e2cd2e3071f0b15cb14610dd50a877b73becbf8cd6a8a02292bdaeb` |
| 56 | `lemma` | [even_xor_odd'](../../../../AssociativeRingsAndAlgebras/RingParity.lean/declarations/even-xor-odd-source-edition-2.md) | 221 | `result-track:d26d42ca86d0e0dc2f145f663ca5293efa4dc66153fc785cdc70caafbe195a92` |
| 57 | `lemma` | [odd_add_one](../../../../AssociativeRingsAndAlgebras/RingParity.lean/declarations/odd-add-one.md) | 226 | `result-track:5ea2e275ca2a8c0c6ca8f55f7a77d5db3b430f8f93143eb2b541c9794c38ccf3` |
| 58 | `lemma` | [mod_two_add_add_odd_mod_two](../../../../AssociativeRingsAndAlgebras/RingParity.lean/declarations/mod-two-add-add-odd-mod-two.md) | 229 | `result-track:2ece64fe524c66999910f054e1d99e4f60ed7edc4564f740fc33b0523e5c48f2` |
| 59 | `lemma` | [mod_two_add_succ_mod_two](../../../../AssociativeRingsAndAlgebras/RingParity.lean/declarations/mod-two-add-succ-mod-two.md) | 233 | `result-track:901662768957df28caa3c0468521f12d9f2f3d35cd208d95ebff9e2b838f5d71` |
| 60 | `lemma` | [succ_mod_two_add_mod_two](../../../../AssociativeRingsAndAlgebras/RingParity.lean/declarations/succ-mod-two-add-mod-two.md) | 236 | `result-track:4fe4102f84b446a85dd12a09ccdf57815744688d6ba25640271c284ca23f0190` |
| 61 | `lemma` | [even_add'](../../../../AssociativeRingsAndAlgebras/RingParity.lean/declarations/even-add.md) | 239 | `result-track:33f4d7a1db95b1a53439eca556506d0f0ec367b90ff96111fca32bc615b174af` |
| 62 | `lemma` | [not_even_bit1](../../../../AssociativeRingsAndAlgebras/RingParity.lean/declarations/not-even-bit1.md) | 242 | `result-track:c03a09c988271f7488819c99f8ed5ee182648a4471ce29a8b6d7fbdf755ad94a` |
| 63 | `lemma` | [not_even_two_mul_add_one](../../../../AssociativeRingsAndAlgebras/RingParity.lean/declarations/not-even-two-mul-add-one.md) | 244 | `result-track:37ff3acd9ac21982eed110732bce7af29e34fa5e50e3f07b80c2697b9fed7b45` |
| 64 | `lemma` | [even_sub'](../../../../AssociativeRingsAndAlgebras/RingParity.lean/declarations/even-sub.md) | 247 | `result-track:a9b1aec08976cbdf70a24695a12bcd9e5d31c530698ec1c9fa2ba899c0f3d7b5` |
| 65 | `lemma` | [Odd.sub_odd](../../../../AssociativeRingsAndAlgebras/RingParity.lean/declarations/odd-sub-odd.md) | 250 | `result-track:2aec3d9a907a84abc1476407197206f5282d4fb7ba56654b0a013993b0ca3f30` |
| 66 | `lemma` | [odd_mul](../../../../AssociativeRingsAndAlgebras/RingParity.lean/declarations/odd-mul-source-edition-2.md) | 256 | `result-track:c686f45bd3ff98021adf33ba8a5f1a02cbd0b73e51fdcf1eeb73f65d86832951` |
| 67 | `lemma` | [Odd.of_mul_left](../../../../AssociativeRingsAndAlgebras/RingParity.lean/declarations/odd-of-mul-left.md) | 258 | `result-track:f715342f51f6d8ae8479aa3f1ddf8c3f86bc4aac4b908d0c2ac8177d84bef3b9` |
| 68 | `lemma` | [Odd.of_mul_right](../../../../AssociativeRingsAndAlgebras/RingParity.lean/declarations/odd-of-mul-right.md) | 261 | `result-track:43a15f3e440cec4a8884882fee9c4138ac6814a88bf551cf185c065d9f03e48a` |
| 69 | `lemma` | [even_div](../../../../AssociativeRingsAndAlgebras/RingParity.lean/declarations/even-div.md) | 264 | `result-track:07ae0a00a9e8924f9b3800440f27247b22bf42693a4c55980a10947c2a359ca7` |
| 70 | `lemma` | [odd_add](../../../../AssociativeRingsAndAlgebras/RingParity.lean/declarations/odd-add-source-edition-2.md) | 267 | `result-track:6e66ed48c653545163aa1fc1ec2e24d460be8ff9bcef46cc9adeae99d1b6aed5` |
| 71 | `lemma` | [odd_add'](../../../../AssociativeRingsAndAlgebras/RingParity.lean/declarations/odd-add.md) | 270 | `result-track:4b10cf0d8bb42b8bce6bdfede98d5292210b40eae71e9bdd52f3a9f18b0a625e` |
| 72 | `lemma` | [ne_of_odd_add](../../../../AssociativeRingsAndAlgebras/RingParity.lean/declarations/ne-of-odd-add.md) | 272 | `result-track:9ffa0b49800df462a0e55d46fcfef301651f5358c39190f1f48170f6092d53c4` |
| 73 | `lemma` | [odd_sub](../../../../AssociativeRingsAndAlgebras/RingParity.lean/declarations/odd-sub-source-edition-2.md) | 274 | `result-track:c0661835b7dfe44e75706e88448ce5c6fa79c1a319409aafb42441554e9973e3` |
| 74 | `lemma` | [Odd.sub_even](../../../../AssociativeRingsAndAlgebras/RingParity.lean/declarations/odd-sub-even.md) | 277 | `result-track:2ed0eeafdcba25099be405d41ac0f47f38d78429797758b90908b1bc28a197f7` |
| 75 | `lemma` | [odd_sub'](../../../../AssociativeRingsAndAlgebras/RingParity.lean/declarations/odd-sub.md) | 280 | `result-track:2e5b97f34903c12fc74562c8a0e575dad1fae649910cd4d5997c97a3f4ca61c8` |
| 76 | `lemma` | [Even.sub_odd](../../../../AssociativeRingsAndAlgebras/RingParity.lean/declarations/even-sub-odd-source-edition-2.md) | 283 | `result-track:fbae46eca2184450ed363e79bcbd15f8c0cf2e79af7903324070d22340dab937` |
| 77 | `lemma` | [two_mul_div_two_add_one_of_odd](../../../../AssociativeRingsAndAlgebras/RingParity.lean/declarations/two-mul-div-two-add-one-of-odd.md) | 286 | `result-track:cf79e95973e1c27cbb06357b0e3f7cf23d3b9fd297701934f5b9d68ec053cda1` |
| 78 | `lemma` | [div_two_mul_two_add_one_of_odd](../../../../AssociativeRingsAndAlgebras/RingParity.lean/declarations/div-two-mul-two-add-one-of-odd.md) | 289 | `result-track:223a8c6b731e100c0eae6509c14d241fcc668cac0197751bebcb8dd20299c370` |
| 79 | `lemma` | [one_add_div_two_mul_two_of_odd](../../../../AssociativeRingsAndAlgebras/RingParity.lean/declarations/one-add-div-two-mul-two-of-odd.md) | 292 | `result-track:2a72ccc8dc40f9fbdbd898ac83cff93e61a8a3784b620e25c841c5e57147ab66` |
| 80 | `example` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/RingParity.lean/declarations/example.md) | 296 | `declaration-track:ae17109172a89fd7792f99a9a9262d0fa5ed3e3c6765f56d5c68b6a7d8ce9d6b` |
| 81 | `example` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/RingParity.lean/declarations/example-source-edition-2.md) | 299 | `declaration-track:b3cb6f8d36fd7fef2bd62e8973e569c471dc35a0164ad22a631575c506a54817` |
| 82 | `lemma` | [iterate_bit0](../../../../AssociativeRingsAndAlgebras/RingParity.lean/declarations/iterate-bit0.md) | 313 | `result-track:1126bd7e66a5f3bc263f1f8b62d9f884f22cee4599454907edc228373233a380` |
| 83 | `lemma` | [iterate_bit1](../../../../AssociativeRingsAndAlgebras/RingParity.lean/declarations/iterate-bit1.md) | 316 | `result-track:9fb42290d0991f2d03e2905f6927b80f33af803458bee48c8d681fce9d3f7038` |
| 84 | `lemma` | [iterate_two_mul](../../../../AssociativeRingsAndAlgebras/RingParity.lean/declarations/iterate-two-mul.md) | 321 | `result-track:06a9b52932aac17985791acacf396062e700da2b83c80a9e70f8189d85a479b7` |
| 85 | `lemma` | [iterate_even](../../../../AssociativeRingsAndAlgebras/RingParity.lean/declarations/iterate-even.md) | 324 | `result-track:6895cb09d0f140edd5047b9c975f5be5d259d21c2ea9e1e8af5fc97894f371e7` |
| 86 | `lemma` | [iterate_odd](../../../../AssociativeRingsAndAlgebras/RingParity.lean/declarations/iterate-odd.md) | 328 | `result-track:38db2b1caafdf75e4cd507dcfa8b20493b2d5565ab92d27fde4095ec42acd433` |
| 87 | `lemma` | [iterate_eq_self](../../../../AssociativeRingsAndAlgebras/RingParity.lean/declarations/iterate-eq-self.md) | 332 | `result-track:8ac348b3f4437f07749474e734a5df58e26901e8148c99aee852bc3dae6b6f2a` |
| 88 | `lemma` | [iterate_eq_id](../../../../AssociativeRingsAndAlgebras/RingParity.lean/declarations/iterate-eq-id.md) | 336 | `result-track:a94d8ea050e8ccf953b1d801448143f3fc39fa364d11f04e39d0bbf88f24ec7f` |
| 89 | `lemma` | [neg_one_pow_eq_ite](../../../../AssociativeRingsAndAlgebras/RingParity.lean/declarations/neg-one-pow-eq-ite.md) | 346 | `result-track:b7dbd930f95e5542aea81d7c25d06a8fd29c2fdaa29ec662297b9ce6c9e0766f` |
| 90 | `lemma` | [neg_one_pow_congr](../../../../AssociativeRingsAndAlgebras/RingParity.lean/declarations/neg-one-pow-congr.md) | 351 | `result-track:a03412a2263ca51dfcc683746bd4af7fd79fa43b71270f55d6443da954ae09b1` |
| 91 | `lemma` | [neg_one_pow_eq_one_iff_even](../../../../AssociativeRingsAndAlgebras/RingParity.lean/declarations/neg-one-pow-eq-one-iff-even.md) | 354 | `result-track:75c3a28297d360a637daa8e154bf819e0fc72a74801a3e35852bcb2d86a2952f` |
| 92 | `lemma` | [neg_one_pow_eq_neg_one_iff_odd](../../../../AssociativeRingsAndAlgebras/RingParity.lean/declarations/neg-one-pow-eq-neg-one-iff-odd.md) | 357 | `result-track:e3eae801e390bdb00cfcafecb219960077d41c9c1a1678f8e4f48f93c722858f` |
| 93 | `theorem` | [natCast_eq_zero_or_one_of_two_eq_zero'](../../../../AssociativeRingsAndAlgebras/RingParity.lean/declarations/natcast-eq-zero-or-one-of-two-eq-zero.md) | 368 | `result-track:b8695c1d14323344ef6f1e3c644603c047a456d571c6c1e7459b344f9557d591` |
| 94 | `theorem` | [natCast_eq_zero_of_even_of_two_eq_zero](../../../../AssociativeRingsAndAlgebras/RingParity.lean/declarations/natcast-eq-zero-of-even-of-two-eq-zero.md) | 375 | `result-track:b867c300e7b62162e7c0db7c70538820db0613831b3b146537d0e22dda8a81ce` |
| 95 | `theorem` | [natCast_eq_one_of_odd_of_two_eq_zero](../../../../AssociativeRingsAndAlgebras/RingParity.lean/declarations/natcast-eq-one-of-odd-of-two-eq-zero.md) | 379 | `result-track:9c21dfd68f1018337949db4137db251566c3b6a38fa12ce06d2ec12a0889fe5c` |
| 96 | `theorem` | [natCast_eq_zero_or_one_of_two_eq_zero](../../../../AssociativeRingsAndAlgebras/RingParity.lean/declarations/natcast-eq-zero-or-one-of-two-eq-zero-source-edition-2.md) | 383 | `result-track:d543ee40dfaedf57f3a037c77d32a30461b556607c66376241bfedc97e2bc2a6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9a1a7bbe02b08117b58b6bed81104eb844b687099ab8d3d1360172ac1dcca26b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Parity/Variantebf91bf7de110c702c07fccd224fb2ee84bcae16248d46170561fa20fd9e101b.lean","GRWTSK/_verification/specifications/Algebra/Parity/Variantebf91bf7de110c702c07fccd224fb2ee84bcae16248d46170561fa20fd9e101b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
