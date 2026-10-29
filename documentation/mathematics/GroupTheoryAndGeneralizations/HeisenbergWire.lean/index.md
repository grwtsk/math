# Heisenberg Wire

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**47 observed declarations and anonymous commands**, 29 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/GroupTheory/Words/HeisenbergWire.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3a07c65b502f19d1b120a4895bbfb87e062fccc8`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/GroupTheoryAndGeneralizations/HeisenbergWire.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [PrefixState](declarations/prefixstate.md) | 28 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [prefixStart](declarations/prefixstart.md) | 34 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [prefixStep](declarations/prefixstep.md) | 36 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [prefixProduct](declarations/prefixproduct.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [prefixScan](declarations/prefixscan.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [prefixProduct_step](declarations/prefixproduct-step.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [prefixScan_product_aux](declarations/prefixscan-product-aux.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [prefixScan_product](declarations/prefixscan-product.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [prefixScan_inputHeight_aux](declarations/prefixscan-inputheight-aux.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [prefixScan_inputHeight](declarations/prefixscan-inputheight.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [prefixScan_orderedArea](declarations/prefixscan-orderedarea.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [unpackNatLE_length](declarations/unpacknatle-length.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [packNatLE_unpackNatLE](declarations/packnatle-unpacknatle.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [CoordinateFits](declarations/coordinatefits.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [RecordFits](declarations/recordfits.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [encodeCoordinate](declarations/encodecoordinate.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [decodeCoordinate](declarations/decodecoordinate.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [encodeCoordinate_length](declarations/encodecoordinate-length.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [decodeCoordinate_encodeCoordinate](declarations/decodecoordinate-encodecoordinate.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [encodeRecord](declarations/encoderecord.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [decodeRecord](declarations/decoderecord.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [encodeRecord_length](declarations/encoderecord-length.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [take_field](declarations/take-field.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [drop_field](declarations/drop-field.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [decodeRecord_encodeRecord](declarations/decoderecord-encoderecord.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [decodeCoordinate_negative_zero](declarations/decodecoordinate-negative-zero.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [decodeCoordinate_unknown_tag](declarations/decodecoordinate-unknown-tag.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [encodeRecords](declarations/encoderecords.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [decodeRecords](declarations/decoderecords.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [encodeRecords_length](declarations/encoderecords-length.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [decodeRecords_encodeRecords](declarations/decoderecords-encoderecords.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [magic](declarations/magic.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [encodeEnvelope](declarations/encodeenvelope.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [decodeEnvelope](declarations/decodeenvelope.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [encodeEnvelope_length](declarations/encodeenvelope-length.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [decodeEnvelope_encodeEnvelope](declarations/decodeenvelope-encodeenvelope.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [encodeEnvelope_injective](declarations/encodeenvelope-injective.md) | 301 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [encodePipeline](declarations/encodepipeline.md) | 315 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [decodePipeline](declarations/decodepipeline.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [pipeline_roundtrip](declarations/pipeline-roundtrip.md) | 327 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [pipeline_preserves_source](declarations/pipeline-preserves-source.md) | 336 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [pipeline_preserves_product](declarations/pipeline-preserves-product.md) | 344 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [pipeline_preserves_orderedArea](declarations/pipeline-preserves-orderedarea.md) | 351 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [pipeline_preserves_centralHeight](declarations/pipeline-preserves-centralheight.md) | 358 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [pipeline_preserves_prefixProduct](declarations/pipeline-preserves-prefixproduct.md) | 368 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [pipeline_preserves_prefixArea](declarations/pipeline-preserves-prefixarea.md) | 379 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [pipeline_preserves_height](declarations/pipeline-preserves-height.md) | 390 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=eacf57dcc3357fcfd04ed25e124ddcb1884a031eea2b2e237083f042c7e0bb07 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Words/HeisenbergWire.lean","GRWTSK/GroupTheory/Words/HeisenbergWire.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
