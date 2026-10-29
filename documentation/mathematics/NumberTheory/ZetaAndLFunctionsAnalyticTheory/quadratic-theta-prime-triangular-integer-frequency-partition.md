# Triangular integer-frequency partition

The last autocorrelation rewrite has been reduced to the support partition of the
integer interval.

The source now proves coefficient-level identification on all three interior
pieces:

[
w_N(d)=rac{N-d}{N},qquad 1le d<N,
]

[
w_N(-d)=rac{N-d}{N},
]

and

[
w_N(0)=1.
]

It also proves the positive- and negative-frequency sums agree exactly with the
two sums in `triangularAssembledFrequencySum`.

The endpoint frequencies (k=pm N) already have coefficient zero.

Thus the only remaining finite statement is
`TriangularIntegerFrequencyPartitionClaim`:

[
[-N,N]_{mathbf Z}
=
{-N,N}
sqcup
{-N<k<0}
sqcup
{0}
sqcup
{0<k<N},
]

expressed using the repository finsets.

Once that support identity is supplied, the source proves
`TriangularAssembledFrequencyKernelClaim`, which discharges the full
autocorrelation identity.

Status:
`SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
FREQUENCY_COEFFICIENTS_IDENTIFIED / INTEGER_INTERVAL_PARTITION_OPEN`.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=235fd919018462ae804323791a76cb9e7b1fa948eaaf1157fd326e6390587e3d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_APPLICABLE. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":[],"status":"NOT_APPLICABLE","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
