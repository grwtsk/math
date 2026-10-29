# Verification target: Lp Seminorm Count Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c1cd7012b09e63e9fbeb7a8acccee99ce22bd158",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Count/Variant74b019f9d7f85c27183dbf107f8e1e17577c9c528fc96e7a1c83bc9218a874dd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSeminormCountNamespacedPublic.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSeminormCountNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c1cd7012b09e63e9fbeb7a8acccee99ce22bd158`.

Source path: `GRWTSK/Analysis/MeasureTheory/Count/Variant74b019f9d7f85c27183dbf107f8e1e17577c9c528fc96e7a1c83bc9218a874dd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Count/Variant74b019f9d7f85c27183dbf107f8e1e17577c9c528fc96e7a1c83bc9218a874dd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Function.StronglyMeasurable.Lemmas` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [eLpNorm_dirac](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSeminormCountNamespacedPublic.lean/declarations/elpnorm-dirac.md) | 33 | `result-track:c795140740b13eed9a36491c937b9c30d84c492cb9ad4fbde66e578dbdee345f` |
| 2 | `lemma` | [enorm_le_eLpNorm_count](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSeminormCountNamespacedPublic.lean/declarations/enorm-le-elpnorm-count.md) | 41 | `result-track:55f6eba62a9e38682ae195d4d47cc0445729151eff6b17964cc75b92152b4923` |
| 3 | `lemma` | [eLpNorm_count_lt_top_of_lt](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSeminormCountNamespacedPublic.lean/declarations/elpnorm-count-lt-top-of-lt.md) | 47 | `result-track:6cdd4bac1887fcd55dc517d3360a85859d7eccf951e4d72dae4c7164fd779331` |
| 4 | `lemma` | [eLpNorm_count_lt_top](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSeminormCountNamespacedPublic.lean/declarations/elpnorm-count-lt-top.md) | 55 | `result-track:0c882860910e666342c78fd50b3717b2bce33096df96eef30d48725abcb350db` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c48dd214d119606639dc7aa3e2ccb09586cc7d2baba1baacefeed90d71ae04c8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/Count/Variant74b019f9d7f85c27183dbf107f8e1e17577c9c528fc96e7a1c83bc9218a874dd.lean","GRWTSK/_verification/specifications/Analysis/MeasureTheory/Count/Variant74b019f9d7f85c27183dbf107f8e1e17577c9c528fc96e7a1c83bc9218a874dd.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
