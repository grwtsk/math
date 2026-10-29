# Forward Pattern Namespaced Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**36 observed declarations and anonymous commands**, 32 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ForwardPattern/Variantc7145cde99a3dbfbe2fbf907add08a71bf9235ff0432329c54cef11642ba3614.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `82a28781deacf7d596277cfe2836e2ead21a4a80`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/ComputerScience/AlgorithmsInComputerScience/ForwardPatternNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `theorem` | [startsWith_iff](declarations/startswith-iff.md) | 31 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [skipPrefix?_eq_some_iff](declarations/skipprefix-eq-some-iff.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [isSome_skipPrefix?](declarations/issome-skipprefix.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [startsWith_of_isEmpty](declarations/startswith-of-isempty.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [skipPrefix?_of_isEmpty](declarations/skipprefix-of-isempty.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [endsWith_iff](declarations/endswith-iff.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [skipSuffix?_eq_some_iff](declarations/skipsuffix-eq-some-iff.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [isSome_skipSuffix?](declarations/issome-skipsuffix.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [endsWith_of_isEmpty](declarations/endswith-of-isempty.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [skipSuffix?_of_isEmpty](declarations/skipsuffix-of-isempty.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `instance` | [(anonymous)](declarations/instance.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [startsWith_string_eq_startsWith_toSlice](declarations/startswith-string-eq-startswith-toslice.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [dropPrefix?_string_eq_dropPrefix?_toSlice](declarations/dropprefix-string-eq-dropprefix-toslice-source-edition-2.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [dropPrefix_string_eq_dropPrefix_toSlice](declarations/dropprefix-string-eq-dropprefix-toslice.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [skipPrefix?_string_eq_skipPrefix?_toSlice](declarations/skipprefix-string-eq-skipprefix-toslice.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [Pattern.ForwardPattern.skipPrefix?_string_eq_skipPrefix?_toSlice](declarations/pattern-forwardpattern-skipprefix-string-eq-skipprefix-toslice.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [Pos.skip?_string_eq_skip?_toSlice](declarations/pos-skip-string-eq-skip-toslice.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [Pos.skipWhile_string_eq_skipWhile_toSlice](declarations/pos-skipwhile-string-eq-skipwhile-toslice.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [skipPrefixWhile_string_eq_skipPrefixWhile_toSlice](declarations/skipprefixwhile-string-eq-skipprefixwhile-toslice.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [dropWhile_string_eq_dropWhile_toSlice](declarations/dropwhile-string-eq-dropwhile-toslice.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [takeWhile_string_eq_takeWhile_toSlice](declarations/takewhile-string-eq-takewhile-toslice.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [all_string_eq_all_toSlice](declarations/all-string-eq-all-toslice.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [endsWith_string_eq_endsWith_toSlice](declarations/endswith-string-eq-endswith-toslice.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [skipSuffix?_string_eq_skipSuffix?_toSlice](declarations/skipsuffix-string-eq-skipsuffix-toslice.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [dropSuffix?_string_eq_dropSuffix?_toSlice](declarations/dropsuffix-string-eq-dropsuffix-toslice.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [dropSuffix_string_eq_dropSuffix_toSlice](declarations/dropsuffix-string-eq-dropsuffix-toslice-source-edition-2.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [Pattern.BackwardPattern.skipSuffix?_string_eq_skipSuffix?_toSlice](declarations/pattern-backwardpattern-skipsuffix-string-eq-skipsuffix-toslice.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [Pos.revSkip?_string_eq_revSkip?_toSlice](declarations/pos-revskip-string-eq-revskip-toslice.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [Pos.revSkipWhile_string_eq_revSkipWhile_toSlice](declarations/pos-revskipwhile-string-eq-revskipwhile-toslice.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [skipSuffixWhile_string_eq_skipSuffixWhile_toSlice](declarations/skipsuffixwhile-string-eq-skipsuffixwhile-toslice.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [dropEndWhile_string_eq_dropEndWhile_toSlice](declarations/dropendwhile-string-eq-dropendwhile-toslice.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [takeEndWhile_string_eq_takeEndWhile_toSlice](declarations/takeendwhile-string-eq-takeendwhile-toslice.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [revAll_string_eq_revAll_toSlice](declarations/revall-string-eq-revall-toslice.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fa7baef400e28fd1522ad27edbf90ff4ae4856a206e2d43ae881ccf36193dd38 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ForwardPattern/Variantc7145cde99a3dbfbe2fbf907add08a71bf9235ff0432329c54cef11642ba3614.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
