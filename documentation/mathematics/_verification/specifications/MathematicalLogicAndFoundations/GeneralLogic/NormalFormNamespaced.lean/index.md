# Verification target: Normal Form Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0ae9cf2d74846327ae14fcf992ce92bac74357a4",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/NormalForm/Variantd3c1f9478c9f2f141eb19fd5c93406a0caad8fa28083b0ab00da1c0c92985034.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/NormalFormNamespaced.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/NormalFormNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0ae9cf2d74846327ae14fcf992ce92bac74357a4`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/NormalForm/Variantd3c1f9478c9f2f141eb19fd5c93406a0caad8fa28083b0ab00da1c0c92985034.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/NormalForm/Variantd3c1f9478c9f2f141eb19fd5c93406a0caad8fa28083b0ab00da1c0c92985034.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Think.SourceTree.Legacy.Compression.Semantics` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [encode](../../../../../MathematicalLogicAndFoundations/GeneralLogic/NormalFormNamespaced.lean/declarations/encode.md) | 15 | `declaration-track:09bb94233d38cf85f9ac6eb624600d7e7ad400950c3677f3eee3ac7dd4b41b8d` |
| 2 | `theorem` | [decode_encode_identity](../../../../../MathematicalLogicAndFoundations/GeneralLogic/NormalFormNamespaced.lean/declarations/decode-encode-identity.md) | 19 | `result-track:2c25e104f9be7ab9d322492f1355f0563f32d18c6dca4b13fd0804cd15b53be1` |
| 3 | `def` | [normalize](../../../../../MathematicalLogicAndFoundations/GeneralLogic/NormalFormNamespaced.lean/declarations/normalize.md) | 24 | `declaration-track:69b621cc4f9360155e190914f7d57b82df4618a198c9a8985ba94eec017395bc` |
| 4 | `theorem` | [normalize_def](../../../../../MathematicalLogicAndFoundations/GeneralLogic/NormalFormNamespaced.lean/declarations/normalize-def.md) | 27 | `result-track:87b85172849cdcba712b29c506f30c989df3b39016814149f1831a5828d47370` |
| 5 | `theorem` | [normalize_sound](../../../../../MathematicalLogicAndFoundations/GeneralLogic/NormalFormNamespaced.lean/declarations/normalize-sound.md) | 31 | `result-track:8c50563b7e759d13bc47eecc296dad6a506c988c0c2d83ca5079dddc9c424e24` |
| 6 | `theorem` | [normalize_idempotent](../../../../../MathematicalLogicAndFoundations/GeneralLogic/NormalFormNamespaced.lean/declarations/normalize-idempotent.md) | 37 | `result-track:d29a0906e899e994144ce2178b83d3791fb7f8b31c787dedaac592ba1557b58d` |
| 7 | `theorem` | [encode_decode_normalizes](../../../../../MathematicalLogicAndFoundations/GeneralLogic/NormalFormNamespaced.lean/declarations/encode-decode-normalizes.md) | 43 | `result-track:74484c3ee3525e895e96ecce5f2ba2ae5c6213fe376ebccb76c9216019038ec4` |
| 8 | `def` | [NormalForm](../../../../../MathematicalLogicAndFoundations/GeneralLogic/NormalFormNamespaced.lean/declarations/normalform.md) | 47 | `declaration-track:b731e41ee6bbd46fec6726210a46bd87c7dedc5990295bb0042e7126ab1633eb` |
| 9 | `def` | [CanonicalRaw](../../../../../MathematicalLogicAndFoundations/GeneralLogic/NormalFormNamespaced.lean/declarations/canonicalraw.md) | 50 | `declaration-track:4fbc6211c4f3b03f0a2171e279a9eb19601445508f8dcb80bcf0f6c8669ac3d2` |
| 10 | `theorem` | [encode_is_normal](../../../../../MathematicalLogicAndFoundations/GeneralLogic/NormalFormNamespaced.lean/declarations/encode-is-normal.md) | 53 | `result-track:4f93264b1c24b4a283d78bfd8876669d4657b4408814dce4b6688652144d6739` |
| 11 | `theorem` | [normalize_is_normal](../../../../../MathematicalLogicAndFoundations/GeneralLogic/NormalFormNamespaced.lean/declarations/normalize-is-normal.md) | 60 | `result-track:2f91a18edcf3191c2f396a1df5f6356770e3d12c8c8a1f712c83d62709de7980` |
| 12 | `theorem` | [encode_is_canonical_raw](../../../../../MathematicalLogicAndFoundations/GeneralLogic/NormalFormNamespaced.lean/declarations/encode-is-canonical-raw.md) | 66 | `result-track:81d99f57f81d3f53de9486acb4aa5bf4ecaa0aeb69a8ccbd74480c834896281c` |
| 13 | `theorem` | [normalForm_is_canonical_raw](../../../../../MathematicalLogicAndFoundations/GeneralLogic/NormalFormNamespaced.lean/declarations/normalform-is-canonical-raw.md) | 71 | `result-track:a394deb51b4b30e2e67c9bcb77640a5cb9023d747e55384af65f76964f8a0535` |
| 14 | `theorem` | [normalize_unique_raw](../../../../../MathematicalLogicAndFoundations/GeneralLogic/NormalFormNamespaced.lean/declarations/normalize-unique-raw.md) | 77 | `result-track:ed56109f01e3435012e33e57e362eb27480104d2e3226aed5cc4562c10ac433b` |
| 15 | `structure` | [NormalCompressedString](../../../../../MathematicalLogicAndFoundations/GeneralLogic/NormalFormNamespaced.lean/declarations/normalcompressedstring.md) | 90 | `declaration-track:46642ec17fdb0b9419a2ce6e0f93e438623004d9257a38fc93fa94c19ef9b091` |
| 16 | `def` | [normalInclude](../../../../../MathematicalLogicAndFoundations/GeneralLogic/NormalFormNamespaced.lean/declarations/normalinclude.md) | 95 | `declaration-track:96fdbb1904a35b204b11c8c550722b503242220058ccc95036a3c7e37d914207` |
| 17 | `def` | [reflect](../../../../../MathematicalLogicAndFoundations/GeneralLogic/NormalFormNamespaced.lean/declarations/reflect.md) | 99 | `declaration-track:d77bb4b3043c65f08984517c4dad78a835bc1623fbe8b67a2ad92c69e5faa567` |
| 18 | `theorem` | [include_reflect_raw](../../../../../MathematicalLogicAndFoundations/GeneralLogic/NormalFormNamespaced.lean/declarations/include-reflect-raw.md) | 104 | `result-track:42503e12fad410a0304eb1f958247817d95030369b87c1f646c362073d64a1c3` |
| 19 | `theorem` | [reflect_include_raw](../../../../../MathematicalLogicAndFoundations/GeneralLogic/NormalFormNamespaced.lean/declarations/reflect-include-raw.md) | 108 | `result-track:b84849e19beacc53c714ecb252c4c76632cdb591c18664f5cf66492634ab894b` |
| 20 | `def` | [normalEncode](../../../../../MathematicalLogicAndFoundations/GeneralLogic/NormalFormNamespaced.lean/declarations/normalencode.md) | 114 | `declaration-track:2d66821d14cf59cd3ebb0c58cc013d7e06d929262400f94e81c0322e2b1eaed9` |
| 21 | `def` | [normalDecode](../../../../../MathematicalLogicAndFoundations/GeneralLogic/NormalFormNamespaced.lean/declarations/normaldecode.md) | 119 | `declaration-track:e1817b9319a0e41f4cfbc17262370fb107ae4c651ad9cfe77cc1c29106518284` |
| 22 | `theorem` | [normalDecode_normalEncode](../../../../../MathematicalLogicAndFoundations/GeneralLogic/NormalFormNamespaced.lean/declarations/normaldecode-normalencode.md) | 123 | `result-track:3ec8040c6946e34bd3efef353cc8f8e8041b314b69fdc77c45a5b25129480ba5` |
| 23 | `theorem` | [normalEncode_normalDecode_raw](../../../../../MathematicalLogicAndFoundations/GeneralLogic/NormalFormNamespaced.lean/declarations/normalencode-normaldecode-raw.md) | 128 | `result-track:abb552d65cf9865fecf96f59b01e7f9b3820486d4d009af43ee1151dd458dbed` |
| 24 | `theorem` | [norm_list_left_inverse](../../../../../MathematicalLogicAndFoundations/GeneralLogic/NormalFormNamespaced.lean/declarations/norm-list-left-inverse.md) | 137 | `result-track:7fb59cc2fc248ae7af123e68ac8949e3e72aa95b299ccbef5411133c5ca93a82` |
| 25 | `theorem` | [norm_list_right_inverse_raw](../../../../../MathematicalLogicAndFoundations/GeneralLogic/NormalFormNamespaced.lean/declarations/norm-list-right-inverse-raw.md) | 142 | `result-track:255fb2b8ebb0fabf972309ec5827adb3bfacbb8815883bc93476a9c6eb07c217` |
| 26 | `def` | [adjunctionOrientation](../../../../../MathematicalLogicAndFoundations/GeneralLogic/NormalFormNamespaced.lean/declarations/adjunctionorientation.md) | 148 | `declaration-track:494eb0b432ed79fdc6719502e5c9ab043989d2f5b3502f6f62dd49669acfbd16` |
| 27 | `theorem` | [encode_injective](../../../../../MathematicalLogicAndFoundations/GeneralLogic/NormalFormNamespaced.lean/declarations/encode-injective.md) | 151 | `result-track:7fdfd8a0f7face3260a59b2659fe1eee6994f3aa3af1b1e95a19b9b5bbbfa4bd` |
| 28 | `theorem` | [decode_surjective](../../../../../MathematicalLogicAndFoundations/GeneralLogic/NormalFormNamespaced.lean/declarations/decode-surjective.md) | 157 | `result-track:c2c7fdba97fd4cd9c99c7979987e270dd222bd04d12665a5f37e33e274410b6c` |
| 29 | `def` | [subword](../../../../../MathematicalLogicAndFoundations/GeneralLogic/NormalFormNamespaced.lean/declarations/subword.md) | 162 | `declaration-track:6e57cd396cc28e2a7f4034de46f84ce0531611d6f5b95b80ee192b5a8d18e5ff` |
| 30 | `theorem` | [subword_preserves_wellFormed](../../../../../MathematicalLogicAndFoundations/GeneralLogic/NormalFormNamespaced.lean/declarations/subword-preserves-wellformed.md) | 166 | `result-track:c2ea675e295ef253758895680dd6bc3d716df37d9045e3d580b076b6f12cfc28` |
| 31 | `theorem` | [decode_subword](../../../../../MathematicalLogicAndFoundations/GeneralLogic/NormalFormNamespaced.lean/declarations/decode-subword.md) | 171 | `result-track:525a14c5188de228e2a5001b3e18e8f1c76424ebe4422049f5d1f06826714372` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0c9d7f108352da10713e532a028b5035e460c0f5bd12b6ee02f90fc96e931fd9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/NormalForm/Variantd3c1f9478c9f2f141eb19fd5c93406a0caad8fa28083b0ab00da1c0c92985034.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/NormalForm/Variantd3c1f9478c9f2f141eb19fd5c93406a0caad8fa28083b0ab00da1c0c92985034.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
