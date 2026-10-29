# Continuous Functional Calculus Basic Public

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**29 observed declarations and anonymous commands**, 18 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Topology/GeneralTopology/Basic/Variant4c1a63f553ecdae789eedb62a7d4a629b6530fd398c04c5cd18e40972562147f.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a3536311b45a48c088fd7823ccada2dca075665e`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/FunctionalAnalysis/ContinuousFunctionalCalculusBasicPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [characterSpaceToSpectrum](declarations/characterspacetospectrum.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [continuous_characterSpaceToSpectrum](declarations/continuous-characterspacetospectrum.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [bijective_characterSpaceToSpectrum](declarations/bijective-characterspacetospectrum.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [characterSpaceHomeo](declarations/characterspacehomeo.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [continuousFunctionalCalculus](declarations/continuousfunctionalcalculus.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [continuousFunctionalCalculus_map_id](declarations/continuousfunctionalcalculus-map-id.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [IsStarNormal.instContinuousFunctionalCalculus](declarations/isstarnormal-instcontinuousfunctionalcalculus.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [cfcHom_eq_of_isStarNormal](declarations/cfchom-eq-of-isstarnormal.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `instance` | [IsStarNormal.instIsometricContinuousFunctionalCalculus](declarations/isstarnormal-instisometriccontinuousfunctionalcalculus.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `instance` | [IsSelfAdjoint.instIsometricContinuousFunctionalCalculus](declarations/isselfadjoint-instisometriccontinuousfunctionalcalculus.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [IsStarNormal.instNonUnitalContinuousFunctionalCalculus](declarations/isstarnormal-instnonunitalcontinuousfunctionalcalculus.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [inr_comp_cfcₙHom_eq_cfcₙAux](declarations/inr-comp-cfc-hom-eq-cfc-aux.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `instance` | [IsStarNormal.instNonUnitalIsometricContinuousFunctionalCalculus](declarations/isstarnormal-instnonunitalisometriccontinuousfunctionalcalculus.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `instance` | [IsSelfAdjoint.instNonUnitalIsometricContinuousFunctionalCalculus](declarations/isselfadjoint-instnonunitalisometriccontinuousfunctionalcalculus.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [SpectrumRestricts.nnreal_iff_nnnorm](declarations/spectrumrestricts-nnreal-iff-nnnorm.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [SpectrumRestricts.nnreal_add](declarations/spectrumrestricts-nnreal-add.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [IsSelfAdjoint.sq_spectrumRestricts](declarations/isselfadjoint-sq-spectrumrestricts.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [SpectrumRestricts.eq_zero_of_neg](declarations/spectrumrestricts-eq-zero-of-neg.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [SpectrumRestricts.smul_of_nonneg](declarations/spectrumrestricts-smul-of-nonneg.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [spectrum_star_mul_self_nonneg](declarations/spectrum-star-mul-self-nonneg.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [IsSelfAdjoint.coe_mem_spectrum_complex](declarations/isselfadjoint-coe-mem-spectrum-complex.md) | 326 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `instance` | [CStarAlgebra.instNonnegSpectrumClass](declarations/cstaralgebra-instnonnegspectrumclass-source-edition-2.md) | 338 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `instance` | [CStarAlgebra.instNonnegSpectrumClassComplexUnital](declarations/cstaralgebra-instnonnegspectrumclasscomplexunital.md) | 354 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [CStarAlgebra.spectralOrder](declarations/cstaralgebra-spectralorder.md) | 376 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [CStarAlgebra.spectralOrderedRing](declarations/cstaralgebra-spectralorderedring.md) | 397 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `instance` | [CStarAlgebra.instNonnegSpectrumClass'](declarations/cstaralgebra-instnonnegspectrumclass.md) | 432 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [Unitization.cfcₙ_eq_cfc_inr](declarations/unitization-cfc-eq-cfc-inr.md) | 457 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [Unitization.complex_cfcₙ_eq_cfc_inr](declarations/unitization-complex-cfc-eq-cfc-inr.md) | 475 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [Unitization.real_cfcₙ_eq_cfc_inr](declarations/unitization-real-cfc-eq-cfc-inr.md) | 481 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=166f2b0e8fa3a756bf06d96b5b1e44b19e62e33cbb9b4fb0384222445c785834 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Basic/Variant4c1a63f553ecdae789eedb62a7d4a629b6530fd398c04c5cd18e40972562147f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
