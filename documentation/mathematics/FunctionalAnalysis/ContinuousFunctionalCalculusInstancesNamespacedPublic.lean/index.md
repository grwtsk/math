# Continuous Functional Calculus Instances Namespaced Public

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**37 observed declarations and anonymous commands**, 32 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Topology/GeneralTopology/Instances/Variant1761b36f957a2bfc1ce19af4900bc69d172434ee56321d3fd27a8b4dc5821006.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d8b6760c5b4da5b94d89e2494baebe95d7984d1b`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/FunctionalAnalysis/ContinuousFunctionalCalculusInstancesNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [cfcₙAux](declarations/cfc-aux.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `lemma` | [cfcₙAux_id](declarations/cfc-aux-id.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [continuous_cfcₙAux](declarations/continuous-cfc-aux.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [cfcₙAux_injective](declarations/cfc-aux-injective.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [spec_cfcₙAux](declarations/spec-cfc-aux.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [isClosedEmbedding_cfcₙAux](declarations/isclosedembedding-cfc-aux.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [cfcₙAux_mem_range_inr](declarations/cfc-aux-mem-range-inr.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [RCLike.nonUnitalContinuousFunctionalCalculus](declarations/rclike-nonunitalcontinuousfunctionalcalculus.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [inrNonUnitalStarAlgHom_comp_cfcₙHom_eq_cfcₙAux](declarations/inrnonunitalstaralghom-comp-cfc-hom-eq-cfc-aux.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [RCLike.nonUnitalContinuousFunctionalCalculusIsClosedEmbedding](declarations/rclike-nonunitalcontinuousfunctionalcalculusisclosedembedding.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [isSelfAdjoint_iff_isStarNormal_and_quasispectrumRestricts](declarations/isselfadjoint-iff-isstarnormal-and-quasispectrumrestricts.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [IsSelfAdjoint.quasispectrumRestricts](declarations/isselfadjoint-quasispectrumrestricts.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [QuasispectrumRestricts.isSelfAdjoint](declarations/quasispectrumrestricts-isselfadjoint.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `instance` | [IsSelfAdjoint.instNonUnitalContinuousFunctionalCalculus](declarations/isselfadjoint-instnonunitalcontinuousfunctionalcalculus.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [IsSelfAdjoint.spectrumRestricts](declarations/isselfadjoint-spectrumrestricts.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `instance` | [IsSelfAdjoint.instContinuousFunctionalCalculus](declarations/isselfadjoint-instcontinuousfunctionalcalculus.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [IsSelfAdjoint.spectrum_nonempty](declarations/isselfadjoint-spectrum-nonempty.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [CFC.exists_sqrt_of_isSelfAdjoint_of_quasispectrumRestricts](declarations/cfc-exists-sqrt-of-isselfadjoint-of-quasispectrumrestricts.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [nonneg_iff_isSelfAdjoint_and_quasispectrumRestricts](declarations/nonneg-iff-isselfadjoint-and-quasispectrumrestricts.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `instance` | [Nonneg.instNonUnitalContinuousFunctionalCalculus](declarations/nonneg-instnonunitalcontinuousfunctionalcalculus.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [Commute.mul_nonneg](declarations/commute-mul-nonneg.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [commute_iff_mul_nonneg](declarations/commute-iff-mul-nonneg.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [NNReal.spectrum_nonempty](declarations/nnreal-spectrum-nonempty.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `instance` | [Nonneg.instContinuousFunctionalCalculus](declarations/nonneg-instcontinuousfunctionalcalculus.md) | 333 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [IsStrictlyPositive.commute_iff](declarations/isstrictlypositive-commute-iff.md) | 339 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [cfcHom_real_eq_restrict](declarations/cfchom-real-eq-restrict.md) | 354 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [cfc_real_eq_complex](declarations/cfc-real-eq-complex.md) | 360 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [cfc_complex_eq_real](declarations/cfc-complex-eq-real.md) | 365 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [cfcₙHom_real_eq_restrict](declarations/cfc-hom-real-eq-restrict.md) | 382 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [cfcₙ_real_eq_complex](declarations/cfc-real-eq-complex-source-edition-2.md) | 387 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [cfcₙ_complex_eq_real](declarations/cfc-complex-eq-real-source-edition-2.md) | 392 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `lemma` | [cfcHom_nnreal_eq_restrict](declarations/cfchom-nnreal-eq-restrict.md) | 412 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `lemma` | [cfc_nnreal_eq_real](declarations/cfc-nnreal-eq-real-source-edition-2.md) | 417 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `lemma` | [cfc_real_eq_nnreal](declarations/cfc-real-eq-nnreal.md) | 422 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `lemma` | [cfcₙHom_nnreal_eq_restrict](declarations/cfc-hom-nnreal-eq-restrict.md) | 439 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `lemma` | [cfcₙ_nnreal_eq_real](declarations/cfc-nnreal-eq-real.md) | 444 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `lemma` | [cfcₙ_real_eq_nnreal](declarations/cfc-real-eq-nnreal-source-edition-2.md) | 449 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=565414b0d09a98691a3c532a3cbdd60d49e355c0c1b2e4ccb474d2b98883a0ba -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Instances/Variant1761b36f957a2bfc1ce19af4900bc69d172434ee56321d3fd27a8b4dc5821006.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
