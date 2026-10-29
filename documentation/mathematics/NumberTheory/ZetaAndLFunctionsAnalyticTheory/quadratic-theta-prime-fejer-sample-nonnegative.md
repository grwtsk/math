# Fejer sampled-kernel nonnegativity

The sampled-kernel nonnegativity supplier is now source-proved.

The already established autocorrelation identity gives

\[
K_N(t)
=
\frac1N G_N(t)\overline{G_N(t)}
=
\frac1N |G_N(t)|^2.
\]

Hence the triangular kernel is real and nonnegative for every real argument,
including the zero residue where the off-boundary sine formula is not used.

For the corrected period-\(4X\) lattice sample

\[
\kappa_{4X,N}(r)
=
\frac1{4X}
\operatorname{Re} K_N(r/(4X)),
\]

the source therefore proves

\[
\boxed{\kappa_{4X,N}(r)\ge0}
\]

for every integer residue \(r\) whenever \(X>0\) and \(N>0\).

This discharges
\`PeriodFourXSampledKernelNonnegativeClaim\`.

The finite discrete-reproduction frontier is now reduced to one theorem only:

\[
\boxed{
\sum_{r\bmod 4X}\kappa_{4X,N}(r)=1
}
\]

under the alias-free cutoff \(0<N<4X\).

Status:
\`SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
SAMPLED_KERNEL_NONNEGATIVITY_SOURCE_PROVED /
DISCRETE_MASS_ONE_OPEN /
SHARP_STEP_COMPARISON_OPEN\`.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ea1e4b846006c1d5e5ea0041e6f7047f2f7a8810da1f3cd5944a6f03dda9803f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_APPLICABLE. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":[],"status":"NOT_APPLICABLE","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
