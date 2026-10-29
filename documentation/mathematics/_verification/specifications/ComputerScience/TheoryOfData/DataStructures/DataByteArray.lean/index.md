# Verification target: Data Byte Array

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d073a268454c3d5f3a842bc0ebc4d5162a0b8399",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ByteArray/Variant83b0aa5865fde06853de9654a15c12f57e151b167de2a1cf46261f27af688a54.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataByteArray.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataByteArray.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d073a268454c3d5f3a842bc0ebc4d5162a0b8399`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ByteArray/Variant83b0aa5865fde06853de9654a15c12f57e151b167de2a1cf46261f27af688a54.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ByteArray/Variant83b0aa5865fde06853de9654a15c12f57e151b167de2a1cf46261f27af688a54.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Basic` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Char` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Data.UInt` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Up](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataByteArray.lean/declarations/up.md) | 12 | `declaration-track:e1ab70c003e244efd309e206eac7ce3e66b67fa6dab2b7bbcb7d00f406dc7003` |
| 2 | `lemma` | [Up.next](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataByteArray.lean/declarations/up-next.md) | 14 | `result-track:81713223710078e30d26c69ce3fc1b54f6e62c94b647a4976d88add7f0599214` |
| 3 | `lemma` | [Up.WF](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataByteArray.lean/declarations/up-wf.md) | 16 | `result-track:c70e88764983a13b589ce6fc76387100dbab0b7cef4f1c918eea99380b3ee739` |
| 4 | `def` | [upRel](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataByteArray.lean/declarations/uprel.md) | 20 | `declaration-track:c59638627b8450eb5057ae4cfeae743d2c3f11d42df980363bfc18b7049b97a0` |
| 5 | `structure` | [ByteSliceT](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataByteArray.lean/declarations/byteslicet.md) | 25 | `declaration-track:db1b8239addc5ccf4e97b90a8369a5fc41f68a2fa7595313eca7560ada2db8fc` |
| 6 | `def` | [size](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataByteArray.lean/declarations/size.md) | 30 | `declaration-track:9e57608531d851aff0281fa0f9c2fa31667cee263c6c6e89985fba698160b8bf` |
| 7 | `def` | [getOp](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataByteArray.lean/declarations/getop.md) | 33 | `declaration-track:09d3e2de920a2543395e00a411a895cc021a261bfb880d331e7af43db1b6ab51` |
| 8 | `def` | [ByteArray.toSliceT](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataByteArray.lean/declarations/bytearray-toslicet.md) | 38 | `declaration-track:b99a54acbfc8db2631f5abcb58c29c5ec82532fdbf1c252a40fb5263aa790d3e` |
| 9 | `structure` | [ByteSlice](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataByteArray.lean/declarations/byteslice.md) | 41 | `declaration-track:58ff87321f972efd299122e56fdca5372284fc10011c9f7014a02abab36c3de6` |
| 10 | `def` | [toArray](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataByteArray.lean/declarations/toarray.md) | 46 | `declaration-track:1636b062f9f6d86988c1390d8626d8d5d0b2881ddfb58e0c196a7bda00ac2c99` |
| 11 | `def` | [getOp](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataByteArray.lean/declarations/getop-source-edition-2.md) | 50 | `declaration-track:633a112d36e7455175b4bed5e10673f394fd95e145bb9f98ff451634e491bde5` |
| 12 | `def` | [forIn.loop](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataByteArray.lean/declarations/forin-loop.md) | 54 | `declaration-track:49f6adc980eb37d06ffab5f9a89824fb8a1fb223208fb753199c75a475fac2a5` |
| 13 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataByteArray.lean/declarations/instance-source-edition-2.md) | 63 | `declaration-track:48e9bf18f56533b0caca71e30c7860c6d37b423bbeaa7c7edfd500b11111b556` |
| 14 | `def` | [ByteSliceT.toSlice](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataByteArray.lean/declarations/byteslicet-toslice.md) | 69 | `declaration-track:a4291e9f3690e215e9bf3d0dbcd4a14dec313cc60e732a658fa80a2fe8c39d81` |
| 15 | `def` | [ByteArray.toSlice](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataByteArray.lean/declarations/bytearray-toslice.md) | 73 | `declaration-track:3be069bbb28294163a849f78382cc20e10546941ad440b4c2ae38caa87bb68c0` |
| 16 | `def` | [String.toAsciiByteArray](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataByteArray.lean/declarations/string-toasciibytearray.md) | 77 | `declaration-track:63d25c8547df2fba9cbbff6f986eaaf02ea15b5bc80d20d93ba4c99e484494de` |
| 17 | `def` | [ByteSlice.toString](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataByteArray.lean/declarations/byteslice-tostring.md) | 90 | `declaration-track:9c4a36d414e0e07ee09a8189d07d8678770bdc26fcda47df612515affae58d34` |
| 18 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataByteArray.lean/declarations/instance.md) | 95 | `declaration-track:3e328bd7807a10787acb04b1142cb8e08014152b5822ee82cf4a26a7192958ac` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f82786373722abd22072e2537f1aa81ea11eabf62336027b96e0747b371657d1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ByteArray/Variant83b0aa5865fde06853de9654a15c12f57e151b167de2a1cf46261f27af688a54.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ByteArray/Variant83b0aa5865fde06853de9654a15c12f57e151b167de2a1cf46261f27af688a54.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
