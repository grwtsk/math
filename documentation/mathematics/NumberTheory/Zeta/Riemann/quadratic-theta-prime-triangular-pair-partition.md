# Triangular autocorrelation pair partition

The full autocorrelation bookkeeping is now explicit at the pair-space level.

For

[
P_N=[0,N)	imes[0,N),
]

the source defines three regions:

- zero offset: (a=b);
- positive offset: (b<a);
- negative offset: (a<b).

It proves these regions are disjoint and cover (P_N), and therefore any
pair-sum decomposes as

[
sum_{P_N}f
=
sum_{a=b}f
+
sum_{b<a}f
+
sum_{a<b}f.
]

The source also proves exactly

[
oxed{
G_N(t)overline{G_N(t)}
=
sum_{(a,b)in P_N}
e^{2pi iat}overline{e^{2pi ibt}}.
}
]

Combining the two results gives a three-region decomposition of the geometric
block autocorrelation.

The remaining combinatorial theorem is now
`TriangularOrderRegionsToDiagonalsClaim`: reindex the positive and negative
order regions by the offset (d=|a-b|), matching the diagonal sums already
proved in the previous module.

Status:
`SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
PAIR_PARTITION_SOURCE_WRITTEN / ORDER_REGION_REINDEXING_OPEN`.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c33bcf10c53b29546667a4d4dcbcf14c6561c63f8dd0abe92758c2d3840fe12a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_APPLICABLE. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":[],"status":"NOT_APPLICABLE","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
