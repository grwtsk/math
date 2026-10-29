# Verification target: Volume Measure Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "867660ffb711e410cf4f069b467b5935c7e116ac",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Measure/Variantc31e4ce426f24324ed9df89e5d23b7fb6442c32f096be58927dfbead18955dad.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Geometry/RealAndComplexGeometry/VolumeMeasureNamespacedPublic.lean/index.md) · [Full source](../../../../../Geometry/RealAndComplexGeometry/VolumeMeasureNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `867660ffb711e410cf4f069b467b5935c7e116ac`.

Source path: `GRWTSK/Analysis/MeasureTheory/Measure/Variantc31e4ce426f24324ed9df89e5d23b7fb6442c32f096be58927dfbead18955dad.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Measure/Variantc31e4ce426f24324ed9df89e5d23b7fb6442c32f096be58927dfbead18955dad.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Measure.Haar.InnerProductSpace` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../Geometry/RealAndComplexGeometry/VolumeMeasureNamespacedPublic.lean/declarations/instance.md) | 59 | `declaration-track:8e457d1f252bb383a67bd5a9b8823b03d98ca270496afe7747a737f56787ae9d` |
| 2 | `def` | [MeasureTheory.Measure.euclideanHausdorffMeasure](../../../../../Geometry/RealAndComplexGeometry/VolumeMeasureNamespacedPublic.lean/declarations/measuretheory-measure-euclideanhausdorffmeasure.md) | 73 | `declaration-track:2ba2ede726a7d653deff96a7848fc67003544ed7dc80537d0269df676152161d` |
| 3 | `theorem` | [MeasureTheory.Measure.euclideanHausdorffMeasure_def](../../../../../Geometry/RealAndComplexGeometry/VolumeMeasureNamespacedPublic.lean/declarations/measuretheory-measure-euclideanhausdorffmeasure-def.md) | 79 | `result-track:84294f19118e6ac23343f8c60a9ddd94bdb293159b4a027a9ca752ceb025732c` |
| 4 | `theorem` | [MeasureTheory.Measure.euclideanHausdorffMeasure_zero](../../../../../Geometry/RealAndComplexGeometry/VolumeMeasureNamespacedPublic.lean/declarations/measuretheory-measure-euclideanhausdorffmeasure-zero.md) | 87 | `result-track:ae9dfc10f1b93b5107ecc96611d6a2ce753231546aefe2f36deca0114188d1f9` |
| 5 | `theorem` | [MeasureTheory.Measure.addHaarScalarFactor_volume_hausdorffMeasure_ne_zero](../../../../../Geometry/RealAndComplexGeometry/VolumeMeasureNamespacedPublic.lean/declarations/measuretheory-measure-addhaarscalarfactor-volume-hausdorffmeasure-ne-zer.md) | 101 | `result-track:7d693db5572c131e5ef20c42e22d8dd22cda088a0d832160ca685f522357ae10` |
| 6 | `instance` | [MeasureTheory.isAddHaarMeasure_euclideanHausdorffMeasure](../../../../../Geometry/RealAndComplexGeometry/VolumeMeasureNamespacedPublic.lean/declarations/measuretheory-isaddhaarmeasure-euclideanhausdorffmeasure.md) | 109 | `declaration-track:ce5ad7387e4db03eceefc32ead9bbebe7185826869af5da4b42137728d968726` |
| 7 | `theorem` | [MeasureTheory.Measure.euclideanHausdorffMeasure_zero_or_top](../../../../../Geometry/RealAndComplexGeometry/VolumeMeasureNamespacedPublic.lean/declarations/measuretheory-measure-euclideanhausdorffmeasure-zero-or-top.md) | 119 | `result-track:bcd3260a1839f576f9bd01890acd7bbc6a25413ec89e2895b87f9e37b706a2b6` |
| 8 | `theorem` | [IsometryEquiv.measurePreserving_euclideanHausdorffMeasure](../../../../../Geometry/RealAndComplexGeometry/VolumeMeasureNamespacedPublic.lean/declarations/isometryequiv-measurepreserving-euclideanhausdorffmeasure.md) | 132 | `result-track:f366ec7faed010e0f3d50fe7da7a9594c606c620c7211ea834309e0852649873` |
| 9 | `theorem` | [Isometry.euclideanHausdorffMeasure_image](../../../../../Geometry/RealAndComplexGeometry/VolumeMeasureNamespacedPublic.lean/declarations/isometry-euclideanhausdorffmeasure-image.md) | 136 | `result-track:924ee4c8da9cc7b08b75a88cf2650e3bae4f12ad87d2d7d1e714d53b598bc0a0` |
| 10 | `theorem` | [Isometry.euclideanHausdorffMeasure_preimage](../../../../../Geometry/RealAndComplexGeometry/VolumeMeasureNamespacedPublic.lean/declarations/isometry-euclideanhausdorffmeasure-preimage.md) | 141 | `result-track:753bf2950e3b30ec12ee6fea11d11b1830a3fd87e4f9a7e79acb65b2891e8fa4` |
| 11 | `theorem` | [Isometry.map_euclideanHausdorffMeasure](../../../../../Geometry/RealAndComplexGeometry/VolumeMeasureNamespacedPublic.lean/declarations/isometry-map-euclideanhausdorffmeasure.md) | 146 | `result-track:bb04738f32f23a6a813bd2ea13e517c03faaa57e7dae714700ae7f70420805f3` |
| 12 | `theorem` | [MeasureTheory.Measure.euclideanHausdorffMeasure_smul₀](../../../../../Geometry/RealAndComplexGeometry/VolumeMeasureNamespacedPublic.lean/declarations/measuretheory-measure-euclideanhausdorffmeasure-smul.md) | 157 | `result-track:5facd5c88d5bb74602f40fcfb7b7b8592c9820eb7ff7151524e1a52330778b70` |
| 13 | `theorem` | [MeasureTheory.euclideanHausdorffMeasure_homothety_image](../../../../../Geometry/RealAndComplexGeometry/VolumeMeasureNamespacedPublic.lean/declarations/measuretheory-euclideanhausdorffmeasure-homothety-image.md) | 169 | `result-track:08b90765a0717c6efd0bde9c783efc284415b3fe34e2920760a5fbf000b365df` |
| 14 | `theorem` | [MeasureTheory.euclideanHausdorffMeasure_homothety_preimage](../../../../../Geometry/RealAndComplexGeometry/VolumeMeasureNamespacedPublic.lean/declarations/measuretheory-euclideanhausdorffmeasure-homothety-preimage.md) | 175 | `result-track:b66c7d3322290cd7182bccc632a8951cf18f7015730657560155591532d80e38` |
| 15 | `theorem` | [EuclideanSpace.euclideanHausdorffMeasure_eq_volume](../../../../../Geometry/RealAndComplexGeometry/VolumeMeasureNamespacedPublic.lean/declarations/euclideanspace-euclideanhausdorffmeasure-eq-volume.md) | 192 | `result-track:980e466009107b9cb1ba0d717363d204c88db529fabff663104a02f647c26368` |
| 16 | `theorem` | [InnerProductSpace.euclideanHausdorffMeasure_eq_volume](../../../../../Geometry/RealAndComplexGeometry/VolumeMeasureNamespacedPublic.lean/declarations/innerproductspace-euclideanhausdorffmeasure-eq-volume.md) | 196 | `result-track:3cb6ee3d20a4e5302928471ed2b7c4027719b5f2ff22e36ac96f6828370ec12b` |
| 17 | `theorem` | [EuclideanGeometry.euclideanHausdorffMeasure_eq](../../../../../Geometry/RealAndComplexGeometry/VolumeMeasureNamespacedPublic.lean/declarations/euclideangeometry-euclideanhausdorffmeasure-eq.md) | 210 | `result-track:013600f4943911e1e837176265d414bc3260d1ea75317b3050e1d946a582f555` |
| 18 | `theorem` | [EuclideanGeometry.measurePreserving_vaddConst](../../../../../Geometry/RealAndComplexGeometry/VolumeMeasureNamespacedPublic.lean/declarations/euclideangeometry-measurepreserving-vaddconst.md) | 217 | `result-track:e7b04bad1c35403e86c051b61929c204180d33a529da1dd3103173af6ceb2ecd` |
| 19 | `theorem` | [AffineSubspace.euclideanHausdorffMeasure_coe_image](../../../../../Geometry/RealAndComplexGeometry/VolumeMeasureNamespacedPublic.lean/declarations/affinesubspace-euclideanhausdorffmeasure-coe-image.md) | 229 | `result-track:339949d7a2cfdc33f373253910b4c1592859db79776feecbb0d606f78b514fa3` |
| 20 | `instance` | [(anonymous)](../../../../../Geometry/RealAndComplexGeometry/VolumeMeasureNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 237 | `declaration-track:914daf94e9fa21c94a576fc0bd4977659380b034e0ce2bcd23513ded9622805d` |
| 21 | `instance` | [(anonymous)](../../../../../Geometry/RealAndComplexGeometry/VolumeMeasureNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 242 | `declaration-track:8ebc1e0c484c3ba7f6593666fc02c95a11a859b6c8c1728ba1ed7d8e4246b8eb` |
| 22 | `instance` | [(anonymous)](../../../../../Geometry/RealAndComplexGeometry/VolumeMeasureNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 247 | `declaration-track:a01ee8a3c3ed60806229cc94037b05b9550988f17e6816c765698933278daeba` |
| 23 | `def` | [Submodule.measurableEquivProd](../../../../../Geometry/RealAndComplexGeometry/VolumeMeasureNamespacedPublic.lean/declarations/submodule-measurableequivprod.md) | 263 | `declaration-track:b20501f0ac67bdb471209aad427f8dc0157cd90d87f781943f7b8611d7f0a9b5` |
| 24 | `theorem` | [Submodule.measurableEquivProd_apply](../../../../../Geometry/RealAndComplexGeometry/VolumeMeasureNamespacedPublic.lean/declarations/submodule-measurableequivprod-apply.md) | 269 | `result-track:f27fceeb171cb568f7d2fa8ecd4678c136652ccef4713a5b76b313a533e03eb2` |
| 25 | `theorem` | [Submodule.measurableEquivProd_symm_apply](../../../../../Geometry/RealAndComplexGeometry/VolumeMeasureNamespacedPublic.lean/declarations/submodule-measurableequivprod-symm-apply.md) | 275 | `result-track:4a399f087bf1f9bfe405f030a59a87c97be1d3538920a610f753883c6477ae1a` |
| 26 | `theorem` | [Submodule.measurePreserving_measurableEquivProd](../../../../../Geometry/RealAndComplexGeometry/VolumeMeasureNamespacedPublic.lean/declarations/submodule-measurepreserving-measurableequivprod.md) | 279 | `result-track:edba576ce9f0596cb60b77b9981bf13787d23c4502d8547e494f1ca3b999d5ee` |
| 27 | `theorem` | [AffineSubspace.euclideanHausdorffMeasure_eq_lintegral](../../../../../Geometry/RealAndComplexGeometry/VolumeMeasureNamespacedPublic.lean/declarations/affinesubspace-euclideanhausdorffmeasure-eq-lintegral.md) | 288 | `result-track:27000919c858308de35cef8a19117edbb3b996e65cbd3a0af6daeb2b82083a8d` |
| 28 | `theorem` | [EuclideanGeometry.euclideanHausdorffMeasure_eq_lintegral](../../../../../Geometry/RealAndComplexGeometry/VolumeMeasureNamespacedPublic.lean/declarations/euclideangeometry-euclideanhausdorffmeasure-eq-lintegral.md) | 324 | `result-track:17c65066321f8ef4d6ed8e92dd4e1c952793296af1d8aba77630bad1c7cc1cda` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b6dc5f356f069494ce2d9aa87aea12ebf68fa7751c216092104f5539a9015a4a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/Measure/Variantc31e4ce426f24324ed9df89e5d23b7fb6442c32f096be58927dfbead18955dad.lean","GRWTSK/_verification/specifications/Analysis/MeasureTheory/Measure/Variantc31e4ce426f24324ed9df89e5d23b7fb6442c32f096be58927dfbead18955dad.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
