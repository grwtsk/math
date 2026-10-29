# Cyclic two-boundary support closure

The final universal interval-count supplier is now source-proved.

The source first proves the endpoint-aware predecessor formula.  If a cyclic
residue has arithmetic representative a, then subtracting one gives
representative a-1 unless a=1, in which case it wraps to 4X.

Using that formula, a unit shift can change the sharp interval membership only
at two residues:

- 2X+1, the first point inside the interval;
- m+1 modulo 4X, the first point after the interval.

Thus the source proves

S(X,m) subset {2X+1, m+1 mod 4X},

and hence

|S(X,m)| <= 2.

This discharges CyclicSharpUnitBoundarySupportCardClaim and therefore also:

- CyclicSharpUnitTranslationBoundClaim;
- CyclicSharpTranslationCardinalityClaim.

At source level, the universal cyclic smoothing combinatorics are now complete.

Status:
SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
PREDECESSOR_FORMULA_SOURCE_WRITTEN /
TWO_BOUNDARY_SUPPORT_CONTAINMENT_SOURCE_WRITTEN /
UNIT_SUPPORT_CARD_LE_TWO_SOURCE_PROVED /
UNIT_TRANSLATION_BOUND_SOURCE_PROVED /
CYCLIC_TRANSLATION_CARDINALITY_SOURCE_PROVED.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fc1ab576466e66ff58d497ccd7929a5b91c304fb6738db9282b18b731c74864c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_APPLICABLE. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":[],"status":"NOT_APPLICABLE","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
