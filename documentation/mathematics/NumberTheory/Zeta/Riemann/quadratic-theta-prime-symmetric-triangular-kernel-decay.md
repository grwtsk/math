# Symmetric triangular kernel: closed form implies decay

Mathlib already provides the denominator estimate needed for the Fejer-kernel
decay: Jordan's inequality.

For (|t|le1/2),

[
|pi t|le pi/2,
]

so

[
rac{2}{pi}|pi t|
le
|sin(pi t)|.
]

Hence

[
oxed{
|sin(pi t)|ge2|t|.
}
]

Assume the remaining classical finite-sum identity

[
K_N(t)
=
rac1N
left(
rac{sin(pi Nt)}{sin(pi t)}
ight)^2.
]

Since the numerator has absolute value at most (1), the source derives

[
|K_N(t)|
le
rac{1}{4N t^2},
qquad
0<|t|le1/2.
]

Therefore the previously separate
`SymmetricTriangularKernelDecayClaim`
is discharged by
`SymmetricTriangularKernelClosedFormClaim`.

The analytic frontier is now reduced to one theorem only: prove the explicit
finite symmetric triangular Fourier sum equals the sine-squared closed form.

Status:
`SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
CLOSED_FORM_IMPLIES_DECAY_SOURCE_WRITTEN / FINITE_SUM_CLOSED_FORM_OPEN`.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b188dbfcbe02fcf444c56f6fae8f295f0e52f75d06322ddce7f792eff017f539 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_APPLICABLE. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":[],"status":"NOT_APPLICABLE","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
