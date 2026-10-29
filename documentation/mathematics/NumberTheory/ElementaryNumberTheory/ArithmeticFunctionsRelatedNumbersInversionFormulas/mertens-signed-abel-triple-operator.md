# Actual three-cofactor Abel operator and response comparison

Contribution: grwtsk.

Status: **SOURCE_PROOF_CANDIDATE / NOT_RUN / NOT_KERNEL_AUDITED**.
This is finite source algebra and a quantitative conditional comparison. It does
not supply arithmetic cancellation, a small residual, or a new RH proof.

## Immutable source

- Repository: `grwtsk/math`.
- Source commit: `49af9aeffa9674a059d1b1fe631f6e94ad363215`.
- Reviewed parent: `3329b173bf0f17feefb572db8f84f87643210c4e`.
- Module: `GRWTSK.NumberTheory.Moebius.MertensSignedAbelTripleOperator`.
- Path: `GRWTSK/NumberTheory/Moebius/MertensSignedAbelTripleOperator.lean`.
- Git blob: `fe4b978e58a4cb1282a43595f1d609b16c4d810c`.
- Source SHA-256: `beddd2c90712058e4c8f95e660dde7adec59ca754a2393e40784fc9508c5d964`.

The source has five definitions, twenty public theorem scripts and one private
helper. These are lexical counts, not native elaboration or axiom evidence.
The existing root imports and dependency locks are unchanged.

## The operator is constructed from the actual arithmetic source

Keep

\[
Y=2^{j+1},\qquad Q=2^{\lfloor(j+1)/3\rfloor},\qquad
\mathcal P_j=\{p\text{ prime}:Q<p\le2Q\}.
\]

The preceding source identifies the three-prime prefix with the exact sum over
cofactors \(v=1,2,3\), provided \(N+h<Y\). For an arbitrary real sequence \(f\),
not yet specialized to Möbius, define

\[
C_{j,v}(f;h,N)=
\sum_{p,q,r\in\mathcal P_j}
\mathbf1_{h<pqrv\le N+h}
\mathbf1_{p\nmid qrv,\ q\nmid rv,\ r\nmid v}
 f(pqrv-h).
\]

The primes are ordered. All repeated-prime guards and both ordinary-window
endpoints are retained. `cofactorPrefix_congr_on_window` shows that this
functional reads only \(f(1),\ldots,f(N)\).

For the unchanged retained-depth functional \(\mathcal T_{j,L}\), set

\[
A_{j,L,v}(f)=\mathcal T_{j,L}\bigl(C_{j,v}(f;\cdot,\cdot)\bigr).
\]

Thus the original kernel, triangular support, depth window, variable prefix
length \(N=t+1\), and outer factor \(2/Y\) remain literal. The source defines
`cofactorOperator` as a real-linear map from natural-indexed real sequences to
`Fin 3 -> Real`, with coordinates corresponding to \(v=1,2,3\). It proves
linearity and finite input dependence; the operator is not chosen to fit the
Möbius values. Its coefficients depend only on the fixed arithmetic support and
kernel. It is not asserted to be self-adjoint, a zeta realization, or a particular
expander from the analytic literature.

## Exact signed readout

Let \(G_{3,j}\) be the existing `threePrimePrefix`. Source-supported equality and
finite interchange give

\[
\mathcal T_{j,L}(G_{3,j})
=\sum_{v=1}^{3}\mu(v)A_{j,L,v}(\mu)
=A_{j,L,1}(\mu)-A_{j,L,2}(\mu)-A_{j,L,3}(\mu).
\]

The restriction \(N+h<Y\) is paid by the actual kernel support. No equality
outside that support is assumed. The two main declarations are
`threePrimePrefix_eq_cofactor_sum` and `triple_bulk_eq_three_responses`.
All three cofactor values are genuine source possibilities; cofactor three
occurs at \(j=19\), \(3\cdot67\cdot71\cdot73=1041783<1048576\).

## Quantitative residual comparison

For a candidate three-response profile \(b\), define

\[
\mathcal R_{j,L}(b)=\sum_{v=1}^{3}
\bigl(A_{j,L,v}(\mu)-b(v)\bigr)^2.
\]

