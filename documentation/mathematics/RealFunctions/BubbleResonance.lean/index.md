# Bubble Resonance

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**62 observed declarations and anonymous commands**, 35 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/SpecialFunctions/BubbleResonance/Variantc7a565b11bc3789d57e13c4508e39c8996cdd80365a168dfda0723c72748583b.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ef3e7cdea563791a9637e7b42fd406292a2a2501`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/RealFunctions/BubbleResonance.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [Parameters](declarations/parameters.md) | 23 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `abbrev` | [State](declarations/state.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [radius](declarations/radius.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [tension](declarations/tension.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [gasCoefficient](declarations/gascoefficient.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [capillaryCoefficient](declarations/capillarycoefficient.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [shapeCoefficient](declarations/shapecoefficient.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [breathingSquared](declarations/breathingsquared.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [shapeSquared](declarations/shapesquared.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [volumeTension](declarations/volumetension.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [breathingShapeCarrier](declarations/breathingshapecarrier.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [gasCoefficient_pos](declarations/gascoefficient-pos.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [capillaryCoefficient_pos](declarations/capillarycoefficient-pos.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [radius_pos](declarations/radius-pos.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [tension_nonneg](declarations/tension-nonneg.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [breathingSquared_pos](declarations/breathingsquared-pos.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [breathing_corrected_cubic](declarations/breathing-corrected-cubic.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [shapeCoefficient_two](declarations/shapecoefficient-two.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [shapeSquared_two](declarations/shapesquared-two.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [jointDenominator](declarations/jointdenominator.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [joint_cancellation](declarations/joint-cancellation.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [jointDenominator_pos](declarations/jointdenominator-pos.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [no_state_of_nonpositive_joint_denominator](declarations/no-state-of-nonpositive-joint-denominator.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [jointRadiusDecoder](declarations/jointradiusdecoder.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [joint_radius_decoder](declarations/joint-radius-decoder.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [jointTensionDecoder](declarations/jointtensiondecoder.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [joint_tension_decoder](declarations/joint-tension-decoder.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [breathingShape_injective](declarations/breathingshape-injective.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [volumeTension_descends_joint](declarations/volumetension-descends-joint.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [volumeTension_injective](declarations/volumetension-injective.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [unitState](declarations/unitstate.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [breathingDoubleState](declarations/breathingdoublestate.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [breathing_double_tension_gt_one](declarations/breathing-double-tension-gt-one.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [breathing_witness_equal](declarations/breathing-witness-equal.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [shapeDoubleState](declarations/shapedoublestate.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [shape_witness_equal](declarations/shape-witness-equal.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [breathingRadiusObstruction](declarations/breathingradiusobstruction.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [breathingTensionObstruction](declarations/breathingtensionobstruction.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [shapeRadiusObstruction](declarations/shaperadiusobstruction.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [shapeTensionObstruction](declarations/shapetensionobstruction.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [breathingVolumeTensionObstruction](declarations/breathingvolumetensionobstruction.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [shapeVolumeTensionObstruction](declarations/shapevolumetensionobstruction.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [breathing_fixed_tension_strictAnti](declarations/breathing-fixed-tension-strictanti.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [breathing_fixed_tension_injective](declarations/breathing-fixed-tension-injective.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [breathing_cubic_iff](declarations/breathing-cubic-iff.md) | 326 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [breathing_cubic_positive_root_unique](declarations/breathing-cubic-positive-root-unique.md) | 341 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [zeroTensionState](declarations/zerotensionstate.md) | 355 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [minnaertSquared](declarations/minnaertsquared.md) | 358 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [minnaert_squared_formula](declarations/minnaert-squared-formula.md) | 362 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [minnaertRadiusDecoder](declarations/minnaertradiusdecoder.md) | 368 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [minnaert_radius_decoder](declarations/minnaert-radius-decoder.md) | 372 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [minnaert_volume_formula](declarations/minnaert-volume-formula.md) | 385 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `def` | [minnaertAngularFrequency](declarations/minnaertangularfrequency.md) | 392 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [minnaert_angular_frequency_formula](declarations/minnaert-angular-frequency-formula.md) | 396 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [minnaert_inverse_frequency](declarations/minnaert-inverse-frequency.md) | 405 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [minnaert_volume_frequency_formula](declarations/minnaert-volume-frequency-formula.md) | 415 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [shapeCoefficient_pos](declarations/shapecoefficient-pos.md) | 423 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [shapeSquared_pos](declarations/shapesquared-pos.md) | 432 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [shapeSquared_from_degree_two](declarations/shapesquared-from-degree-two.md) | 439 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [higher_shape_ratio](declarations/higher-shape-ratio.md) | 447 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [shape_volume_formula](declarations/shape-volume-formula.md) | 456 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [shape_two_volume_formula](declarations/shape-two-volume-formula.md) | 469 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=30a91c339f768600295c850bcf8d0c7f69406b8daa2af76c6f2e8e4b3fa7afed -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/SpecialFunctions/BubbleResonance/Variantc7a565b11bc3789d57e13c4508e39c8996cdd80365a168dfda0723c72748583b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
