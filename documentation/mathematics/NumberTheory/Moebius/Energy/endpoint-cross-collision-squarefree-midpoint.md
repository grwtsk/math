# Squarefree-midpoint form of endpoint cross-collisions

Status: `SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED / SQUAREFREE_MIDPOINT_CORRELATION_ESTIMATE_OPEN`

Owner: #532. Direct parent: #527 / PR #530.

The parent cross-collision term is exactly
[
mu(x)mu(x+h)^2mu(x+2h).
]

Pinned Mathlib theorem:
```lean
ArithmeticFunction.moebius_sq :
  μ n ^ 2 = if Squarefree n then 1 else 0
```

The repository's actual wrapper is
```lean
def moebiusReal (n : ℕ) : ℝ := (ArithmeticFunction.moebius n : ℤ)
```
so the source proves
```lean
moebiusReal_sq_eq_squarefreeIndicator
```
and rewrites the collision term exactly as
[
mathbf 1_{mathrm{Squarefree}(x+h)},
mu(x)mu(x+2h).
]

No density or divisor expansion is used.

The filtered finite support is
```lean
mertensEndpointCrossCollisionSquarefreeMidpointBaseSet.
```

The endpoint observable
```lean
mertensEndpointCrossCollisionSquarefreeMidpointEnergy
```
is proved exactly equal to the parent progression energy and to the original cross-collision stratum.

The weighted observable
```lean
weightedMertensEndpointCrossCollisionSquarefreeMidpointEnergy
```
retains the exact reciprocal endpoint factor
[
4(1/b-1/(b+1))
]
and is exactly equal to the parent's weighted cross-collision term.

The all-scale adapter surface is
```lean
SubpolynomialWeightedMertensEndpointSquarefreeMidpointCrossCollision.
```
It is not inhabited.

The resulting arithmetic target is a signed two-endpoint Möbius correlation restricted to squarefree midpoints. A future divisor-square identity
[
mathbf 1_{mathrm{Squarefree}(m)}
=sum_{d^2mid m}mu(d)
]
may be useful, but is deliberately not claimed here.

Evidence:
```text
SOURCE_DRAFT
NOT_RUN
NOT_KERNEL_AUDITED
SQUAREFREE_MIDPOINT_CORRELATION_ESTIMATE_OPEN
```

No Lean/Lake execution, kernel audit, estimate, merge, or RH claim occurred.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d4945d271087e4e338fa4d5411df53ec4d73f4407f6a41b9395964e2a69cd336 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_APPLICABLE. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":[],"status":"NOT_APPLICABLE","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
