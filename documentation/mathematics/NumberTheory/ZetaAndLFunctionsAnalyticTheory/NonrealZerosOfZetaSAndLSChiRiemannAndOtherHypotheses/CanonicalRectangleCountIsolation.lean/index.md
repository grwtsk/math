# Canonical Rectangle Count Isolation

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../../complete-source-index.md) · [Full source](source.md)

**43 observed declarations and anonymous commands**, 31 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/Zeta/Riemann/CanonicalRectangleCountIsolation.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7f91ce48dd90bb849bddb1a5c01f10a18ba20354`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CanonicalRectangleCountIsolation.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [bottomPoint](declarations/bottompoint.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [rightPoint](declarations/rightpoint.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [topPoint](declarations/toppoint.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [rectangleLeftPoint](declarations/rectangleleftpoint.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [bottomPoint_re](declarations/bottompoint-re.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [bottomPoint_im](declarations/bottompoint-im.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [topPoint_re](declarations/toppoint-re.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [topPoint_im](declarations/toppoint-im.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [rightPoint_re](declarations/rightpoint-re.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [rightPoint_im](declarations/rightpoint-im.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [rectangleLeftPoint_re](declarations/rectangleleftpoint-re.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [rectangleLeftPoint_im](declarations/rectangleleftpoint-im.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [bottomPoint_mem_boundary](declarations/bottompoint-mem-boundary.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [topPoint_mem_boundary](declarations/toppoint-mem-boundary.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [rightPoint_mem_boundary](declarations/rightpoint-mem-boundary.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [rectangleLeftPoint_mem_boundary](declarations/rectangleleftpoint-mem-boundary.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [zeta_ne_zero_bottom](declarations/zeta-ne-zero-bottom.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [zeta_ne_zero_top](declarations/zeta-ne-zero-top.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [zeta_ne_zero_right](declarations/zeta-ne-zero-right.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [zeta_ne_zero_left](declarations/zeta-ne-zero-left.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [bottomPoint_ne_one](declarations/bottompoint-ne-one.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [topPoint_ne_one](declarations/toppoint-ne-one.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [rightPoint_ne_one](declarations/rightpoint-ne-one.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [rectangleLeftPoint_ne_one](declarations/rectangleleftpoint-ne-one.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [rectangleLogDerivativeIntegral](declarations/rectanglelogderivativeintegral.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [normalizedRectangleIndex](declarations/normalizedrectangleindex.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [expectedRectangleIndex](declarations/expectedrectangleindex.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [expectedRectangleIndex_eq_two_positive_add_trivial_sub_pole](declarations/expectedrectangleindex-eq-two-positive-add-trivial-sub-pole.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [recoverPositiveCount](declarations/recoverpositivecount.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [recoverPositiveCount_expected](declarations/recoverpositivecount-expected.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [positiveCountInterval](declarations/positivecountinterval.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [cast_positiveCountInterval_lower](declarations/cast-positivecountinterval-lower.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [cast_positiveCountInterval_upper](declarations/cast-positivecountinterval-upper.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `structure` | [CanonicalRectangleIndexEnclosure](declarations/canonicalrectangleindexenclosure.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [normalized_re_eq_expected](declarations/normalized-re-eq-expected.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [normalized_im_eq_zero](declarations/normalized-im-eq-zero.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [toCanonicalCountEnclosure](declarations/tocanonicalcountenclosure.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [accepts](declarations/accepts.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [accepts_iff](declarations/accepts-iff.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [exact_positive_count_of_accepts](declarations/exact-positive-count-of-accepts.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [accepted_count_unique](declarations/accepted-count-unique.md) | 305 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [pole_trivial_two_sign_correction_fixture](declarations/pole-trivial-two-sign-correction-fixture.md) | 316 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [omitted_pole_shifts_by_half_fixture](declarations/omitted-pole-shifts-by-half-fixture.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ca7c8fd32efb308d67118c2858150693f2db579afc65f4ebae186575ec2447fa -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/CanonicalRectangleCountIsolation.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
