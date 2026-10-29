# Verification target: Blocks Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8dcbe8d728cab4beff7a052daf87e3ac29c83971",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Blocks/Variant5ed626a0b32688e7c00d5c2201a0e1df8ded14a627979442f150adaadd2f286a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BlocksEdition2.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BlocksEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8dcbe8d728cab4beff7a052daf87e3ac29c83971`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Blocks/Variant5ed626a0b32688e7c00d5c2201a0e1df8ded14a627979442f150adaadd2f286a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Blocks/Variant5ed626a0b32688e7c00d5c2201a0e1df8ded14a627979442f150adaadd2f286a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FilesystemCodec.Serialization` — import line 1; external provider; requires a separately pinned dependency.
- `BitMatrix.FiniteField.Galois` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Floor.Div` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [BitString](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BlocksEdition2.lean/declarations/bitstring.md) | 31 | `declaration-track:b4f28b11cc48b052d29464e597b0f85e868ada4d93d9c5f12deeb72623395632` |
| 2 | `theorem` | [BitString.ext](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BlocksEdition2.lean/declarations/bitstring-ext.md) | 38 | `result-track:9799f88e1f169939ae59dd6ba4ccf0a45f355940a9187dd168016a5ade5260fd` |
| 3 | `def` | [BitString.empty](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BlocksEdition2.lean/declarations/bitstring-empty.md) | 50 | `declaration-track:8419210df8f11c85e094fcd49c2474c97b02af3831344d3ce52709ae279d8c08` |
| 4 | `def` | [BitString.ofBits](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BlocksEdition2.lean/declarations/bitstring-ofbits.md) | 54 | `declaration-track:9feddd3e79c432caa75794a2268c6956cdc0ad4bed598a12df228834da15ad6b` |
| 5 | `abbrev` | [ByteBitCodec](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BlocksEdition2.lean/declarations/bytebitcodec.md) | 58 | `declaration-track:29a4d5071a90867ec6ddc05e6c6350861a07798b0c874b69d94e30edf8bcdc44` |
| 6 | `def` | [rowsFor](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BlocksEdition2.lean/declarations/rowsfor.md) | 64 | `declaration-track:643c75ad1651a88c5794f5367a61823214e62627edbc08dbcf65babc138eb902` |
| 7 | `theorem` | [payloadBits_le_rowsFor_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BlocksEdition2.lean/declarations/payloadbits-le-rowsfor-mul.md) | 68 | `result-track:2a53a25eb7288e9210384a2cdb6d74274e3c442156f2a6fe69eda84ec9d86396` |
| 8 | `theorem` | [rowsFor_minimal](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BlocksEdition2.lean/declarations/rowsfor-minimal.md) | 74 | `result-track:51d346463f82dc88ec81b1398096105002a1141b8ef1d24f19e3754069d1a19d` |
| 9 | `structure` | [RawBitPacket](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BlocksEdition2.lean/declarations/rawbitpacket.md) | 83 | `declaration-track:ff4abc91f90af731b518b63390b9ec0ac4b9eda594ded453ce5bf01dcdee07c2` |
| 10 | `theorem` | [RawBitPacket.ext](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BlocksEdition2.lean/declarations/rawbitpacket-ext.md) | 91 | `result-track:c75c95285a6cea933319f5efb62f2326de24b86f7f54fc69577340ab2df51dab` |
| 11 | `def` | [RawBitPacket.Canonical](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BlocksEdition2.lean/declarations/rawbitpacket-canonical.md) | 108 | `declaration-track:a0e727a6a3602f0c0db55f659d19d43ae66a9e65dd51edf714e8969e7424c44a` |
| 12 | `def` | [BitPacket](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BlocksEdition2.lean/declarations/bitpacket.md) | 116 | `declaration-track:a02079f2397429318a9ee692e197d0db59abcc3d1e6ae08243c121fb85078200` |
| 13 | `def` | [rows](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BlocksEdition2.lean/declarations/rows.md) | 122 | `declaration-track:d7083656ed1d90e18ddb467e73314ce34cf3a27b587e716d1e4a62c734d11f8f` |
| 14 | `def` | [matrix](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BlocksEdition2.lean/declarations/matrix.md) | 126 | `declaration-track:47f226fb952a84ff96fdc0bd418abd5a2382f5a1ce9bb197148368677fe45e3d` |
| 15 | `def` | [payloadBits](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BlocksEdition2.lean/declarations/payloadbits.md) | 130 | `declaration-track:be5eff80ec6c93da2d779433c4620912e3ca90dc319010ad0dfcc5f6480b5440` |
| 16 | `theorem` | [rows_mk](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BlocksEdition2.lean/declarations/rows-mk.md) | 133 | `result-track:87c045d56ff153ad9087bb6efee6ca97f28319ec0eca3788847057584c426b82` |
| 17 | `theorem` | [matrix_mk](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BlocksEdition2.lean/declarations/matrix-mk.md) | 136 | `result-track:133e0c7ec3a70c0cfe938d6bf99521f51bd2aabfd86c71e5d891a21ca8aac625` |
| 18 | `theorem` | [payloadBits_mk](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BlocksEdition2.lean/declarations/payloadbits-mk.md) | 139 | `result-track:2f3c1cc2818a779a5844fc61c5f02deeeaf3ca3d1cea4197a67149c2b137e1ed` |
| 19 | `theorem` | [capacity](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BlocksEdition2.lean/declarations/capacity.md) | 142 | `result-track:6d1b39399bbb019247b16a909da2132834d259f98ecd193987faf277da6187a0` |
| 20 | `theorem` | [rows_eq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BlocksEdition2.lean/declarations/rows-eq.md) | 146 | `result-track:815daf55acc885bfc51499b6e64d0ef3940e69f197c5bc9928bef0ae791458c8` |
| 21 | `theorem` | [padding](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BlocksEdition2.lean/declarations/padding.md) | 150 | `result-track:b5385b14b169e85cc9170ef82a3c75669589d15b1342f9f420fb3e7e02c91652` |
| 22 | `def` | [block](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BlocksEdition2.lean/declarations/block.md) | 164 | `declaration-track:5c1d9bd87ad9ac19a1f566691af91efbbeb4ec7b874b779fdea9c93c7ebb0dab` |
| 23 | `def` | [unblock](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BlocksEdition2.lean/declarations/unblock.md) | 177 | `declaration-track:0c7bfc91e278b2737f7cdd015787322afcae979588d6766fc8ffed76eeb1bfc2` |
| 24 | `theorem` | [block_rows](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BlocksEdition2.lean/declarations/block-rows.md) | 183 | `result-track:4f269d9bfeca4bf40431563cc800e0e639ea73edc0b67bb3f1f2feaceed78458` |
| 25 | `theorem` | [block_payloadBits](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BlocksEdition2.lean/declarations/block-payloadbits.md) | 188 | `result-track:70c9cfe818247fa32b70c548354558c197786cf69851da36b1f3d1de31295d29` |
| 26 | `theorem` | [unblock_bitLength](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BlocksEdition2.lean/declarations/unblock-bitlength.md) | 193 | `result-track:4648b10863deb8dc3991af9af27c348111390d1f7529e0cb35ceb2a08bf69589` |
| 27 | `theorem` | [unblock_block](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BlocksEdition2.lean/declarations/unblock-block.md) | 199 | `result-track:435a5d2a851100e21828b30eecf4bb9660b8b3b4442d75fdb597f2e8eb12ff7d` |
| 28 | `theorem` | [block_unblock](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BlocksEdition2.lean/declarations/block-unblock.md) | 213 | `result-track:f34b6c52c21ea8cde8f14c2fe9582cdc34d6dd2c3bdbba6eba6150d71b2b4281` |
| 29 | `def` | [blockEquiv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BlocksEdition2.lean/declarations/blockequiv.md) | 234 | `declaration-track:f1b2436744b6089ce1ef0a7675e0f60d434e207254e740173a7e541cbecdcc8e` |
| 30 | `abbrev` | [VariableMatrix](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BlocksEdition2.lean/declarations/variablematrix.md) | 243 | `declaration-track:6f89144b3dc74cebcde93fb1b7d6fc330c8391dcda01c875bdf40d2e0605c520` |
| 31 | `def` | [BitPacket.toVariableMatrix](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BlocksEdition2.lean/declarations/bitpacket-tovariablematrix.md) | 247 | `declaration-track:8b77bc3ca4d4abb65870b903ce637462c6728e96894437dbe4387f8f3683d3ea` |
| 32 | `def` | [zeroPayloadOne](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BlocksEdition2.lean/declarations/zeropayloadone.md) | 251 | `declaration-track:7cc404229497a0bc5cce0e497651772a343ddef1b72120b7ae51df2e350e738c` |
| 33 | `def` | [zeroPayloadTwo](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BlocksEdition2.lean/declarations/zeropayloadtwo.md) | 255 | `declaration-track:a0c87df32fd92847d232b03773dc10e6d3c2d9c1f1cf09e76c472b5f2cc95bd9` |
| 34 | `theorem` | [variableMatrix_forgets_payload_length](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BlocksEdition2.lean/declarations/variablematrix-forgets-payload-length.md) | 262 | `result-track:7643ab1a847aec3d3b34dd64517da39b57b3116fea32168dee31ea0170dce114` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9fbf0143b1fd9f7b277d34e3ce983447a7799d6667683b28955ed3f96e20f281 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/Blocks/Variant5ed626a0b32688e7c00d5c2201a0e1df8ded14a627979442f150adaadd2f286a.lean","GRWTSK/_verification/specifications/Algebra/UniversalAlgebra/Blocks/Variant5ed626a0b32688e7c00d5c2201a0e1df8ded14a627979442f150adaadd2f286a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
