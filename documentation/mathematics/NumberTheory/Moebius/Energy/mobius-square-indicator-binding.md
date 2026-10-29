# Möbius-square binding and square-divisor indicator frontier

Issue: #896  
Parent: draft PR #895 at `33d50f4bf67ac1f869a084d64f9297e8f8187c0c`.

Mathlib's `Mathlib.NumberTheory.ArithmeticFunction.Moebius` provides
```lean
ArithmeticFunction.moebius_sq
```
with content
```text
mu(n)^2 = if Squarefree n then 1 else 0.
```

The new source binds this as
```lean
mobiusSquare_eq_squarefreeIndicator.
```

Therefore the previous classical supplier
```text
mu(n)^2 = sum_(q^2 | n) mu(q)
```
has been reduced exactly to the smaller purely arithmetic identity
```text
sum_(q^2 | n) mu(q)
  = if Squarefree n then 1 else 0.
```

This remaining statement is named
```lean
SquareDivisorMobiusSumIsSquarefreeIndicator.
```

The source proves that it is equivalent to the previous divisor-square expansion and composes it into the existing collision adapter.

No local proof of the square-divisor indicator identity is claimed yet.

Status:
```text
MATHLIB_MOBIUS_SQUARE_BOUND
SQUARE_DIVISOR_INDICATOR_IDENTITY_OPEN
DIVISOR_SQUARE_RESTRICTED_BINARY_ESTIMATE_OPEN
FOUR_DISTINCT_CORRELATION_ESTIMATE_OPEN
NOT_RUN
NOT_KERNEL_AUDITED
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a0ca0e5ad3f2ad767b0f36996db85b912f96c0fc35e7af42c7c99d33e55988c8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_APPLICABLE. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":[],"status":"NOT_APPLICABLE","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
