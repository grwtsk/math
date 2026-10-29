# Verification target: Bit Document Representable Length

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4f11a5a5a704e92648187c0ec89acf5cffb47d80",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BitDocument/Variante2bb401b38826c5fb097d8b71828791218ea21785514859f30e58f06310c5d4a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/BitDocumentRepresentableLength.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/BitDocumentRepresentableLength.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4f11a5a5a704e92648187c0ec89acf5cffb47d80`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BitDocument/Variante2bb401b38826c5fb097d8b71828791218ea21785514859f30e58f06310c5d4a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BitDocument/Variante2bb401b38826c5fb097d8b71828791218ea21785514859f30e58f06310c5d4a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.Codec.Source` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Utf8Payload](../../../../../ComputerScience/AlgorithmsInComputerScience/BitDocumentRepresentableLength.lean/declarations/utf8payload.md) | 14 | `declaration-track:9c792e9db3a49664613133458681843926619ebfb715790f65a92cd744528311` |
| 2 | `def` | [lengthPrefixDigits](../../../../../ComputerScience/AlgorithmsInComputerScience/BitDocumentRepresentableLength.lean/declarations/lengthprefixdigits.md) | 20 | `declaration-track:c8c24d8c3abbd12bb414ce0f44d62af9d09d1eb99e783e8e01c1ef5e14e48807` |
| 3 | `def` | [byteDigitsMSB](../../../../../ComputerScience/AlgorithmsInComputerScience/BitDocumentRepresentableLength.lean/declarations/bytedigitsmsb.md) | 24 | `declaration-track:4df41368e8b25d43038a64775713c2d1407d30e4d25610a3f71d65b73cb4e968` |
| 4 | `def` | [payloadDigitsMSB](../../../../../ComputerScience/AlgorithmsInComputerScience/BitDocumentRepresentableLength.lean/declarations/payloaddigitsmsb.md) | 29 | `declaration-track:5f86a0d4bc1f46abb32238c5157a0ff63ba15f1ca02e1628e6e5837470059bff` |
| 5 | `structure` | [BitDocument](../../../../../ComputerScience/AlgorithmsInComputerScience/BitDocumentRepresentableLength.lean/declarations/bitdocument.md) | 33 | `declaration-track:ddbcb71eaba1637cb035f43cb390db956fc7ad9dc385c1fb606eda5523ea775c` |
| 6 | `def` | [digitByte](../../../../../ComputerScience/AlgorithmsInComputerScience/BitDocumentRepresentableLength.lean/declarations/digitbyte.md) | 38 | `declaration-track:7829da84e6dffde19d4046b636524904e0e07cad77dfbe61514b6ee1611f6dc6` |
| 7 | `def` | [BitDocument.serialize](../../../../../ComputerScience/AlgorithmsInComputerScience/BitDocumentRepresentableLength.lean/declarations/bitdocument-serialize.md) | 43 | `declaration-track:83c41b16501706176ca016eb4415646728f9927229caa6f8fab83321656e0d90` |
| 8 | `def` | [encodeBitDocument](../../../../../ComputerScience/AlgorithmsInComputerScience/BitDocumentRepresentableLength.lean/declarations/encodebitdocument.md) | 47 | `declaration-track:f75d73f9259ca62a0dbb5b47bf7825df2a648b0fd9edfb251417ec2c7b8fde50` |
| 9 | `def` | [RepresentableLength](../../../../../ComputerScience/AlgorithmsInComputerScience/BitDocumentRepresentableLength.lean/declarations/representablelength.md) | 52 | `declaration-track:385538cd018d6a16c36a37916327df315b9f990711c302f0b5ea1c5182325c62` |
| 10 | `instance` | [representableLengthDecidable](../../../../../ComputerScience/AlgorithmsInComputerScience/BitDocumentRepresentableLength.lean/declarations/representablelengthdecidable.md) | 55 | `declaration-track:b09c40cdf1d932e6a07832f8bda3f7f707ec91d0488ab1e98a8d0c7a19acfc51` |
| 11 | `def` | [EncodeDecodeRelation](../../../../../ComputerScience/AlgorithmsInComputerScience/BitDocumentRepresentableLength.lean/declarations/encodedecoderelation.md) | 63 | `declaration-track:97594267c2a2ac4ac9110e496043aa686aa4f4574efa6dba1e88148774d4359a` |
| 12 | `structure` | [DecodeWitness](../../../../../ComputerScience/AlgorithmsInComputerScience/BitDocumentRepresentableLength.lean/declarations/decodewitness.md) | 75 | `declaration-track:ae791a94dda0fb7df7e62f761aa511831050fb962ce864ffb3cce3103f0012bc` |
| 13 | `theorem` | [lengthPrefixDigits_length](../../../../../ComputerScience/AlgorithmsInComputerScience/BitDocumentRepresentableLength.lean/declarations/lengthprefixdigits-length.md) | 83 | `result-track:384971d8588ca363d3c864af5bdae29515579c95da1b408c2f8a657df6206c43` |
| 14 | `theorem` | [byteDigitsMSB_length](../../../../../ComputerScience/AlgorithmsInComputerScience/BitDocumentRepresentableLength.lean/declarations/bytedigitsmsb-length.md) | 88 | `result-track:8e9689f26d504e8b95d6b1fdae3ed6cbf9e29a291d0b45308c30aa7598ce9252` |
| 15 | `theorem` | [serialize_final_lf](../../../../../ComputerScience/AlgorithmsInComputerScience/BitDocumentRepresentableLength.lean/declarations/serialize-final-lf.md) | 93 | `result-track:2996be5004a8a35583d727335b400e9aa90f40e2d62599da000a51bd02bf377d` |
| 16 | `theorem` | [decodeWitness_declared_length_matches](../../../../../ComputerScience/AlgorithmsInComputerScience/BitDocumentRepresentableLength.lean/declarations/decodewitness-declared-length-matches.md) | 97 | `result-track:a1c57eb30ac877df46cd6a6501b3d2ee703fcb73e94fd53385060701567d46c0` |
| 17 | `theorem` | [decodeWitness_length_representable](../../../../../ComputerScience/AlgorithmsInComputerScience/BitDocumentRepresentableLength.lean/declarations/decodewitness-length-representable.md) | 109 | `result-track:56b74ad0803c9ae806ba3dea12a851e669e1c3783920c079bf036a7b60d03057` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=81e993131c01d5ee92f00e3563016eed3f78561b87c338f6971c3e0ed4658edf -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BitDocument/Variante2bb401b38826c5fb097d8b71828791218ea21785514859f30e58f06310c5d4a.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BitDocument/Variante2bb401b38826c5fb097d8b71828791218ea21785514859f30e58f06310c5d4a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
