# Verification target: Blocks Namespaced Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ae10cc237a7795dee4e544d313e52871204f8e88",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Blocks/Variante3afb526265eda1580b86b58642fd6c9af7892944b58033f42dbdb60f1e7bf9d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BlocksNamespacedEdition2.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BlocksNamespacedEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ae10cc237a7795dee4e544d313e52871204f8e88`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Blocks/Variante3afb526265eda1580b86b58642fd6c9af7892944b58033f42dbdb60f1e7bf9d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Blocks/Variante3afb526265eda1580b86b58642fd6c9af7892944b58033f42dbdb60f1e7bf9d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FilesystemCodec.Serialization` — import line 6; external provider; requires a separately pinned dependency.
- `BitMatrix.FiniteField.Galois` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Floor.Div` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [BitString](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BlocksNamespacedEdition2.lean/declarations/bitstring.md) | 39 | `declaration-track:f3df7179eac572357560d26c51a47d217913f05c1a58c14eaf177b175e80e855` |
| 2 | `theorem` | [BitString.ext](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BlocksNamespacedEdition2.lean/declarations/bitstring-ext.md) | 46 | `result-track:b7a3bdd8caf4f92df05be9568555bdb48fd23da582c5261fc78f9e5b42b46469` |
| 3 | `def` | [BitString.empty](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BlocksNamespacedEdition2.lean/declarations/bitstring-empty.md) | 58 | `declaration-track:ee97359ae0f886b86d32914c60d91a12916a994fa500113341436db6ed29201f` |
| 4 | `def` | [BitString.ofBits](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BlocksNamespacedEdition2.lean/declarations/bitstring-ofbits.md) | 62 | `declaration-track:bc5a5ad1e9b667c1dcc202b8a7d61dc65cf172dd51fbbd7e4af8cf438c58829e` |
| 5 | `abbrev` | [ByteBitCodec](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BlocksNamespacedEdition2.lean/declarations/bytebitcodec.md) | 66 | `declaration-track:11c21389fd2b132d7144e6693feb0be7dd3b57ff616dd622e1f2ee502410eb48` |
| 6 | `def` | [rowsFor](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BlocksNamespacedEdition2.lean/declarations/rowsfor.md) | 72 | `declaration-track:574298967459a051657f833f49b697702a0cbce824547f6253a7b79b54520447` |
| 7 | `theorem` | [payloadBits_le_rowsFor_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BlocksNamespacedEdition2.lean/declarations/payloadbits-le-rowsfor-mul.md) | 76 | `result-track:790cde7bb8a1660fba218acee1021bfadb7363abc3d908b6622ad90e147fc802` |
| 8 | `theorem` | [rowsFor_minimal](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BlocksNamespacedEdition2.lean/declarations/rowsfor-minimal.md) | 82 | `result-track:55d6f595cd593d854dab90a76e7158e6d3dcaa58ce813e7ed04b82bb805087c6` |
| 9 | `structure` | [RawBitPacket](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BlocksNamespacedEdition2.lean/declarations/rawbitpacket.md) | 91 | `declaration-track:d2c6d1668c4f723a7420e027ef7c92cc99e1659ecb67c6f5d4b721750d71bbc3` |
| 10 | `theorem` | [RawBitPacket.ext](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BlocksNamespacedEdition2.lean/declarations/rawbitpacket-ext.md) | 99 | `result-track:efff22571c73b9a9967dc89334901368044a6ac3a99dcfa3195e75b1040077bb` |
| 11 | `def` | [RawBitPacket.Canonical](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BlocksNamespacedEdition2.lean/declarations/rawbitpacket-canonical.md) | 116 | `declaration-track:845bfba9b54b561c727506c71eacea30c0782cc301a1310f07921801329b2cbe` |
| 12 | `def` | [BitPacket](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BlocksNamespacedEdition2.lean/declarations/bitpacket.md) | 124 | `declaration-track:6ecfcd7d83d5e14a2df1609f630d5ce327fedbba22053275b02298620d171947` |
| 13 | `def` | [rows](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BlocksNamespacedEdition2.lean/declarations/rows.md) | 130 | `declaration-track:f6b2a59917eed39cab683609eaa9a064f875b95af14874273a47a166acc11863` |
| 14 | `def` | [matrix](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BlocksNamespacedEdition2.lean/declarations/matrix.md) | 134 | `declaration-track:4bf4d97f9ced1f9101622a5515ed2b02cbb9a7a423ed385cc9f8fbe962ae82ef` |
| 15 | `def` | [payloadBits](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BlocksNamespacedEdition2.lean/declarations/payloadbits.md) | 138 | `declaration-track:2a4b214700aa07170cddfb07a6312c5451c6ffefd98ac613a699427219a04f3b` |
| 16 | `theorem` | [rows_mk](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BlocksNamespacedEdition2.lean/declarations/rows-mk.md) | 141 | `result-track:ae2967f6720dcb5f4c859e0c64419abe3855ddbbbac8f012964b52af9974a13a` |
| 17 | `theorem` | [matrix_mk](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BlocksNamespacedEdition2.lean/declarations/matrix-mk.md) | 144 | `result-track:b7eb88073e1bc49b5cc1a0b38a293da2743d67150cbdeaa0fc301c6f8123dbf4` |
| 18 | `theorem` | [payloadBits_mk](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BlocksNamespacedEdition2.lean/declarations/payloadbits-mk.md) | 147 | `result-track:95c29a8921fd5bff477fa2600cff6c917088472c2e8c7f9adfb945e431397906` |
| 19 | `theorem` | [capacity](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BlocksNamespacedEdition2.lean/declarations/capacity.md) | 150 | `result-track:ebb8004fba751e517e820c915141f5416f6f9a17003e4c7e0743b8aa9776e5b0` |
| 20 | `theorem` | [rows_eq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BlocksNamespacedEdition2.lean/declarations/rows-eq.md) | 154 | `result-track:b14e92b2bf0e671b9862e76cd6f67abf993fa12032fc37cd8d168e49fb1da5e9` |
| 21 | `theorem` | [padding](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BlocksNamespacedEdition2.lean/declarations/padding.md) | 158 | `result-track:189f12bc90816a4e2879712f98b5271abf7a433f4a7bf167f6495f3134327e73` |
| 22 | `def` | [block](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BlocksNamespacedEdition2.lean/declarations/block.md) | 172 | `declaration-track:d0d59da39a991360658786193b5d751a0981ce69ea33789903598ea499bf0340` |
| 23 | `def` | [unblock](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BlocksNamespacedEdition2.lean/declarations/unblock.md) | 185 | `declaration-track:9b2a4370da3569110ed0f79d0917d4c67136dc135ce7b64cc7cf8bf8937fc4ac` |
| 24 | `theorem` | [block_rows](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BlocksNamespacedEdition2.lean/declarations/block-rows.md) | 191 | `result-track:7769b8c20db48ef58b47b150dae00dffcb7a29046bda861947d37f6a61508559` |
| 25 | `theorem` | [block_payloadBits](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BlocksNamespacedEdition2.lean/declarations/block-payloadbits.md) | 196 | `result-track:e282e836f44caa1db76590742619a0d002d7a5840fffd8d4d7932602c39f8f14` |
| 26 | `theorem` | [unblock_bitLength](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BlocksNamespacedEdition2.lean/declarations/unblock-bitlength.md) | 201 | `result-track:b0acee0c563d3cb965ec54df98edb5a190c733c45c5653ba756c46482b7a9e1c` |
| 27 | `theorem` | [unblock_block](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BlocksNamespacedEdition2.lean/declarations/unblock-block.md) | 207 | `result-track:d0bc3ca308049f986ad63d494cab9130c988f7bfd4b171f3b6252ef651a6ba90` |
| 28 | `theorem` | [block_unblock](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BlocksNamespacedEdition2.lean/declarations/block-unblock.md) | 221 | `result-track:44e322a9342683c2196c6d3bb4d9f24489c57e86c9936c675f97f26bb6c1cdb4` |
| 29 | `def` | [blockEquiv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BlocksNamespacedEdition2.lean/declarations/blockequiv.md) | 242 | `declaration-track:376411d262693fdd2d0dab5f7ce1ec9913bdedab363c1e34a92f1785e07e745e` |
| 30 | `abbrev` | [VariableMatrix](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BlocksNamespacedEdition2.lean/declarations/variablematrix.md) | 251 | `declaration-track:1738a67af6d4ae9e36136e3894289503a4832b32dfa151a7508a9cdd2953052e` |
| 31 | `def` | [BitPacket.toVariableMatrix](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BlocksNamespacedEdition2.lean/declarations/bitpacket-tovariablematrix.md) | 255 | `declaration-track:9e00bce70b2133f22b3406b6c1c233175e3063d4108aa694c00e9cc4a336263b` |
| 32 | `def` | [zeroPayloadOne](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BlocksNamespacedEdition2.lean/declarations/zeropayloadone.md) | 259 | `declaration-track:11211595e5eec418683fe1e0e95acd274a0638bf4ba9f09cc3b425b387bf6c4d` |
| 33 | `def` | [zeroPayloadTwo](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BlocksNamespacedEdition2.lean/declarations/zeropayloadtwo.md) | 263 | `declaration-track:657f0363f2229f73283f63a3c2298fb2b3ba975ec5b5c1bfaed535f25319ba80` |
| 34 | `theorem` | [variableMatrix_forgets_payload_length](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BlocksNamespacedEdition2.lean/declarations/variablematrix-forgets-payload-length.md) | 270 | `result-track:08ab8c8278064b34bc65d25168c16b0d81bc280ddbabc2dff842b52bd9a3dfff` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1c0b3c0a57a3e227f0eac86f95a12f8f4744f49416cf95f33e5b26830290cde0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/Blocks/Variante3afb526265eda1580b86b58642fd6c9af7892944b58033f42dbdb60f1e7bf9d.lean","GRWTSK/_verification/specifications/Algebra/UniversalAlgebra/Blocks/Variante3afb526265eda1580b86b58642fd6c9af7892944b58033f42dbdb60f1e7bf9d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
