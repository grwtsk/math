# Integer quota allocation and discrepancy


Use integer quotas with denominator `Q>0`, nonnegative quotas summing to `Q`, and a positive floor for each required channel. Add quotas to accumulated credit, serve a channel with maximal credit, and subtract `Q` from its credit. Any maximal choice satisfies the proof; an executable implementation must pin stable-ID tie breaking. `debt_invariant` and `upper_from_lower` establish `-Q ≤ D_c ≤ (m-1)Q`. `service_bound` proves `N*q_c ≤ Q*count_c(N)+(m-1)Q`; `no_starvation` gives arbitrarily many slots. Independent flooring of positive fractions fails.

The theorem concerns quantized quotas, not an unproved softmax quantizer. Changing the eligible set requires an epoch/credit-transfer policy. A finite machine adapter must additionally prove that intermediate credits, counts and products fit its integer representation; these mathematical integer proofs are not machine-overflow proofs.


## Source and verification scope

[Source](../../../GRWTSK/Combinatorics/QuotaDiscrepancy.lean). Status: **historical-source-description**. Credit and evidence limits (artifact:gitblob:e717d9762d6031755bcd6e700ca0aa087232db0f). Earlier checks bind their recorded revisions; no new proof acceptance.

**Current source scope.** Source links identify the existing mathematical modules. Earlier proposed bindings and verification receipts retain their recorded paths and hashes; this pointer repair records current bytes and does not claim fresh proof replay.

<!-- BEGIN GENERATED MATHEMATICS TOTALS -->

## Totals

Scope: this object guide and the current bytes of its registered primary source [`GRWTSK/Combinatorics/Sequences/QuotaDiscrepancy.lean`](../../../GRWTSK/Combinatorics/QuotaDiscrepancy.lean).

| Inventory | Total |
|---|---:|
| Object guide | 1 |
| Linked primary source file | 1 |
| Source declaration commands | 22 |
| Theorem/lemma commands | 17 |

Theorem/lemma commands are included in declaration commands. These are source syntax counts; compiler-generated declarations and proof acceptance are outside their scope.

[Count definitions](../_support/reference/library-pages.md#count-definitions) · [Structured inventory](../_support/reference/library-summary.json).

<!-- END GENERATED MATHEMATICS TOTALS -->

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0b752a47329be23cac6a94a77be5935d7694aaae997fbf452271d07fbab813a0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Combinatorics/Sequences/QuotaDiscrepancy.lean","GRWTSK/CombinatoricsAndDiscreteMathematics/Sequences/QuotaDiscrepancy.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
