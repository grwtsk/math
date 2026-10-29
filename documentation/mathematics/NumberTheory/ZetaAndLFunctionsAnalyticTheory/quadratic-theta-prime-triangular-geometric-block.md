# Triangular geometric block

The symmetric-kernel closed form has been split into its finite algebraic
components.

Define

[
z(t)=e^{2pi i t},
qquad
G_N(t)=sum_{j=0}^{N-1}z(t)^j.
]

The new source proves the exact exponential form

[
G_N(t)
=
sum_{j=0}^{N-1}e^{2pi ijt},
]

and, whenever (z(t)
e1), the exact geometric-series quotient

[
oxed{
G_N(t)=rac{z(t)^N-1}{z(t)-1}.
}
]

This closes the geometric-series component using Mathlib's existing
`geom_sum_eq`.

The remaining finite algebra now has two named obligations:

1. `SymmetricTriangularKernelAutocorrelationClaim`
   [
   K_N(t)=rac1N G_N(t)overline{G_N(t)};
   ]

2. `TriangularGeometricBlockSineNormClaim`, converting that normalized squared
   modulus into
   [
   rac1Nleft(rac{sin(pi Nt)}{sin(pi t)}ight)^2.
   ]

The source proves these two claims imply the previously declared symmetric
triangular closed form.

Status:
`SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
GEOMETRIC_BLOCK_QUOTIENT_PROVED / AUTOCORRELATION_AND_SINE_CONVERSION_OPEN`.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=486c39524e75b05254664c2f6966812ce34661f96eea37e43f83d0367b6ed445 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_APPLICABLE. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":[],"status":"NOT_APPLICABLE","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
