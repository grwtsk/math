# Verification target: Prime Walk Two Scale Grains Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d4333173e4d8df399f1452162cb6df346a8b71a1",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/PrimeWalkTwoScaleGrains/Variant37ac6c93081094260521f5fa258fda57339b8c358006ad34247e3e7bffaece5d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/PrimeWalkTwoScaleGrainsNamespacedPublic.lean/index.md) · [Full source](../../../../MeasureAndIntegration/PrimeWalkTwoScaleGrainsNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d4333173e4d8df399f1452162cb6df346a8b71a1`.

Source path: `GRWTSK/Analysis/MeasureTheory/PrimeWalkTwoScaleGrains/Variant37ac6c93081094260521f5fa258fda57339b8c358006ad34247e3e7bffaece5d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/PrimeWalkTwoScaleGrains/Variant37ac6c93081094260521f5fa258fda57339b8c358006ad34247e3e7bffaece5d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [TwoScaleParameters](../../../../MeasureAndIntegration/PrimeWalkTwoScaleGrainsNamespacedPublic.lean/declarations/twoscaleparameters.md) | 61 | `declaration-track:659e3117ac008ea4edb0d98824f134e142018ed1785e955f442abe5c6b9e78c0` |
| 2 | `def` | [finsetShadingUnion](../../../../MeasureAndIntegration/PrimeWalkTwoScaleGrainsNamespacedPublic.lean/declarations/finsetshadingunion.md) | 79 | `declaration-track:9c4e4fa2dc83a5a23aaf18c77d034bd749f2d0489a2aba911025b843f2d8ac3e` |
| 3 | `def` | [objectsAt](../../../../MeasureAndIntegration/PrimeWalkTwoScaleGrainsNamespacedPublic.lean/declarations/objectsat.md) | 86 | `declaration-track:29f0b9124544fd11b460e278713b966a4d21f0a72a5014cfa9d63114283de3b5` |
| 4 | `def` | [fiberShadingUnion](../../../../MeasureAndIntegration/PrimeWalkTwoScaleGrainsNamespacedPublic.lean/declarations/fibershadingunion.md) | 94 | `declaration-track:a705104ae5b97c3dd79c3b9868f45ab959eb947a5367922de399238398080f0d` |
| 5 | `def` | [shadingMultiplicity](../../../../MeasureAndIntegration/PrimeWalkTwoScaleGrainsNamespacedPublic.lean/declarations/shadingmultiplicity.md) | 103 | `declaration-track:4ff6c288318bbcbf98e0cbca966a445c2bea0f00ec8a52f7ce1909de6a6cba7e` |
| 6 | `theorem` | [finsetShadingUnion_eq_coarseFibers](../../../../MeasureAndIntegration/PrimeWalkTwoScaleGrainsNamespacedPublic.lean/declarations/finsetshadingunion-eq-coarsefibers.md) | 112 | `result-track:e69d5a6ebc52199c6095c754849c80a0b702fb43520b20c846394a502e7da76a` |
| 7 | `structure` | [TubeGrainGeometry](../../../../MeasureAndIntegration/PrimeWalkTwoScaleGrainsNamespacedPublic.lean/declarations/tubegraingeometry.md) | 146 | `declaration-track:c5ccd59598916eb4624e7516e35c2b7047d54ef2f475ed67d95df2c97e7bf567` |
| 8 | `structure` | [RobustTwoScaleGrains](../../../../MeasureAndIntegration/PrimeWalkTwoScaleGrainsNamespacedPublic.lean/declarations/robusttwoscalegrains.md) | 170 | `declaration-track:8027fedef40a532ac2f5381d569c8a4b0a47d79c67c378850b60f582b7839cf2` |
| 9 | `theorem` | [fineShadingUnion_eq_grainShadingUnion](../../../../MeasureAndIntegration/PrimeWalkTwoScaleGrainsNamespacedPublic.lean/declarations/fineshadingunion-eq-grainshadingunion.md) | 245 | `result-track:55f96c0812f0c662c7e3e7dc86e2563c87a8c179021e5e746617f3d32370009e` |
| 10 | `theorem` | [grain_coarse_unique](../../../../MeasureAndIntegration/PrimeWalkTwoScaleGrainsNamespacedPublic.lean/declarations/grain-coarse-unique.md) | 269 | `result-track:923d902a70e316843ee4db669f9b0cc5a218fc7aee829d7a720bff8060270411` |
| 11 | `def` | [spatialSuperlevelSet](../../../../MeasureAndIntegration/PrimeWalkTwoScaleGrainsNamespacedPublic.lean/declarations/spatialsuperlevelset.md) | 283 | `declaration-track:dfb4f4bb9bed013752173f2b71729b30a449b771129c2d82bf4efacc63ca9bb8` |
| 12 | `structure` | [SpatialWavePacketEncoding](../../../../MeasureAndIntegration/PrimeWalkTwoScaleGrainsNamespacedPublic.lean/declarations/spatialwavepacketencoding.md) | 291 | `declaration-track:e03099c146841ec153ceec8a3f6ad362c00d8847f19f1c934b5a8ed0de282d82` |
| 13 | `structure` | [TemporalSpatialSuperlevelLink](../../../../MeasureAndIntegration/PrimeWalkTwoScaleGrainsNamespacedPublic.lean/declarations/temporalspatialsuperlevellink.md) | 304 | `declaration-track:fba71c8037fbae203699a288df991213de80a9da011fe56408af0dafa5cc6be0` |
| 14 | `theorem` | [spatialSuperlevelSet_eq_grainShadingUnion](../../../../MeasureAndIntegration/PrimeWalkTwoScaleGrainsNamespacedPublic.lean/declarations/spatialsuperlevelset-eq-grainshadingunion.md) | 318 | `result-track:ae5395aab6ee8cb04138abbcaaabe19431bdd6dca0285cf046cce7872eff359c` |
| 15 | `theorem` | [measure_spatialSuperlevelSet_le_grain_sum](../../../../MeasureAndIntegration/PrimeWalkTwoScaleGrainsNamespacedPublic.lean/declarations/measure-spatialsuperlevelset-le-grain-sum.md) | 331 | `result-track:91b6a802c6b556165360cd36e70ba100bd30d472dce182b34a66ae1340d1c5fe` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9948aebb5d17d0cb22feb5fdcc02c5d4fbcfaf9b3fb41929b392c1712fd3dac3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/PrimeWalkTwoScaleGrains/Variant37ac6c93081094260521f5fa258fda57339b8c358006ad34247e3e7bffaece5d.lean","GRWTSK/_verification/specifications/Analysis/MeasureTheory/PrimeWalkTwoScaleGrains/Variant37ac6c93081094260521f5fa258fda57339b8c358006ad34247e3e7bffaece5d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
