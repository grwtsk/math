# Verification target: GRWTSK.GroupTheory.Words.HeisenbergWire

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3a07c65b502f19d1b120a4895bbfb87e062fccc8",
  "lexical_observation_count": 47,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/GroupTheory/Words/HeisenbergWire.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/HeisenbergWire.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/HeisenbergWire.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3a07c65b502f19d1b120a4895bbfb87e062fccc8`.

Source path: `GRWTSK/GroupTheory/Words/HeisenbergWire.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/GroupTheory/Words/HeisenbergWire.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.GroupTheory.Words.HeisenbergOrderedHeight`](../../../../GroupTheoryAndGeneralizations/HeisenbergOrderedHeight.lean/index.md) — import line 1; pinned internal source present.
- [`GRWTSK.InformationTheory.ReedSolomon.SourceRoundTrip`](../../../../Combinatorics/SourceRoundTrip.lean/index.md) — import line 2; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PrefixState](../../../../GroupTheoryAndGeneralizations/HeisenbergWire.lean/declarations/prefixstate.md) | 28 | `declaration-track:6c70be437eed48c9c896bef8d365dd7349b1bbeb0783513a3df290cb61827ee4` |
| 2 | `def` | [prefixStart](../../../../GroupTheoryAndGeneralizations/HeisenbergWire.lean/declarations/prefixstart.md) | 34 | `declaration-track:2d1e6a8db679ff75752b584ab19a099875b5c8c0de6ce3498bf97ec3c13d1530` |
| 3 | `def` | [prefixStep](../../../../GroupTheoryAndGeneralizations/HeisenbergWire.lean/declarations/prefixstep.md) | 36 | `declaration-track:e72ecabccb535f8a12c243b6a165e772d353c3d05498863176c8074269e92e9e` |
| 4 | `def` | [prefixProduct](../../../../GroupTheoryAndGeneralizations/HeisenbergWire.lean/declarations/prefixproduct.md) | 40 | `declaration-track:c814c6830942c7d7073bc37ffc9df6ae85aca5784fa964e17dbe4a009eb320c9` |
| 5 | `def` | [prefixScan](../../../../GroupTheoryAndGeneralizations/HeisenbergWire.lean/declarations/prefixscan.md) | 43 | `declaration-track:29883becdeda778aa5e55dc064fbc077ead4ee588578fb37f267941218dec0e2` |
| 6 | `theorem` | [prefixProduct_step](../../../../GroupTheoryAndGeneralizations/HeisenbergWire.lean/declarations/prefixproduct-step.md) | 46 | `result-track:00606314caa7b06b874eb592f5becadb31e57608f16aa239e7e31599ddd9f905` |
| 7 | `theorem` | [prefixScan_product_aux](../../../../GroupTheoryAndGeneralizations/HeisenbergWire.lean/declarations/prefixscan-product-aux.md) | 55 | `result-track:0cf3a4d02e43977792b1481933903210a6bfec5c31388c1a9d3ef4f5ed5e5cd0` |
| 8 | `theorem` | [prefixScan_product](../../../../GroupTheoryAndGeneralizations/HeisenbergWire.lean/declarations/prefixscan-product.md) | 62 | `result-track:2f2b4f1a2bb79fd0c7e112f299de5e6b9a2300896c58e979cc527998d5350f9d` |
| 9 | `theorem` | [prefixScan_inputHeight_aux](../../../../GroupTheoryAndGeneralizations/HeisenbergWire.lean/declarations/prefixscan-inputheight-aux.md) | 68 | `result-track:41228460a899987c6ec0a7fe07bc10e8b37029ad13731b5e2758c3b848b93e90` |
| 10 | `theorem` | [prefixScan_inputHeight](../../../../GroupTheoryAndGeneralizations/HeisenbergWire.lean/declarations/prefixscan-inputheight.md) | 77 | `result-track:a7b6e662ceeb0571def6da848aa18718c7356066abe306998813dcf22d944ea4` |
| 11 | `theorem` | [prefixScan_orderedArea](../../../../GroupTheoryAndGeneralizations/HeisenbergWire.lean/declarations/prefixscan-orderedarea.md) | 84 | `result-track:6de552574d68d06423a92090e892406407a347087792ca5539bc911247f3499a` |
| 12 | `theorem` | [unpackNatLE_length](../../../../GroupTheoryAndGeneralizations/HeisenbergWire.lean/declarations/unpacknatle-length.md) | 96 | `result-track:9385ce37ace94c256f595177d8468acacbd73b9c07b8fb31763b5f87bd855c6a` |
| 13 | `theorem` | [packNatLE_unpackNatLE](../../../../GroupTheoryAndGeneralizations/HeisenbergWire.lean/declarations/packnatle-unpacknatle.md) | 104 | `result-track:52f4856fa7ce8b486ef119957f46b1a1786a1ec3f2e2edf3565793a531dcbfd3` |
| 14 | `def` | [CoordinateFits](../../../../GroupTheoryAndGeneralizations/HeisenbergWire.lean/declarations/coordinatefits.md) | 127 | `declaration-track:d539de254e7934fda51fb371ad5c83ca50182b023ef774165ed41ee997589e85` |
| 15 | `def` | [RecordFits](../../../../GroupTheoryAndGeneralizations/HeisenbergWire.lean/declarations/recordfits.md) | 129 | `declaration-track:9a20e4ac0643e66836ae9a7f4238899b88f0631fed98330235ba3d67b1527d73` |
| 16 | `def` | [encodeCoordinate](../../../../GroupTheoryAndGeneralizations/HeisenbergWire.lean/declarations/encodecoordinate.md) | 133 | `declaration-track:04abb81827643f89453a8b0f377237c2dbdfef91241b8730df92b58430541ff3` |
| 17 | `def` | [decodeCoordinate](../../../../GroupTheoryAndGeneralizations/HeisenbergWire.lean/declarations/decodecoordinate.md) | 137 | `declaration-track:bf49435f292eda72f631a794947dcb409558f3c69889fa45d4cf18bc1f02d4ab` |
| 18 | `theorem` | [encodeCoordinate_length](../../../../GroupTheoryAndGeneralizations/HeisenbergWire.lean/declarations/encodecoordinate-length.md) | 145 | `result-track:08961c4ed52df6c523d11500370bfe811926564c4cb5d1b20a9f460fda1a04ae` |
| 19 | `theorem` | [decodeCoordinate_encodeCoordinate](../../../../GroupTheoryAndGeneralizations/HeisenbergWire.lean/declarations/decodecoordinate-encodecoordinate.md) | 149 | `result-track:5168796c0ec70c8958f0d90a084eeabf8a3bc47d0d99a8e4579291ef65278517` |
| 20 | `def` | [encodeRecord](../../../../GroupTheoryAndGeneralizations/HeisenbergWire.lean/declarations/encoderecord.md) | 164 | `declaration-track:f0341b520dd2275efaab0a9242a6da0dea23be7f8b69e190e0777a420d2a63e9` |
| 21 | `def` | [decodeRecord](../../../../GroupTheoryAndGeneralizations/HeisenbergWire.lean/declarations/decoderecord.md) | 167 | `declaration-track:fd5276a5884f90b4a483418af2d0068279ff8c99981dff613afaabef56928261` |
| 22 | `theorem` | [encodeRecord_length](../../../../GroupTheoryAndGeneralizations/HeisenbergWire.lean/declarations/encoderecord-length.md) | 174 | `result-track:b8b194995668415ec93ee8b69c95908487f5bcee040c1932af50b1565f797c75` |
| 23 | `theorem` | [take_field](../../../../GroupTheoryAndGeneralizations/HeisenbergWire.lean/declarations/take-field.md) | 178 | `result-track:ee54ed086de52f9a0cecb9024a55907d81d030d8f5060c82a164ae4742c6fcf7` |
| 24 | `theorem` | [drop_field](../../../../GroupTheoryAndGeneralizations/HeisenbergWire.lean/declarations/drop-field.md) | 181 | `result-track:fe8a786d662b68684b81e912096f1ef7eeb43dffa2a43b54686e4e8b563163e6` |
| 25 | `theorem` | [decodeRecord_encodeRecord](../../../../GroupTheoryAndGeneralizations/HeisenbergWire.lean/declarations/decoderecord-encoderecord.md) | 184 | `result-track:d01b41c340f615b0abb3d19291a09fcc99395a9226cb5e59f597b33a43ba7daf` |
| 26 | `theorem` | [decodeCoordinate_negative_zero](../../../../GroupTheoryAndGeneralizations/HeisenbergWire.lean/declarations/decodecoordinate-negative-zero.md) | 206 | `result-track:d13cd800d848ecc26d134af912e5ea5a04dad50d56af182e0c992d40dd471d4e` |
| 27 | `theorem` | [decodeCoordinate_unknown_tag](../../../../GroupTheoryAndGeneralizations/HeisenbergWire.lean/declarations/decodecoordinate-unknown-tag.md) | 209 | `result-track:dcac922ca99d4fc021446a77e98503d2e95dbf6261fc02ec18506e24ed59ad59` |
| 28 | `def` | [encodeRecords](../../../../GroupTheoryAndGeneralizations/HeisenbergWire.lean/declarations/encoderecords.md) | 213 | `declaration-track:f6fc3c498c4a88fa1d496982bb022cdaa2ac2e342bf34c74c7da9f27b5b4a092` |
| 29 | `def` | [decodeRecords](../../../../GroupTheoryAndGeneralizations/HeisenbergWire.lean/declarations/decoderecords.md) | 219 | `declaration-track:c6fa17aefa4004090538a6528ba760a2f4707b6673aa84821c0af92830ef16be` |
| 30 | `theorem` | [encodeRecords_length](../../../../GroupTheoryAndGeneralizations/HeisenbergWire.lean/declarations/encoderecords-length.md) | 226 | `result-track:baa8a093c9ca5cfed8057156069443a442e50e5e4afed10b6bdb9a86a91c6638` |
| 31 | `theorem` | [decodeRecords_encodeRecords](../../../../GroupTheoryAndGeneralizations/HeisenbergWire.lean/declarations/decoderecords-encoderecords.md) | 235 | `result-track:68bb877ae2aa579a85c7194a7af5080f7d9bcca03c1e4850cab49fbbdac7daed` |
| 32 | `def` | [magic](../../../../GroupTheoryAndGeneralizations/HeisenbergWire.lean/declarations/magic.md) | 251 | `declaration-track:f8217a374f6fce03a73c6a66a732813ad716dfa6624e785569a3d86deefcb821` |
| 33 | `def` | [encodeEnvelope](../../../../GroupTheoryAndGeneralizations/HeisenbergWire.lean/declarations/encodeenvelope.md) | 253 | `declaration-track:a487309134615038481c96ede01537eb072cadad7f45251d039b56744f804d0e` |
| 34 | `def` | [decodeEnvelope](../../../../GroupTheoryAndGeneralizations/HeisenbergWire.lean/declarations/decodeenvelope.md) | 256 | `declaration-track:bd034f59df35ed8c94341783e06df5d5623770f078dc62b973cc78895cc71e45` |
| 35 | `theorem` | [encodeEnvelope_length](../../../../GroupTheoryAndGeneralizations/HeisenbergWire.lean/declarations/encodeenvelope-length.md) | 262 | `result-track:d4a0a22769559236921e54d6ea1a80c57976b4cda1ceff6569a43dd46a3ccf9c` |
| 36 | `theorem` | [decodeEnvelope_encodeEnvelope](../../../../GroupTheoryAndGeneralizations/HeisenbergWire.lean/declarations/decodeenvelope-encodeenvelope.md) | 270 | `result-track:1447f2ccc98a9f180fc27d3d1285c75b219efa6ac0d62a001b9241b0233cbe7a` |
| 37 | `theorem` | [encodeEnvelope_injective](../../../../GroupTheoryAndGeneralizations/HeisenbergWire.lean/declarations/encodeenvelope-injective.md) | 301 | `result-track:eb5670774b572e26cd50b332ff5ccf8e50a0dbf998902bb8d6df7df7704bc54f` |
| 38 | `def` | [encodePipeline](../../../../GroupTheoryAndGeneralizations/HeisenbergWire.lean/declarations/encodepipeline.md) | 315 | `declaration-track:f9a9f268f62e171e4869c1614f58d59405c536402e4216e789e4227bfb6f782c` |
| 39 | `def` | [decodePipeline](../../../../GroupTheoryAndGeneralizations/HeisenbergWire.lean/declarations/decodepipeline.md) | 319 | `declaration-track:6415692cfe7655e2fb49e6b898cc5a9f16f218adb256bdfabdc69f570f0d3754` |
| 40 | `theorem` | [pipeline_roundtrip](../../../../GroupTheoryAndGeneralizations/HeisenbergWire.lean/declarations/pipeline-roundtrip.md) | 327 | `result-track:cf74c179b78308a24f074f55528a8fa3ff52cc4e7dcde4915b44224cc167c98d` |
| 41 | `theorem` | [pipeline_preserves_source](../../../../GroupTheoryAndGeneralizations/HeisenbergWire.lean/declarations/pipeline-preserves-source.md) | 336 | `result-track:b0c2fd7dc42ddd20ce502caae6d8e9925803a81335e27583ffbf7b660ac20467` |
| 42 | `theorem` | [pipeline_preserves_product](../../../../GroupTheoryAndGeneralizations/HeisenbergWire.lean/declarations/pipeline-preserves-product.md) | 344 | `result-track:9a6e23ae47169b078d66929ab894dc7e15b48fb59d103d37f580d5d4346afe01` |
| 43 | `theorem` | [pipeline_preserves_orderedArea](../../../../GroupTheoryAndGeneralizations/HeisenbergWire.lean/declarations/pipeline-preserves-orderedarea.md) | 351 | `result-track:70808c07dc6df60ca1a68db6d34be90bae3c1ab80624fe8519a2484fc4a3d49e` |
| 44 | `theorem` | [pipeline_preserves_centralHeight](../../../../GroupTheoryAndGeneralizations/HeisenbergWire.lean/declarations/pipeline-preserves-centralheight.md) | 358 | `result-track:deb1fb03f3c7015655b0dc533e197366afe6dbc7f65e3822a18a1f6f6e2f0199` |
| 45 | `theorem` | [pipeline_preserves_prefixProduct](../../../../GroupTheoryAndGeneralizations/HeisenbergWire.lean/declarations/pipeline-preserves-prefixproduct.md) | 368 | `result-track:99810af298e4f9b83faf0d83047078237e63f71f706df9062214954f70db9b9e` |
| 46 | `theorem` | [pipeline_preserves_prefixArea](../../../../GroupTheoryAndGeneralizations/HeisenbergWire.lean/declarations/pipeline-preserves-prefixarea.md) | 379 | `result-track:4363d8a90bb2638592bbebac8d6ab4593d70a3d0ca2104a5d678366082583d3f` |
| 47 | `theorem` | [pipeline_preserves_height](../../../../GroupTheoryAndGeneralizations/HeisenbergWire.lean/declarations/pipeline-preserves-height.md) | 390 | `result-track:52b428a89d0df33640846c7b2758cde10231eb6d4f742930599f983432353419` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=147faa38dce4d4a74eafd882213b76226acddf1b5218df5fa7b7d9f9572f0202 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/GroupTheory/Words/HeisenbergWire.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Words/HeisenbergWire.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