The squares occur AFTER the original weighted prime, shift and depth sums.
This is not a termwise absolute-value replacement of the arithmetic source.
The finite three-coordinate Cauchy inequality gives

\[
\left|\mathcal T_{j,L}(G_{3,j})-
[b(1)-b(2)-b(3)]\right|^2\le3\mathcal R_{j,L}(b).
\]

This is `triple_residual_sq_le`. In particular, for \(\varepsilon\ge0\),

\[
\mathcal R_{j,L}(b)\le\varepsilon^2/3
\quad\Longrightarrow\quad
\left|\mathcal T_{j,L}(G_{3,j})-[b(1)-b(2)-b(3)]\right|\le\varepsilon.
\]

A candidate profile and this residual estimate are NOT constructed by the
comparison theorem. Choosing \(b=A(\mu)\) makes the residual zero but merely
restates the original source. Choosing \(b=0\) makes the residual the actual
three-response square energy, which is not known to be small.

The norm premise is sufficient, not necessary. The response vector \((1,1,0)\)
has signed readout zero and squared norm two. Requiring a small norm could
discard useful cancellation between the three coordinates. No converse or
equivalence between norm control and signed cancellation is claimed.

## Full-packet comparison and the unchanged unsifted term

Define only as notation for the existing signed terms

\[
H_{j,L}=\mathcal T_{j,L}(U_j)-\mathcal T_{j,L}(F_{0,j})
-\tfrac12\mathcal T_{j,L}(G_{2,j}).
\]

Here \(U_j\) remains the unsifted prefix, \(F_{0,j}\) the one-prime prefix, and
\(G_{2,j}\) the two-prime prefix. None has been bounded or dropped. The existing
bulk identity is exactly

\[
B_{j,L}=H_{j,L}-\tfrac16\mathcal T_{j,L}(G_{3,j}).
\]

For \(L(j)=\lfloor\sqrt Y\rfloor\), let \(P_j\) be the complete signed packet.
The previously established source-level boundary comparison is
\(|P_j-B_{j,L}|\le2\). Therefore the new source proves

\[
\boxed{\mathcal R_{j,L}(b)\le\varepsilon^2/3,\quad\varepsilon\ge0
\ \Longrightarrow\
\left|P_j-\left[H_{j,L}-\tfrac16(b(1)-b(2)-b(3))\right]\right|
\le2+\varepsilon/6.}
\]

The declaration is `abs_full_packet_sub_profile_model_le`. The factor \(1/6\)
and the signs are preserved. The only existing approximation before the
candidate profile is still the two-unit boundary allowance.

## What three outputs do not prove

For one-bounded inputs, the new elementary source estimate is only

\[
|A_{j,L,v}(f)|\le2\,|\mathcal P_j|^3.
\]

This is `abs_cofactorResponse_le_card_cube`. Growing prime tuples are still
summed. Finite output dimension, coefficient positivity, or linearity does not
supply a subpolynomial arithmetic bound. No claim of contraction or spectral
cancellation follows from this allowance.

A future analytic comparison must supply an independently controlled profile
and its actual response error, or estimate the signed readout directly. It must
also control the unchanged signed combination with \(H_{j,L}\). This increment
handles the three-prime part only; it does not finish the unsifted, one-prime,
or two-prime analytic estimates or improve the growth exponent.

## Verification and provenance

Native compilation, fresh kernel replay and transitive axiom audit: **NOT_RUN**.
No prior source acceptance is inherited. The passive exact-source specification
is under `docs/verification/NumberTheory/Moebius/MertensSignedAbelTripleOperator/`.
It lists the public declarations, private-helper obligation, commands, source
pins and inference controls. Operational execution and receipts belong outside
math in `grwtsk/noeaaeue`; this documentation dispatches nothing.

The construction is local finite arithmetic and real linear algebra using the
existing GRWTSK definitions and their Mathlib dependencies. No analytic paper
theorem, entropy theorem, or arithmetic-expander result is imported here, and
no historical influence is inferred from a resemblance of methods. Upstream
attribution and licenses remain in force.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e165f06bdf2d3a7e2555acdfbb367539d534006de764d14d2c0214b15d5db1a3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Moebius/MertensSignedAbelTripleOperator.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
