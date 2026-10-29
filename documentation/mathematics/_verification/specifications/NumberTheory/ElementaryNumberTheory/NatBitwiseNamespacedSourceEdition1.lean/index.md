# Verification target: Nat Bitwise Namespaced Source Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "359898662d3ebafdec8f09ee63df82deb67804a6",
  "lexical_observation_count": 49,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variant33a76571e6d27253cc2686529e3a075b232d7a3f46a7d7a5d69783c601fce502.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ElementaryNumberTheory/NatBitwiseNamespacedSourceEdition1.lean/index.md) · [Full source](../../../../../NumberTheory/ElementaryNumberTheory/NatBitwiseNamespacedSourceEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `359898662d3ebafdec8f09ee63df82deb67804a6`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variant33a76571e6d27253cc2686529e3a075b232d7a3f46a7d7a5d69783c601fce502.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variant33a76571e6d27253cc2686529e3a075b232d7a3f46a7d7a5d69783c601fce502.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Nat.Even` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.NeZero` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Nat` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.GetD` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Bits` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Basic` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.AdaptationNote` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Common` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [bitwise_zero_left](../../../../../NumberTheory/ElementaryNumberTheory/NatBitwiseNamespacedSourceEdition1.lean/declarations/bitwise-zero-left.md) | 56 | `result-track:523b0f75412db1cb8037829c878bf004415044a6ca42155a4069f320a458a36e` |
| 2 | `lemma` | [bitwise_zero_right](../../../../../NumberTheory/ElementaryNumberTheory/NatBitwiseNamespacedSourceEdition1.lean/declarations/bitwise-zero-right.md) | 60 | `result-track:17ce31f80020b39e5591155ef2ff23ddcc86eaea17bec6fc6d71b3d6cc52f8ec` |
| 3 | `lemma` | [bitwise_zero](../../../../../NumberTheory/ElementaryNumberTheory/NatBitwiseNamespacedSourceEdition1.lean/declarations/bitwise-zero.md) | 66 | `result-track:1a31767e5245bd6898cfcbf9afd4c8a8e8c21caa0db7cdf82d71b34dffd2244d` |
| 4 | `lemma` | [bitwise_of_ne_zero](../../../../../NumberTheory/ElementaryNumberTheory/NatBitwiseNamespacedSourceEdition1.lean/declarations/bitwise-of-ne-zero.md) | 69 | `result-track:527f09a098a6f349d1277b2ea36555d2aab72926d3470d6043e11ecc6d44ab12` |
| 5 | `theorem` | [binaryRec_of_ne_zero](../../../../../NumberTheory/ElementaryNumberTheory/NatBitwiseNamespacedSourceEdition1.lean/declarations/binaryrec-of-ne-zero.md) | 76 | `result-track:62c0de00578b6bc49c8525f5052910ac0d61533b5ece99f0384c1777d5ceb37c` |
| 6 | `lemma` | [bitwise_bit](../../../../../NumberTheory/ElementaryNumberTheory/NatBitwiseNamespacedSourceEdition1.lean/declarations/bitwise-bit.md) | 87 | `result-track:55b00aaf5f4941e88dccde8a9b36125fff62ffd5c1ca0e17dea92407434b9b01` |
| 7 | `lemma` | [bit_mod_two_eq_zero_iff](../../../../../NumberTheory/ElementaryNumberTheory/NatBitwiseNamespacedSourceEdition1.lean/declarations/bit-mod-two-eq-zero-iff.md) | 95 | `result-track:69de92d9e061277f83e8ff57c554180fa1e31da31d68d4db12aa2beb956cc4f8` |
| 8 | `lemma` | [bit_mod_two_eq_one_iff](../../../../../NumberTheory/ElementaryNumberTheory/NatBitwiseNamespacedSourceEdition1.lean/declarations/bit-mod-two-eq-one-iff.md) | 99 | `result-track:503545bc44a8bf465008325e362981636cbe31a7fb4e34d1de41ec12e3989b09` |
| 9 | `theorem` | [lor_bit](../../../../../NumberTheory/ElementaryNumberTheory/NatBitwiseNamespacedSourceEdition1.lean/declarations/lor-bit.md) | 104 | `result-track:a6d6ba25ae687820112c02dcec21b34aa419cbfdedc259e44b57e876d203fc04` |
| 10 | `theorem` | [land_bit](../../../../../NumberTheory/ElementaryNumberTheory/NatBitwiseNamespacedSourceEdition1.lean/declarations/land-bit.md) | 108 | `result-track:71b6322d3cba262504291533810d810f73936833f4253edaf0c03ba8f14cfcee` |
| 11 | `theorem` | [ldiff_bit](../../../../../NumberTheory/ElementaryNumberTheory/NatBitwiseNamespacedSourceEdition1.lean/declarations/ldiff-bit.md) | 112 | `result-track:b6076ad39cb08bf7a445645bc6d0386abd9aad5041c2471627d24d2e48192906` |
| 12 | `theorem` | [xor_bit](../../../../../NumberTheory/ElementaryNumberTheory/NatBitwiseNamespacedSourceEdition1.lean/declarations/xor-bit.md) | 116 | `result-track:33f33c3f454531bc2aac46ea5224870eac1ba6298dec9ff14eafbc4f7f393b24` |
| 13 | `theorem` | [testBit_lor](../../../../../NumberTheory/ElementaryNumberTheory/NatBitwiseNamespacedSourceEdition1.lean/declarations/testbit-lor.md) | 121 | `result-track:e750c987ded5f598c6b1d3e3761216d4b52cefeb7699ccfd046243b7b250a187` |
| 14 | `theorem` | [testBit_land](../../../../../NumberTheory/ElementaryNumberTheory/NatBitwiseNamespacedSourceEdition1.lean/declarations/testbit-land.md) | 124 | `result-track:3e40217bf92ef206cd4ddc45340a5286a6eabe0cc5217ef89da2b8aab17e47c7` |
| 15 | `theorem` | [testBit_ldiff](../../../../../NumberTheory/ElementaryNumberTheory/NatBitwiseNamespacedSourceEdition1.lean/declarations/testbit-ldiff.md) | 128 | `result-track:54a60c57ba8f5fc3acd2331b512df733fc0b08e3776bf444f9c46e752d0808f8` |
| 16 | `theorem` | [bit_false](../../../../../NumberTheory/ElementaryNumberTheory/NatBitwiseNamespacedSourceEdition1.lean/declarations/bit-false.md) | 136 | `result-track:2dc49b9512b4575086c6238092d4d7821d026af90e9c6fde2ebce5f20436bd85` |
| 17 | `theorem` | [bit_true](../../../../../NumberTheory/ElementaryNumberTheory/NatBitwiseNamespacedSourceEdition1.lean/declarations/bit-true.md) | 140 | `result-track:7a4155bf166a6ac5634af12b5f91c659c48da058fe1c5ab8aa937d789b76c862` |
| 18 | `theorem` | [bit_ne_zero_iff](../../../../../NumberTheory/ElementaryNumberTheory/NatBitwiseNamespacedSourceEdition1.lean/declarations/bit-ne-zero-iff.md) | 143 | `result-track:c569b746499cf249cc9d3e124600b12ca1d6fde8e61861d1287704f72a4bde12` |
| 19 | `lemma` | [bitwise_bit'](../../../../../NumberTheory/ElementaryNumberTheory/NatBitwiseNamespacedSourceEdition1.lean/declarations/bitwise-bit-source-edition-2.md) | 149 | `result-track:a8a75bd8423db11ab10fe2bc63774d10eb214426077af3c6b2c27da5691c1c8f` |
| 20 | `lemma` | [bitwise_eq_binaryRec](../../../../../NumberTheory/ElementaryNumberTheory/NatBitwiseNamespacedSourceEdition1.lean/declarations/bitwise-eq-binaryrec.md) | 158 | `result-track:f3119c4f164cd6c4cd476063146301330e05b91d9f170f6fb48bf4027edf1a18` |
| 21 | `theorem` | [zero_of_testBit_eq_false](../../../../../NumberTheory/ElementaryNumberTheory/NatBitwiseNamespacedSourceEdition1.lean/declarations/zero-of-testbit-eq-false.md) | 175 | `result-track:bea1ec089c1b1204d95cca899338d0371198aba956c5310ba340a854b550f501` |
| 22 | `theorem` | [testBit_eq_false_of_lt](../../../../../NumberTheory/ElementaryNumberTheory/NatBitwiseNamespacedSourceEdition1.lean/declarations/testbit-eq-false-of-lt.md) | 180 | `result-track:8cc5b5ec146625f84ab73f5b059c5d7af5065f67bd99c959bcab8522400872ef` |
| 23 | `theorem` | [testBit_eq_inth](../../../../../NumberTheory/ElementaryNumberTheory/NatBitwiseNamespacedSourceEdition1.lean/declarations/testbit-eq-inth.md) | 184 | `result-track:9148038d1704ed02dc9ebbba9c7303c0f224bb614f98c865dffaa636f53cb695` |
| 24 | `theorem` | [exists_most_significant_bit](../../../../../NumberTheory/ElementaryNumberTheory/NatBitwiseNamespacedSourceEdition1.lean/declarations/exists-most-significant-bit.md) | 195 | `result-track:96a60bf754ab3ba7317924536861cc1630f7279a95ab4015009c38a4f9f529e0` |
| 25 | `theorem` | [lt_of_testBit](../../../../../NumberTheory/ElementaryNumberTheory/NatBitwiseNamespacedSourceEdition1.lean/declarations/lt-of-testbit.md) | 211 | `result-track:1212adca21cf73af8b4c990efc43da724822c7ead13dd5590f3d8808b4ebaac5` |
| 26 | `theorem` | [bitwise_swap](../../../../../NumberTheory/ElementaryNumberTheory/NatBitwiseNamespacedSourceEdition1.lean/declarations/bitwise-swap.md) | 244 | `result-track:5c1668b12c7a1f6613c67286e82a203c13fb1e3328ffd3fcb0971e6210cab421` |
| 27 | `theorem` | [bitwise_comm](../../../../../NumberTheory/ElementaryNumberTheory/NatBitwiseNamespacedSourceEdition1.lean/declarations/bitwise-comm.md) | 257 | `result-track:99e593087f2111d1ad77f36d7bc9a482d9e43b94d75f1f528b185512f2ca84ba` |
| 28 | `theorem` | [lor_comm](../../../../../NumberTheory/ElementaryNumberTheory/NatBitwiseNamespacedSourceEdition1.lean/declarations/lor-comm.md) | 264 | `result-track:76d40a8461a6b5a8b033e72f0560543c099c958fe3999f6cd73ca3c35f0717d2` |
| 29 | `theorem` | [land_comm](../../../../../NumberTheory/ElementaryNumberTheory/NatBitwiseNamespacedSourceEdition1.lean/declarations/land-comm.md) | 267 | `result-track:243402173dcf5b3dcb485aa7c8b8f0c8c687fcbc212236074225d275bf0c80a7` |
| 30 | `lemma` | [and_two_pow](../../../../../NumberTheory/ElementaryNumberTheory/NatBitwiseNamespacedSourceEdition1.lean/declarations/and-two-pow.md) | 270 | `result-track:c9bad2b18512499cff608836cb9e474eaa47c4cae75a79c394b9c99174b252f8` |
| 31 | `lemma` | [two_pow_and](../../../../../NumberTheory/ElementaryNumberTheory/NatBitwiseNamespacedSourceEdition1.lean/declarations/two-pow-and.md) | 278 | `result-track:3be90b6ec052ea7aebf65bd126457324fead876236403792f8bb02132e7176ed` |
| 32 | `macro` | [(anonymous)](../../../../../NumberTheory/ElementaryNumberTheory/NatBitwiseNamespacedSourceEdition1.lean/declarations/macro.md) | 283 | `declaration-track:4ed177c289ba7281cf9fefdca4f6151ce14fe11bdf5350ef76c9aafdb64621a1` |
| 33 | `theorem` | [land_assoc](../../../../../NumberTheory/ElementaryNumberTheory/NatBitwiseNamespacedSourceEdition1.lean/declarations/land-assoc.md) | 289 | `result-track:e64facbd90f4a48199f73ee73636c1b79367e96af467789be3cba3ad31768ec0` |
| 34 | `theorem` | [lor_assoc](../../../../../NumberTheory/ElementaryNumberTheory/NatBitwiseNamespacedSourceEdition1.lean/declarations/lor-assoc.md) | 291 | `result-track:bed3e4652d66292956af9bc53283a1dcb32e362da6f18d8b4a86470719a88736` |
| 35 | `theorem` | [xor_cancel_right](../../../../../NumberTheory/ElementaryNumberTheory/NatBitwiseNamespacedSourceEdition1.lean/declarations/xor-cancel-right.md) | 294 | `result-track:2521ca82b69320e9df0d0b671ad1bf18adf86a5b778760818a2b07df714a4bcc` |
| 36 | `theorem` | [xor_cancel_left](../../../../../NumberTheory/ElementaryNumberTheory/NatBitwiseNamespacedSourceEdition1.lean/declarations/xor-cancel-left.md) | 297 | `result-track:ab4cf6775508d3b153fc8ab7419a02e51d0e8b39fe6f35f3f2e933c79dea9d15` |
| 37 | `theorem` | [xor_right_injective](../../../../../NumberTheory/ElementaryNumberTheory/NatBitwiseNamespacedSourceEdition1.lean/declarations/xor-right-injective.md) | 300 | `result-track:ecda77377bfe1b1fe0a58a4382ce8263088c8642b28514186a342b33605d071a` |
| 38 | `theorem` | [xor_left_injective](../../../../../NumberTheory/ElementaryNumberTheory/NatBitwiseNamespacedSourceEdition1.lean/declarations/xor-left-injective.md) | 303 | `result-track:3cf4adb346191eec97323a898be7a9c092d1cce757aea8bc342876fb1f25c972` |
| 39 | `theorem` | [xor_right_inj](../../../../../NumberTheory/ElementaryNumberTheory/NatBitwiseNamespacedSourceEdition1.lean/declarations/xor-right-inj.md) | 308 | `result-track:f6e9fd1608d422f33897dbd7def3a26affe6e2260fb7013b0d5acd3ad481db85` |
| 40 | `theorem` | [xor_left_inj](../../../../../NumberTheory/ElementaryNumberTheory/NatBitwiseNamespacedSourceEdition1.lean/declarations/xor-left-inj.md) | 312 | `result-track:76dcd3636474f9196a118743f9ccf3f3a4e47227d2b0b206af1ee3ad79932d02` |
| 41 | `theorem` | [xor_eq_zero](../../../../../NumberTheory/ElementaryNumberTheory/NatBitwiseNamespacedSourceEdition1.lean/declarations/xor-eq-zero.md) | 316 | `result-track:8ec1446dfea5bcc1c5c22a7baf1b874ff0db45eba52a69fcac5167cd704e9edf` |
| 42 | `theorem` | [xor_ne_zero](../../../../../NumberTheory/ElementaryNumberTheory/NatBitwiseNamespacedSourceEdition1.lean/declarations/xor-ne-zero.md) | 319 | `result-track:901c39f65e1d46ac6c9f88f83f9483fdb6ff1c444bcd9f15e0a67514a5cb1eee` |
| 43 | `theorem` | [xor_trichotomy](../../../../../NumberTheory/ElementaryNumberTheory/NatBitwiseNamespacedSourceEdition1.lean/declarations/xor-trichotomy.md) | 322 | `result-track:da4a2229cea924ce8f9e57096372af8d754f02b88baca2fcd69d1e78bb570ef4` |
| 44 | `theorem` | [lt_xor_cases](../../../../../NumberTheory/ElementaryNumberTheory/NatBitwiseNamespacedSourceEdition1.lean/declarations/lt-xor-cases.md) | 352 | `result-track:82e99e58a6fc4dd4c0390f2eb86541372ccfea82786a7df61b2633daf4b74a1c` |
| 45 | `theorem` | [xor_mod_two_eq](../../../../../NumberTheory/ElementaryNumberTheory/NatBitwiseNamespacedSourceEdition1.lean/declarations/xor-mod-two-eq.md) | 357 | `result-track:27940a5c80ae3b7031020f45a6bddcfbc2388930d2c0d8b9fe1d500734f4a8d5` |
| 46 | `theorem` | [even_xor](../../../../../NumberTheory/ElementaryNumberTheory/NatBitwiseNamespacedSourceEdition1.lean/declarations/even-xor.md) | 367 | `result-track:3346b0906526177f7a035dcd7370d97c11d8ebc95b5a8fd33ffb1a750e2150f8` |
| 47 | `theorem` | [bit_lt_two_pow_succ_iff](../../../../../NumberTheory/ElementaryNumberTheory/NatBitwiseNamespacedSourceEdition1.lean/declarations/bit-lt-two-pow-succ-iff.md) | 371 | `result-track:3f1313a977f9dc8f9160aefaa2dc0d98755164c65785b756f38f46eed8002100` |
| 48 | `lemma` | [shiftLeft_lt](../../../../../NumberTheory/ElementaryNumberTheory/NatBitwiseNamespacedSourceEdition1.lean/declarations/shiftleft-lt.md) | 377 | `result-track:c46dff082548fa17b7b4981b268bbc4d1b6b58aa31975a87d0e2998ba72ea014` |
| 49 | `lemma` | [append_lt](../../../../../NumberTheory/ElementaryNumberTheory/NatBitwiseNamespacedSourceEdition1.lean/declarations/append-lt.md) | 381 | `result-track:ad7e33f3d09a1692b66365cd1e3c8aa8a04df5fb323a00baccea21f5e5104e8b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=14d86fa331dee143f82be723bc15c320929c92ce29b130e356e33d066f7eaf61 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variant33a76571e6d27253cc2686529e3a075b232d7a3f46a7d7a5d69783c601fce502.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variant33a76571e6d27253cc2686529e3a075b232d7a3f46a7d7a5d69783c601fce502.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
