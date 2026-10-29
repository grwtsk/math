# Fejer arithmetic reduction to universal L1 smoothing

The remaining arithmetic comparison is now factored into a universal
step-smoothing problem.

Define the arithmetic atom

\[
a(n)=\mathbf 1_{\mathbb P}(n)\log n-1.
\]

The source proves the exact sharp discrepancy identity

\[
D_X(m)
=
\sum_{2X<n\le m} a(n).
\]

It also proves the corrected Fejer-smoothed discrepancy is the same atom summed
against the smoothed prefix weight:

\[
S_{X,N}(m)
=
\sum_{2X<n\le4X}
W_{X,N,m}(n)\,a(n).
\]

Therefore

\[
\boxed{
D_X(m)-S_{X,N}(m)
=
\sum_{2X<n\le4X}
a(n)\,
\bigl(
\mathbf 1_{n\le m}-W_{X,N,m}(n)
\bigr).
}
\]

On the octave, the source uses the safe uniform envelope

\[
\boxed{
|a(n)|\le1+\log(4X).
}
\]

This corrects the earlier use of \(\log(4X)\) alone while preserving the same
power/logarithmic scale.

Hence the arithmetic error is reduced to

\[
|D_X(m)-S_{X,N}(m)|
\le
(1+\log(4X))
\sum_{2X<n\le4X}
\left|
\mathbf 1_{n\le m}-W_{X,N,m}(n)
\right|.
\]

The only remaining supplier is now purely combinatorial:

\`NonAliasingFejerSharpStepL1FirstMomentClaim\`

asserting that this L1 step-smoothing error is bounded by the period-\(4X\)
kernel first moment.

Status:
\`SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
ARITHMETIC_ATOM_DECOMPOSITION_SOURCE_WRITTEN /
SAFE_ATOM_ENVELOPE_SOURCE_WRITTEN /
ARITHMETIC_TO_L1_REDUCTION_SOURCE_WRITTEN /
SHARP_STEP_L1_FIRST_MOMENT_OPEN\`.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8e01023454975a2f5cff3add281a84eaefa976e83f4d13317a87daae281664f4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_APPLICABLE. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":[],"status":"NOT_APPLICABLE","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
