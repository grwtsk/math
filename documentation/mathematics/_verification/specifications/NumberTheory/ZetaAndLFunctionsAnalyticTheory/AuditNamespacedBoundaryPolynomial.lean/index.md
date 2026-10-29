# Verification target: Audit Namespaced Boundary Polynomial

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "84e4094657a5a86a57b6f73fd182d9836a19a035",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Audit/Variantbdc4491dcfc4b951d446c851d85cd2b3fdbff7402f40d25cf9f9c31d386f1199.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/AuditNamespacedBoundaryPolynomial.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/AuditNamespacedBoundaryPolynomial.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `84e4094657a5a86a57b6f73fd182d9836a19a035`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Audit/Variantbdc4491dcfc4b951d446c851d85cd2b3fdbff7402f40d25cf9f9c31d386f1199.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Audit/Variantbdc4491dcfc4b951d446c851d85cd2b3fdbff7402f40d25cf9f9c31d386f1199.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Intervals` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [boundaryPolynomial](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/AuditNamespacedBoundaryPolynomial.lean/declarations/boundarypolynomial.md) | 25 | `declaration-track:a6be7e4a77fbece716e4ba035a6e628f220d11a86f81b7788d7ef67098d19fd3` |
| 2 | `theorem` | [boundaryPolynomial_relative_lower](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/AuditNamespacedBoundaryPolynomial.lean/declarations/boundarypolynomial-relative-lower.md) | 30 | `result-track:1d51e86cb42cf28b978cbc5289991dad91a1933b783d294a9ac7192dc259e3ad` |
| 3 | `theorem` | [boundaryPolynomial_source_collar](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/AuditNamespacedBoundaryPolynomial.lean/declarations/boundarypolynomial-source-collar.md) | 48 | `result-track:8094148b1b182ee862d05d3bf907e92e64117479b4c5a808d64fceb4c9354be9` |
| 4 | `theorem` | [boundaryPolynomial_source_collar_pos](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/AuditNamespacedBoundaryPolynomial.lean/declarations/boundarypolynomial-source-collar-pos.md) | 54 | `result-track:eadce9cfa8703d6c3537b060d838d86d581422c17ae5157356dad60f1f1897ec` |
| 5 | `theorem` | [boundaryPolynomial_upper](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/AuditNamespacedBoundaryPolynomial.lean/declarations/boundarypolynomial-upper.md) | 62 | `result-track:b992d2a5eed19c3228758de2ddd00d08dbba2499b045b277c1c3b8837d85e941` |
| 6 | `def` | [cellStencil](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/AuditNamespacedBoundaryPolynomial.lean/declarations/cellstencil.md) | 72 | `declaration-track:8849342735df7b308c0700e41e82f9dd8285e0e5b631a2ab71bdc96446ec2a19` |
| 7 | `theorem` | [cellStencil_at_birth_nonneg](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/AuditNamespacedBoundaryPolynomial.lean/declarations/cellstencil-at-birth-nonneg.md) | 75 | `result-track:0ba2ebfd6102609f327585e2fa2a1d7ffcab69e0b72626260ef022c65cc77ae3` |
| 8 | `theorem` | [inverse_square_le_difference](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/AuditNamespacedBoundaryPolynomial.lean/declarations/inverse-square-le-difference.md) | 81 | `result-track:fd6210cf8980be7a6d719d1fa411451a31633f0a09ffbb29937968f7694c73cc` |
| 9 | `theorem` | [inverse_square_sum_le](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/AuditNamespacedBoundaryPolynomial.lean/declarations/inverse-square-sum-le.md) | 91 | `result-track:9afa393112b073424a40865892b18e8046ba63d4af4cab6aed880caaf268a444` |
| 10 | `theorem` | [selected_birth_budget](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/AuditNamespacedBoundaryPolynomial.lean/declarations/selected-birth-budget.md) | 106 | `result-track:f335694b7b16098ef5c296da731466ba4eed498e43aac64d52b0d8265d689d70` |
| 11 | `theorem` | [lower_increment_with_positive_births](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/AuditNamespacedBoundaryPolynomial.lean/declarations/lower-increment-with-positive-births.md) | 132 | `result-track:ddcf7482e59e715bc52671252648bda396114b2801bbb38e570d30d51fb823be` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ce655b039243dbbca5d9c18017524e5e805524468471427c0840699dff16bbe2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Audit/Variantbdc4491dcfc4b951d446c851d85cd2b3fdbff7402f40d25cf9f9c31d386f1199.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Audit/Variantbdc4491dcfc4b951d446c851d85cd2b3fdbff7402f40d25cf9f9c31d386f1199.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
