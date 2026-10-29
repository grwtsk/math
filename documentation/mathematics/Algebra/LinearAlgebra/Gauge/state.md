# State dynamics under a gauge


For a group acting on a state space, the state at step n changes to `(B n)⁻¹ • X n`. The original and transformed step equations are equivalent: `X (n+1) = A n • X n` exactly when the transformed state at n+1 equals `gaugeTransfer A B n` acting on the transformed state at n. The existing canonical transfer is `(B (n+1))⁻¹ * A n * B n`.

The interface retains the original `Group` and `MulAction` assumptions and independent group/state universes. The own-step inverse and both state indices are essential. A generic action fixture passes; rational-unit fixtures reject the wrong gauge step, omitted inverse and substituted current state.

This carries one source definition and one source theorem, with its compiler-generated equation recorded separately. The original step theorem has been checked for actual dependency on the canonical state definition and existing transfer. One direct-use wrapper is a synthetic verification fixture. GRWTSK added canonical placement, contract preservation and reuse checking. No further consumer coverage, regularity, bounded gauge, spectral equivalence, arithmetic bridge or RH proof is claimed.

The maintained formalization is MIT licensed under grwtsk contributors's direction with OpenAI Codex assistance; the historical authoring split is unknown. Lean and Mathlib retain their upstream identities, licenses and authors. The pinned group-action source credits Chris Hughes and Yury Kudryashov under Apache-2.0.

## Source and verification scope

[Source](../../../../../GRWTSK/Algebra/LinearAlgebra/GaugeState.lean). Status: **historical-source-description**. Credit and evidence limits (artifact:gitblob:e717d9762d6031755bcd6e700ca0aa087232db0f). Earlier checks bind their recorded revisions; no new proof acceptance.

**Current source scope.** Source links identify the existing mathematical modules. Earlier proposed bindings and verification receipts retain their recorded paths and hashes; this pointer repair records current bytes and does not claim fresh proof replay.

<!-- BEGIN GENERATED MATHEMATICS TOTALS -->

## Totals

Scope: this object guide and the current bytes of its registered primary source [`GRWTSK/LinearAlgebra/GaugeState.lean`](../../../../../GRWTSK/Algebra/LinearAlgebra/GaugeState.lean).

| Inventory | Total |
|---|---:|
| Object guide | 1 |
| Linked primary source file | 1 |
| Source declaration commands | 2 |
| Theorem/lemma commands | 1 |

Theorem/lemma commands are included in declaration commands. These are source syntax counts; compiler-generated declarations and proof acceptance are outside their scope.

[Count definitions](../../../_support/reference/library-pages.md#count-definitions) · [Structured inventory](../../../_support/reference/library-summary.json).

<!-- END GENERATED MATHEMATICS TOTALS -->

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5198beaff1e75d59d25fcac89b1fa34112d38cfbd6e2e1a5967d4b86fc35c2ac -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/GaugeState.lean","GRWTSK/LinearAlgebra/GaugeState.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
