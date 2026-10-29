# Verification target: Circle Transform Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b70c377581ddcb0693b0865aae7ebda61ffba381",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/CircleTransform/Variant60948c579682cb869321f112392eabbea5bb8918847d335ad49c000c9adee4ec.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CircleTransformNamespacedPublic.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CircleTransformNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b70c377581ddcb0693b0865aae7ebda61ffba381`.

Source path: `GRWTSK/Topology/GeneralTopology/CircleTransform/Variant60948c579682cb869321f112392eabbea5bb8918847d335ad49c000c9adee4ec.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/CircleTransform/Variant60948c579682cb869321f112392eabbea5bb8918847d335ad49c000c9adee4ec.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [circleTransform](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CircleTransformNamespacedPublic.lean/declarations/circletransform.md) | 48 | `declaration-track:9aacd3619c0f46cf640114be2e1e6885f1dc822903ba2b1f496f2cb5fb20d822` |
| 2 | `def` | [circleTransformDeriv](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CircleTransformNamespacedPublic.lean/declarations/circletransformderiv.md) | 52 | `declaration-track:f22b3a75e0cbb12cf7e24908d31701e9dc5407e3f804d2eeb356327ca9f040b9` |
| 3 | `theorem` | [circleTransformDeriv_periodic](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CircleTransformNamespacedPublic.lean/declarations/circletransformderiv-periodic.md) | 55 | `result-track:dedb96ad21977a51d0fe2c5bd659325becb4ede849d3d6801f3d94515024b647` |
| 4 | `theorem` | [circleTransformDeriv_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CircleTransformNamespacedPublic.lean/declarations/circletransformderiv-eq.md) | 59 | `result-track:f199c0cc202faa20440d19f4908b12a8c105c69514cce85eba2735a8310b25b4` |
| 5 | `theorem` | [integral_circleTransform](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CircleTransformNamespacedPublic.lean/declarations/integral-circletransform.md) | 68 | `result-track:7c84cb2012587824d566cfe9df007f40d47453cf1996b17df5d0d231df922bf0` |
| 6 | `theorem` | [continuous_circleTransform](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CircleTransformNamespacedPublic.lean/declarations/continuous-circletransform.md) | 74 | `result-track:f64b135a85be9bd7ff70affc68eddd30ed1e729c1c457c7241e386d349470f90` |
| 7 | `theorem` | [continuous_circleTransformDeriv](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CircleTransformNamespacedPublic.lean/declarations/continuous-circletransformderiv.md) | 84 | `result-track:e23481ae48dfd71712e58c11aee8b150e89dc34237a824a070e44bef413d0c00` |
| 8 | `def` | [circleTransformBoundingFunction](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CircleTransformNamespacedPublic.lean/declarations/circletransformboundingfunction.md) | 91 | `declaration-track:eb88779ca7720e9526432cab855d9eeb0938ec779fdda59669e35dfa386e657c` |
| 9 | `theorem` | [continuousOn_prod_circle_transform_function](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CircleTransformNamespacedPublic.lean/declarations/continuouson-prod-circle-transform-function.md) | 94 | `result-track:7a929113503818920423c3dffc879f4cb93f95e8ddd8204a95c3b571b73a2380` |
| 10 | `theorem` | [continuousOn_norm_circleTransformBoundingFunction](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CircleTransformNamespacedPublic.lean/declarations/continuouson-norm-circletransformboundingfunction.md) | 104 | `result-track:7e9684e641a92b877e1f7214fd3954fbafa64d844cfe6b60c3daf9b355021944` |
| 11 | `theorem` | [norm_circleTransformBoundingFunction_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CircleTransformNamespacedPublic.lean/declarations/norm-circletransformboundingfunction-le.md) | 114 | `result-track:5f47a2e25403491e5484d03b1c72e0a04f0d9ef6873cd898742a4b15cc27e228` |
| 12 | `theorem` | [circleTransformDeriv_bound](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CircleTransformNamespacedPublic.lean/declarations/circletransformderiv-bound.md) | 126 | `result-track:ea6d6cf46c1973e02cd051759a08ed796ad11900625a49f09f6f7c38256ffc77` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b3fdd4e4d661b6900cfbc7b09c529281259f2ce1f6b318d07a5bb3f48c52c095 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/CircleTransform/Variant60948c579682cb869321f112392eabbea5bb8918847d335ad49c000c9adee4ec.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/CircleTransform/Variant60948c579682cb869321f112392eabbea5bb8918847d335ad49c000c9adee4ec.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
