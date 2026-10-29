# Verification target: GRWTSK.Analysis.InnerProductSpace.SignedWindowRootBounds

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e9722238202ea6a32049e45d036a9d1e60cf9af9",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/InnerProductSpace/SignedWindowRootBounds.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/SignedWindowRootBounds.lean/index.md) · [Full source](../../../../MeasureAndIntegration/SignedWindowRootBounds.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e9722238202ea6a32049e45d036a9d1e60cf9af9`.

Source path: `GRWTSK/Analysis/InnerProductSpace/SignedWindowRootBounds.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/InnerProductSpace/SignedWindowRootBounds.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.InnerProductSpace.SignedWindowPacketCertificates`](../../../../MeasureAndIntegration/SignedWindowPacketCertificates.lean/index.md) — import line 1; pinned internal source present.
- [`GRWTSK.Analysis.Integration.QuadraticRootTransport`](../../../../MeasureAndIntegration/QuadraticRootTransport.lean/index.md) — import line 2; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [narrow_root_transport](../../../../MeasureAndIntegration/SignedWindowRootBounds.lean/declarations/narrow-root-transport.md) | 19 | `result-track:a5a2bd299556b172fe8305b350a9cb78fbea59614d5eda0068101e1977dc7468` |
| 2 | `theorem` | [narrow_energy_budget](../../../../MeasureAndIntegration/SignedWindowRootBounds.lean/declarations/narrow-energy-budget.md) | 48 | `result-track:c44ef8e97fa8c385107faa8be6042b516e641a0dbcd78d2f1c55fbce9d818649` |
| 3 | `inductive` | [SharpBudgetDerivation](../../../../MeasureAndIntegration/SignedWindowRootBounds.lean/declarations/sharpbudgetderivation.md) | 63 | `declaration-track:13053ac9e706bebf5baf6e76367536b13d003bf10af6bbfe48bd3a4b0a6c0c40` |
| 4 | `theorem` | [SharpBudgetDerivation.sound](../../../../MeasureAndIntegration/SignedWindowRootBounds.lean/declarations/sharpbudgetderivation-sound.md) | 72 | `result-track:7f8d6c06d8a70c9d25dacb628ebee8eec8eec096979c9d1416db875fa4faf87c` |
| 5 | `theorem` | [uniform_sharp_charts_return](../../../../MeasureAndIntegration/SignedWindowRootBounds.lean/declarations/uniform-sharp-charts-return.md) | 80 | `result-track:a405bf6464bc99862e028d9584eb5d64c8989524d83952898bb4cfc03dbd6744` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=990465c286c997058956a402fb700b113e416d8443b2e5c1d4904247b760efe9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/InnerProductSpace/SignedWindowRootBounds.lean","GRWTSK/_verification/specifications/Analysis/InnerProductSpace/SignedWindowRootBounds.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
