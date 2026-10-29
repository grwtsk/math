# CMArchimedean Positivity

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**42 observed declarations and anonymous commands**, 25 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/AlgebraicGeometry/Hodge/CMArchimedeanPositivity.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7b28a2ea77e43563b25646a5fcacfe4d937fefcb`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/Geometry/CMArchimedeanPositivity.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [baseComplexEmbedding](declarations/basecomplexembedding.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [complexEmbeddingAt](declarations/complexembeddingat.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [imagAt](declarations/imagat.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `structure` | [SignControlledXi](declarations/signcontrolledxi.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [SignControlledXi.coeff](declarations/signcontrolledxi-coeff.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [SignControlledXi.coeff_pos](declarations/signcontrolledxi-coeff-pos.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [SignControlledXi.xi_ne_zero](declarations/signcontrolledxi-xi-ne-zero.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [SignControlledXi.toTracePolarizationData](declarations/signcontrolledxi-totracepolarizationdata.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [SignControlledXi.tracePairing_alternating_nondegenerate](declarations/signcontrolledxi-tracepairing-alternating-nondegenerate.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [complexEmbeddingAt_galoisComplexConj](declarations/complexembeddingat-galoiscomplexconj.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [CMTracePolarization.TracePolarizationData.embedding_re_zero](declarations/cmtracepolarization-tracepolarizationdata-embedding-re-zero.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [CMTracePolarization.TracePolarizationData.embedding_im_ne_zero](declarations/cmtracepolarization-tracepolarizationdata-embedding-im-ne-zero.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [realSign](declarations/realsign.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [realSign_isSign](declarations/realsign-issign.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [realSign_neg_of_ne_zero](declarations/realsign-neg-of-ne-zero.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [CMTracePolarization.TracePolarizationData.imagSign](declarations/cmtracepolarization-tracepolarizationdata-imagsign.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [requiredRescalingSign](declarations/requiredrescalingsign.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [requiredRescalingSign_conj](declarations/requiredrescalingsign-conj.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [FixedElementRealizesRequiredSign](declarations/fixedelementrealizesrequiredsign.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [embedding_im_zero_of_conj_fixed](declarations/embedding-im-zero-of-conj-fixed.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [complexEmbeddingAt_conj_eq_of_fixed](declarations/complexembeddingat-conj-eq-of-fixed.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [imagAt_mul_of_conj_fixed](declarations/imagat-mul-of-conj-fixed.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [FixedRescalingSignCondition](declarations/fixedrescalingsigncondition.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [fixedRescalingSignCondition_of_realizesRequiredSign](declarations/fixedrescalingsigncondition-of-realizesrequiredsign.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [signControlledXiOfFixedRescaling](declarations/signcontrolledxioffixedrescaling.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [signControlledXiOfFixedRescaling_xi_ne_zero](declarations/signcontrolledxioffixedrescaling-xi-ne-zero.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [SignControlledXi.embedding_re_zero](declarations/signcontrolledxi-embedding-re-zero.md) | 340 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [weilFactor](declarations/weilfactor.md) | 347 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [SignControlledXi.embedding_mul_weilFactor](declarations/signcontrolledxi-embedding-mul-weilfactor.md) | 354 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [fieldCoordinates](declarations/fieldcoordinates.md) | 369 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [fieldCoordinates_conjLabel](declarations/fieldcoordinates-conjlabel.md) | 374 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [SignControlledXi.complexifiedTracePairing](declarations/signcontrolledxi-complexifiedtracepairing.md) | 387 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [SignControlledXi.complexifiedTracePairing_fieldCoordinates](declarations/signcontrolledxi-complexifiedtracepairing-fieldcoordinates.md) | 399 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [fieldCoordinates_realConj](declarations/fieldcoordinates-realconj.md) | 421 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [SignControlledXi.coordinateWeilForm](declarations/signcontrolledxi-coordinateweilform.md) | 433 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [SignControlledXi.energy](declarations/signcontrolledxi-energy.md) | 442 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [SignControlledXi.coordinateWeilForm_eq_energy](declarations/signcontrolledxi-coordinateweilform-eq-energy.md) | 450 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [SignControlledXi.complexifiedTracePairing_weil_realConj](declarations/signcontrolledxi-complexifiedtracepairing-weil-realconj.md) | 465 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [SignControlledXi.complexifiedTracePairing_weil_realConj_eq_energy](declarations/signcontrolledxi-complexifiedtracepairing-weil-realconj-eq-energy.md) | 486 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [SignControlledXi.energy_nonneg](declarations/signcontrolledxi-energy-nonneg.md) | 498 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [SignControlledXi.energy_pos](declarations/signcontrolledxi-energy-pos.md) | 508 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [SignControlledXi.energy_eq_zero_iff](declarations/signcontrolledxi-energy-eq-zero-iff.md) | 523 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=080c92e1f67abb959ed776455f9c37ff822329dcaf57a763e2d2057d81f26bf0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/AlgebraicGeometry/Hodge/CMArchimedeanPositivity.lean","GRWTSK/Geometry/AlgebraicGeometry/Hodge/CMArchimedeanPositivity.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
