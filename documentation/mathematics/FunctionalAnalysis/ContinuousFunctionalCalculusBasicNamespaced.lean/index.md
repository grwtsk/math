# Continuous Functional Calculus Basic Namespaced

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**31 observed declarations and anonymous commands**, 16 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Topology/GeneralTopology/Basic/Variante7b17d117cb5d58c0826df7d1b690767e3a8b86c0fa828a832dc4c4a7d794ab1.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9a232de5f4356748e118239022ae71b016052f5c`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/FunctionalAnalysis/ContinuousFunctionalCalculusBasicNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [(anonymous)](declarations/instance.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [characterSpaceToSpectrum](declarations/characterspacetospectrum.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [continuous_characterSpaceToSpectrum](declarations/continuous-characterspacetospectrum.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [bijective_characterSpaceToSpectrum](declarations/bijective-characterspacetospectrum.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [characterSpaceHomeo](declarations/characterspacehomeo.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [continuousFunctionalCalculus](declarations/continuousfunctionalcalculus.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [continuousFunctionalCalculus_map_id](declarations/continuousfunctionalcalculus-map-id.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `instance` | [IsStarNormal.instContinuousFunctionalCalculus](declarations/isstarnormal-instcontinuousfunctionalcalculus.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [cfcHom_eq_of_isStarNormal](declarations/cfchom-eq-of-isstarnormal.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `instance` | [IsStarNormal.instNonUnitalContinuousFunctionalCalculus](declarations/isstarnormal-instnonunitalcontinuousfunctionalcalculus.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [inr_comp_cfcₙHom_eq_cfcₙAux](declarations/inr-comp-cfc-hom-eq-cfc-aux.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [SpectrumRestricts.nnreal_iff_nnnorm](declarations/spectrumrestricts-nnreal-iff-nnnorm.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [SpectrumRestricts.nnreal_add](declarations/spectrumrestricts-nnreal-add.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [IsSelfAdjoint.sq_spectrumRestricts](declarations/isselfadjoint-sq-spectrumrestricts.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [SpectrumRestricts.eq_zero_of_neg](declarations/spectrumrestricts-eq-zero-of-neg.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [SpectrumRestricts.smul_of_nonneg](declarations/spectrumrestricts-smul-of-nonneg.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [spectrum_star_mul_self_nonneg](declarations/spectrum-star-mul-self-nonneg.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [IsSelfAdjoint.coe_mem_spectrum_complex](declarations/isselfadjoint-coe-mem-spectrum-complex.md) | 314 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `instance` | [CStarAlgebra.instNonnegSpectrumClass](declarations/cstaralgebra-instnonnegspectrumclass-source-edition-2.md) | 326 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `instance` | [CStarAlgebra.instNonnegSpectrumClassComplexUnital](declarations/cstaralgebra-instnonnegspectrumclasscomplexunital.md) | 342 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [CStarAlgebra.spectralOrder](declarations/cstaralgebra-spectralorder.md) | 362 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [CStarAlgebra.spectralOrderedRing](declarations/cstaralgebra-spectralorderedring.md) | 382 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `instance` | [CStarAlgebra.instNonnegSpectrumClass'](declarations/cstaralgebra-instnonnegspectrumclass.md) | 418 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [Unitization.cfcₙ_eq_cfc_inr](declarations/unitization-cfc-eq-cfc-inr.md) | 443 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [Unitization.complex_cfcₙ_eq_cfc_inr](declarations/unitization-complex-cfc-eq-cfc-inr.md) | 461 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [Unitization.real_cfcₙ_eq_cfc_inr](declarations/unitization-real-cfc-eq-cfc-inr.md) | 467 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `instance` | [IsStarNormal.instIsometricContinuousFunctionalCalculus](declarations/isstarnormal-instisometriccontinuousfunctionalcalculus.md) | 479 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `instance` | [IsSelfAdjoint.instIsometricContinuousFunctionalCalculus](declarations/isselfadjoint-instisometriccontinuousfunctionalcalculus.md) | 485 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `instance` | [IsStarNormal.instNonUnitalIsometricContinuousFunctionalCalculus](declarations/isstarnormal-instnonunitalisometriccontinuousfunctionalcalculus.md) | 499 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `instance` | [IsSelfAdjoint.instNonUnitalIsometricContinuousFunctionalCalculus](declarations/isselfadjoint-instnonunitalisometriccontinuousfunctionalcalculus.md) | 510 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2aa22a0adb02eaa9058012f5c5e2213c73f3c8413ed831c7cc21c9ab55862c8d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Basic/Variante7b17d117cb5d58c0826df7d1b690767e3a8b86c0fa828a832dc4c4a7d794ab1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
