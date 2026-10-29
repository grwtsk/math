# Affine Fiber Tensor Network Unified Architecture Finite Fiber Is Full Prismatic Object

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**78 observed declarations and anonymous commands**, 23 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AffineFiberTensorNetwork/Variant0503d54334319c0cb4e4388df5599eac530ad53e2ec366b1bd93cea7d23b128f.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2ee02923b13bfa971e68f3d804fd1b3f69b63c45`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/ComputerScience/AlgorithmsInComputerScience/AffineFiberTensorNetworkUnifiedArchitectureFiniteFiberIsFullPrismaticObject.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [ColorChannel](declarations/colorchannel.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `abbrev` | [RGB](declarations/rgb.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `abbrev` | [Point3](declarations/point3.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `abbrev` | [Direction](declarations/direction.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [rgbZero](declarations/rgbzero.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [rgbAdd](declarations/rgbadd.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [rgbScale](declarations/rgbscale.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [sumRGB](declarations/sumrgb.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [sumScalar](declarations/sumscalar.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [rgbZero_apply](declarations/rgbzero-apply.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [rgbAdd_apply](declarations/rgbadd-apply.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [rgbScale_apply](declarations/rgbscale-apply.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [sumRGB_nil](declarations/sumrgb-nil.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [sumRGB_cons](declarations/sumrgb-cons.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [sumScalar_nil](declarations/sumscalar-nil.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [sumScalar_cons](declarations/sumscalar-cons.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `structure` | [SHMode](declarations/shmode.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `abbrev` | [SHBasis](declarations/shbasis.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `structure` | [HarmonicTerm](declarations/harmonicterm.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `structure` | [FiniteAngularFiber](declarations/finiteangularfiber.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [FiniteAngularFiber.eval](declarations/finiteangularfiber-eval.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `structure` | [RadianceSection](declarations/radiancesection.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `structure` | [LocalAffineChart](declarations/localaffinechart.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `structure` | [GaussianSplat](declarations/gaussiansplat.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [GaussianSplat.color](declarations/gaussiansplat-color.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `structure` | [GaussianScene](declarations/gaussianscene.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [GaussianScene.density](declarations/gaussianscene-density.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [GaussianScene.radianceDensity](declarations/gaussianscene-radiancedensity.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `structure` | [GaussianSceneSectionAdapter](declarations/gaussianscenesectionadapter.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [GaussianScene.toSection](declarations/gaussianscene-tosection.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `structure` | [Ray](declarations/ray.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `structure` | [RayKernel](declarations/raykernel.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [atomRayContribution](declarations/atomraycontribution.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [renderRay](declarations/renderray.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `abbrev` | [ObservationOperator](declarations/observationoperator.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [observation_eq_of_same_section](declarations/observation-eq-of-same-section.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `inductive` | [RenderingParadigm](declarations/renderingparadigm.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `structure` | [ParadigmRealization](declarations/paradigmrealization.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [SameUnderlyingSection](declarations/sameunderlyingsection.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [render_invariant_under_paradigm_erasure](declarations/render-invariant-under-paradigm-erasure.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `structure` | [PixelTensorNetwork](declarations/pixeltensornetwork.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [PixelTensorNetwork.renderPixel](declarations/pixeltensornetwork-renderpixel.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [PixelTensorNetwork.render](declarations/pixeltensornetwork-render.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [PixelTensorNetwork.render_apply](declarations/pixeltensornetwork-render-apply.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `structure` | [SoftPartition](declarations/softpartition.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `structure` | [LocalGlobalAdapter](declarations/localglobaladapter.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `structure` | [GaussianSHDensityCertificate](declarations/gaussianshdensitycertificate.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `structure` | [OmegaBits](declarations/omegabits.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `structure` | [ModeEnumeration](declarations/modeenumeration.md) | 334 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `structure` | [OmegaBoundary](declarations/omegaboundary.md) | 339 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [omegaCoeff](declarations/omegacoeff.md) | 344 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [omegaCoeff_numerator](declarations/omegacoeff-numerator.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [omegaCoeff_exponent](declarations/omegacoeff-exponent.md) | 352 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `structure` | [DyadicHarmonicTerm](declarations/dyadicharmonicterm.md) | 356 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `def` | [omegaTerm](declarations/omegaterm.md) | 361 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `def` | [omegaPrefix](declarations/omegaprefix.md) | 366 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `def` | [lookupCoeff?](declarations/lookupcoeff.md) | 370 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `def` | [bitFromCoeff](declarations/bitfromcoeff.md) | 379 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `def` | [readModeBit?](declarations/readmodebit.md) | 383 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [bitFromCoeff_omegaCoeff](declarations/bitfromcoeff-omegacoeff.md) | 388 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [lookupCoeff?_head_same](declarations/lookupcoeff-head-same.md) | 394 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [readModeBit?_head_omega](declarations/readmodebit-head-omega.md) | 404 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `structure` | [EffectiveDyadicApproximation](declarations/effectivedyadicapproximation.md) | 413 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `def` | [ApproximationRecoversOmega](declarations/approximationrecoversomega.md) | 417 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `structure` | [NoncomputableBoundaryCertificate](declarations/noncomputableboundarycertificate.md) | 429 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [omega_boundary_blocks_effective_trace](declarations/omega-boundary-blocks-effective-trace.md) | 436 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `structure` | [ExactOmegaFiber](declarations/exactomegafiber.md) | 446 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `def` | [addOmegaBoundary](declarations/addomegaboundary.md) | 453 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [addOmegaBoundary_density](declarations/addomegaboundary-density.md) | 463 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [addOmegaBoundary_color](declarations/addomegaboundary-color.md) | 471 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `structure` | [UnifiedArchitecture](declarations/unifiedarchitecture.md) | 482 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `def` | [UnifiedArchitectureFiniteFiberIsFullPrismaticObject](declarations/unifiedarchitecturefinitefiberisfullprismaticobject.md) | 494 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [unifiedArchitecture_finiteFiber_not_full_prismatic_object](declarations/unifiedarchitecture-finitefiber-not-full-prismatic-object.md) | 498 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [unifiedArchitecture_prismatic_slot](declarations/unifiedarchitecture-prismatic-slot.md) | 504 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [unified_architecture_factors_through_sections](declarations/unified-architecture-factors-through-sections.md) | 513 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `def` | [crispGate](declarations/crispgate.md) | 527 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [crispGate_false](declarations/crispgate-false.md) | 530 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [crispGate_true](declarations/crispgate-true.md) | 533 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=723b8ad5a411e1effa870592aaf3590d6e80a0af99c7a33da2ed344df30a0989 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AffineFiberTensorNetwork/Variant0503d54334319c0cb4e4388df5599eac530ad53e2ec366b1bd93cea7d23b128f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
