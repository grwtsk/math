# Fejer first-moment harmonic summation

The finite reciprocal-sum supplier is now source-proved.

Mathlib already provides

\[
H_n
=
\sum_{1\le d\le n}\frac1d
\]

through \`harmonic_eq_sum_Icc\`, together with

\[
H_n\le1+\log n
\]

through \`harmonic_le_one_add_log\`.

The source specializes these at \(n=2X\) and closes the previously isolated
first-moment harmonic bound.

Combining the pointwise estimate

\[
d\,\kappa_{4X,N}(d)
\le
\frac{X}{Nd}
\]

with the finite reciprocal sum gives

\[
\boxed{
\sum_{1\le d\le2X}
d\,\kappa_{4X,N}(d)
\le
\frac{X}{N}\bigl(1+\log(2X)\bigr).
}
\]

Therefore the complete arithmetic tail budget has the form

\[
\boxed{
\log(4X)\,
\frac{X}{N}\,
\bigl(1+\log(2X)\bigr).
}
\]

No further kernel or summation theorem is needed on this branch.

The remaining substantive supplier is now only
\`NonAliasingPrimePrefixFejerFirstMomentComparison\`: prove that the actual
sharp-minus-smoothed prime-prefix discrepancy for the corrected period-\(4X\)
operator is bounded by this first-moment budget.

Status:
\`SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
FINITE_HARMONIC_SUMMATION_SOURCE_PROVED /
FIRST_MOMENT_BUDGET_SOURCE_PROVED /
SHARP_STEP_CONVOLUTION_COMPARISON_OPEN\`.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=caae282294f31fbebe45e70b868e2516bae9f4198a6e3254ec68125c6423e354 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_APPLICABLE. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":[],"status":"NOT_APPLICABLE","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
