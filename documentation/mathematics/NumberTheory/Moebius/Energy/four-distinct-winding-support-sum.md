# Four-distinct winding support sum

Issue: #917  
Parent: draft PR #914 at `29b7df06090c483645b23849f90c32648cd394f0`.

Let
```text
R = floor(b/d^2).
```

The lag-sensitive raw support ceiling is
```text
(b+1-z*d^2)*(b+1)^2.
```

Summing over `1<=z<=R` gives the arithmetic-series structure
```text
(b+1)^2 * [R*(b+1) - d^2*R*(R+1)/2].
```

The source records a division-free doubled version of this identity and the safe upper bound
```text
supportSum <= R*(b+1)^3.
```

Since `d^2*R <= b`, this yields
```text
d^2 * supportSum <= b*(b+1)^3,
```
or over the reals
```text
supportSum <= b*(b+1)^3/d^2.
```

Thus the deterministic winding aggregation has reciprocal-square modulus scaling. It does not produce a d^{-4} gain.

No Möbius cancellation estimate is asserted.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c27ca0a4d7a0e9248c1d71fb27dc71ef34129976c224abfe98e96d98d9d76a23 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_APPLICABLE. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":[],"status":"NOT_APPLICABLE","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
