# Elliptic Divisibility Sequence Namespaced

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**42 observed declarations and anonymous commands**, 34 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EllipticDivisibilitySequence/Variant1f6e0afb444a290e92d1c8a65cbc5e198e8e40deacb40ca57c487d4c00a1731e.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6eb14bce94feda3db5bdcc8e47376d5db46668bc`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/NumberTheory/EllipticDivisibilitySequenceNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [IsEllSequence](declarations/isellsequence.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [IsDivSequence](declarations/isdivsequence.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [IsEllDivSequence](declarations/iselldivsequence.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [isEllSequence_id](declarations/isellsequence-id.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [isDivSequence_id](declarations/isdivsequence-id.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [isEllDivSequence_id](declarations/iselldivsequence-id.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [IsEllSequence.smul](declarations/isellsequence-smul.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [IsDivSequence.smul](declarations/isdivsequence-smul.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [IsEllDivSequence.smul](declarations/iselldivsequence-smul.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [preNormEDS'](declarations/prenormeds.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [preNormEDS'_zero](declarations/prenormeds-zero-source-edition-2.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [preNormEDS'_one](declarations/prenormeds-one.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [preNormEDS'_two](declarations/prenormeds-two-source-edition-2.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [preNormEDS'_three](declarations/prenormeds-three-source-edition-2.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [preNormEDS'_four](declarations/prenormeds-four-source-edition-2.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [preNormEDS'_even](declarations/prenormeds-even.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [preNormEDS'_odd](declarations/prenormeds-odd.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [preNormEDS](declarations/prenormeds-source-edition-2.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [preNormEDS_ofNat](declarations/prenormeds-ofnat.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [preNormEDS_zero](declarations/prenormeds-zero.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [preNormEDS_one](declarations/prenormeds-one-source-edition-2.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [preNormEDS_two](declarations/prenormeds-two.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [preNormEDS_three](declarations/prenormeds-three.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [preNormEDS_four](declarations/prenormeds-four.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [preNormEDS_neg](declarations/prenormeds-neg.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [preNormEDS_even](declarations/prenormeds-even-source-edition-2.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [preNormEDS_odd](declarations/prenormeds-odd-source-edition-2.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [normEDS](declarations/normeds.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [normEDS_ofNat](declarations/normeds-ofnat.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [normEDS_zero](declarations/normeds-zero.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [normEDS_one](declarations/normeds-one.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `lemma` | [normEDS_two](declarations/normeds-two.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `lemma` | [normEDS_three](declarations/normeds-three.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `lemma` | [normEDS_four](declarations/normeds-four.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `lemma` | [normEDS_neg](declarations/normeds-neg.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `lemma` | [normEDS_even](declarations/normeds-even.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `lemma` | [normEDS_odd](declarations/normeds-odd.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [normEDSRec'](declarations/normedsrec-source-edition-2.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [normEDSRec](declarations/normedsrec.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `lemma` | [map_preNormEDS'](declarations/map-prenormeds.md) | 340 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `lemma` | [map_preNormEDS](declarations/map-prenormeds-source-edition-2.md) | 352 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `lemma` | [map_normEDS](declarations/map-normeds.md) | 356 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3487bbdfa3abe85412d5038e7612ea19591e0672bfbfa0505338200888344e79 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EllipticDivisibilitySequence/Variant1f6e0afb444a290e92d1c8a65cbc5e198e8e40deacb40ca57c487d4c00a1731e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
