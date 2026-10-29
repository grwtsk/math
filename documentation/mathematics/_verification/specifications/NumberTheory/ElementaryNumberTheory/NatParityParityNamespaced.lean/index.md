# Verification target: Nat Parity Parity Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cdaa4f9e0b15ced7126d02bd1f99e5f33ebb6885",
  "lexical_observation_count": 73,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Parity/Variant3ac61b13c7aef882fc872a9adb816d169921b35f00249e2c52d4936f5e939070.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ElementaryNumberTheory/NatParityParityNamespaced.lean/index.md) · [Full source](../../../../../NumberTheory/ElementaryNumberTheory/NatParityParityNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cdaa4f9e0b15ced7126d02bd1f99e5f33ebb6885`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Parity/Variant3ac61b13c7aef882fc872a9adb816d169921b35f00249e2c52d4936f5e939070.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Parity/Variant3ac61b13c7aef882fc872a9adb816d169921b35f00249e2c52d4936f5e939070.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.ModEq` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Prime` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Parity` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mod_two_ne_one](../../../../../NumberTheory/ElementaryNumberTheory/NatParityParityNamespaced.lean/declarations/mod-two-ne-one.md) | 36 | `result-track:f638a56f15923ecc0bea2a55b1fb410a1da29fea6bb45e0ce4ff05ed3f6edce2` |
