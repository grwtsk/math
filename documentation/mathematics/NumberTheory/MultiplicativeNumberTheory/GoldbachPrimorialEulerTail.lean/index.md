# Goldbach Primorial Euler Tail

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**25 observed declarations and anonymous commands**, 16 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/Primes/GoldbachPrimorialEulerTail.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fc18a8b4f8e86ee7e3cb5a9c8ceded60e7105b31`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/NumberTheory/MultiplicativeNumberTheory/GoldbachPrimorialEulerTail.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `theorem` | [goldbachPrimeCutoff_eq_primesLE](declarations/goldbachprimecutoff-eq-primesle.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [goldbachDenominatorCoefficientRangeSum](declarations/goldbachdenominatorcoefficientrangesum.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [goldbachPrimorialCoefficientDivisorSum](declarations/goldbachprimorialcoefficientdivisorsum.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [goldbachPrimorialShortDivisors](declarations/goldbachprimorialshortdivisors.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [goldbachPrimorialTailDivisors](declarations/goldbachprimorialtaildivisors.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [goldbachPrimorialShortCoefficientSum](declarations/goldbachprimorialshortcoefficientsum.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [goldbachPrimorialCoefficientTail](declarations/goldbachprimorialcoefficienttail.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [goldbachPrimorialCoefficientTailNorm](declarations/goldbachprimorialcoefficienttailnorm.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [goldbachFiniteCoefficientEulerProduct_eq_primorialDivisorSum](declarations/goldbachfinitecoefficienteulerproduct-eq-primorialdivisorsum.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [goldbachPrimorialCoefficientDivisorSum_eq_short_add_tail](declarations/goldbachprimorialcoefficientdivisorsum-eq-short-add-tail.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [goldbachPrimorialShortDivisors_subset_denominatorRange](declarations/goldbachprimorialshortdivisors-subset-denominatorrange.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [squarefree_dvd_primorial_of_le](declarations/squarefree-dvd-primorial-of-le.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [goldbachPrimorialShortCoefficientSum_eq_denominatorRangeSum](declarations/goldbachprimorialshortcoefficientsum-eq-denominatorrangesum.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [goldbachFiniteCoefficientEulerProduct_eq_range_add_tail](declarations/goldbachfinitecoefficienteulerproduct-eq-range-add-tail.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [norm_goldbachPrimorialCoefficientTail_le](declarations/norm-goldbachprimorialcoefficienttail-le.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [goldbachPrimorialCoefficientTailNorm_nonneg](declarations/goldbachprimorialcoefficienttailnorm-nonneg.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [goldbachFejerNegativeCoefficientPenalty](declarations/goldbachfejernegativecoefficientpenalty.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [goldbachFejerCoreMain_le_windowUpper](declarations/goldbachfejercoremain-le-windowupper.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [goldbachFejerNegativeCoefficientPenalty_nonneg](declarations/goldbachfejernegativecoefficientpenalty-nonneg.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [goldbachFejerDenominatorLowerTerm_eq_core_sub_penalty](declarations/goldbachfejerdenominatorlowerterm-eq-core-sub-penalty.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [goldbachFejerDenominatorLowerSum_eq_core_mul_range_sub_penalty](declarations/goldbachfejerdenominatorlowersum-eq-core-mul-range-sub-penalty.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [goldbachFejerEulerTailError](declarations/goldbachfejereulertailerror.md) | 347 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [goldbachFejerEulerTailError_nonneg](declarations/goldbachfejereulertailerror-nonneg.md) | 354 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [goldbachCoefficientTruncatedMainScale_sub_fejerEulerTailError_le](declarations/goldbachcoefficienttruncatedmainscale-sub-fejereulertailerror-le.md) | 367 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [goldbachCount_pos_of_fejerEulerTail_certificate](declarations/goldbachcount-pos-of-fejereulertail-certificate.md) | 400 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1aa21a9b5862552746896e044e59da782721d998a9c80f06e30427513bfe1cbd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Primes/GoldbachPrimorialEulerTail.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
