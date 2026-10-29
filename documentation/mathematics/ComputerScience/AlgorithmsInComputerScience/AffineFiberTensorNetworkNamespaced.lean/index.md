# Affine Fiber Tensor Network Namespaced

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**75 observed declarations and anonymous commands**, 21 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AffineFiberTensorNetwork/Variant5dcaeef5e030cea92edf20c2cd37770ac2692b518c117ae1d81bc7e8574e695a.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5aff251b80d52371bce9bd17ff9dde7959b3e3f9`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/ComputerScience/AlgorithmsInComputerScience/AffineFiberTensorNetworkNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [ColorChannel](declarations/colorchannel.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `abbrev` | [RGB](declarations/rgb.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `abbrev` | [Point3](declarations/point3.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `abbrev` | [Direction](declarations/direction.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [rgbZero](declarations/rgbzero.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [rgbAdd](declarations/rgbadd.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [rgbScale](declarations/rgbscale.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [sumRGB](declarations/sumrgb.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [sumScalar](declarations/sumscalar.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [rgbZero_apply](declarations/rgbzero-apply.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [rgbAdd_apply](declarations/rgbadd-apply.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [rgbScale_apply](declarations/rgbscale-apply.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [sumRGB_nil](declarations/sumrgb-nil.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [sumRGB_cons](declarations/sumrgb-cons.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [sumScalar_nil](declarations/sumscalar-nil.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [sumScalar_cons](declarations/sumscalar-cons.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `structure` | [SHMode](declarations/shmode.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `abbrev` | [SHBasis](declarations/shbasis.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `structure` | [HarmonicTerm](declarations/harmonicterm.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `structure` | [FiniteAngularFiber](declarations/finiteangularfiber.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [FiniteAngularFiber.eval](declarations/finiteangularfiber-eval.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `structure` | [RadianceSection](declarations/radiancesection.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `structure` | [LocalAffineChart](declarations/localaffinechart.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `structure` | [GaussianSplat](declarations/gaussiansplat.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [GaussianSplat.color](declarations/gaussiansplat-color.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `structure` | [GaussianScene](declarations/gaussianscene.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [GaussianScene.density](declarations/gaussianscene-density.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [GaussianScene.radianceDensity](declarations/gaussianscene-radiancedensity.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `structure` | [GaussianSceneSectionAdapter](declarations/gaussianscenesectionadapter.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [GaussianScene.toSection](declarations/gaussianscene-tosection.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `structure` | [Ray](declarations/ray.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `structure` | [RayKernel](declarations/raykernel.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [atomRayContribution](declarations/atomraycontribution.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [renderRay](declarations/renderray.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `abbrev` | [ObservationOperator](declarations/observationoperator.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [observation_eq_of_same_section](declarations/observation-eq-of-same-section.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `inductive` | [RenderingParadigm](declarations/renderingparadigm.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `structure` | [ParadigmRealization](declarations/paradigmrealization.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [SameUnderlyingSection](declarations/sameunderlyingsection.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [render_invariant_under_paradigm_erasure](declarations/render-invariant-under-paradigm-erasure.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `structure` | [PixelTensorNetwork](declarations/pixeltensornetwork.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [PixelTensorNetwork.renderPixel](declarations/pixeltensornetwork-renderpixel.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [PixelTensorNetwork.render](declarations/pixeltensornetwork-render.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [PixelTensorNetwork.render_apply](declarations/pixeltensornetwork-render-apply.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `structure` | [SoftPartition](declarations/softpartition.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `structure` | [LocalGlobalAdapter](declarations/localglobaladapter.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `structure` | [GaussianSHDensityCertificate](declarations/gaussianshdensitycertificate.md) | 326 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `structure` | [OmegaBits](declarations/omegabits.md) | 336 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `structure` | [ModeEnumeration](declarations/modeenumeration.md) | 340 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `structure` | [OmegaBoundary](declarations/omegaboundary.md) | 345 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [omegaCoeff](declarations/omegacoeff.md) | 350 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [omegaCoeff_numerator](declarations/omegacoeff-numerator.md) | 354 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [omegaCoeff_exponent](declarations/omegacoeff-exponent.md) | 358 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `structure` | [DyadicHarmonicTerm](declarations/dyadicharmonicterm.md) | 362 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `def` | [omegaTerm](declarations/omegaterm.md) | 367 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `def` | [omegaPrefix](declarations/omegaprefix.md) | 372 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `def` | [lookupCoeff?](declarations/lookupcoeff.md) | 376 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `def` | [bitFromCoeff](declarations/bitfromcoeff.md) | 385 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `def` | [readModeBit?](declarations/readmodebit.md) | 389 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [bitFromCoeff_omegaCoeff](declarations/bitfromcoeff-omegacoeff.md) | 394 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [lookupCoeff?_head_same](declarations/lookupcoeff-head-same.md) | 400 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [readModeBit?_head_omega](declarations/readmodebit-head-omega.md) | 410 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `structure` | [EffectiveDyadicApproximation](declarations/effectivedyadicapproximation.md) | 419 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `def` | [ApproximationRecoversOmega](declarations/approximationrecoversomega.md) | 423 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `structure` | [NoncomputableBoundaryCertificate](declarations/noncomputableboundarycertificate.md) | 435 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [omega_boundary_blocks_effective_trace](declarations/omega-boundary-blocks-effective-trace.md) | 442 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `structure` | [ExactOmegaFiber](declarations/exactomegafiber.md) | 452 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `def` | [addOmegaBoundary](declarations/addomegaboundary.md) | 459 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [addOmegaBoundary_density](declarations/addomegaboundary-density.md) | 469 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [addOmegaBoundary_color](declarations/addomegaboundary-color.md) | 477 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `structure` | [UnifiedArchitecture](declarations/unifiedarchitecture.md) | 488 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [unified_architecture_factors_through_sections](declarations/unified-architecture-factors-through-sections.md) | 499 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `def` | [crispGate](declarations/crispgate.md) | 513 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [crispGate_false](declarations/crispgate-false.md) | 516 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [crispGate_true](declarations/crispgate-true.md) | 519 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e376b5ea3039abc8b3ff835d0c9149b31dad27e8d8f0e32171a7507cf79086bd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AffineFiberTensorNetwork/Variant5dcaeef5e030cea92edf20c2cd37770ac2692b518c117ae1d81bc7e8574e695a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