| 2 | `theorem` | [mod_two_ne_zero](../../../../../NumberTheory/ElementaryNumberTheory/NatParityParityNamespaced.lean/declarations/mod-two-ne-zero.md) | 41 | `result-track:07c985e4548087b28637466b493e8ab498ade5e92e7ef1e3120fa5f0cb29ca16` |
| 3 | `theorem` | [even_iff](../../../../../NumberTheory/ElementaryNumberTheory/NatParityParityNamespaced.lean/declarations/even-iff.md) | 45 | `result-track:e6c9f63ff3cbb00531a83d343cd785cad3c8a27d2e1bf46af0351857ab6b2546` |
| 4 | `instance` | [(anonymous)](../../../../../NumberTheory/ElementaryNumberTheory/NatParityParityNamespaced.lean/declarations/instance.md) | 50 | `declaration-track:9af1e4c766f6b728e7396563e05f318ebd8fef2d83e67f0ba5a2593db201f58e` |
| 5 | `theorem` | [odd_iff](../../../../../NumberTheory/ElementaryNumberTheory/NatParityParityNamespaced.lean/declarations/odd-iff.md) | 52 | `result-track:44b857fe285b7ca21f17ba4a7bf54ae474e31fdb0d0a6e3c75d930969241cab9` |
| 6 | `instance` | [(anonymous)](../../../../../NumberTheory/ElementaryNumberTheory/NatParityParityNamespaced.lean/declarations/instance-source-edition-2.md) | 57 | `declaration-track:b4065404cb085baa93e4941bca2752ea7e3d206d571ce2fe6cd021f1a1bf631a` |
| 7 | `theorem` | [not_even_iff](../../../../../NumberTheory/ElementaryNumberTheory/NatParityParityNamespaced.lean/declarations/not-even-iff.md) | 59 | `result-track:0a4b69b189b585153e437082ed021241201c1170e25c748d36c41545ae89c1a5` |
| 8 | `theorem` | [not_odd_iff](../../../../../NumberTheory/ElementaryNumberTheory/NatParityParityNamespaced.lean/declarations/not-odd-iff.md) | 62 | `result-track:7c5079e19ebb6570cbd67e2cea0b80ede1725783a2d8a560c31dae5068c7a144` |
| 9 | `theorem` | [even_iff_not_odd](../../../../../NumberTheory/ElementaryNumberTheory/NatParityParityNamespaced.lean/declarations/even-iff-not-odd.md) | 65 | `result-track:73f9897a4db77cbd5f6081260fc0254ae96a1e053d2f915e7ff3826ecb4efac9` |
| 10 | `theorem` | [odd_iff_not_even](../../../../../NumberTheory/ElementaryNumberTheory/NatParityParityNamespaced.lean/declarations/odd-iff-not-even.md) | 69 | `result-track:8f5d35f832ae787fa1138c01b6fe32c39d6fb1ea4776610fd9a27bb42250c9ef` |
| 11 | `theorem` | [Nat Parity Parity Namespaced](../../../../../NumberTheory/ElementaryNumberTheory/NatParityParityNamespaced.lean/declarations/root-grwtsk-foundationslogicandtypetheory-mathematicallogic-modtwoneone.md) | 72 | `result-track:f1d6014803076b5e7a352ff633b08bca95ea40d46e839aff6e0bd103073ca165` |
| 12 | `theorem` | [isCompl_even_odd](../../../../../NumberTheory/ElementaryNumberTheory/NatParityParityNamespaced.lean/declarations/iscompl-even-odd.md) | 75 | `result-track:e520acb8529aa516b70e4aa6b064f3d997035503992a48368ed5de376d12d86e` |
| 13 | `theorem` | [even_xor_odd](../../../../../NumberTheory/ElementaryNumberTheory/NatParityParityNamespaced.lean/declarations/even-xor-odd.md) | 79 | `result-track:3e3e59f47844aae431c3745435a1c439f3857d0b95b2be553411461bf816991b` |
| 14 | `theorem` | [even_or_odd](../../../../../NumberTheory/ElementaryNumberTheory/NatParityParityNamespaced.lean/declarations/even-or-odd.md) | 83 | `result-track:c9b7f03b33581a0cca5dae3ae04770025d44a169cf2fcec6890a3e92850bef6d` |
| 15 | `theorem` | [even_or_odd'](../../../../../NumberTheory/ElementaryNumberTheory/NatParityParityNamespaced.lean/declarations/even-or-odd-source-edition-2.md) | 87 | `result-track:d35dd72e67340409926a87278ea6c20464d2aeb914653124c13de04f496bb9f0` |
| 16 | `theorem` | [even_xor_odd'](../../../../../NumberTheory/ElementaryNumberTheory/NatParityParityNamespaced.lean/declarations/even-xor-odd-source-edition-2.md) | 91 | `result-track:a5e4e8b73ec8dadf2e8b45dece3ce7777acbb7b33ff6fd97aa712d08b2e25755` |
| 17 | `theorem` | [two_dvd_ne_zero](../../../../../NumberTheory/ElementaryNumberTheory/NatParityParityNamespaced.lean/declarations/two-dvd-ne-zero.md) | 97 | `result-track:e1bfd4f958167b53ae3918930492fe3ac530fbf349c52882a70a2e0a28dee58f` |
| 18 | `theorem` | [mod_two_add_add_odd_mod_two](../../../../../NumberTheory/ElementaryNumberTheory/NatParityParityNamespaced.lean/declarations/mod-two-add-add-odd-mod-two.md) | 101 | `result-track:b2c71f85766f9aa8f43c1cf72783a6d46d85c5d19210e6173b727157b024bbd5` |
| 19 | `theorem` | [mod_two_add_succ_mod_two](../../../../../NumberTheory/ElementaryNumberTheory/NatParityParityNamespaced.lean/declarations/mod-two-add-succ-mod-two.md) | 107 | `result-track:b0b7667c94b95dfa642263eec096de3099fd022089dc308e2ff3f9d070cde7d0` |
| 20 | `theorem` | [succ_mod_two_add_mod_two](../../../../../NumberTheory/ElementaryNumberTheory/NatParityParityNamespaced.lean/declarations/succ-mod-two-add-mod-two.md) | 112 | `result-track:1c7916b1f6a3730475b69388e3f964d201a2f42ecd190c9286573266083db51a` |
| 21 | `theorem` | [not_even_one](../../../../../NumberTheory/ElementaryNumberTheory/NatParityParityNamespaced.lean/declarations/not-even-one.md) | 116 | `result-track:c11d3f30eae3b5d49abb5264bfc5eab367ac5a6b939846474dd9bc91373ec672` |
| 22 | `theorem` | [even_add](../../../../../NumberTheory/ElementaryNumberTheory/NatParityParityNamespaced.lean/declarations/even-add-source-edition-2.md) | 120 | `result-track:a03578e2216b5e7dfa9a7f7f86d3923a12acf9d289a8802eb8b9b0f4fed124d2` |
| 23 | `theorem` | [even_add'](../../../../../NumberTheory/ElementaryNumberTheory/NatParityParityNamespaced.lean/declarations/even-add.md) | 125 | `result-track:7dcde4e7bd57f98f5a86b82180fa73a132f9facb5363f8176acc166bc5d0daf9` |
| 24 | `theorem` | [even_add_one](../../../../../NumberTheory/ElementaryNumberTheory/NatParityParityNamespaced.lean/declarations/even-add-one.md) | 130 | `result-track:8cf90ec582063defae8af2bbe8c5386a0b3a3cfd412919c9c9e60494ae119ec2` |
| 25 | `theorem` | [not_even_bit1](../../../../../NumberTheory/ElementaryNumberTheory/NatParityParityNamespaced.lean/declarations/not-even-bit1.md) | 135 | `result-track:1158e3bcceb7470ed8ba7ac9dbac6da7112925613d8e48389814142543b7fb27` |
| 26 | `theorem` | [two_not_dvd_two_mul_add_one](../../../../../NumberTheory/ElementaryNumberTheory/NatParityParityNamespaced.lean/declarations/two-not-dvd-two-mul-add-one.md) | 138 | `result-track:aef26bed0eae0e1c108dfb9578173f6e18c4482a777d9f37dab5ab5a969b4d10` |
| 27 | `theorem` | [two_not_dvd_two_mul_sub_one](../../../../../NumberTheory/ElementaryNumberTheory/NatParityParityNamespaced.lean/declarations/two-not-dvd-two-mul-sub-one.md) | 141 | `result-track:aaa379c1446d23e20c56b90e342cb2d7f895f7e070f184067970f5adffe408c3` |
| 28 | `theorem` | [even_sub](../../../../../NumberTheory/ElementaryNumberTheory/NatParityParityNamespaced.lean/declarations/even-sub-source-edition-2.md) | 146 | `result-track:67449cc68e811e735b8884ba634c01d3b41223fd97c63337ca800fd3a3041e54` |
| 29 | `theorem` | [even_sub'](../../../../../NumberTheory/ElementaryNumberTheory/NatParityParityNamespaced.lean/declarations/even-sub.md) | 151 | `result-track:5edd6d10f49714bde333b39500a001ad114b1e7b98e2555cc505904413c5f568` |
| 30 | `theorem` | [Odd.sub_odd](../../../../../NumberTheory/ElementaryNumberTheory/NatParityParityNamespaced.lean/declarations/odd-sub-odd.md) | 155 | `result-track:fd313c3a4a6df2cfb88cd1f3930d996928983b278419fa1b6f2f2056c1a4d6ac` |
| 31 | `theorem` | [even_mul](../../../../../NumberTheory/ElementaryNumberTheory/NatParityParityNamespaced.lean/declarations/even-mul.md) | 161 | `result-track:8f79272fe9ae8ce17b2732a7e8034733ee6b7a939e37b932069dd0b8292ba1d0` |
| 32 | `theorem` | [odd_mul](../../../../../NumberTheory/ElementaryNumberTheory/NatParityParityNamespaced.lean/declarations/odd-mul.md) | 166 | `result-track:c3b64d4fe12f53d7d40407db916c41eaeff48e723030def434141c28bc971b57` |
| 33 | `theorem` | [Odd.of_mul_left](../../../../../NumberTheory/ElementaryNumberTheory/NatParityParityNamespaced.lean/declarations/odd-of-mul-left.md) | 169 | `result-track:6184ee831f6ae0ea5189155db866a9e12d63c7818d1bc786f68008a5d5e6692e` |
| 34 | `theorem` | [Odd.of_mul_right](../../../../../NumberTheory/ElementaryNumberTheory/NatParityParityNamespaced.lean/declarations/odd-of-mul-right.md) | 173 | `result-track:23cafb5584b7924ebff6eef2633ed4fe63bb719f01b58a7266b8a215525fe57e` |
| 35 | `theorem` | [even_pow](../../../../../NumberTheory/ElementaryNumberTheory/NatParityParityNamespaced.lean/declarations/even-pow.md) | 179 | `result-track:1899274b1b4ec8c07a780fdc7d900f0220a5d78b84c25e1cc775a33652a134a4` |
| 36 | `theorem` | [even_pow'](../../../../../NumberTheory/ElementaryNumberTheory/NatParityParityNamespaced.lean/declarations/even-pow-source-edition-2.md) | 183 | `result-track:9a00b979f8b933e61418df41daa4be121c73ff8ccbbfc8da29eaa61de632169d` |
| 37 | `theorem` | [even_div](../../../../../NumberTheory/ElementaryNumberTheory/NatParityParityNamespaced.lean/declarations/even-div.md) | 187 | `result-track:5bd352f5d760c11ac021b9225e392f03556be72c59d29f78f6f227c86c92c441` |
| 38 | `theorem` | [odd_add](../../../../../NumberTheory/ElementaryNumberTheory/NatParityParityNamespaced.lean/declarations/odd-add-source-edition-2.md) | 191 | `result-track:8a3bf37154de3ed2076621cddf552f0562fd7227ea8332fefa94a1c86790ceb8` |
| 39 | `theorem` | [odd_add'](../../../../../NumberTheory/ElementaryNumberTheory/NatParityParityNamespaced.lean/declarations/odd-add.md) | 195 | `result-track:13abbc4792763a0d2e7993312c7e62ead3cd5f6f73830604faa9af9c64ee5123` |
| 40 | `theorem` | [ne_of_odd_add](../../../../../NumberTheory/ElementaryNumberTheory/NatParityParityNamespaced.lean/declarations/ne-of-odd-add.md) | 198 | `result-track:f98d7dad121612b74060723a7006aa4015f62d281e838a945541fea0fbcc8186` |
| 41 | `theorem` | [odd_sub](../../../../../NumberTheory/ElementaryNumberTheory/NatParityParityNamespaced.lean/declarations/odd-sub.md) | 201 | `result-track:9614f0b0ebbafdf8825540fd48b8f5437b239cd5e8320283c8d9dbd33d3cb992` |
| 42 | `theorem` | [Odd.sub_even](../../../../../NumberTheory/ElementaryNumberTheory/NatParityParityNamespaced.lean/declarations/odd-sub-even.md) | 205 | `result-track:0cd2a51a10894e431423c1cca257a44d2ea928f4c651cf9c729837d7abbaf474` |
| 43 | `theorem` | [odd_sub'](../../../../../NumberTheory/ElementaryNumberTheory/NatParityParityNamespaced.lean/declarations/odd-sub-source-edition-2.md) | 209 | `result-track:e735ed701ca26f1cde967fae1e351124cbd1bf364732c9f992c7fbeaf977e91d` |
| 44 | `theorem` | [Even.sub_odd](../../../../../NumberTheory/ElementaryNumberTheory/NatParityParityNamespaced.lean/declarations/even-sub-odd.md) | 213 | `result-track:4296e657ecfb984a28bb1cf3849524bb2fb59731aaad4ad317fb1b1f5f47ba56` |
| 45 | `theorem` | [even_mul_succ_self](../../../../../NumberTheory/ElementaryNumberTheory/NatParityParityNamespaced.lean/declarations/even-mul-succ-self.md) | 217 | `result-track:d02b92d5cbecbe6ed8ed0d8fd050a5382ff1306c8768ca10e3d2cd5df5921be5` |
| 46 | `theorem` | [even_mul_self_pred](../../../../../NumberTheory/ElementaryNumberTheory/NatParityParityNamespaced.lean/declarations/even-mul-self-pred.md) | 222 | `result-track:0a7480ea2b8e4e6aa502fe0a0cc091d901ea1fde88089cced2a378e63a6e8934` |
| 47 | `theorem` | [two_mul_div_two_of_even](../../../../../NumberTheory/ElementaryNumberTheory/NatParityParityNamespaced.lean/declarations/two-mul-div-two-of-even.md) | 227 | `result-track:d6b120d3b35b1eb573df0d430a11dfcf5ba5c91fc2ddc896f9f59984f543aa68` |
| 48 | `theorem` | [div_two_mul_two_of_even](../../../../../NumberTheory/ElementaryNumberTheory/NatParityParityNamespaced.lean/declarations/div-two-mul-two-of-even.md) | 231 | `result-track:2f365610cb1a77911b9240f3dbffe23a026f37fb46596f6137843b2d2d99e9fe` |
| 49 | `theorem` | [two_mul_div_two_add_one_of_odd](../../../../../NumberTheory/ElementaryNumberTheory/NatParityParityNamespaced.lean/declarations/two-mul-div-two-add-one-of-odd.md) | 235 | `result-track:121bee0b48b1b4d6b8f0b2a08c92acad74aaa86569c25ae3bfa4c9243c80b511` |
| 50 | `theorem` | [div_two_mul_two_add_one_of_odd](../../../../../NumberTheory/ElementaryNumberTheory/NatParityParityNamespaced.lean/declarations/div-two-mul-two-add-one-of-odd.md) | 239 | `result-track:a5163f2eb50d76747f8f6e88179c1ab0a4261f92de1ba25187ad667d7ec36196` |
| 51 | `theorem` | [one_add_div_two_mul_two_of_odd](../../../../../NumberTheory/ElementaryNumberTheory/NatParityParityNamespaced.lean/declarations/one-add-div-two-mul-two-of-odd.md) | 243 | `result-track:86bf6738b96bd029ee08920be67c68fa697acdad53d7940fe85b6b683615220f` |
| 52 | `theorem` | [bit0_div_two](../../../../../NumberTheory/ElementaryNumberTheory/NatParityParityNamespaced.lean/declarations/bit0-div-two.md) | 250 | `result-track:1c365698d141b6ceb85f140a3392ec6fe99fc4f86db85c2b29be0ab2090c67fb` |
| 53 | `theorem` | [bit1_div_two](../../../../../NumberTheory/ElementaryNumberTheory/NatParityParityNamespaced.lean/declarations/bit1-div-two.md) | 254 | `result-track:bb3464916f2c47fc26d4e2aea26cfafcdbbd0a159efcc0fd77441b0f5f142ef1` |
| 54 | `theorem` | [bit0_div_bit0](../../../../../NumberTheory/ElementaryNumberTheory/NatParityParityNamespaced.lean/declarations/bit0-div-bit0.md) | 259 | `result-track:17816baabe307e88a8df3f0e80fdc854a753a9cd8f084f29b75082b862543891` |
| 55 | `theorem` | [bit1_div_bit0](../../../../../NumberTheory/ElementaryNumberTheory/NatParityParityNamespaced.lean/declarations/bit1-div-bit0.md) | 264 | `result-track:60c9db2a1997ff9cd676258a99342fa426468b00435723950a9a467ca8285085` |
| 56 | `theorem` | [bit0_mod_bit0](../../../../../NumberTheory/ElementaryNumberTheory/NatParityParityNamespaced.lean/declarations/bit0-mod-bit0.md) | 269 | `result-track:e3567e221c6b6aa346084eeaeff7141874c86fabc3d2b6216c5c5e21091eaeb7` |
| 57 | `theorem` | [bit1_mod_bit0](../../../../../NumberTheory/ElementaryNumberTheory/NatParityParityNamespaced.lean/declarations/bit1-mod-bit0.md) | 274 | `result-track:7837543f5b5cc157e057a9e1f91d9de55725f6cbed71b56adfc7efb70d4da588` |
| 58 | `example` | [(anonymous)](../../../../../NumberTheory/ElementaryNumberTheory/NatParityParityNamespaced.lean/declarations/example.md) | 286 | `declaration-track:51466364ec7fdbf978ea0e1fdbe048dccf4840c991d44ee19aa861171ed0c2d0` |
| 59 | `example` | [(anonymous)](../../../../../NumberTheory/ElementaryNumberTheory/NatParityParityNamespaced.lean/declarations/example-source-edition-2.md) | 291 | `declaration-track:c6c2e7cbd96b2ee7bc8d9c73fb128ae3c2da20adab49b96d7490c62add5d77cb` |
| 60 | `theorem` | [iterate_bit0](../../../../../NumberTheory/ElementaryNumberTheory/NatParityParityNamespaced.lean/declarations/iterate-bit0.md) | 306 | `result-track:e62a59dd3f1eff2a0660d10559b487ed41b685612b3eeda35a9b8a79d168f978` |
| 61 | `theorem` | [iterate_bit1](../../../../../NumberTheory/ElementaryNumberTheory/NatParityParityNamespaced.lean/declarations/iterate-bit1.md) | 310 | `result-track:57e0bde0fd2be3ae60f55a7d67e6db9d85d0d051f2dea29a2df6057162be3624` |
| 62 | `theorem` | [iterate_two_mul](../../../../../NumberTheory/ElementaryNumberTheory/NatParityParityNamespaced.lean/declarations/iterate-two-mul.md) | 316 | `result-track:3cb087c419cdbbe66ddfe1c341037a04558d263ec97bf7979f6ae97167fa27dc` |
| 63 | `theorem` | [iterate_even](../../../../../NumberTheory/ElementaryNumberTheory/NatParityParityNamespaced.lean/declarations/iterate-even.md) | 319 | `result-track:c8c62efa6ff545c12678f82ebb00f1c1ee0cf198b387337315fd05f5a7e0ae69` |
| 64 | `theorem` | [iterate_odd](../../../../../NumberTheory/ElementaryNumberTheory/NatParityParityNamespaced.lean/declarations/iterate-odd.md) | 324 | `result-track:a91895ebe75a424c73a33eccecf728e3c0468b9220ec1d2e10efe316adcc3a83` |
| 65 | `theorem` | [iterate_eq_self](../../../../../NumberTheory/ElementaryNumberTheory/NatParityParityNamespaced.lean/declarations/iterate-eq-self.md) | 329 | `result-track:89205a00351fda712a1d774e321063065c33af227bcf4748a5275e33759da230` |
| 66 | `theorem` | [iterate_eq_id](../../../../../NumberTheory/ElementaryNumberTheory/NatParityParityNamespaced.lean/declarations/iterate-eq-id.md) | 334 | `result-track:9fc0039966fc7382dcc3a84ba0d903ac439238b5c421cf46fd100aebe656e8c5` |
| 67 | `theorem` | [neg_one_pow_eq_one_iff_even](../../../../../NumberTheory/ElementaryNumberTheory/NatParityParityNamespaced.lean/declarations/neg-one-pow-eq-one-iff-even.md) | 344 | `result-track:d84c2d69f4209db9517378e057837138660c4d417f5223447679bdf3111a6520` |
| 68 | `theorem` | [Odd.mod_even_iff](../../../../../NumberTheory/ElementaryNumberTheory/NatParityParityNamespaced.lean/declarations/odd-mod-even-iff.md) | 350 | `result-track:11250339ed112badd4a241116fb1aa113a73deae5319b21273d4a3f09d813e8a` |
| 69 | `theorem` | [Even.mod_even_iff](../../../../../NumberTheory/ElementaryNumberTheory/NatParityParityNamespaced.lean/declarations/even-mod-even-iff.md) | 356 | `result-track:330c5d1df6815e6bef9813e6ecb2f9c1ea26f54f545a68f6a24248ad11d7a0c6` |
| 70 | `theorem` | [Odd.mod_even](../../../../../NumberTheory/ElementaryNumberTheory/NatParityParityNamespaced.lean/declarations/odd-mod-even.md) | 362 | `result-track:58eb86c89324113b190f11a96692ad769cf4ab104f46a695026b024812e996b2` |
| 71 | `theorem` | [Even.mod_even](../../../../../NumberTheory/ElementaryNumberTheory/NatParityParityNamespaced.lean/declarations/even-mod-even.md) | 367 | `result-track:84441f2524e973cc756b658fc9705b4097d3c2dea4fe1937d77506aeaebfe706` |
| 72 | `theorem` | [Odd.of_dvd_nat](../../../../../NumberTheory/ElementaryNumberTheory/NatParityParityNamespaced.lean/declarations/odd-of-dvd-nat.md) | 371 | `result-track:b4edb953550ae6168c02cd5c517a16ff8b780308c5ec23f2595440be1d1ae680` |
| 73 | `theorem` | [Odd.ne_two_of_dvd_nat](../../../../../NumberTheory/ElementaryNumberTheory/NatParityParityNamespaced.lean/declarations/odd-ne-two-of-dvd-nat.md) | 376 | `result-track:8c17d1ee3cdc3f8958b8c0d946b89f290f411c1868d8d474587c8f8ded60e099` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f067db359f0eba65203801522ebe42cf05250e67b2e205f3e8413f6c1098a487 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Parity/Variant3ac61b13c7aef882fc872a9adb816d169921b35f00249e2c52d4936f5e939070.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Parity/Variant3ac61b13c7aef882fc872a9adb816d169921b35f00249e2c52d4936f5e939070.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
