# Verification target: Ring Parity Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4cd959d8d5568e2affc68a73ad7c83a30ca1078a",
  "lexical_observation_count": 111,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Parity/Variantba777f16c09858dc2cb0fe4c46b81cf88ff7eab7401dfb25136d85513ec6e31c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../AssociativeRingsAndAlgebras/RingParityPublic.lean/index.md) · [Full source](../../../../AssociativeRingsAndAlgebras/RingParityPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4cd959d8d5568e2affc68a73ad7c83a30ca1078a`.

Source path: `GRWTSK/Algebra/Parity/Variantba777f16c09858dc2cb0fe4c46b81cf88ff7eab7401dfb25136d85513ec6e31c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Parity/Variantba777f16c09858dc2cb0fe4c46b81cf88ff7eab7401dfb25136d85513ec6e31c.lean.json)

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
| 1 | `lemma` | [Even.neg_pow](../../../../AssociativeRingsAndAlgebras/RingParityPublic.lean/declarations/even-neg-pow.md) | 41 | `result-track:2473619db87f1d68d036a87ec0fb563dc3cd45053962b883d6741a07e180c982` |
| 2 | `lemma` | [Even.neg_one_pow](../../../../AssociativeRingsAndAlgebras/RingParityPublic.lean/declarations/even-neg-one-pow.md) | 45 | `result-track:f8d5cfe590fc9d1e0c09183318cbdd579d3917c38ef20e9aad854e0d17697647` |
| 3 | `lemma` | [IsSquare.zero](../../../../AssociativeRingsAndAlgebras/RingParityPublic.lean/declarations/issquare-zero.md) | 49 | `result-track:e7dcc04909ecd52e892c9adb54dad350dc6536cdc0067a066cd2a8539bca0808` |
| 4 | `lemma` | [even_two](../../../../AssociativeRingsAndAlgebras/RingParityPublic.lean/declarations/even-two.md) | 54 | `result-track:cac65d7fc6b5de9b6b052eb12c8eee50dd54d57214a1fa5b55a8071b387509e8` |
| 5 | `lemma` | [Even.mul_left](../../../../AssociativeRingsAndAlgebras/RingParityPublic.lean/declarations/even-mul-left.md) | 61 | `result-track:6e53ec34b18f5fcb4e6a36e6a6532b8e37802cedd0df6cda4c2379246fd5166c` |
| 6 | `lemma` | [Even.mul_right](../../../../AssociativeRingsAndAlgebras/RingParityPublic.lean/declarations/even-mul-right.md) | 66 | `result-track:6b15528743847c0e3d83272cd857aede3ba0bc87fa666444b00f2481d66cd03a` |
| 7 | `lemma` | [even_iff_exists_two_mul](../../../../AssociativeRingsAndAlgebras/RingParityPublic.lean/declarations/even-iff-exists-two-mul.md) | 76 | `result-track:880d2e7dd37205ada6118df8f36445d84aec1fa33f966fed1aac71255924efc2` |
| 8 | `lemma` | [even_iff_two_dvd](../../../../AssociativeRingsAndAlgebras/RingParityPublic.lean/declarations/even-iff-two-dvd.md) | 78 | `result-track:a883b4f82d4a58470a8cb3d94a66b36e192c17dc19b85c2df34b5fe27650da5f` |
| 9 | `lemma` | [Even.trans_dvd](../../../../AssociativeRingsAndAlgebras/RingParityPublic.lean/declarations/even-trans-dvd.md) | 82 | `result-track:90c007a425f8cb71dfe21dfdf43ca4c493dbfbf9692819b29245235f6f2d65fe` |
| 10 | `lemma` | [Dvd.dvd.even](../../../../AssociativeRingsAndAlgebras/RingParityPublic.lean/declarations/dvd-dvd-even.md) | 85 | `result-track:e712d3aa919ee66f92e8e668461c5d8ee241ed4eb8277b041584e3636625fb80` |
| 11 | `lemma` | [range_two_mul](../../../../AssociativeRingsAndAlgebras/RingParityPublic.lean/declarations/range-two-mul.md) | 87 | `result-track:47695875d31cc726c951607f5528b2fc9e43240a274092231fd3620d5ec4a35c` |
| 12 | `lemma` | [even_two_mul](../../../../AssociativeRingsAndAlgebras/RingParityPublic.lean/declarations/even-two-mul.md) | 93 | `result-track:8ef514bb2b6d09c4dd45649444e5aea991b276001cef63ed29343f04b5fe440a` |
| 13 | `lemma` | [Even.pow_of_ne_zero](../../../../AssociativeRingsAndAlgebras/RingParityPublic.lean/declarations/even-pow-of-ne-zero.md) | 95 | `result-track:01de3c783b4f409a189fea0ef41feb144e5b62407e546646ce208cd118b5a0ee` |
| 14 | `def` | [Odd](../../../../AssociativeRingsAndAlgebras/RingParityPublic.lean/declarations/odd.md) | 99 | `declaration-track:326d0d92b421517367adc64c415cd55445f385bf3d0c311b4d83791aaaac7243` |
| 15 | `lemma` | [odd_iff_exists_bit1](../../../../AssociativeRingsAndAlgebras/RingParityPublic.lean/declarations/odd-iff-exists-bit1.md) | 101 | `result-track:037479408f3a75be33389bc8a3b58cce61bfa3485d1817b212e73910514d1e42` |
| 16 | `lemma` | [range_two_mul_add_one](../../../../AssociativeRingsAndAlgebras/RingParityPublic.lean/declarations/range-two-mul-add-one.md) | 105 | `result-track:3321e82dfc6c76d169d52c1d668f0179c0902e29de4a8631cbf957f2396dd7d0` |
| 17 | `lemma` | [Even.add_odd](../../../../AssociativeRingsAndAlgebras/RingParityPublic.lean/declarations/even-add-odd.md) | 108 | `result-track:eb3c7619a93577ef534a07a98615733bf345e2a96adb4cd1b906e46dc203986f` |
| 18 | `lemma` | [Even.odd_add](../../../../AssociativeRingsAndAlgebras/RingParityPublic.lean/declarations/even-odd-add.md) | 111 | `result-track:c20b16d8b3cbef4cb910f579c4e29b7e7880f269a3ee0b08384e5bde08419642` |
| 19 | `lemma` | [Odd.add_even](../../../../AssociativeRingsAndAlgebras/RingParityPublic.lean/declarations/odd-add-even.md) | 112 | `result-track:8b70ea1d88b8ae23d50719da213e66f472fef3c050aad695cea564bb0cf5d233` |
| 20 | `lemma` | [Odd.add_odd](../../../../AssociativeRingsAndAlgebras/RingParityPublic.lean/declarations/odd-add-odd.md) | 114 | `result-track:ba4c322b88df9cc2781fcf10b7916a5edc76aa268c2bf763eee44e9ba2e5ff51` |
| 21 | `lemma` | [odd_one](../../../../AssociativeRingsAndAlgebras/RingParityPublic.lean/declarations/odd-one.md) | 120 | `result-track:43bef75e80a47c69de5908f5ab526132bbf9ea1eedcbf18337a2713fb0ac59ad` |
| 22 | `lemma` | [Even.add_one](../../../../AssociativeRingsAndAlgebras/RingParityPublic.lean/declarations/even-add-one.md) | 123 | `result-track:99be3f8344e9c6137a9212d58a7a3b6f2bd499fbe68c00b025c89f063ae04a86` |
| 23 | `lemma` | [Even.one_add](../../../../AssociativeRingsAndAlgebras/RingParityPublic.lean/declarations/even-one-add.md) | 124 | `result-track:9e0b021f901988d0ad35c442bf2db8e49e9da1021fd50298beb161e2d21bf965` |
| 24 | `lemma` | [Odd.add_one](../../../../AssociativeRingsAndAlgebras/RingParityPublic.lean/declarations/odd-add-one.md) | 125 | `result-track:0f3afa4fd12426c0989aa128f681ad6055f32e28a6b54400e81a2c42c2d44fbd` |
| 25 | `lemma` | [Odd.one_add](../../../../AssociativeRingsAndAlgebras/RingParityPublic.lean/declarations/odd-one-add.md) | 126 | `result-track:df3a6263b52e456e12680bd7bd047f84e79eceb399245e5e983fee976ca8b0fd` |
| 26 | `lemma` | [odd_two_mul_add_one](../../../../AssociativeRingsAndAlgebras/RingParityPublic.lean/declarations/odd-two-mul-add-one.md) | 128 | `result-track:1f57846a8daf7d8dfca2f046b8cae73578f18f6282505c3f92cef5680848a307` |
| 27 | `lemma` | [odd_add_self_one'](../../../../AssociativeRingsAndAlgebras/RingParityPublic.lean/declarations/odd-add-self-one.md) | 130 | `result-track:d40b05e6b75bba1196eebdb91f2ef998660596c444f2b6a699bb5a4631f0c623` |
| 28 | `lemma` | [odd_add_one_self](../../../../AssociativeRingsAndAlgebras/RingParityPublic.lean/declarations/odd-add-one-self-source-edition-2.md) | 131 | `result-track:8a168a2891aee2f92b16315906144d8a0959f1b3866ae4c90a4f0e601d0c06c8` |
| 29 | `lemma` | [odd_add_one_self'](../../../../AssociativeRingsAndAlgebras/RingParityPublic.lean/declarations/odd-add-one-self.md) | 132 | `result-track:140fe4389d21e810cb002e3d52c3fb57a7eaaacebdf3ac55c6ca7acf37049dd7` |
| 30 | `lemma` | [Odd.map](../../../../AssociativeRingsAndAlgebras/RingParityPublic.lean/declarations/odd-map.md) | 134 | `result-track:bfa605c3f3089e3c7f804214dfe45ff206e80ed1d5f015c00d7f22505f0273b5` |
| 31 | `lemma` | [Odd.natCast](../../../../AssociativeRingsAndAlgebras/RingParityPublic.lean/declarations/odd-natcast.md) | 137 | `result-track:19cdae46e44a0237e3fea5352a0545aeec8d75a6142493c4185acb5237da1436` |
| 32 | `lemma` | [Odd.mul](../../../../AssociativeRingsAndAlgebras/RingParityPublic.lean/declarations/odd-mul-source-edition-2.md) | 140 | `result-track:cd7fe4cbd2946c678ee15abb93244229a50a9a89b0608aa2a186fdf09e9a897c` |
| 33 | `lemma` | [Odd.pow](../../../../AssociativeRingsAndAlgebras/RingParityPublic.lean/declarations/odd-pow.md) | 146 | `result-track:2592f6108728755ab58529bba41d3e6d3729366bc62347a5514dda1f6d7fdf0e` |
| 34 | `lemma` | [Odd.pow_add_pow_eq_zero](../../../../AssociativeRingsAndAlgebras/RingParityPublic.lean/declarations/odd-pow-add-pow-eq-zero.md) | 151 | `result-track:423a8c111e71b80fef820e69aef9e27a24cd015bc56fa9dce63999bb3600116f` |
| 35 | `theorem` | [Even.of_isUnit_two](../../../../AssociativeRingsAndAlgebras/RingParityPublic.lean/declarations/even-of-isunit-two.md) | 165 | `result-track:e370c762901c412c7e87b7a88ca39adba6ecbb669d3befd6fc309b0481681d47` |
| 36 | `theorem` | [isUnit_two_iff_forall_even](../../../../AssociativeRingsAndAlgebras/RingParityPublic.lean/declarations/isunit-two-iff-forall-even.md) | 168 | `result-track:25d25dcc86cb51be2e03afd3f4678bfc85f244131d8ebbf9b46f5d71d0985289` |
| 37 | `theorem` | [Odd.of_isUnit_two](../../../../AssociativeRingsAndAlgebras/RingParityPublic.lean/declarations/odd-of-isunit-two.md) | 179 | `result-track:74eb77e789195444814a59be9b557470867907842d35fa92993b81ecb7e10261` |
| 38 | `lemma` | [Odd.neg_pow](../../../../AssociativeRingsAndAlgebras/RingParityPublic.lean/declarations/odd-neg-pow.md) | 188 | `result-track:e12062e1c4129bf00451ca9787d5e5835345df3b1b8bfc0ca9d35d159f85d690` |
| 39 | `lemma` | [Odd.neg_one_pow](../../../../AssociativeRingsAndAlgebras/RingParityPublic.lean/declarations/odd-neg-one-pow.md) | 191 | `result-track:3f798c22a77404c0f3b3992a07330d8067edac5efbda33c05f69c018dd7b399d` |
| 40 | `lemma` | [even_neg_two](../../../../AssociativeRingsAndAlgebras/RingParityPublic.lean/declarations/even-neg-two.md) | 198 | `result-track:3ec0fa5dbf9faa10050c59853b40fbf96bf1e0bdfb6981b438f0f06dc9c148fc` |
| 41 | `lemma` | [Odd.neg](../../../../AssociativeRingsAndAlgebras/RingParityPublic.lean/declarations/odd-neg-source-edition-2.md) | 200 | `result-track:3cdce233adcf7f8f1cd950a6b35542651cfe952705e24b73fe60f30701eb7407` |
| 42 | `lemma` | [odd_neg](../../../../AssociativeRingsAndAlgebras/RingParityPublic.lean/declarations/odd-neg.md) | 206 | `result-track:2bc3d903bd80eba82896540759356217734a930600258b239b193da7931055d0` |
| 43 | `lemma` | [odd_neg_one](../../../../AssociativeRingsAndAlgebras/RingParityPublic.lean/declarations/odd-neg-one.md) | 208 | `result-track:1400b60d464ea0f9350ad64d2f72fe8b3ba94a878a7e8b06cfda5407052285da` |
| 44 | `lemma` | [Odd.sub_even](../../../../AssociativeRingsAndAlgebras/RingParityPublic.lean/declarations/odd-sub-even.md) | 210 | `result-track:b7c1b038fdea7e4bfe91448210498014e2733ebd271cb71e1570698fbf695a04` |
| 45 | `lemma` | [Even.sub_odd](../../../../AssociativeRingsAndAlgebras/RingParityPublic.lean/declarations/even-sub-odd-source-edition-2.md) | 213 | `result-track:8b23b2967e57daa648dd932e8a96b927b9379830112ef1ef8ad0b3cc0ecdc5a0` |
| 46 | `lemma` | [Odd.sub_odd](../../../../AssociativeRingsAndAlgebras/RingParityPublic.lean/declarations/odd-sub-odd-source-edition-2.md) | 216 | `result-track:8c507704d3fc2cb4b8772cf8b5019b42b4ba6b944375ac7b9769abdb932098ee` |
| 47 | `lemma` | [even_add_one](../../../../AssociativeRingsAndAlgebras/RingParityPublic.lean/declarations/even-add-one-source-edition-2.md) | 220 | `result-track:a544849d3e7e63554e4911bf806686b41d925f71675be30f39c62ea65e32cdc2` |
| 48 | `lemma` | [even_sub_one](../../../../AssociativeRingsAndAlgebras/RingParityPublic.lean/declarations/even-sub-one.md) | 224 | `result-track:2c97d87599698845c44a65baa070cac13c21685fd8a093661225ebce00fee281` |
| 49 | `lemma` | [even_add_two](../../../../AssociativeRingsAndAlgebras/RingParityPublic.lean/declarations/even-add-two.md) | 228 | `result-track:bd706ea43d017d2202374cdbe96261250dfdb1da60e7d54eff55bc62567428c3` |
| 50 | `lemma` | [even_sub_two](../../../../AssociativeRingsAndAlgebras/RingParityPublic.lean/declarations/even-sub-two.md) | 232 | `result-track:aef49c92190da75144edba69b0fe486b9efb363fe66e53ea6d3551768584429f` |
| 51 | `lemma` | [odd_add_one](../../../../AssociativeRingsAndAlgebras/RingParityPublic.lean/declarations/odd-add-one-source-edition-3.md) | 236 | `result-track:ef238b0cf7e3754c8c37d2cfe10f3b3ecba76d8449a1c705a43a683196ab942f` |
| 52 | `lemma` | [odd_sub_one](../../../../AssociativeRingsAndAlgebras/RingParityPublic.lean/declarations/odd-sub-one.md) | 240 | `result-track:5f7284210be1f2ea637b2dd8f0d91eeac90ee0841e587d8e63e4217dbdadec48` |
| 53 | `lemma` | [odd_add_two](../../../../AssociativeRingsAndAlgebras/RingParityPublic.lean/declarations/odd-add-two.md) | 244 | `result-track:92d2cfff540dcea793a6cec49df59e4ab124a13551f93446e10f53c06dcf874b` |
| 54 | `lemma` | [odd_sub_two](../../../../AssociativeRingsAndAlgebras/RingParityPublic.lean/declarations/odd-sub-two.md) | 248 | `result-track:72f23815908f3225c673c9c0197c5acbd43131277ea21d5a6e36ff5e58cc729a` |
| 55 | `lemma` | [odd_iff](../../../../AssociativeRingsAndAlgebras/RingParityPublic.lean/declarations/odd-iff.md) | 257 | `result-track:16ae4dd817208326cef4073b5e2ab66c570e95e1ffdbe037c73720148e46fee1` |
| 56 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/RingParityPublic.lean/declarations/instance.md) | 260 | `declaration-track:27125c92aae16daacc6224dc8f92ad165e201c3a8a9b5bef6f80b7843c14a56b` |
| 57 | `lemma` | [not_odd_iff](../../../../AssociativeRingsAndAlgebras/RingParityPublic.lean/declarations/not-odd-iff.md) | 262 | `result-track:009d3f6ae540c45d70ae8efbc1ad86636fd6c8c719b1687cd145a56575c4eaf0` |
| 58 | `lemma` | [not_odd_iff_even](../../../../AssociativeRingsAndAlgebras/RingParityPublic.lean/declarations/not-odd-iff-even.md) | 264 | `result-track:9abe56685857393b316501aac953835cad78fd1acfaa25c77c8f8739a45966f2` |
| 59 | `lemma` | [not_even_iff_odd](../../../../AssociativeRingsAndAlgebras/RingParityPublic.lean/declarations/not-even-iff-odd.md) | 265 | `result-track:5464fa6db9f4051a84081e97f49040ca98430d4acd8e55acba1decfe52176c19` |
| 60 | `lemma` | [not_odd_zero](../../../../AssociativeRingsAndAlgebras/RingParityPublic.lean/declarations/not-odd-zero.md) | 267 | `result-track:f307aa5f266abc25aac02667aa443ec36743be34a00409b6eee945a545b35e99` |
| 61 | `lemma` | [_root_.Odd.not_two_dvd_nat](../../../../AssociativeRingsAndAlgebras/RingParityPublic.lean/declarations/root-odd-not-two-dvd-nat.md) | 269 | `result-track:f55d60dfe2fc5020dc1c11209d44c4d5cb74c160528188b05438efb86bb25704` |
| 62 | `lemma` | [even_xor_odd](../../../../AssociativeRingsAndAlgebras/RingParityPublic.lean/declarations/even-xor-odd-source-edition-2.md) | 271 | `result-track:ae6987629340a19d7f398771c98c079fb00daa70177fea927486156d5723ae6a` |
| 63 | `lemma` | [even_or_odd](../../../../AssociativeRingsAndAlgebras/RingParityPublic.lean/declarations/even-or-odd-source-edition-2.md) | 273 | `result-track:d4b5a2ff6bd02aaba86394a0b81b59dffbf4348354c9dea1b3432a92b602c07c` |
| 64 | `lemma` | [even_or_odd'](../../../../AssociativeRingsAndAlgebras/RingParityPublic.lean/declarations/even-or-odd.md) | 275 | `result-track:64892f8755386fcb5583084d8614e7e29ef5c148c39549f5709c1ff51ef73bcd` |
| 65 | `lemma` | [even_xor_odd'](../../../../AssociativeRingsAndAlgebras/RingParityPublic.lean/declarations/even-xor-odd.md) | 278 | `result-track:7464cb5aec77a5223db3eb57d2c0942b746370681c09f196d5d6ced5ca6f1639` |
| 66 | `lemma` | [odd_add_one](../../../../AssociativeRingsAndAlgebras/RingParityPublic.lean/declarations/odd-add-one-source-edition-2.md) | 283 | `result-track:c675506c81650439b12184dabf34445fc4a1093d8c156b77c67fc18065b8544c` |
| 67 | `lemma` | [mod_two_add_add_odd_mod_two](../../../../AssociativeRingsAndAlgebras/RingParityPublic.lean/declarations/mod-two-add-add-odd-mod-two.md) | 285 | `result-track:2a48f9550d56fecbdc3d3005ccaa0b76bcb3bd402c60cd16618960e2b0ac1fea` |
| 68 | `lemma` | [mod_two_add_succ_mod_two](../../../../AssociativeRingsAndAlgebras/RingParityPublic.lean/declarations/mod-two-add-succ-mod-two.md) | 287 | `result-track:c982499b5c87a34d495a884e5388fc6dbc10d3db7722d4bd291776504bb45cc6` |
| 69 | `lemma` | [succ_mod_two_add_mod_two](../../../../AssociativeRingsAndAlgebras/RingParityPublic.lean/declarations/succ-mod-two-add-mod-two.md) | 289 | `result-track:8251f4087eaa8626ede89f53e988407201fb7fb505e4202d5221808b42ef7a92` |
| 70 | `lemma` | [even_add'](../../../../AssociativeRingsAndAlgebras/RingParityPublic.lean/declarations/even-add.md) | 291 | `result-track:a8d458ac21993eadbea8d7976ecde933beecce9bac3ec8a519e1c86343b7c1dd` |
| 71 | `lemma` | [not_even_bit1](../../../../AssociativeRingsAndAlgebras/RingParityPublic.lean/declarations/not-even-bit1.md) | 293 | `result-track:e041c37e0cfbc35dbdcd910523f4331fa0de634fef1bc503443acb16a44f766d` |
| 72 | `lemma` | [not_even_two_mul_add_one](../../../../AssociativeRingsAndAlgebras/RingParityPublic.lean/declarations/not-even-two-mul-add-one.md) | 295 | `result-track:2a97357ad7d38fa02017f9df635f5da373d0b46ef29d6efcfc4869fa4582d390` |
| 73 | `lemma` | [even_sub'](../../../../AssociativeRingsAndAlgebras/RingParityPublic.lean/declarations/even-sub.md) | 297 | `result-track:a3ebc13b9bb4931ebc651eaf38f40f544907891c43d4125b4f782659995b0f95` |
| 74 | `lemma` | [Odd.sub_odd](../../../../AssociativeRingsAndAlgebras/RingParityPublic.lean/declarations/odd-sub-odd.md) | 299 | `result-track:20773f00bf02203733275afa618b26fd551fbb6478dc96974a7b90f2d7103be0` |
| 75 | `lemma` | [odd_mul](../../../../AssociativeRingsAndAlgebras/RingParityPublic.lean/declarations/odd-mul.md) | 303 | `result-track:3184fa304947701cadc26631b342c28ba6cfcd7f38600e2b8504da31d009133a` |
| 76 | `lemma` | [Odd.of_mul_left](../../../../AssociativeRingsAndAlgebras/RingParityPublic.lean/declarations/odd-of-mul-left.md) | 305 | `result-track:60300d675a6c6353c2e7c0df610c742913beb564c90c5f14c6803d1eab369f77` |
| 77 | `lemma` | [Odd.of_mul_right](../../../../AssociativeRingsAndAlgebras/RingParityPublic.lean/declarations/odd-of-mul-right.md) | 308 | `result-track:f1b5965699a5ee581671e03a88879633e10879f2965eb36f6515b8f3664dc937` |
| 78 | `lemma` | [odd_pow_iff](../../../../AssociativeRingsAndAlgebras/RingParityPublic.lean/declarations/odd-pow-iff.md) | 311 | `result-track:93a6a9108c2b9dfb7086fb12bd8e3d511f4a661d1e6129d4b37a31d01a2eac52` |
| 79 | `lemma` | [even_div](../../../../AssociativeRingsAndAlgebras/RingParityPublic.lean/declarations/even-div.md) | 313 | `result-track:a2c8e494431c6f00974bb23063186fc6c59b3cbacf910d00af590006681ab125` |
| 80 | `lemma` | [odd_add](../../../../AssociativeRingsAndAlgebras/RingParityPublic.lean/declarations/odd-add.md) | 316 | `result-track:71236adbc2ef724d5995fc65a3918e8b3fa4b8ad753f7459debdd03e64fbd796` |
| 81 | `lemma` | [odd_add'](../../../../AssociativeRingsAndAlgebras/RingParityPublic.lean/declarations/odd-add-source-edition-2.md) | 318 | `result-track:efb3d353d53a0e3587b7aa032a8a536d4eac728443816a55ef3ba9b6c480ed07` |
| 82 | `lemma` | [ne_of_odd_add](../../../../AssociativeRingsAndAlgebras/RingParityPublic.lean/declarations/ne-of-odd-add.md) | 320 | `result-track:2b303c9d2898fb743a0c08c4e824800a9fb032e0e9ffed4a832b62f19b07720e` |
| 83 | `lemma` | [odd_sub](../../../../AssociativeRingsAndAlgebras/RingParityPublic.lean/declarations/odd-sub.md) | 322 | `result-track:96abe6a1900a68800155265492ce2841f55048367e1079b4380704738c17edf7` |
| 84 | `lemma` | [Odd.sub_even](../../../../AssociativeRingsAndAlgebras/RingParityPublic.lean/declarations/odd-sub-even-source-edition-2.md) | 324 | `result-track:b9abafc38bceae237e1132ef17152683e3306e2f4d3b26840a5e368158bc5278` |
| 85 | `lemma` | [odd_sub'](../../../../AssociativeRingsAndAlgebras/RingParityPublic.lean/declarations/odd-sub-source-edition-2.md) | 326 | `result-track:cb2eb1473c1a045662354172455616f99a5a95b1c86c20b908f672fe456928af` |
| 86 | `lemma` | [Even.sub_odd](../../../../AssociativeRingsAndAlgebras/RingParityPublic.lean/declarations/even-sub-odd.md) | 328 | `result-track:2159d0b752eb4f886aef28526861cf7e21d08df943c6b5d3fa2019f92b42e75c` |
| 87 | `lemma` | [two_mul_div_two_add_one_of_odd](../../../../AssociativeRingsAndAlgebras/RingParityPublic.lean/declarations/two-mul-div-two-add-one-of-odd.md) | 330 | `result-track:1a8841991e39ff3c9c34e96acd3b3a1ceed2e08273b7152edc04b390da3bceb3` |
| 88 | `lemma` | [div_two_mul_two_add_one_of_odd](../../../../AssociativeRingsAndAlgebras/RingParityPublic.lean/declarations/div-two-mul-two-add-one-of-odd.md) | 332 | `result-track:25fab104a13f74bc0629372e2b6416306aa282c86b886a3e07c5bb7fbfd9dfbf` |
| 89 | `lemma` | [one_add_div_two_mul_two_of_odd](../../../../AssociativeRingsAndAlgebras/RingParityPublic.lean/declarations/one-add-div-two-mul-two-of-odd.md) | 334 | `result-track:8abe7ee79f649bb6abb65a6a24c170e4350e638e143e0c3b1e259b4eec1852cd` |
| 90 | `lemma` | [two_dvd_mul_add_one](../../../../AssociativeRingsAndAlgebras/RingParityPublic.lean/declarations/two-dvd-mul-add-one.md) | 336 | `result-track:fa5f6bdf085d91443a7ac3d4c6d8d536ce413adc11685c5078e2fbb753875abf` |
| 91 | `lemma` | [two_dvd_mul_sub_one](../../../../AssociativeRingsAndAlgebras/RingParityPublic.lean/declarations/two-dvd-mul-sub-one.md) | 339 | `result-track:e7185acc6b30d4390cbeebd2634560e4d3a95d2f8d273806ad3cd1b125556108` |
| 92 | `lemma` | [eight_dvd_sq_sub_one_of_odd](../../../../AssociativeRingsAndAlgebras/RingParityPublic.lean/declarations/eight-dvd-sq-sub-one-of-odd.md) | 343 | `result-track:3ca07ade2d1ec184dd3a2791c29fef72e4fc280c96b434b2df3b21f7fd2dabba` |
| 93 | `example` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/RingParityPublic.lean/declarations/example-source-edition-2.md) | 349 | `declaration-track:cb1752569cf6a2d564adbbd7de470e35450f0033096a5a3b2326864eee5ee387` |
| 94 | `example` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/RingParityPublic.lean/declarations/example.md) | 352 | `declaration-track:3ed56ad63b2f7dca4c47d50757d529f9e8e0c1d985c78d851b78defac6e9f808` |
| 95 | `lemma` | [iterate_two_mul](../../../../AssociativeRingsAndAlgebras/RingParityPublic.lean/declarations/iterate-two-mul.md) | 364 | `result-track:7bd20a53d4fb2434d7459e6c065c20a06bcdabec2b18baf0e37dea0dfd8ae351` |
| 96 | `lemma` | [iterate_two_mul_add_one](../../../../AssociativeRingsAndAlgebras/RingParityPublic.lean/declarations/iterate-two-mul-add-one.md) | 367 | `result-track:7f8c06723ab5c6fd4fa6d2123e5acad972493d4aa933364bf6f3f45c2cb89fda` |
| 97 | `lemma` | [iterate_even](../../../../AssociativeRingsAndAlgebras/RingParityPublic.lean/declarations/iterate-even.md) | 370 | `result-track:0ef0b45736725eeb990e8821dd6283c2593f22565e6261d5f834dc836a341018` |
| 98 | `lemma` | [iterate_odd](../../../../AssociativeRingsAndAlgebras/RingParityPublic.lean/declarations/iterate-odd.md) | 374 | `result-track:0c4a7500d194295d37916a01efe49249032de4dc09d6419f99168a3b06012fbf` |
| 99 | `lemma` | [iterate_eq_self](../../../../AssociativeRingsAndAlgebras/RingParityPublic.lean/declarations/iterate-eq-self.md) | 378 | `result-track:e395ad5b5f8abfb2e43d86ec3b47ceb06f489502fc0b24411c094de679b915eb` |
| 100 | `lemma` | [iterate_eq_id](../../../../AssociativeRingsAndAlgebras/RingParityPublic.lean/declarations/iterate-eq-id.md) | 382 | `result-track:fa5326547014e9e3024a142156f1a2f2876f579801e6e26067fc39b9608d7a60` |
| 101 | `lemma` | [neg_one_pow_eq_ite](../../../../AssociativeRingsAndAlgebras/RingParityPublic.lean/declarations/neg-one-pow-eq-ite.md) | 392 | `result-track:be9d28efb8790e7ee83902143648fe1ad92999a771fd096879ff6a25178fa19b` |
| 102 | `lemma` | [neg_one_pow_congr](../../../../AssociativeRingsAndAlgebras/RingParityPublic.lean/declarations/neg-one-pow-congr.md) | 397 | `result-track:158735d8b25c0d8204b3f85c290bfc8bf85919b2646994f749e144b227190073` |
| 103 | `lemma` | [neg_one_pow_eq_one_iff_even](../../../../AssociativeRingsAndAlgebras/RingParityPublic.lean/declarations/neg-one-pow-eq-one-iff-even.md) | 400 | `result-track:510ce261dba1bab388afc84a41e2ceba91d225b49cb3e11949c0341d9abdad3e` |
| 104 | `lemma` | [neg_one_pow_eq_neg_one_iff_odd](../../../../AssociativeRingsAndAlgebras/RingParityPublic.lean/declarations/neg-one-pow-eq-neg-one-iff-odd.md) | 403 | `result-track:3f6e1968c573138e962c5507eeebb40eeae7ed19c6dffc7b1259f2a56f47e089` |
| 105 | `lemma` | [Even.neg_zpow](../../../../AssociativeRingsAndAlgebras/RingParityPublic.lean/declarations/even-neg-zpow.md) | 411 | `result-track:3f7b61b6ac086fcfbfa9556e6c3ad3eda8fcb1b0b770196fb90e5eb84ef1b495` |
| 106 | `lemma` | [Even.neg_one_zpow](../../../../AssociativeRingsAndAlgebras/RingParityPublic.lean/declarations/even-neg-one-zpow.md) | 414 | `result-track:98f0897d73e6b02cb9e351a01f4723eb819dfea1c9ccea27c15e50ef022ab16a` |
| 107 | `lemma` | [neg_one_zpow_eq_ite](../../../../AssociativeRingsAndAlgebras/RingParityPublic.lean/declarations/neg-one-zpow-eq-ite.md) | 416 | `result-track:439ece62973d6957d42973de68339791cdc8669f5b23c4a863ebde9b065c2479` |
| 108 | `theorem` | [natCast_eq_zero_or_one_of_two_eq_zero'](../../../../AssociativeRingsAndAlgebras/RingParityPublic.lean/declarations/natcast-eq-zero-or-one-of-two-eq-zero.md) | 428 | `result-track:a987c9c31501f05cea5ae85553cee889d51cfbfc9af58cb70a8799a58c34fb9f` |
| 109 | `theorem` | [natCast_eq_zero_of_even_of_two_eq_zero](../../../../AssociativeRingsAndAlgebras/RingParityPublic.lean/declarations/natcast-eq-zero-of-even-of-two-eq-zero.md) | 435 | `result-track:53c06b3f4c1d26f34d32f5f654257d2c6d9a84e6f2029d914eea2b5bea09ee88` |
| 110 | `theorem` | [natCast_eq_one_of_odd_of_two_eq_zero](../../../../AssociativeRingsAndAlgebras/RingParityPublic.lean/declarations/natcast-eq-one-of-odd-of-two-eq-zero.md) | 439 | `result-track:1168569085cd6c75373fd77e4e41574b7ae11bc36038b82e3c0560f254e1ed97` |
| 111 | `theorem` | [natCast_eq_zero_or_one_of_two_eq_zero](../../../../AssociativeRingsAndAlgebras/RingParityPublic.lean/declarations/natcast-eq-zero-or-one-of-two-eq-zero-source-edition-2.md) | 443 | `result-track:fc201443b6743a18e9df66135fa7125da69fdd12d251683492ce9abbc9e82945` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d0dbaf307495153acff84bf6b932b69143564428107e14ae21e8a901abc04146 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Parity/Variantba777f16c09858dc2cb0fe4c46b81cf88ff7eab7401dfb25136d85513ec6e31c.lean","GRWTSK/_verification/specifications/Algebra/Parity/Variantba777f16c09858dc2cb0fe4c46b81cf88ff7eab7401dfb25136d85513ec6e31c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
