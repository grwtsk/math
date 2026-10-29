# Collision stratification of the centered affine four-Möbius surface

Issue: #890  
Parent: draft PR #887 at `bbe0cd414a8b816dbac5c32fbbaa4fe58cd29dc3`.

For positive half-shifts, the two entries within each symmetric pair are distinct. The only possible degeneracies therefore occur across the two pairs.

For
```text
c-h+r, c+h+r, c+ell-g+r, c+ell+g+r,
```
the source isolates the exact elementary degeneracy predicate
```text
h+g = ell
or h = ell+g
or g = ell+h.
```
Equivalently:
```text
h+g = ell or |h-g| = ell.
```

The source defines filtered admissible shift-pair sets
```lean
centeredAffineFourMobiusDegenerateShiftPairs
centeredAffineFourMobiusDistinctShiftPairs
```
and splits the fixed-center/fixed-lag correlation exactly:
```lean
parityCenteredAffineFourMobiusAtCenterLag_eq_degenerate_add_distinct.
```

The same split is propagated through the center sum:
```lean
parityCenteredAffineFourMobiusLagCorrelation_eq_degenerate_add_distinct.
```

This matters analytically because the degenerate locus is lower-dimensional and contains repeated Möbius arguments, while the complement is genuinely four-distinct. A future estimate should not be forced to treat both strata with one uniform four-point theorem.

No estimate is proved.

Status:
```text
SOURCE_DRAFT
NOT_RUN
NOT_KERNEL_AUDITED
FOUR_MOBIUS_COLLISION_STRATIFICATION_SOURCE_DRAFT
DEGENERATE_COLLISION_ESTIMATE_OPEN
FOUR_DISTINCT_CORRELATION_ESTIMATE_OPEN
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a72b495dda36348aa431098678e15c5b8fa87d4dcff3cb19286091f9fbed0ab9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_APPLICABLE. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":[],"status":"NOT_APPLICABLE","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
