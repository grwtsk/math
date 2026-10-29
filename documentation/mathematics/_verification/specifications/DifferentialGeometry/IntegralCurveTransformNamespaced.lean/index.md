# Verification target: Integral Curve Transform Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "849993d87b8ab32c19e1cfcc3f16217c73873086",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/DifferentialEquationsAndDynamicalSystems/Transform/Variant7be1d2f9441d461a6eaf027d562858b2c5188a6c165a6e6a426242bb57dd0145.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../DifferentialGeometry/IntegralCurveTransformNamespaced.lean/index.md) · [Full source](../../../../DifferentialGeometry/IntegralCurveTransformNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `849993d87b8ab32c19e1cfcc3f16217c73873086`.

Source path: `GRWTSK/DifferentialEquationsAndDynamicalSystems/Transform/Variant7be1d2f9441d461a6eaf027d562858b2c5188a6c165a6e6a426242bb57dd0145.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/DifferentialEquationsAndDynamicalSystems/Transform/Variant7be1d2f9441d461a6eaf027d562858b2c5188a6c165a6e6a426242bb57dd0145.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Geometry.Manifold.IntegralCurve.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [IsIntegralCurveOn.comp_add](../../../../DifferentialGeometry/IntegralCurveTransformNamespaced.lean/declarations/isintegralcurveon-comp-add.md) | 43 | `result-track:73dad397e369805f427013a7958bec682e8bfa2281cc69e1dde027b393b63ae4` |
| 2 | `lemma` | [isIntegralCurveOn_comp_add](../../../../DifferentialGeometry/IntegralCurveTransformNamespaced.lean/declarations/isintegralcurveon-comp-add-source-edition-2.md) | 54 | `result-track:d745b1b0095f8ecb36f749ebe413d48a9cd2e8cff5529b5f53d696ef0c21a323` |
| 3 | `lemma` | [isIntegralCurveOn_comp_sub](../../../../DifferentialGeometry/IntegralCurveTransformNamespaced.lean/declarations/isintegralcurveon-comp-sub.md) | 62 | `result-track:94476af6d2e88bc5f9c63dc87f4b117ce2295fb150c954c3efe4112b83b3c922` |
| 4 | `lemma` | [IsIntegralCurveAt.comp_add](../../../../DifferentialGeometry/IntegralCurveTransformNamespaced.lean/declarations/isintegralcurveat-comp-add.md) | 66 | `result-track:77c56ab24f85307872f9d4d21fbbfd82e368e57865941db806503cecb7abb0e7` |
| 5 | `lemma` | [isIntegralCurveAt_comp_add](../../../../DifferentialGeometry/IntegralCurveTransformNamespaced.lean/declarations/isintegralcurveat-comp-add-source-edition-2.md) | 74 | `result-track:7a8570909b07d812ea705e556cb95c3dbbbd206f75ae6a953bf482838fd8a5a6` |
| 6 | `lemma` | [isIntegralCurveAt_comp_sub](../../../../DifferentialGeometry/IntegralCurveTransformNamespaced.lean/declarations/isintegralcurveat-comp-sub.md) | 82 | `result-track:e8e50601d8b8a23752c570838fd3b7a44247b0dc4843cd8095b54ca4f3cb81cb` |
| 7 | `lemma` | [IsIntegralCurve.comp_add](../../../../DifferentialGeometry/IntegralCurveTransformNamespaced.lean/declarations/isintegralcurve-comp-add-source-edition-2.md) | 86 | `result-track:d5aa8c68b98167d21959ba0396e3687f6f25d2a54c464a8b78a1fed69f4fd21d` |
| 8 | `lemma` | [isIntegralCurve_comp_add](../../../../DifferentialGeometry/IntegralCurveTransformNamespaced.lean/declarations/isintegralcurve-comp-add.md) | 91 | `result-track:4de1308802cfc0a2a8ea945c5c3f89a6222d04091614e009bc89c62b21a6a08c` |
| 9 | `lemma` | [isIntegralCurve_comp_sub](../../../../DifferentialGeometry/IntegralCurveTransformNamespaced.lean/declarations/isintegralcurve-comp-sub.md) | 98 | `result-track:3a1066b741eaf729aeb51da392fcf971ba29b3fc900cdb1b2023ff6cd153161b` |
| 10 | `lemma` | [IsIntegralCurveOn.comp_mul](../../../../DifferentialGeometry/IntegralCurveTransformNamespaced.lean/declarations/isintegralcurveon-comp-mul.md) | 108 | `result-track:6d5194595b92761c13d680b2bd4bfb0af846ee2392b22bbde1c0424a3e7e9385` |
| 11 | `lemma` | [isIntegralCurveOn_comp_mul_ne_zero](../../../../DifferentialGeometry/IntegralCurveTransformNamespaced.lean/declarations/isintegralcurveon-comp-mul-ne-zero.md) | 116 | `result-track:9d0dbfa1593e901d9f2a8fcfb7aa3e90a4ebdab6e214eff1f1b285c154b21e4d` |
| 12 | `lemma` | [IsIntegralCurveAt.comp_mul_ne_zero](../../../../DifferentialGeometry/IntegralCurveTransformNamespaced.lean/declarations/isintegralcurveat-comp-mul-ne-zero.md) | 125 | `result-track:27b034efa7c56d5b1e88162aa41c02fb71fcde5f7ef644235403f1e48e5d259e` |
| 13 | `lemma` | [isIntegralCurveAt_comp_mul_ne_zero](../../../../DifferentialGeometry/IntegralCurveTransformNamespaced.lean/declarations/isintegralcurveat-comp-mul-ne-zero-source-edition-2.md) | 135 | `result-track:9527fd0eb074dbf7c2ab000987cf99ef713e601e2f390497b2ef3b2fb099828c` |
| 14 | `lemma` | [IsIntegralCurve.comp_mul](../../../../DifferentialGeometry/IntegralCurveTransformNamespaced.lean/declarations/isintegralcurve-comp-mul.md) | 144 | `result-track:7aa14ab752e8570307f37f11579a34dde29db8204f055461e2246f594fe03dd3` |
| 15 | `lemma` | [isIntegralCurve_comp_mul_ne_zero](../../../../DifferentialGeometry/IntegralCurveTransformNamespaced.lean/declarations/isintegralcurve-comp-mul-ne-zero.md) | 149 | `result-track:fe3d688c6524e76e5dbf8a06247fe8959075db5675ba73e13346b4351555a3f7` |
| 16 | `lemma` | [isIntegralCurve_const](../../../../DifferentialGeometry/IntegralCurveTransformNamespaced.lean/declarations/isintegralcurve-const.md) | 159 | `result-track:dba10e95128df36455586324c4bd206ddaf72949c1ed541654bc2c22be330115` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b28932514a6f41dda7fc7b23852c4be345f56548f26ebc24eb5232cbc8cc7e6a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/DifferentialEquationsAndDynamicalSystems/Transform/Variant7be1d2f9441d461a6eaf027d562858b2c5188a6c165a6e6a426242bb57dd0145.lean","GRWTSK/_verification/specifications/DifferentialEquationsAndDynamicalSystems/Transform/Variant7be1d2f9441d461a6eaf027d562858b2c5188a6c165a6e6a426242bb57dd0145.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
