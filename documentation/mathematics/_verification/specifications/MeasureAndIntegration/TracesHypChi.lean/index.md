# Verification target: Traces Hyp Chi

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c8dfa95eeb6b427582bfac10cceaa16f7400d322",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TracesHypChi/Variant2d86d289a05e18c06e3bda23ee570819c9c64197f6b5871b82486ffb9b31ad19.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/TracesHypChi.lean/index.md) · [Full source](../../../../MeasureAndIntegration/TracesHypChi.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c8dfa95eeb6b427582bfac10cceaa16f7400d322`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TracesHypChi/Variant2d86d289a05e18c06e3bda23ee570819c9c64197f6b5871b82486ffb9b31ad19.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TracesHypChi/Variant2d86d289a05e18c06e3bda23ee570819c9c64197f6b5871b82486ffb9b31ad19.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.ThmE.Hypotheses` — import line 13; external provider; requires a separately pinned dependency.
- `Zeta23.PrimeSideTemp` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [lam1q](../../../../MeasureAndIntegration/TracesHypChi.lean/declarations/lam1q.md) | 26 | `declaration-track:48fbd73fdb75555d9e0bfb63596331f86e0ac8c2ddd0a0923478f858f9965210` |
| 2 | `def` | [GentryChi](../../../../MeasureAndIntegration/TracesHypChi.lean/declarations/gentrychi.md) | 30 | `declaration-track:c7a311a4f7f23dd473ca625b5c07e30469adf298ff3e48325d9d1c2031269f63` |
| 3 | `def` | [trGtildeChi](../../../../MeasureAndIntegration/TracesHypChi.lean/declarations/trgtildechi.md) | 34 | `declaration-track:8920171ac0a8ae6c64bd695d7f10642b367dd4301a6e09a7246b6976cd8c3488` |
| 4 | `def` | [trGtildeSqChi](../../../../MeasureAndIntegration/TracesHypChi.lean/declarations/trgtildesqchi.md) | 37 | `declaration-track:b49ce62262d4e0d2dfe84dd36fd24d1413f7cfe70b62d814a14a9841599f6091` |
| 5 | `def` | [mainTr2Chi](../../../../MeasureAndIntegration/TracesHypChi.lean/declarations/maintr2chi.md) | 41 | `declaration-track:2a31b9d89947598fee852a3ad3be45f86ba6229f346201758582b81fbaf4323b` |
| 6 | `structure` | [TracesBoundsChi](../../../../MeasureAndIntegration/TracesHypChi.lean/declarations/tracesboundschi.md) | 48 | `declaration-track:8aaef1f16122b4ed50f18e81ea28c53383b43dea6275d5cbf5f136f8e501d69b` |
| 7 | `def` | [ThmTracesHypChi](../../../../MeasureAndIntegration/TracesHypChi.lean/declarations/thmtraceshypchi.md) | 57 | `declaration-track:7b497f0f9f886fbbb0b5caef763684c44e010bfb1f95ac1a8a25fac13cecca43` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c1fb3b761269c8c0edecd9dc1349cd465ae2689ac61f40a98f736b190d54465c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TracesHypChi/Variant2d86d289a05e18c06e3bda23ee570819c9c64197f6b5871b82486ffb9b31ad19.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TracesHypChi/Variant2d86d289a05e18c06e3bda23ee570819c9c64197f6b5871b82486ffb9b31ad19.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
