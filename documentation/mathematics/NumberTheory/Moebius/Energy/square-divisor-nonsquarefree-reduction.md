# Square-divisor indicator: squarefree branch closed

Issue: #899  
Parent: draft PR #897 at `c39d2cc23e630b4b00c6ff9093e060ba76191883`.

Using the definition of `Squarefree`, the source proves that if `n` is squarefree and
```text
q^2 | n,
```
then `q` is a unit in the naturals, hence `q=1`.

Therefore
```text
squareDivisorSet n = {1}
```
for squarefree `n`, and
```text
sum_(q^2|n) mu(q) = mu(1) = 1.
```

The remaining elementary statement is now only
```lean
NonsquarefreeSquareDivisorMobiusCancellation
```
with content
```text
not Squarefree n ->
  sum_(q^2|n) mu(q) = 0.
```

The source proves this remaining supplier is equivalent to the full square-divisor indicator identity, since the squarefree branch has been discharged.

Status:
```text
SQUAREFREE_SQUARE_DIVISOR_BRANCH_SCRIPTED
NONSQUAREFREE_SQUARE_DIVISOR_CANCELLATION_OPEN
DIVISOR_SQUARE_RESTRICTED_BINARY_ESTIMATE_OPEN
FOUR_DISTINCT_CORRELATION_ESTIMATE_OPEN
NOT_RUN
NOT_KERNEL_AUDITED
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8af571360900c2212827aa6026bf787ccc7955d8cc92227845f3a034151e7d22 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_APPLICABLE. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":[],"status":"NOT_APPLICABLE","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
