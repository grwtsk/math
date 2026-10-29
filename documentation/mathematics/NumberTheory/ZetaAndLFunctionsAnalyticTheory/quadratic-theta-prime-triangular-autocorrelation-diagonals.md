# Triangular autocorrelation diagonals

The autocorrelation identity is now reduced to an explicit finite partition.

For fixed offset (d), the positive diagonal consists of pairs

[
(a,b)=(b+d,b),qquad 0le b<N-d.
]

Every such pair contributes the same phase:

[
e^{2pi i(b+d)t},
overline{e^{2pi i b t}}
=
e^{2pi i d t}.
]

Therefore the source proves

[
oxed{
sum_{b<N-d}
e^{2pi i(b+d)t}
overline{e^{2pi i b t}}
=
(N-d)e^{2pi i d t}.
}
]

The negative-offset diagonal is the conjugate expression, and

[
rac{N-d}{N}
]

is proved to equal the previously defined triangular coefficient for (d<N).

Thus both the phase algebra and the multiplicity on every individual
autocorrelation diagonal are closed.

The only remaining autocorrelation theorem is
`GeometricBlockDiagonalPartitionClaim`: partition the full double sum
(G_N(t)overline{G_N(t)}) into the zero, positive, and negative offset
diagonals.  No analytic estimate is involved in that remaining step.

Status:
`SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
AUTOCORRELATION_DIAGONALS_PROVED / DOUBLE_SUM_PARTITION_OPEN`.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7b58258cd2352b6f880fccd7d3fbf4422c30f08728b4509ddbefc956762f0bbc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_APPLICABLE. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":[],"status":"NOT_APPLICABLE","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
