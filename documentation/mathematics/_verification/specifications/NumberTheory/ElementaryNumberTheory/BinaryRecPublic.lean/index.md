# Verification target: Binary Rec Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f9405a0390ee025937b086d0893ec63c145df650",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/BinaryRec/Variant6030c8e3fb83a0ad0d5d3c70af2a5c7057069affc8d503001e045b125668f604.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ElementaryNumberTheory/BinaryRecPublic.lean/index.md) · [Full source](../../../../../NumberTheory/ElementaryNumberTheory/BinaryRecPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f9405a0390ee025937b086d0893ec63c145df650`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/BinaryRec/Variant6030c8e3fb83a0ad0d5d3c70af2a5c7057069affc8d503001e045b125668f604.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/BinaryRec/Variant6030c8e3fb83a0ad0d5d3c70af2a5c7057069affc8d503001e045b125668f604.lean.json)

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
| 1 | `def` | [bit](../../../../../NumberTheory/ElementaryNumberTheory/BinaryRecPublic.lean/declarations/bit.md) | 30 | `declaration-track:f270e650792768fa139b99ad58b9ea7bdb712a36ff6660395d36b5083183f12c` |
| 2 | `theorem` | [shiftRight_one](../../../../../NumberTheory/ElementaryNumberTheory/BinaryRecPublic.lean/declarations/shiftright-one.md) | 33 | `result-track:63f7905c6968251a6a1ff16d21e04a1ba48283129f6e37d77975ef500ff7e112` |
| 3 | `theorem` | [bit_decide_mod_two_eq_one_shiftRight_one](../../../../../NumberTheory/ElementaryNumberTheory/BinaryRecPublic.lean/declarations/bit-decide-mod-two-eq-one-shiftright-one.md) | 36 | `result-track:1b1751fee216276aa7c17866cfebe751808d86edde6115a96fb01909c0ac9613` |
| 4 | `theorem` | [bit_testBit_zero_shiftRight_one](../../../../../NumberTheory/ElementaryNumberTheory/BinaryRecPublic.lean/declarations/bit-testbit-zero-shiftright-one.md) | 40 | `result-track:96d578c4cfa86df9d8cf71aabd936fc94495e2be525aa2614885176c03666d85` |
| 5 | `theorem` | [bit_false](../../../../../NumberTheory/ElementaryNumberTheory/BinaryRecPublic.lean/declarations/bit-false.md) | 44 | `result-track:58c4f4948eeca0ad0fe92aed2c4cb6faca2ccfa97876ab9a00a6f7585f2994b5` |
| 6 | `theorem` | [bit_true](../../../../../NumberTheory/ElementaryNumberTheory/BinaryRecPublic.lean/declarations/bit-true.md) | 48 | `result-track:167299a825c7c29b5982ce66ce035d0e9ce3383f8a24ddb4b93b96161eeb3a75` |
| 7 | `theorem` | [bit_false_apply](../../../../../NumberTheory/ElementaryNumberTheory/BinaryRecPublic.lean/declarations/bit-false-apply.md) | 52 | `result-track:2e26cf3ea949d9ac8020602d792d835a05e6ab22c1f425f4a2cc224138f501f5` |
| 8 | `theorem` | [bit_true_apply](../../../../../NumberTheory/ElementaryNumberTheory/BinaryRecPublic.lean/declarations/bit-true-apply.md) | 56 | `result-track:d8fec42d2061c94271e71948b6e48945bec057a75039e5240f7ca80e3689ca66` |
| 9 | `theorem` | [bit_eq_zero_iff](../../../../../NumberTheory/ElementaryNumberTheory/BinaryRecPublic.lean/declarations/bit-eq-zero-iff.md) | 60 | `result-track:4871414effe1ebd3ff752ac116394ff498d47dfe0dd3598c49f3b267ea503892` |
| 10 | `theorem` | [bit_ne_zero_iff](../../../../../NumberTheory/ElementaryNumberTheory/BinaryRecPublic.lean/declarations/bit-ne-zero-iff.md) | 63 | `result-track:119bddc96c3b962217ca5084247e01d9cfdcddca8bd90f697b5dd8c8956bec8f` |
| 11 | `def` | [bitCasesOn](../../../../../NumberTheory/ElementaryNumberTheory/BinaryRecPublic.lean/declarations/bitcaseson.md) | 70 | `declaration-track:dac61eed40daece9e9291e80ea7507de3e69721a40e4d83586cb7a78e077901f` |
| 12 | `theorem` | [bit_lt_two_pow_succ_iff](../../../../../NumberTheory/ElementaryNumberTheory/BinaryRecPublic.lean/declarations/bit-lt-two-pow-succ-iff.md) | 76 | `result-track:9ff545a14e39933b3dbcf39aedaa2930e9a360722392da1324873491d4d7f5fc` |
| 13 | `theorem` | [log2_eq_succ_log2_shiftRight](../../../../../NumberTheory/ElementaryNumberTheory/BinaryRecPublic.lean/declarations/log2-eq-succ-log2-shiftright.md) | 79 | `result-track:89ce0a1719cf13ab75f0f8b51b30c09a9cab61e38fd9f31965b9fd8eb28633d2` |
| 14 | `def` | [binaryRec](../../../../../NumberTheory/ElementaryNumberTheory/BinaryRecPublic.lean/declarations/binaryrec-source-edition-2.md) | 88 | `declaration-track:cbc2a29b71195c179cd256eb1a2e408f8419bd5ca8ca697a3cbc1446da727784` |
| 15 | `def` | [binaryRec'](../../../../../NumberTheory/ElementaryNumberTheory/BinaryRecPublic.lean/declarations/binaryrec.md) | 105 | `declaration-track:0ce8386ea47aedbdfcc9761156a98f5a41881d5040d566ebc47c9dc9266cbb67` |
| 16 | `def` | [binaryRecFromOne](../../../../../NumberTheory/ElementaryNumberTheory/BinaryRecPublic.lean/declarations/binaryrecfromone.md) | 118 | `declaration-track:f25bd1d1ca44301e83d0778e1231250241609859856509c3b41317fa7f6ec74b` |
| 17 | `theorem` | [bit_val](../../../../../NumberTheory/ElementaryNumberTheory/BinaryRecPublic.lean/declarations/bit-val.md) | 128 | `result-track:70bfa62547d5a416d176c8dcc1687d7449093b8a03fd8a1544759c49b2baa815` |
| 18 | `theorem` | [bit_div_two](../../../../../NumberTheory/ElementaryNumberTheory/BinaryRecPublic.lean/declarations/bit-div-two.md) | 132 | `result-track:31c718cdc726c61abfc380e07e4d653d768f927d12f6bbfd372eb8d4d3a7c2c7` |
| 19 | `theorem` | [bit_mod_two](../../../../../NumberTheory/ElementaryNumberTheory/BinaryRecPublic.lean/declarations/bit-mod-two.md) | 138 | `result-track:33ab6a3893110d75dffc57917fd530883c099df5f6161582930f83956e1b6158` |
| 20 | `theorem` | [bit_shiftRight_one](../../../../../NumberTheory/ElementaryNumberTheory/BinaryRecPublic.lean/declarations/bit-shiftright-one.md) | 142 | `result-track:9fd599b1fdbf6e7bfbc2b3be444280ab08411995346a9fd9d206dcea99f25cf5` |
| 21 | `theorem` | [testBit_bit_zero](../../../../../NumberTheory/ElementaryNumberTheory/BinaryRecPublic.lean/declarations/testbit-bit-zero.md) | 145 | `result-track:c4c08a7183120f8b3bddaae143c3e8271fac2e0b42ea949bc4aa7433a2a024d7` |
| 22 | `theorem` | [bitCasesOn_bit](../../../../../NumberTheory/ElementaryNumberTheory/BinaryRecPublic.lean/declarations/bitcaseson-bit.md) | 151 | `result-track:aa76c3d53558b416bc112b6bb89938b8d46a3ff57138622515ac33d3a5085605` |
| 23 | `theorem` | [binaryRec_zero](../../../../../NumberTheory/ElementaryNumberTheory/BinaryRecPublic.lean/declarations/binaryrec-zero.md) | 159 | `result-track:5e4d08c3fe801332a482b8b49deff6f846d897018eac53fead8dd618a4a0954b` |
| 24 | `theorem` | [binaryRec_one](../../../../../NumberTheory/ElementaryNumberTheory/BinaryRecPublic.lean/declarations/binaryrec-one-source-edition-2.md) | 163 | `result-track:9183d70dd3176f5501eeee4c5f7c0c55cd936ae53bb0fab39432eaf65afaed9f` |
| 25 | `theorem` | [binaryRec_eq](../../../../../NumberTheory/ElementaryNumberTheory/BinaryRecPublic.lean/declarations/binaryrec-eq.md) | 166 | `result-track:647069736981dd5ab8ec766c2d11d30093de3bdf12eb17f871c2faa51e3e07ae` |
| 26 | `theorem` | [binaryRec'_zero](../../../../../NumberTheory/ElementaryNumberTheory/BinaryRecPublic.lean/declarations/binaryrec-zero-source-edition-2.md) | 182 | `result-track:90ae399796d0183e5757d5503f14a46e64a3231008583bd0c1bd95d0f639c2e2` |
| 27 | `theorem` | [binaryRec'_one](../../../../../NumberTheory/ElementaryNumberTheory/BinaryRecPublic.lean/declarations/binaryrec-one.md) | 187 | `result-track:4c6c5bfd036b31c189cfae68ad905a8124c9edd60996808c39a06f050c200699` |
| 28 | `theorem` | [binaryRec'_eq](../../../../../NumberTheory/ElementaryNumberTheory/BinaryRecPublic.lean/declarations/binaryrec-eq-source-edition-2.md) | 192 | `result-track:9d52eacf0a0f254e092f27da534e6a004157c911a999205e463509b0db9b558b` |
| 29 | `theorem` | [binaryRecFromOne_zero](../../../../../NumberTheory/ElementaryNumberTheory/BinaryRecPublic.lean/declarations/binaryrecfromone-zero.md) | 198 | `result-track:102b4f6c44e61d92b008a519831495746a2300d4b48b470039ba4b1a6244c82f` |
| 30 | `theorem` | [binaryRecFromOne_one](../../../../../NumberTheory/ElementaryNumberTheory/BinaryRecPublic.lean/declarations/binaryrecfromone-one.md) | 203 | `result-track:ac67cf60b50f672d8b3f046afd785dcb73e7e63cbd90e25f747f5a05b037444b` |
| 31 | `theorem` | [binaryRecFromOne_eq](../../../../../NumberTheory/ElementaryNumberTheory/BinaryRecPublic.lean/declarations/binaryrecfromone-eq.md) | 208 | `result-track:b3b9c921d7df9ae2f717b38862cdbe3ac557f567226806e0a0578d0cc1253eca` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fe90b9a82972c2c51e7edd71f2adf05371adb5ed59940d1a40c4fad4cdba35f0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/BinaryRec/Variant6030c8e3fb83a0ad0d5d3c70af2a5c7057069affc8d503001e045b125668f604.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/BinaryRec/Variant6030c8e3fb83a0ad0d5d3c70af2a5c7057069affc8d503001e045b125668f604.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
