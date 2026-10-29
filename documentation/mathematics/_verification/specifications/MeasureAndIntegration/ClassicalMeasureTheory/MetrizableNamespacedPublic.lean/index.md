# Verification target: Metrizable Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "36a529b47468d6c59e4daf2dd61828c746441877",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Metrizable/Variantb00c8751d1147a0dcbd7c2530fa0c7ced6f172896224f9129e5704bb6456f8b4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MetrizableNamespacedPublic.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MetrizableNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `36a529b47468d6c59e4daf2dd61828c746441877`.

Source path: `GRWTSK/Analysis/MeasureTheory/Metrizable/Variantb00c8751d1147a0dcbd7c2530fa0c7ced6f172896224f9129e5704bb6456f8b4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Metrizable/Variantb00c8751d1147a0dcbd7c2530fa0c7ced6f172896224f9129e5704bb6456f8b4.lean.json)

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
| 1 | `theorem` | [measurable_of_tendsto_metrizable'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MetrizableNamespacedPublic.lean/declarations/measurable-of-tendsto-metrizable.md) | 41 | `result-track:896109a1e182ce280da17207c9a15689dcc600a4ea5b8c659ad6fdb366978cba` |
| 2 | `theorem` | [measurable_of_tendsto_metrizable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MetrizableNamespacedPublic.lean/declarations/measurable-of-tendsto-metrizable-source-edition-2.md) | 61 | `result-track:d0ef5308b3306413b67c902dd9efc526617f41b6ffc973b3d27c85c7ac7d7a00` |
| 3 | `theorem` | [aemeasurable_of_tendsto_metrizable_ae](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MetrizableNamespacedPublic.lean/declarations/aemeasurable-of-tendsto-metrizable-ae-source-edition-2.md) | 65 | `result-track:cf091219e9a42f0265d7c1eeaf68013e5ca2102a04668b031b0549c9a84f931f` |
| 4 | `theorem` | [aemeasurable_of_tendsto_metrizable_ae'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MetrizableNamespacedPublic.lean/declarations/aemeasurable-of-tendsto-metrizable-ae.md) | 89 | `result-track:146b3df1a6b7783f44a8dcbf07db8496c7e98e2cef6483da526bacc314231b28` |
| 5 | `theorem` | [aemeasurable_of_unif_approx](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MetrizableNamespacedPublic.lean/declarations/aemeasurable-of-unif-approx.md) | 94 | `result-track:a484ba8c68de460d514b9209025c2f00ef1c4a56dd59ee9eda54fdbee42f1dbc` |
| 6 | `theorem` | [measurable_of_tendsto_metrizable_ae](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MetrizableNamespacedPublic.lean/declarations/measurable-of-tendsto-metrizable-ae.md) | 110 | `result-track:43fc433461ce31ba6d5360f1d8b38a701f71a3a13fed35292f89e29fffa406f7` |
| 7 | `theorem` | [measurable_limit_of_tendsto_metrizable_ae](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MetrizableNamespacedPublic.lean/declarations/measurable-limit-of-tendsto-metrizable-ae.md) | 116 | `result-track:cb202910e31aef915b451976cfea1f4135bcaed2733449a773ec1df86f3513a3` |
| 8 | `lemma` | [measurableSet_of_tendsto_indicator](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MetrizableNamespacedPublic.lean/declarations/measurableset-of-tendsto-indicator.md) | 145 | `result-track:36141b97009daa6b9e493ebe3013120ce257066c2efa5d2ffba3c2408ec84688` |
| 9 | `lemma` | [nullMeasurableSet_of_tendsto_indicator](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MetrizableNamespacedPublic.lean/declarations/nullmeasurableset-of-tendsto-indicator.md) | 154 | `result-track:2c897bb88dc98b6bb1a91ff095f289d9ed4141984edb28da313e9e97f73fffb9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e6c7e5b97006bc01902a659d798176954e6acb97ec53b9045b63d9c29d3333df -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/Metrizable/Variantb00c8751d1147a0dcbd7c2530fa0c7ced6f172896224f9129e5704bb6456f8b4.lean","GRWTSK/_verification/specifications/Analysis/MeasureTheory/Metrizable/Variantb00c8751d1147a0dcbd7c2530fa0c7ced6f172896224f9129e5704bb6456f8b4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
