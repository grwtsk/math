# Verification target: Navier Stokes Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "38096ec925d30a439bac43c870652ca158185b11",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/NavierStokes/Variant1d68bcc208ee7f9d1102e15745c78eaf02ff0230cff71ffe25353a7ada8914a1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/NavierStokesNamespaced.lean/index.md) · [Full source](../../../../MeasureAndIntegration/NavierStokesNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `38096ec925d30a439bac43c870652ca158185b11`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/NavierStokes/Variant1d68bcc208ee7f9d1102e15745c78eaf02ff0230cff71ffe25353a7ada8914a1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/NavierStokes/Variant1d68bcc208ee7f9d1102e15745c78eaf02ff0230cff71ffe25353a7ada8914a1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib` — import line 25; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [divergence](../../../../MeasureAndIntegration/NavierStokesNamespaced.lean/declarations/divergence.md) | 89 | `declaration-track:54b0e6dd76fa124b3d724b05ccadda443811c00817c3f88f38c6502e84bafbb1` |
| 2 | `theorem` | [divergence_of_not_differentiableAt](../../../../MeasureAndIntegration/NavierStokesNamespaced.lean/declarations/divergence-of-not-differentiableat.md) | 96 | `result-track:1d50043af10c0c134117a0b797221897d73d20116749e27f7277b14d6b828299` |
| 3 | `theorem` | [divergence_zero](../../../../MeasureAndIntegration/NavierStokesNamespaced.lean/declarations/divergence-zero.md) | 102 | `result-track:e16e61efd1b96fb46eeb16d7fd7c1185226052b433ba231564fd9bcfe189b67e` |
| 4 | `theorem` | [divergence_const](../../../../MeasureAndIntegration/NavierStokesNamespaced.lean/declarations/divergence-const.md) | 107 | `result-track:1bdc3402e8fc19ac305b5c0e711a4a886a7872fc8ddc2901fcec2e46bd234b00` |
| 5 | `theorem` | [divergence_add](../../../../MeasureAndIntegration/NavierStokesNamespaced.lean/declarations/divergence-add.md) | 112 | `result-track:5d987a4b25c2bac5bea6624714d6ef90240aaf1f3c93b822e2c652aaec599b85` |
| 6 | `theorem` | [divergence_smul](../../../../MeasureAndIntegration/NavierStokesNamespaced.lean/declarations/divergence-smul.md) | 119 | `result-track:980c431c030021da1fc9ce00f0495f6c53a11210279f302377fe9eef65cd693b` |
| 7 | `def` | [IsOnePeriodic](../../../../MeasureAndIntegration/NavierStokesNamespaced.lean/declarations/isoneperiodic.md) | 129 | `declaration-track:5a3c515ed8383b56e1f0108973698e0ff4cd8e4bb8e48e768dcf50bdeb40eca5` |
| 8 | `structure` | [InitialVelocityCondition](../../../../MeasureAndIntegration/NavierStokesNamespaced.lean/declarations/initialvelocitycondition.md) | 142 | `declaration-track:f36eaee83d2fe14301d0c42e8e52795fc49b376268f7c8bc4592e2d564dcf6a6` |
| 9 | `structure` | [InitialVelocityConditionDecay](../../../../MeasureAndIntegration/NavierStokesNamespaced.lean/declarations/initialvelocityconditiondecay.md) | 158 | `declaration-track:8a17aa8cb003f2ae2204f1a9088627cc4c6a27c8aec1c46b9d7c1b95334b79a4` |
| 10 | `structure` | [InitialVelocityConditionPeriodic](../../../../MeasureAndIntegration/NavierStokesNamespaced.lean/declarations/initialvelocityconditionperiodic.md) | 172 | `declaration-track:269285620326401dfb9384e922af26ffbd2e84acfd9dbbcc5e2a6fdfa3801707` |
| 11 | `structure` | [ForceCondition](../../../../MeasureAndIntegration/NavierStokesNamespaced.lean/declarations/forcecondition.md) | 183 | `declaration-track:592a0630dcaba46c9a707c58182a7f571c8198ae2071d1b2ef7d307caa11f0c1` |
| 12 | `structure` | [ForceConditionDecay](../../../../MeasureAndIntegration/NavierStokesNamespaced.lean/declarations/forceconditiondecay.md) | 193 | `declaration-track:6e7c79b54c53568e27ac9ff807417b467cec6617d39e71fc05d6bf962b825345` |
| 13 | `structure` | [ForceConditionPeriodic](../../../../MeasureAndIntegration/NavierStokesNamespaced.lean/declarations/forceconditionperiodic.md) | 208 | `declaration-track:bc3038e637a1b75412468df58fabced3ffff6e27a30b3d55e2230b8bc7f67788` |
| 14 | `structure` | [NavierStokesExistenceAndSmoothness](../../../../MeasureAndIntegration/NavierStokesNamespaced.lean/declarations/navierstokesexistenceandsmoothness.md) | 225 | `declaration-track:eaa3f8395185e35dc1217daad74ca1c72d8a9b53f06a7d519bef0d00ef2e2397` |
| 15 | `structure` | [NavierStokesExistenceAndSmoothnessRn](../../../../MeasureAndIntegration/NavierStokesNamespaced.lean/declarations/navierstokesexistenceandsmoothnessrn.md) | 253 | `declaration-track:a14a2c142267ae957a4f171c356678cb86951c87bbc9615c7b51682d59b25ead` |
| 16 | `structure` | [NavierStokesExistenceAndSmoothnessPeriodic](../../../../MeasureAndIntegration/NavierStokesNamespaced.lean/declarations/navierstokesexistenceandsmoothnessperiodic.md) | 270 | `declaration-track:c75cdc6b16bedeaa030b5359d5675e8c2d8a59c8310fa03a77f31a39dd9261bd` |
| 17 | `theorem` | [navier_stokes_breakdown_R3](../../../../MeasureAndIntegration/NavierStokesNamespaced.lean/declarations/navier-stokes-breakdown-r3.md) | 281 | `result-track:480b67e6dab73820ae52058479574434269d772b41f725d56a06fc24accb83fe` |
| 18 | `theorem` | [navier_stokes_breakdown_periodic](../../../../MeasureAndIntegration/NavierStokesNamespaced.lean/declarations/navier-stokes-breakdown-periodic.md) | 288 | `result-track:ca4db25cefd22fe74bc73b4d1229449607cafb778b630ff87e486fe40effa4c4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=32989cb698d60212b1b8dd83e087783ae2ecc4c8eacc2edb02cea50ba1ada2ee -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/NavierStokes/Variant1d68bcc208ee7f9d1102e15745c78eaf02ff0230cff71ffe25353a7ada8914a1.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/NavierStokes/Variant1d68bcc208ee7f9d1102e15745c78eaf02ff0230cff71ffe25353a7ada8914a1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
