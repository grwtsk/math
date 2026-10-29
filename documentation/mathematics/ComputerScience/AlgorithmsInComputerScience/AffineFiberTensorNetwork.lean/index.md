# Affine Fiber Tensor Network

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**75 observed declarations and anonymous commands**, 21 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AffineFiberTensorNetwork/Variant38a4b537d7a95bb877e132477179ea9501e575b4b5fdfc8f18e6b7115b60c945.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cf5ece59d7c2be8912845646393290157af46a08`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/ComputerScience/AlgorithmsInComputerScience/AffineFiberTensorNetwork.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [ColorChannel](declarations/colorchannel.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `abbrev` | [RGB](declarations/rgb.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `abbrev` | [Point3](declarations/point3.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `abbrev` | [Direction](declarations/direction.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [rgbZero](declarations/rgbzero.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [rgbAdd](declarations/rgbadd.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [rgbScale](declarations/rgbscale.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [sumRGB](declarations/sumrgb.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [sumScalar](declarations/sumscalar.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [rgbZero_apply](declarations/rgbzero-apply.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [rgbAdd_apply](declarations/rgbadd-apply.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [rgbScale_apply](declarations/rgbscale-apply.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [sumRGB_nil](declarations/sumrgb-nil.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [sumRGB_cons](declarations/sumrgb-cons.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [sumScalar_nil](declarations/sumscalar-nil.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [sumScalar_cons](declarations/sumscalar-cons.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `structure` | [SHMode](declarations/shmode.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `abbrev` | [SHBasis](declarations/shbasis.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `structure` | [HarmonicTerm](declarations/harmonicterm.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `structure` | [FiniteAngularFiber](declarations/finiteangularfiber.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [FiniteAngularFiber.eval](declarations/finiteangularfiber-eval.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `structure` | [RadianceSection](declarations/radiancesection.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `structure` | [LocalAffineChart](declarations/localaffinechart.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `structure` | [GaussianSplat](declarations/gaussiansplat.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [GaussianSplat.color](declarations/gaussiansplat-color.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `structure` | [GaussianScene](declarations/gaussianscene.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [GaussianScene.density](declarations/gaussianscene-density.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [GaussianScene.radianceDensity](declarations/gaussianscene-radiancedensity.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `structure` | [GaussianSceneSectionAdapter](declarations/gaussianscenesectionadapter.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [GaussianScene.toSection](declarations/gaussianscene-tosection.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `structure` | [Ray](declarations/ray.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `structure` | [RayKernel](declarations/raykernel.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [atomRayContribution](declarations/atomraycontribution.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [renderRay](declarations/renderray.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `abbrev` | [ObservationOperator](declarations/observationoperator.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [observation_eq_of_same_section](declarations/observation-eq-of-same-section.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `inductive` | [RenderingParadigm](declarations/renderingparadigm.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `structure` | [ParadigmRealization](declarations/paradigmrealization.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [SameUnderlyingSection](declarations/sameunderlyingsection.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [render_invariant_under_paradigm_erasure](declarations/render-invariant-under-paradigm-erasure.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `structure` | [PixelTensorNetwork](declarations/pixeltensornetwork.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [PixelTensorNetwork.renderPixel](declarations/pixeltensornetwork-renderpixel.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [PixelTensorNetwork.render](declarations/pixeltensornetwork-render.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [PixelTensorNetwork.render_apply](declarations/pixeltensornetwork-render-apply.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `structure` | [SoftPartition](declarations/softpartition.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `structure` | [LocalGlobalAdapter](declarations/localglobaladapter.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `structure` | [GaussianSHDensityCertificate](declarations/gaussianshdensitycertificate.md) | 318 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `structure` | [OmegaBits](declarations/omegabits.md) | 328 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `structure` | [ModeEnumeration](declarations/modeenumeration.md) | 332 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `structure` | [OmegaBoundary](declarations/omegaboundary.md) | 337 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [omegaCoeff](declarations/omegacoeff.md) | 342 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [omegaCoeff_numerator](declarations/omegacoeff-numerator.md) | 346 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [omegaCoeff_exponent](declarations/omegacoeff-exponent.md) | 350 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `structure` | [DyadicHarmonicTerm](declarations/dyadicharmonicterm.md) | 354 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `def` | [omegaTerm](declarations/omegaterm.md) | 359 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `def` | [omegaPrefix](declarations/omegaprefix.md) | 364 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `def` | [lookupCoeff?](declarations/lookupcoeff.md) | 368 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `def` | [bitFromCoeff](declarations/bitfromcoeff.md) | 377 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `def` | [readModeBit?](declarations/readmodebit.md) | 381 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [bitFromCoeff_omegaCoeff](declarations/bitfromcoeff-omegacoeff.md) | 386 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [lookupCoeff?_head_same](declarations/lookupcoeff-head-same.md) | 392 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [readModeBit?_head_omega](declarations/readmodebit-head-omega.md) | 402 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `structure` | [EffectiveDyadicApproximation](declarations/effectivedyadicapproximation.md) | 411 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `def` | [ApproximationRecoversOmega](declarations/approximationrecoversomega.md) | 415 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `structure` | [NoncomputableBoundaryCertificate](declarations/noncomputableboundarycertificate.md) | 427 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [omega_boundary_blocks_effective_trace](declarations/omega-boundary-blocks-effective-trace.md) | 434 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `structure` | [ExactOmegaFiber](declarations/exactomegafiber.md) | 444 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `def` | [addOmegaBoundary](declarations/addomegaboundary.md) | 451 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [addOmegaBoundary_density](declarations/addomegaboundary-density.md) | 461 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [addOmegaBoundary_color](declarations/addomegaboundary-color.md) | 469 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `structure` | [UnifiedArchitecture](declarations/unifiedarchitecture.md) | 480 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [unified_architecture_factors_through_sections](declarations/unified-architecture-factors-through-sections.md) | 491 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `def` | [crispGate](declarations/crispgate.md) | 505 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [crispGate_false](declarations/crispgate-false.md) | 508 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [crispGate_true](declarations/crispgate-true.md) | 511 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7c1eea94cf94b0442b95a0fefc8a0b050394403149bcce49336715e41d2b4e96 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AffineFiberTensorNetwork/Variant38a4b537d7a95bb877e132477179ea9501e575b4b5fdfc8f18e6b7115b60c945.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
