# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.Checks.EndpointCountNormalization

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1f23b3626f9d627a845d1c5cd7bdfeb95e55692c",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/Checks/EndpointCountNormalization.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/EndpointCountNormalization.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/EndpointCountNormalization.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1f23b3626f9d627a845d1c5cd7bdfeb95e55692c`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/Checks/EndpointCountNormalization.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/Checks/EndpointCountNormalization.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSignedHeight`](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CanonicalSignedHeight.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.Checks.EndpointCriticalLine`](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/EndpointCriticalLine.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.Analysis.ErrorBounds.EvenIntegerWindow`](../../../../../RealFunctions/EvenIntegerWindow.lean/index.md) — import line 6; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [count_eq_of_window](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/EndpointCountNormalization.lean/declarations/count-eq-of-window.md) | 29 | `result-track:7d6cc31c33119a232c8e229bd979eacf4c26f6b4148177648afffeb588b499ed` |
| 2 | `theorem` | [positive_count_at_fifteen_lower](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/EndpointCountNormalization.lean/declarations/positive-count-at-fifteen-lower.md) | 40 | `result-track:459b436b678b53ed3509d2c134b18429bcf6e7c492e8f5dc648083aec214531d` |
| 3 | `theorem` | [counts_at_fifteen_of_strict_upper](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/EndpointCountNormalization.lean/declarations/counts-at-fifteen-of-strict-upper.md) | 47 | `result-track:46a698cd2f1262fe6cce85604e98ac2f587234bd18d6d423afc476066a055051` |
| 4 | `theorem` | [strict_upper_of_real_bound](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/EndpointCountNormalization.lean/declarations/strict-upper-of-real-bound.md) | 56 | `result-track:87d9c79a6746659c28a728bfb87da696faccb7025b5327dd385ecae98a9cc0ab` |
| 5 | `theorem` | [complete_pair_of_strict_upper](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/EndpointCountNormalization.lean/declarations/complete-pair-of-strict-upper.md) | 65 | `result-track:6ff75022fc0792f2765d0d96b7baf2589dc6aadb6d4e4ecacd5443c2aa97c540` |
| 6 | `theorem` | [bounded_line_of_strict_upper](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/EndpointCountNormalization.lean/declarations/bounded-line-of-strict-upper.md) | 90 | `result-track:0b1c9dd1990e2b99f2c88576b2e246ae003d4eebcd729bc726ae1515651834b4` |
| 7 | `theorem` | [bounded_line_of_positive_upper](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/EndpointCountNormalization.lean/declarations/bounded-line-of-positive-upper.md) | 104 | `result-track:6df4a3e2e57ea0c880c0dcf3bd1a66281e5ac15a2abe4b3e1b7d8b4729154ee4` |
| 8 | `theorem` | [bounded_line_of_count_window](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/EndpointCountNormalization.lean/declarations/bounded-line-of-count-window.md) | 110 | `result-track:54a487990d96e510463edaf5e8e66d39db49c0444ea096b44dcf83d818489b1e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d348c0e419b837611619fb5acfa625bbda8aabf2afecd197281bef30ae897f06 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/Checks/EndpointCountNormalization.lean","GRWTSK/_verification/specifications/NumberTheory/Zeta/Riemann/Checks/EndpointCountNormalization.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
