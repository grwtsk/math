# Verification target: Bit Sampling Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2531b5c8ab561eea58d15c4fac77f5d88c956d1a",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/BitSampling/Variantd902b29e584a690bbccb8678fcf9c15595eb9e08b8fa1b00bf80cf7cffef0e70.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/SetTheory/BitSamplingNamespacedPublic.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/SetTheory/BitSamplingNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2531b5c8ab561eea58d15c4fac77f5d88c956d1a`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/BitSampling/Variantd902b29e584a690bbccb8678fcf9c15595eb9e08b8fa1b00bf80cf7cffef0e70.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/SetTheory/BitSampling/Variantd902b29e584a690bbccb8678fcf9c15595eb9e08b8fa1b00bf80cf7cffef0e70.lean.json)

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
| 1 | `inductive` | [BitSourceKind](../../../../../MathematicalLogicAndFoundations/SetTheory/BitSamplingNamespacedPublic.lean/declarations/bitsourcekind.md) | 22 | `declaration-track:fbb7466ebf630efca9cfe001b6e9e4aaf6f2936d35322f373d762f65c3f914aa` |
| 2 | `structure` | [SeededBitSourceReceipt](../../../../../MathematicalLogicAndFoundations/SetTheory/BitSamplingNamespacedPublic.lean/declarations/seededbitsourcereceipt.md) | 29 | `declaration-track:1b06ab12ebc67264c1ef27757b21b6b6f1bf2de5261f76b54299e00ba9304fe7` |
| 3 | `structure` | [WaveBitSourceReceipt](../../../../../MathematicalLogicAndFoundations/SetTheory/BitSamplingNamespacedPublic.lean/declarations/wavebitsourcereceipt.md) | 36 | `declaration-track:e1a40a8ada28787ed6b1d2e825256fdec45638cf024725667f3372e28f14289f` |
| 4 | `structure` | [ExternalAudioFeaturePacket](../../../../../MathematicalLogicAndFoundations/SetTheory/BitSamplingNamespacedPublic.lean/declarations/externalaudiofeaturepacket.md) | 44 | `declaration-track:2583523da9bc175f6789db0862cebd0394944cdc0378edbf50c73ea6ea555a90` |
| 5 | `structure` | [AcceptedSample](../../../../../MathematicalLogicAndFoundations/SetTheory/BitSamplingNamespacedPublic.lean/declarations/acceptedsample.md) | 53 | `declaration-track:265fe6ab546966a755236e7645fa1b00aea3546a65c638686a75a87c8337ab97` |
| 6 | `theorem` | [accepted_sample_is_in_range](../../../../../MathematicalLogicAndFoundations/SetTheory/BitSamplingNamespacedPublic.lean/declarations/accepted-sample-is-in-range.md) | 63 | `result-track:aced9b708e9befe6143c471e44b1b30a72cec873ddf26bce4458b52cdc785c1f` |
| 7 | `def` | [decodeAcceptedPrimeCell](../../../../../MathematicalLogicAndFoundations/SetTheory/BitSamplingNamespacedPublic.lean/declarations/decodeacceptedprimecell.md) | 68 | `declaration-track:b5c7fa3d44a7503a765583f72fa9fecaf400e17af7ba060c822bd919b2cae158` |
| 8 | `theorem` | [accepted_sample_decodes_to_valid_prime_cell](../../../../../MathematicalLogicAndFoundations/SetTheory/BitSamplingNamespacedPublic.lean/declarations/accepted-sample-decodes-to-valid-prime-cell.md) | 73 | `result-track:0b6c4a9c61e113cce8e2ab4054270b5209385b695b53c9ac9ce7bd15b4aa9379` |
| 9 | `def` | [bitSourceAuthority](../../../../../MathematicalLogicAndFoundations/SetTheory/BitSamplingNamespacedPublic.lean/declarations/bitsourceauthority.md) | 78 | `declaration-track:292016f20637b709e43b53bdffb593d73e1ea19d588f58c34831d2bb2119b810` |
| 10 | `def` | [WaveBitSourceReceipt.authority](../../../../../MathematicalLogicAndFoundations/SetTheory/BitSamplingNamespacedPublic.lean/declarations/wavebitsourcereceipt-authority.md) | 81 | `declaration-track:61cfd6c5740ce1850cb9221e842d40535e1f9e8a4bdad5a089dca061b6c59450` |
| 11 | `def` | [ExternalAudioFeaturePacket.authority](../../../../../MathematicalLogicAndFoundations/SetTheory/BitSamplingNamespacedPublic.lean/declarations/externalaudiofeaturepacket-authority.md) | 84 | `declaration-track:a31d26629c16f8a12e4afaf0e5dc5abfb0b4551b8b3ff0d874478c25fba1df4e` |
| 12 | `theorem` | [bit_source_has_no_theorem_authority](../../../../../MathematicalLogicAndFoundations/SetTheory/BitSamplingNamespacedPublic.lean/declarations/bit-source-has-no-theorem-authority.md) | 89 | `result-track:fb9a22d77b5a578ec00659e0caac6bd4bfe007fbe4627c59031f3f27cd9d10ef` |
| 13 | `theorem` | [wave_source_has_no_randomness_claim_without_receipt](../../../../../MathematicalLogicAndFoundations/SetTheory/BitSamplingNamespacedPublic.lean/declarations/wave-source-has-no-randomness-claim-without-receipt.md) | 95 | `result-track:002429fdb3c3997e0fac89c30aee77d6718ee3ca2564be2c736b9aae5d0269cf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c5893d5da793b88aa339757568be9459c49a8942a0a257fcaa39e44ff5fb2001 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/BitSampling/Variantd902b29e584a690bbccb8678fcf9c15595eb9e08b8fa1b00bf80cf7cffef0e70.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/SetTheory/BitSampling/Variantd902b29e584a690bbccb8678fcf9c15595eb9e08b8fa1b00bf80cf7cffef0e70.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
