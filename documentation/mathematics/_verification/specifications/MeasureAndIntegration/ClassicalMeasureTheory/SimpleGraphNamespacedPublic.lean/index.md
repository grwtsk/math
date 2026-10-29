# Verification target: Simple Graph Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c58f486e84550ce261e043197cfbf16281a30284",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/SimpleGraph/Variantf8d8bc67875ac01d19e58316256e1c332e292b847c3336df30eb6a8924ff3d5b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleGraphNamespacedPublic.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleGraphNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c58f486e84550ce261e043197cfbf16281a30284`.

Source path: `GRWTSK/Analysis/MeasureTheory/SimpleGraph/Variantf8d8bc67875ac01d19e58316256e1c332e292b847c3336df30eb6a8924ff3d5b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/SimpleGraph/Variantf8d8bc67875ac01d19e58316256e1c332e292b847c3336df30eb6a8924ff3d5b.lean.json)

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
| 1 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleGraphNamespacedPublic.lean/declarations/instance.md) | 33 | `declaration-track:6ebf78b1991652ef096530d7a4d1fadd1713535d861f1336ec72f4b4cd9da0dc` |
| 2 | `lemma` | [measurable_iff_adj](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleGraphNamespacedPublic.lean/declarations/measurable-iff-adj.md) | 36 | `result-track:9a77d5cbe11f3a23c363f1439b9019b8728f1c3af33e451b483f13f88ea75178` |
| 3 | `lemma` | [measurable_adj](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleGraphNamespacedPublic.lean/declarations/measurable-adj.md) | 41 | `result-track:f425f03eba650025cd5096e0eb464f6ead638a16de4b8b3695b7a5dcdebe18c6` |
| 4 | `lemma` | [measurable_edgeSet](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleGraphNamespacedPublic.lean/declarations/measurable-edgeset.md) | 44 | `result-track:f897295efe2101ae2d357205db2bf3561aa5ac942c4ef9a0ec663b2de1486dcd` |
| 5 | `lemma` | [measurable_fromEdgeSet](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleGraphNamespacedPublic.lean/declarations/measurable-fromedgeset.md) | 48 | `result-track:b736d23acdcd62e5ffdd9c428abb54472d004144d30f6b2bbef813d81f7db6fa` |
| 6 | `lemma` | [measurableEmbedding_edgeSet](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleGraphNamespacedPublic.lean/declarations/measurableembedding-edgeset.md) | 51 | `result-track:02d6ee1f2a35425d8d179454615ec17a53aaf480635691049e38d0387c9e9ba0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d4c3538c51db06225958778a879fd1f42c2f5b83007d918c6a637142e5ab09df -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/SimpleGraph/Variantf8d8bc67875ac01d19e58316256e1c332e292b847c3336df30eb6a8924ff3d5b.lean","GRWTSK/_verification/specifications/Analysis/MeasureTheory/SimpleGraph/Variantf8d8bc67875ac01d19e58316256e1c332e292b847c3336df30eb6a8924ff3d5b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
