# Exact moving-window boundary adapter

Issue: #605. Parent signed boundary factorization: #603 / draft PR #604.

Evidence state: **SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED / BOUNDARY_BILINEAR_ESTIMATE_OPEN**.

## One-depth reverse reindexing

For every boundary depth `t`, the base index is reversed by
```text
u = t-a.
```

The source proves
```text
cumulativeHarmonicShiftCorrelation(j,t,2^j)
 =
sum_(u<t+1)
  boundaryMovingWindowMertens(j,u)
  * μ(t-u+1).
```

The moving Möbius window has exact length `2^j`.

## Zero padding and outer Fubini

Boundary depths lie strictly below the left dyadic scale, so `t+1<=2^j`. The one-depth sum is zero-padded to `range(2^j)`, then the finite depth/offset sums are interchanged.

This proves the exact identity
```text
boundaryCumulativeCorrelationPacket(j)
 =
boundaryMovingWindowBilinearPacket(j).
```

## Adapter closure

The source constructs
```lean
boundaryMovingWindowBilinearAdapter :
  BoundaryMovingWindowBilinearAdapter
```
and therefore authors the unconditional exact factorization
```text
coreBoundarySignedPacket(j)
 =
2 * boundaryTerminalDrop(j)
  * boundaryMovingWindowBilinearPacket(j).
```

No analytic estimate is used.

## Remaining arithmetic source

Only
```lean
SubpolynomialBoundaryMovingWindowBilinearPacket
```
remains on this boundary branch.

## Nonclaims

No bilinear estimate, Lean/Lake execution, kernel acceptance, merge, or RH proof is claimed.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ab4d0c9de3a306eecc7f1a0f8170efa2e28a87eaf2fb4a3ea85a058ae803173c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_APPLICABLE. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":[],"status":"NOT_APPLICABLE","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
