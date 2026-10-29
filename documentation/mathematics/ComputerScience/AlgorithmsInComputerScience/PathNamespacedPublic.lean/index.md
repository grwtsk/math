# Path Namespaced Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**33 observed declarations and anonymous commands**, 9 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Path/Variant909c88bea4f17c4f24951517e148ae06b56c16a790efbb8160f53383b002f413.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bdbcf6db8472793a0c988bbdda71476aca38221f`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/ComputerScience/AlgorithmsInComputerScience/PathNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [ProjectRelativePath](declarations/projectrelativepath.md) | 27 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [LeanModulePath](declarations/leanmodulepath.md) | 32 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `structure` | [Utf8ByteOffset](declarations/utf8byteoffset.md) | 37 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `structure` | [SourceByteRange](declarations/sourcebyterange.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `structure` | [AllowedRoot](declarations/allowedroot.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [ProjectRelativePath.components](declarations/projectrelativepath-components.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [ProjectRelativePath.Valid](declarations/projectrelativepath-valid.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [verifyProjectRelativePath](declarations/verifyprojectrelativepath.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [verifyProjectRelativePath_sound](declarations/verifyprojectrelativepath-sound.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [valid_relative_path_has_no_parent_escape](declarations/valid-relative-path-has-no-parent-escape.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [valid_lean_source_path_has_lean_extension](declarations/valid-lean-source-path-has-lean-extension.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [SourceByteRange.Valid](declarations/sourcebyterange-valid.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [verifySourceByteRange](declarations/verifysourcebyterange.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [verifySourceByteRange_sound](declarations/verifysourcebyterange-sound.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [valid_source_range_start_le_end](declarations/valid-source-range-start-le-end.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [LeanModulePath.Valid](declarations/leanmodulepath-valid.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [modulePathAsSource](declarations/modulepathassource.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `structure` | [LeanSourceIdentity](declarations/leansourceidentity.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [LeanSourceIdentity.Valid](declarations/leansourceidentity-valid.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `instance` | [(anonymous)](declarations/instance.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [verifyLeanSourceIdentity](declarations/verifyleansourceidentity.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [verifyLeanSourceIdentity_sound](declarations/verifyleansourceidentity-sound.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [modulePathRoundTrip](declarations/modulepathroundtrip.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [module_path_round_trip_for_valid_components](declarations/module-path-round-trip-for-valid-components.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [ProjectRelativePath.Within](declarations/projectrelativepath-within.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `structure` | [CandidatePath](declarations/candidatepath.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `structure` | [CanonicalPath](declarations/canonicalpath.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [candidate_path_is_generated](declarations/candidate-path-is-generated.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [canonical_path_is_not_generated_or_legacy](declarations/canonical-path-is-not-generated-or-legacy.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `structure` | [PathResolutionReceipt](declarations/pathresolutionreceipt.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3f462e258e214dc6d9f71f73ed98915a389eb6cd3710c9ce0c7a6ba5a4e5d165 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Path/Variant909c88bea4f17c4f24951517e148ae06b56c16a790efbb8160f53383b002f413.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
