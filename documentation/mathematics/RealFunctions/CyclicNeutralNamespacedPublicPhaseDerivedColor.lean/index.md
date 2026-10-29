# Cyclic Neutral Namespaced Public Phase Derived Color

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**91 observed declarations and anonymous commands**, 68 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/CyclicNeutral/Variant6a2034bcdf07e8661b7f50291137486677e717dcfc489fae81e76ff5dee8890d.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f7302e2749d332e37a50a5f6d574e54083f98b1f`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/RealFunctions/CyclicNeutralNamespacedPublicPhaseDerivedColor.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [NormalizedPhase](declarations/normalizedphase.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [instCoeNormalizedPhaseReal](declarations/instcoenormalizedphasereal.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [zero](declarations/zero.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [quarter](declarations/quarter.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [half](declarations/half.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [threeQuarters](declarations/threequarters.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [normalize](declarations/normalize.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [value_zero](declarations/value-zero.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [value_quarter](declarations/value-quarter.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [value_half](declarations/value-half.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [value_threeQuarters](declarations/value-threequarters.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [value_normalize](declarations/value-normalize.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [normalize_add_one](declarations/normalize-add-one.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [normalize_zero](declarations/normalize-zero.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [normalize_one](declarations/normalize-one.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [phaseAngle](declarations/phaseangle.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [lightness](declarations/lightness.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [opacityBase](declarations/opacitybase.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [greenShift](declarations/greenshift.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [opacity](declarations/opacity.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `structure` | [Sample](declarations/sample-source-edition-2.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [sample](declarations/sample.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [lightnessAt](declarations/lightnessat.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [opacityAt](declarations/opacityat.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [greenShiftAt](declarations/greenshiftat.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [sampleAt](declarations/sampleat.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `structure` | [ColorSample](declarations/colorsample-source-edition-2.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [colorSample](declarations/colorsample.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [colorSampleAt](declarations/colorsampleat.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [sample_lightness](declarations/sample-lightness.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [sample_opacity](declarations/sample-opacity.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [colorSample_lightness](declarations/colorsample-lightness.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [colorSample_opacity](declarations/colorsample-opacity.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [colorSample_greenShift](declarations/colorsample-greenshift.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [phaseAngle_zero](declarations/phaseangle-zero.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [phaseAngle_quarter](declarations/phaseangle-quarter.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [phaseAngle_half](declarations/phaseangle-half.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [phaseAngle_three_quarters](declarations/phaseangle-three-quarters.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [phaseAngle_one](declarations/phaseangle-one.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [phaseAngle_add_one](declarations/phaseangle-add-one.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [phaseAngle_add_half](declarations/phaseangle-add-half.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [lightness_add_one](declarations/lightness-add-one.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [opacityBase_add_one](declarations/opacitybase-add-one.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [greenShift_add_one](declarations/greenshift-add-one.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [opacity_add_one](declarations/opacity-add-one.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [sample_add_one](declarations/sample-add-one.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [colorSample_add_one](declarations/colorsample-add-one.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [lightness_zero](declarations/lightness-zero.md) | 301 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [lightness_quarter](declarations/lightness-quarter.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [lightness_half](declarations/lightness-half.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [lightness_three_quarters](declarations/lightness-three-quarters.md) | 318 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [lightness_one](declarations/lightness-one.md) | 324 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [opacity_zero](declarations/opacity-zero.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [opacity_quarter](declarations/opacity-quarter.md) | 334 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [opacity_half](declarations/opacity-half.md) | 340 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [opacity_three_quarters](declarations/opacity-three-quarters.md) | 345 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [opacity_one](declarations/opacity-one.md) | 351 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [greenShift_mem_Icc](declarations/greenshift-mem-icc.md) | 356 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [opacity_mem_Icc](declarations/opacity-mem-icc.md) | 366 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [greenShift_zero](declarations/greenshift-zero.md) | 381 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [greenShift_quarter](declarations/greenshift-quarter.md) | 385 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [greenShift_half](declarations/greenshift-half.md) | 390 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [greenShift_three_quarters](declarations/greenshift-three-quarters.md) | 395 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [greenShift_one](declarations/greenshift-one.md) | 401 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [greenShift_add_half](declarations/greenshift-add-half.md) | 407 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [lightness_add_half](declarations/lightness-add-half.md) | 415 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [lightness_periodic](declarations/lightness-periodic.md) | 422 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [opacity_periodic](declarations/opacity-periodic.md) | 428 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [greenShift_periodic](declarations/greenshift-periodic.md) | 435 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [sample_periodic](declarations/sample-periodic.md) | 442 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [colorSample_periodic](declarations/colorsample-periodic.md) | 450 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [sample_zero](declarations/sample-zero.md) | 459 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [sample_quarter](declarations/sample-quarter.md) | 466 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [sample_half](declarations/sample-half.md) | 473 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [sample_three_quarters](declarations/sample-three-quarters.md) | 480 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [sample_one](declarations/sample-one.md) | 487 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [colorSample_zero](declarations/colorsample-zero.md) | 494 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [colorSample_quarter](declarations/colorsample-quarter.md) | 502 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [colorSample_half](declarations/colorsample-half.md) | 511 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [colorSample_three_quarters](declarations/colorsample-three-quarters.md) | 519 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [colorSampleAt_zero](declarations/colorsampleat-zero.md) | 528 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [colorSampleAt_quarter](declarations/colorsampleat-quarter.md) | 533 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [colorSampleAt_half](declarations/colorsampleat-half.md) | 539 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [colorSampleAt_three_quarters](declarations/colorsampleat-three-quarters.md) | 544 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [normalized_neutral_half_distinct](declarations/normalized-neutral-half-distinct.md) | 555 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [sample_wrap](declarations/sample-wrap.md) | 565 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [neutral_antipodes_distinct](declarations/neutral-antipodes-distinct.md) | 574 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `structure` | [PhaseDerivedColor](declarations/phasederivedcolor.md) | 588 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [phaseDerivedColor_retains_authoritative_phase](declarations/phasederivedcolor-retains-authoritative-phase.md) | 594 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `def` | [ProvesColorimetricTorsion](declarations/provescolorimetrictorsion.md) | 605 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [cyclicNeutral_has_no_colorimetric_torsion_authority](declarations/cyclicneutral-has-no-colorimetric-torsion-authority.md) | 608 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5ad93a5264c2aace0e08767e76895b6d0a2733795b737d799aebacd4f9c4c543 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/CyclicNeutral/Variant6a2034bcdf07e8661b7f50291137486677e717dcfc489fae81e76ff5dee8890d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
