# Verification target: Quartic Bump Energy Attempt03 Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "27e95e0c417d6c94a658f7472fb2fc5a3cce3e34",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt03/Variant6163cafefb3fb8279836d076007bc95efe73e38ea991b570d1d0ac2b03d567a6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/QuarticBumpEnergyAttempt03Namespaced.lean/index.md) · [Full source](../../../../MeasureAndIntegration/QuarticBumpEnergyAttempt03Namespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `27e95e0c417d6c94a658f7472fb2fc5a3cce3e34`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt03/Variant6163cafefb3fb8279836d076007bc95efe73e38ea991b570d1d0ac2b03d567a6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt03/Variant6163cafefb3fb8279836d076007bc95efe73e38ea991b570d1d0ac2b03d567a6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `QuarticBumpODE` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [rayValue](../../../../MeasureAndIntegration/QuarticBumpEnergyAttempt03Namespaced.lean/declarations/rayvalue.md) | 20 | `declaration-track:3d1affb7565d79be45686aeb6f456c7ebd91bbdb9be8687b01d144439fe7178e` |
| 2 | `def` | [raySlope](../../../../MeasureAndIntegration/QuarticBumpEnergyAttempt03Namespaced.lean/declarations/rayslope.md) | 21 | `declaration-track:3d44cbd2144f1d21bf47165d2ae78197c64f5dd8ed01348d312db39c2d240fd3` |
| 3 | `def` | [weightedMass](../../../../MeasureAndIntegration/QuarticBumpEnergyAttempt03Namespaced.lean/declarations/weightedmass.md) | 22 | `declaration-track:e340d674b0d6c7c4479730f0cc35d25da1e0c6335bb82431fbdeb960201f6236` |
| 4 | `def` | [weightedEnergy](../../../../MeasureAndIntegration/QuarticBumpEnergyAttempt03Namespaced.lean/declarations/weightedenergy.md) | 23 | `declaration-track:80d4ebec66bc09a5ec2e940bfc778327b25a8cc3a7c7c6503c24b494279291f3` |
| 5 | `theorem` | [rayValue_hasDerivAt](../../../../MeasureAndIntegration/QuarticBumpEnergyAttempt03Namespaced.lean/declarations/rayvalue-hasderivat.md) | 25 | `result-track:f437ba98a2e821e17d4c9275187ed3674a028eb1ac655cc986d7c5147e95716f` |
| 6 | `theorem` | [raySlope_hasDerivAt](../../../../MeasureAndIntegration/QuarticBumpEnergyAttempt03Namespaced.lean/declarations/rayslope-hasderivat.md) | 33 | `result-track:dc706c1c043dfc6af8263d43d3b6a6e4d48cff47eb6d20f1f4a3da1a8362dcee` |
| 7 | `theorem` | [rayValue_continuous](../../../../MeasureAndIntegration/QuarticBumpEnergyAttempt03Namespaced.lean/declarations/rayvalue-continuous.md) | 41 | `result-track:991c62113e77ec4fb889e3cf3021e412a9d9f1b9e252da5e3839942489926fae` |
| 8 | `theorem` | [raySlope_continuous](../../../../MeasureAndIntegration/QuarticBumpEnergyAttempt03Namespaced.lean/declarations/rayslope-continuous.md) | 44 | `result-track:ab52a9067a90c79016c48eca102ff573dafaccdcc6fbd60d4ba0083e4de10f46` |
| 9 | `theorem` | [weightedRay_hasDerivAt](../../../../MeasureAndIntegration/QuarticBumpEnergyAttempt03Namespaced.lean/declarations/weightedray-hasderivat.md) | 47 | `result-track:7ff2377955d23ec4ee710c459236fc9268b5db671dd0acaaa842cb2d940b9012` |
| 10 | `theorem` | [conjugateRay_hasDerivAt](../../../../MeasureAndIntegration/QuarticBumpEnergyAttempt03Namespaced.lean/declarations/conjugateray-hasderivat.md) | 59 | `result-track:d3e83cc444b4b5ef1bbffeee71803bc924e9520d3a8516535c960d66d2d638db` |
| 11 | `theorem` | [mass_integrand_continuous](../../../../MeasureAndIntegration/QuarticBumpEnergyAttempt03Namespaced.lean/declarations/mass-integrand-continuous.md) | 63 | `result-track:e25cef52c1bb93060785a0111e10e12d6568120d3566d78110c8486b23050323` |
| 12 | `theorem` | [energy_integrand_continuous](../../../../MeasureAndIntegration/QuarticBumpEnergyAttempt03Namespaced.lean/declarations/energy-integrand-continuous.md) | 67 | `result-track:64bb82dad80a597b5e84cfb96561cdfd432251723448b9779081ea88fdb3a429` |
| 13 | `theorem` | [weightedEnergy_nonneg](../../../../MeasureAndIntegration/QuarticBumpEnergyAttempt03Namespaced.lean/declarations/weightedenergy-nonneg.md) | 71 | `result-track:4083b23ed09570035804c8dfcd6f279b6c21b02eea0e52a1bbf4cdae87fe1a60` |
| 14 | `theorem` | [rayValue_zero](../../../../MeasureAndIntegration/QuarticBumpEnergyAttempt03Namespaced.lean/declarations/rayvalue-zero.md) | 75 | `result-track:f095fdc32c08e11d31a415233fbaa1ba4daa61194a1d3e5d119f260fb4cf7570` |
| 15 | `theorem` | [weightedMass_pos](../../../../MeasureAndIntegration/QuarticBumpEnergyAttempt03Namespaced.lean/declarations/weightedmass-pos.md) | 78 | `result-track:c3cc98b512577dbbc1dbd9f3bc819aad5f9be82107a577bc03cf5e565d42188d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=46b96600a13eaa300bfb514ffccaa800dfe16f36c13b29144e2507a2168ec4f6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt03/Variant6163cafefb3fb8279836d076007bc95efe73e38ea991b570d1d0ac2b03d567a6.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt03/Variant6163cafefb3fb8279836d076007bc95efe73e38ea991b570d1d0ac2b03d567a6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
