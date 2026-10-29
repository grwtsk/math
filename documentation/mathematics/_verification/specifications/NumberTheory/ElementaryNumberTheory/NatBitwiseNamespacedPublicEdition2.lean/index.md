# Verification target: Nat Bitwise Namespaced Public Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b877792c66387f5c0e52b31d1cdeedb3c4357626",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variant1b69b2e6fd961b82176e07b32cce89dfce1c877c07977c74cd7f06ae8d9a7c3b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ElementaryNumberTheory/NatBitwiseNamespacedPublicEdition2.lean/index.md) · [Full source](../../../../../NumberTheory/ElementaryNumberTheory/NatBitwiseNamespacedPublicEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b877792c66387f5c0e52b31d1cdeedb3c4357626`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variant1b69b2e6fd961b82176e07b32cce89dfce1c877c07977c74cd7f06ae8d9a7c3b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variant1b69b2e6fd961b82176e07b32cce89dfce1c877c07977c74cd7f06ae8d9a7c3b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [bitwise_zero_left](../../../../../NumberTheory/ElementaryNumberTheory/NatBitwiseNamespacedPublicEdition2.lean/declarations/bitwise-zero-left.md) | 63 | `result-track:525ce0693edf9196288063ea3b4c242b879d974a49382ff330013d8be172fb3e` |
| 2 | `lemma` | [bitwise_zero_right](../../../../../NumberTheory/ElementaryNumberTheory/NatBitwiseNamespacedPublicEdition2.lean/declarations/bitwise-zero-right.md) | 67 | `result-track:437e54fb72adab719cf7d45fc03d57e88881b1b62b6a7b41055df06cb8167c1b` |
| 3 | `lemma` | [bitwise_zero](../../../../../NumberTheory/ElementaryNumberTheory/NatBitwiseNamespacedPublicEdition2.lean/declarations/bitwise-zero.md) | 73 | `result-track:fa4e40029df0175dd08c701fc5fb31cee4c26707d8d06355658ca92ba8970026` |
| 4 | `lemma` | [bitwise_of_ne_zero](../../../../../NumberTheory/ElementaryNumberTheory/NatBitwiseNamespacedPublicEdition2.lean/declarations/bitwise-of-ne-zero.md) | 76 | `result-track:f41e43553231f166d2211f32d90963fdf47b2d5b1334b2cfb4b08d1cef3d866f` |
| 5 | `theorem` | [binaryRec_of_ne_zero](../../../../../NumberTheory/ElementaryNumberTheory/NatBitwiseNamespacedPublicEdition2.lean/declarations/binaryrec-of-ne-zero.md) | 83 | `result-track:a30a383fc4006d07a5354e4e1f3411b0c54eb504d0922ccaf0f7c64fbb07be24` |
| 6 | `lemma` | [bitwise_bit](../../../../../NumberTheory/ElementaryNumberTheory/NatBitwiseNamespacedPublicEdition2.lean/declarations/bitwise-bit-source-edition-2.md) | 89 | `result-track:dbcff40a607d7326031e9babc91d8329fada8020e2935edfe374af9027d3ca02` |
| 7 | `lemma` | [bit_mod_two_eq_zero_iff](../../../../../NumberTheory/ElementaryNumberTheory/NatBitwiseNamespacedPublicEdition2.lean/declarations/bit-mod-two-eq-zero-iff.md) | 97 | `result-track:a9960d9b3ae889f2475b5f1fdbf96ac9981def4905e7436f06d05db4a5313db5` |
| 8 | `lemma` | [bit_mod_two_eq_one_iff](../../../../../NumberTheory/ElementaryNumberTheory/NatBitwiseNamespacedPublicEdition2.lean/declarations/bit-mod-two-eq-one-iff.md) | 101 | `result-track:6a9b5ae2fcbc1090592f2a2e3bb6b96c2338763a3530f2bb99759a89666d4d1d` |
| 9 | `theorem` | [lor_bit](../../../../../NumberTheory/ElementaryNumberTheory/NatBitwiseNamespacedPublicEdition2.lean/declarations/lor-bit.md) | 106 | `result-track:c6d08d5b8a121147d86aa186865f620dcd491eb383c05a25cbcb42fde6a953c9` |
| 10 | `theorem` | [land_bit](../../../../../NumberTheory/ElementaryNumberTheory/NatBitwiseNamespacedPublicEdition2.lean/declarations/land-bit.md) | 110 | `result-track:3bb2cfea99ef814f8ff7d39e5fa22061f93ff68e699ddff6f7314b0b74493cef` |
| 11 | `theorem` | [ldiff_bit](../../../../../NumberTheory/ElementaryNumberTheory/NatBitwiseNamespacedPublicEdition2.lean/declarations/ldiff-bit.md) | 114 | `result-track:0979608188a8ef41449e23f30c348e6db43adca8911c53b53d474ad92223a9c7` |
| 12 | `theorem` | [xor_bit](../../../../../NumberTheory/ElementaryNumberTheory/NatBitwiseNamespacedPublicEdition2.lean/declarations/xor-bit.md) | 118 | `result-track:2daad306b448f23ef04a7f91af605bb0cb688a74d48e02afacbad6abc810f00a` |
| 13 | `theorem` | [testBit_lor](../../../../../NumberTheory/ElementaryNumberTheory/NatBitwiseNamespacedPublicEdition2.lean/declarations/testbit-lor.md) | 123 | `result-track:5202cc043ec555bdcd78133426c03ccd58a8381747dfe3ec14b0c1a4fb05172f` |
| 14 | `theorem` | [testBit_land](../../../../../NumberTheory/ElementaryNumberTheory/NatBitwiseNamespacedPublicEdition2.lean/declarations/testbit-land.md) | 126 | `result-track:efb9d9bb6a8a2e798d1bff65935a09061306c11c8cd2a4d90191c5eca255606b` |
| 15 | `theorem` | [testBit_ldiff](../../../../../NumberTheory/ElementaryNumberTheory/NatBitwiseNamespacedPublicEdition2.lean/declarations/testbit-ldiff.md) | 130 | `result-track:3c7965cf466d9ae3fce81ae3e24d619ae63bdad9c43fbf195b8bc8495cdae59f` |
| 16 | `lemma` | [bitwise_bit'](../../../../../NumberTheory/ElementaryNumberTheory/NatBitwiseNamespacedPublicEdition2.lean/declarations/bitwise-bit.md) | 138 | `result-track:35a1d01e1fe41e07be3ab3aa7756fe812fd89f0ac0e4394ab8d7dd19c67b579a` |
| 17 | `lemma` | [bitwise_eq_binaryRec](../../../../../NumberTheory/ElementaryNumberTheory/NatBitwiseNamespacedPublicEdition2.lean/declarations/bitwise-eq-binaryrec.md) | 147 | `result-track:01e96f016c9b0f222f451885a61df590265712e2b61c1dd1b78e410faa8ea6f3` |
| 18 | `theorem` | [zero_of_testBit_eq_false](../../../../../NumberTheory/ElementaryNumberTheory/NatBitwiseNamespacedPublicEdition2.lean/declarations/zero-of-testbit-eq-false.md) | 164 | `result-track:2a4c126fd58792a9bd8c90da345915094aa1ee84b641c810895a42ffe6e8233a` |
| 19 | `theorem` | [testBit_eq_false_of_lt](../../../../../NumberTheory/ElementaryNumberTheory/NatBitwiseNamespacedPublicEdition2.lean/declarations/testbit-eq-false-of-lt.md) | 169 | `result-track:01ee6a3193fadf1247f9e561dffc31759d547a22477ab0953ea26b5d19000dcc` |
| 20 | `theorem` | [testBit_eq_inth](../../../../../NumberTheory/ElementaryNumberTheory/NatBitwiseNamespacedPublicEdition2.lean/declarations/testbit-eq-inth.md) | 173 | `result-track:576e21a83bfd5831ede327bccbebc9642030b04fd218e43d097398053d4240eb` |
| 21 | `theorem` | [exists_most_significant_bit](../../../../../NumberTheory/ElementaryNumberTheory/NatBitwiseNamespacedPublicEdition2.lean/declarations/exists-most-significant-bit.md) | 184 | `result-track:d8db160c51f583d097c6e9c5067d252063060c739515593b6b7282c091ee2b94` |
| 22 | `theorem` | [lt_of_testBit](../../../../../NumberTheory/ElementaryNumberTheory/NatBitwiseNamespacedPublicEdition2.lean/declarations/lt-of-testbit.md) | 200 | `result-track:029f61fd7a97e1df7ea9f49a8c3c6ce53c442178cc51285e58901e912e03b538` |
| 23 | `theorem` | [bitwise_swap](../../../../../NumberTheory/ElementaryNumberTheory/NatBitwiseNamespacedPublicEdition2.lean/declarations/bitwise-swap.md) | 225 | `result-track:e4ec2c565783588a52d9abd31d3be4148441f9a730aecdf814e00ebfbfbd84c1` |
| 24 | `theorem` | [bitwise_comm](../../../../../NumberTheory/ElementaryNumberTheory/NatBitwiseNamespacedPublicEdition2.lean/declarations/bitwise-comm.md) | 238 | `result-track:a71aa3cf5ae53247d59bfb1e30462cd7086cabab932d83a63e152b5ec4454de7` |
| 25 | `theorem` | [lor_comm](../../../../../NumberTheory/ElementaryNumberTheory/NatBitwiseNamespacedPublicEdition2.lean/declarations/lor-comm.md) | 245 | `result-track:9b4eb4ef1bd53110060ca575e71c8033cbf2ca2564ba13cd3dc5c9a0ff6ba08f` |
| 26 | `theorem` | [land_comm](../../../../../NumberTheory/ElementaryNumberTheory/NatBitwiseNamespacedPublicEdition2.lean/declarations/land-comm.md) | 248 | `result-track:c6dbff5ecb70c6189c2d1df3a8b2267b966171de4179a1515402b2b6565c488d` |
| 27 | `lemma` | [and_two_pow](../../../../../NumberTheory/ElementaryNumberTheory/NatBitwiseNamespacedPublicEdition2.lean/declarations/and-two-pow.md) | 251 | `result-track:9a6ef04ad17413b58902b170c2784226f44415e1710867564b99728635cd2d14` |
| 28 | `lemma` | [two_pow_and](../../../../../NumberTheory/ElementaryNumberTheory/NatBitwiseNamespacedPublicEdition2.lean/declarations/two-pow-and.md) | 259 | `result-track:9ece75bb8e9ce1915fb70ebf6c0efd57c3096016fb654dae8143e0bb8d7c019f` |
| 29 | `macro` | [(anonymous)](../../../../../NumberTheory/ElementaryNumberTheory/NatBitwiseNamespacedPublicEdition2.lean/declarations/macro.md) | 264 | `declaration-track:c1fbf995240c0b5968ccf20e8c78202c4318f8b6bb7488488aab6a95668266bb` |
| 30 | `theorem` | [land_assoc](../../../../../NumberTheory/ElementaryNumberTheory/NatBitwiseNamespacedPublicEdition2.lean/declarations/land-assoc.md) | 270 | `result-track:f804c47d8af3c1bffdaba4c173df0095b76543174b465156dfb005d16d55c9df` |
| 31 | `theorem` | [lor_assoc](../../../../../NumberTheory/ElementaryNumberTheory/NatBitwiseNamespacedPublicEdition2.lean/declarations/lor-assoc.md) | 272 | `result-track:195609f611cfad9550749a5c35c9e9fe7d64c489202f81872f7a9d0506b8350a` |
| 32 | `theorem` | [xor_trichotomy](../../../../../NumberTheory/ElementaryNumberTheory/NatBitwiseNamespacedPublicEdition2.lean/declarations/xor-trichotomy.md) | 274 | `result-track:eec39069e103f046741726fbc93d681c47fc327f65d897c482e61db8fb30f430` |
| 33 | `theorem` | [lt_xor_cases](../../../../../NumberTheory/ElementaryNumberTheory/NatBitwiseNamespacedPublicEdition2.lean/declarations/lt-xor-cases.md) | 304 | `result-track:1181c8cfa2980a83e9d498b993505fe327e55045c52d52a0382c0a8618db4769` |
| 34 | `theorem` | [xor_mod_two_eq](../../../../../NumberTheory/ElementaryNumberTheory/NatBitwiseNamespacedPublicEdition2.lean/declarations/xor-mod-two-eq.md) | 309 | `result-track:4dc5063534e68d7ee07c18cf1662ee7f9d970ae4564e716d48a9c76fc8438285` |
| 35 | `theorem` | [even_xor](../../../../../NumberTheory/ElementaryNumberTheory/NatBitwiseNamespacedPublicEdition2.lean/declarations/even-xor.md) | 319 | `result-track:6353de2a499542abafbae24aeeace0cc3f3fcbafde25b4fef23932e17ae5fbb6` |
| 36 | `theorem` | [xor_one_of_even](../../../../../NumberTheory/ElementaryNumberTheory/NatBitwiseNamespacedPublicEdition2.lean/declarations/xor-one-of-even.md) | 324 | `result-track:b07d7b9d9e62027c6332d6f6fd631c8a3b79bd23a085203a24e38c05fb4f2ec9` |
| 37 | `theorem` | [xor_one_of_odd](../../../../../NumberTheory/ElementaryNumberTheory/NatBitwiseNamespacedPublicEdition2.lean/declarations/xor-one-of-odd.md) | 332 | `result-track:e640a4c3ff5276d7fdf92631acc93bcd2abbc3dea5430152b93872d35c713869` |
| 38 | `theorem` | [xor_range](../../../../../NumberTheory/ElementaryNumberTheory/NatBitwiseNamespacedPublicEdition2.lean/declarations/xor-range.md) | 341 | `result-track:8d75884b7cb6f391c9635e0225f19e63f3c28172a7af855d332ced375e2a7f35` |
| 39 | `lemma` | [shiftLeft_lt](../../../../../NumberTheory/ElementaryNumberTheory/NatBitwiseNamespacedPublicEdition2.lean/declarations/shiftleft-lt.md) | 363 | `result-track:bbdcee882f9771b14fa4de0b23d53860ab3c5903d4a1611b050fae010666aa84` |
| 40 | `lemma` | [append_lt](../../../../../NumberTheory/ElementaryNumberTheory/NatBitwiseNamespacedPublicEdition2.lean/declarations/append-lt.md) | 367 | `result-track:e1462b47b3703b3cacdf73ee92902a36f3e8a9a23dedb620e3a50a68e3548515` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=83f48773d017e98c5aefd4776e67a20afda19731b722920027d66f4410d6d31e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variant1b69b2e6fd961b82176e07b32cce89dfce1c877c07977c74cd7f06ae8d9a7c3b.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variant1b69b2e6fd961b82176e07b32cce89dfce1c877c07977c74cd7f06ae8d9a7c3b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
