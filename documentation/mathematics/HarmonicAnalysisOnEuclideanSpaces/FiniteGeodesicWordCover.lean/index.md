# Finite Geodesic Word Cover

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**23 observed declarations and anonymous commands**, 13 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/Fourier/FiniteGeodesicWordCover.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `06f01824740e0443e75a125e76e755c34dd610ea`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/HarmonicAnalysisOnEuclideanSpaces/FiniteGeodesicWordCover.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [BoundedWord](declarations/boundedword.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [wordLength](declarations/wordlength.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [wordLength_le_bound](declarations/wordlength-le-bound.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [emptyWord](declarations/emptyword.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [emptyWord_length](declarations/emptyword-length.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [letters](declarations/letters.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [letters_length](declarations/letters-length.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [card_boundedWord](declarations/card-boundedword.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `structure` | [BoundedWordGeometricGate](declarations/boundedwordgeometricgate.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [decodedCandidates](declarations/decodedcandidates.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [mem_decodedCandidates_iff](declarations/mem-decodedcandidates-iff.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [decodedCandidates_subset](declarations/decodedcandidates-subset.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [decodedCandidates_card_le_codes](declarations/decodedcandidates-card-le-codes.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [decodedCandidates_card_le_word_sum](declarations/decodedcandidates-card-le-word-sum.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [selectedInput](declarations/selectedinput.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [originalUniverse](declarations/originaluniverse.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [decodedCandidates_cover_short_sources](declarations/decodedcandidates-cover-short-sources.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [bounded_word_trace_error_le_alias](declarations/bounded-word-trace-error-le-alias.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [always_reject_incompatible_with_short_source](declarations/always-reject-incompatible-with-short-source.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [toyWordGate](declarations/toywordgate.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [toyOneLetter](declarations/toyoneletter.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [toy_distinct_codes_same_output](declarations/toy-distinct-codes-same-output.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [toy_decodedCandidates_eq_univ](declarations/toy-decodedcandidates-eq-univ.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b240fafe51f729b9ae2bf6d40546e2a84c50b0bb089ec39d4caa9936559899bb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/Fourier/FiniteGeodesicWordCover.lean","GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteGeodesicWordCover.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
