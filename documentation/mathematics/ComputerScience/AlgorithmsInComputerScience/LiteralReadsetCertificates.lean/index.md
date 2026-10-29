# Literal Readset Certificates

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**46 observed declarations and anonymous commands**, 19 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LiteralReadsetCertificates.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7c08a274ade74b651a0c2516f9a50b088ae71407`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/ComputerScience/AlgorithmsInComputerScience/LiteralReadsetCertificates.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Bytes](declarations/bytes.md) | 12 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `abbrev` | [SourceKey](declarations/sourcekey.md) | 13 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `abbrev` | [TargetKey](declarations/targetkey.md) | 14 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `structure` | [ReadSet](declarations/readset.md) | 16 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `structure` | [Binding](declarations/binding.md) | 23 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `structure` | [Occurrence](declarations/occurrence.md) | 30 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `structure` | [Output](declarations/output.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `abbrev` | [ByteOccurrence](declarations/byteoccurrence.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `abbrev` | [ByteOutput](declarations/byteoutput.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [slot](declarations/slot.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [sourcePayload](declarations/sourcepayload.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [realize](declarations/realize.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [renderOccurrences](declarations/renderoccurrences.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [renderOutputs](declarations/renderoutputs.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [keysAt](declarations/keysat.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [completeSourceKeys](declarations/completesourcekeys.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [bindingKeys](declarations/bindingkeys.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [canonicalReadSet](declarations/canonicalreadset.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [readsetsCheck](declarations/readsetscheck.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [coverageCheck](declarations/coveragecheck.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [certificateCheck](declarations/certificatecheck.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [readsetsCheck_spec](declarations/readsetscheck-spec.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [certificateCheck_spec](declarations/certificatecheck-spec.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [accepted_readset_exact](declarations/accepted-readset-exact.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [accepted_complete_source_keys](declarations/accepted-complete-source-keys.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [stale_literal_readset_rejected](declarations/stale-literal-readset-rejected.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [omitted_source_occurrence_rejected](declarations/omitted-source-occurrence-rejected.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [sourcePayload_exact](declarations/sourcepayload-exact.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [missing_source_slot_rejected](declarations/missing-source-slot-rejected.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [coverageCheck_sound](declarations/coveragecheck-sound.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [accepted_exact_decode](declarations/accepted-exact-decode.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [same_literal_slot_equal](declarations/same-literal-slot-equal.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [digest_equality_does_not_imply_bytes](declarations/digest-equality-does-not-imply-bytes.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [targetLess](declarations/targetless.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `instance` | [(anonymous)](declarations/instance.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [outputKeys](declarations/outputkeys.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [planCertificateCheck](declarations/plancertificatecheck.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [planCertificateCheck_spec](declarations/plancertificatecheck-spec.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [accepted_literal_objects_exact](declarations/accepted-literal-objects-exact.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [accepted_output_inventory_exact](declarations/accepted-output-inventory-exact.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [accepted_output_keys_unique](declarations/accepted-output-keys-unique.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [literal_payload_drift_rejected](declarations/literal-payload-drift-rejected.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [changed_output_inventory_rejected](declarations/changed-output-inventory-rejected.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [plan_certificate_exact_decode](declarations/plan-certificate-exact-decode.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `example` | [(anonymous)](declarations/example.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8d72e42f75de047d3d3ea24e9c6566b29d6e7f50e624032905bb3c837e47619c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LiteralReadsetCertificates.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
