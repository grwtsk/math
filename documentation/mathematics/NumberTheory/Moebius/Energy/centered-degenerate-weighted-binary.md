# Degenerate four-Möbius collisions as squarefree-weighted binary strata

Issue: #892  
Parent: draft PR #891 at `a3b342558abfa80e2743a1c54e8d4b0dcbacd7e8`.

The degenerate collision locus has three geometries:
```text
h+g = ell
h = ell+g
g = ell+h.
```

In each case one affine Möbius argument is repeated. Therefore the quartic product has the structural form
```text
mu(a)^2 * mu(b) * mu(c).
```

The repeated factor is deliberately retained exactly. It is a squarefree weight and is not replaced by 1.

The source defines the three collision strata and scripts their partition of the degenerate four-Möbius surface on positive shifts. The three relations are pairwise exclusive when `ell,h,g>0`.

This reduces the degenerate analytic frontier from genuine four-point cancellation to squarefree-weighted binary correlations. A separate theorem is still required to estimate those weighted correlations.

Status:
```text
SOURCE_DRAFT
NOT_RUN
NOT_KERNEL_AUDITED
DEGENERATE_WEIGHTED_BINARY_SOURCE_DRAFT
SQUAREFREE_WEIGHTED_BINARY_ESTIMATE_OPEN
FOUR_DISTINCT_CORRELATION_ESTIMATE_OPEN
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=689c82f34e88e354a33c3417c2dd5ec489b5a057354ed8c15a2afa7bd725d943 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_APPLICABLE. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":[],"status":"NOT_APPLICABLE","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
