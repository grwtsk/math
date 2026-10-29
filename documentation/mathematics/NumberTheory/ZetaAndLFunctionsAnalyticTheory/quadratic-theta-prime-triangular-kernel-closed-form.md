# Triangular kernel closed form and decay

The final phase-cancellation step in the explicit triangular/Fejer kernel
calculation is now source-proved.

For the phase
[
u=e^{i	heta},
]
Mathlib's complex norm identity gives
[
|u|=1.
]
Therefore
[
u\overline{u}=|u|^2=1.
]

Applied to the half-angle representation already established for the geometric
block,
[
G_N(t)
=
e^{pi i(N-1)t}
rac{sin(pi Nt)}{sin(pi t)},
]
this yields
[
rac1N G_N(t)overline{G_N(t)}
=
rac1N
left(
rac{sin(pi Nt)}{sin(pi t)}
ight)^2
]
for
[
0<|t|lerac12.
]

Combined with the source-proved autocorrelation identity
[
K_N(t)=rac1N G_N(t)overline{G_N(t)},
]
the classical off-boundary Fejer closed form follows:
[
oxed{
K_N(t)
=
rac1N
left(
rac{sin(pi Nt)}{sin(pi t)}
ight)^2.
}
]

Jordan's inequality, already formalized on this branch, then gives
[
oxed{
|K_N(t)|lerac1{4Nt^2}.
}
]

Thus the explicit kernel closed-form and pointwise-decay obligations are
closed at source level.  The next frontier is no longer the kernel itself; it
is the propagation from this kernel decay estimate to the actual prime-prefix
smoothing error/tail decomposition.

Status:
`SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
TRIANGULAR_KERNEL_CLOSED_FORM_SOURCE_PROVED /
POINTWISE_KERNEL_DECAY_SOURCE_PROVED /
PRIME_PREFIX_SMOOTHING_PROPAGATION_OPEN`.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f6402e2ffd7e99e7777ee57f632fc0c7ad5ca342ee09da157621dfb637e4ee0f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_APPLICABLE. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":[],"status":"NOT_APPLICABLE","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
