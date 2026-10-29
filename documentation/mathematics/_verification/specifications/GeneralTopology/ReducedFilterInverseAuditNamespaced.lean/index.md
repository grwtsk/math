# Verification target: Reduced Filter Inverse Audit Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "898f813b169ca0b9f5e941663f48991749edd30b",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ReducedFilterInverseAudit/Variant5ddcb589a84534b080adea3cf597a0e08893c720e6a178f0bd46537736e7df4d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/ReducedFilterInverseAuditNamespaced.lean/index.md) · [Full source](../../../../GeneralTopology/ReducedFilterInverseAuditNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `898f813b169ca0b9f5e941663f48991749edd30b`.

Source path: `GRWTSK/Topology/GeneralTopology/ReducedFilterInverseAudit/Variant5ddcb589a84534b080adea3cf597a0e08893c720e6a178f0bd46537736e7df4d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ReducedFilterInverseAudit/Variant5ddcb589a84534b080adea3cf597a0e08893c720e6a178f0bd46537736e7df4d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.CorrectedControllerAnalytic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Group.Bounded` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [sourcePolynomial_leading_error](../../../../GeneralTopology/ReducedFilterInverseAuditNamespaced.lean/declarations/sourcepolynomial-leading-error.md) | 22 | `result-track:35f3018cf3ad337515faff8f5f1934cad0738782556474ccdbdd66d7ee721653` |
| 2 | `theorem` | [sourceTailGap_pos](../../../../GeneralTopology/ReducedFilterInverseAuditNamespaced.lean/declarations/sourcetailgap-pos.md) | 44 | `result-track:097cb7da8b32d2f3502bbd9d2df0b8a517447d0c11414fa55558cf02ccb3ac2b` |
| 3 | `theorem` | [sourceEndpoint_tail_lower](../../../../GeneralTopology/ReducedFilterInverseAuditNamespaced.lean/declarations/sourceendpoint-tail-lower.md) | 49 | `result-track:8a5e35fa3101fce4d414d639ef5b8dd39dc54c6570c56b7dba96a04e400915c3` |
| 4 | `theorem` | [reducedW_closedFormula](../../../../GeneralTopology/ReducedFilterInverseAuditNamespaced.lean/declarations/reducedw-closedformula.md) | 97 | `result-track:e392647f75ec1bfedcdf214fcd6da4e79b5d78a602440e2ca39e0ba2934b859a` |
| 5 | `theorem` | [norm_add_half_ge](../../../../GeneralTopology/ReducedFilterInverseAuditNamespaced.lean/declarations/norm-add-half-ge.md) | 117 | `result-track:6717bac9d3adb797d89ffe644dce9ebac9af791ce5d36515762f0b971ccfc0e4` |
| 6 | `theorem` | [reducedW_tail_lower](../../../../GeneralTopology/ReducedFilterInverseAuditNamespaced.lean/declarations/reducedw-tail-lower.md) | 127 | `result-track:dd9d3458f87c44f686d1923361eee5cb64cd94c20719c8e94a58013b801ce6c3` |
| 7 | `theorem` | [reducedW_inverse_tail_bound](../../../../GeneralTopology/ReducedFilterInverseAuditNamespaced.lean/declarations/reducedw-inverse-tail-bound.md) | 165 | `result-track:2e15ea403284d3668f9958bd70f761717fde6312907651efdde72869821fb4fd` |
| 8 | `theorem` | [reducedW_inverse_uniform_bound](../../../../GeneralTopology/ReducedFilterInverseAuditNamespaced.lean/declarations/reducedw-inverse-uniform-bound.md) | 182 | `result-track:3acd3a5ff2b76300ba2427f54266f6f97b9eae9ecf980b06c95cfd277b92c0b3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bd9953832c829801990d7c196b385bd633e99c357e83c9d04c1e4b149c4e4a1d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/ReducedFilterInverseAudit/Variant5ddcb589a84534b080adea3cf597a0e08893c720e6a178f0bd46537736e7df4d.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/ReducedFilterInverseAudit/Variant5ddcb589a84534b080adea3cf597a0e08893c720e6a178f0bd46537736e7df4d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
