# Dispersion, Fourier-uniformity, all-shift, and pretentious connections

Local attribution: grwtsk contributors.

Status: SOURCE_PROOF_CANDIDATE / NOT_RUN / NOT_KERNEL_AUDITED.

This note formalizes connections around obstruction
weighted-binary-growing-shift-mean-square-v1. It extends the exact common-shift
factorization at commit b3a16f0c9a765a859d0fd58453cea7bce140783c.

## Exact target

The current source has reduced the relevant fourth moment to the mean square of

  C_r = integral_0^T sum_n
          a_j(n)a_j(n+r) K_N(n,u)K_N(n+r,u) du,

or, after expanding the frozen selected-divisor blocks,

  C_r = sum_(q,s | Q_j) mu(q)mu(s)
          sum_n a_j(n)a_j(n+r) G_T(qn,s(n+r)),

with every clipped endpoint and source mask retained.

The desired object is sum_(1<=r<=H) |C_r|^2 for H=N^(3/4+o(1)).

PickupShiftDispersionConnections.shiftMeanSquare_expand formalizes the finite
principle: form each complete weighted correlation first, square second, and
only then expand into m,n. This is the correct order for a dispersion argument.

## Connection 1: Barban--Davenport--Halberstam / dispersion

Classical BDH-type arguments gain information by averaging the square of an
arithmetic error over an external parameter before estimating off-diagonal
terms. The structural connection is exact: r is the external parameter here.

DispersionBridge records what an actual transfer must preserve:
- exact mean-square identification;
- payment of m=n diagonal;
- grouping of m!=n by their difference/gcd geometry;
- the common r-average;
- all four selected-divisor indices after squaring C_r;
- Gram weights, endpoints, rough/shared-prime masks and complete complement;
- a quantitative off-diagonal saving.

No BDH theorem is imported and no prime-in-progressions estimate is asserted to
apply to the pickup source.

## Connection 2: short-interval additive Fourier uniformity

Recent short-interval Fourier-uniformity results for Liouville control additive
exponential sums on intervals substantially shorter than the physical pickup
window H=N^(3/4). This is a close transform-level connection because the pickup
bad-shift reduction already identified an exact additive Fourier polynomial.

ShortFourierUniformityBridge records the missing source comparison:
multiplication by K_N(n,u), the rough Mobius mask, selected-divisor stage,
physical window and frozen endpoints must preserve enough Fourier uniformity.

No theorem for bare Liouville is promoted to the weighted pickup coefficients.

## Connection 3: Guo all-shift/growing-shift Chowla

Jizhou Guo, *Quantitative Logarithmic Chowla Correlations Uniformly over Growing
Shifts*, arXiv:2608.23500 (2026), gives logarithmically weighted Liouville
correlation control uniformly over a stated growing-shift regime and develops a
fourth-moment uncentring mechanism.

The connection is to the r-average and exceptional-shift architecture. The
pickup source has polynomial physical shifts, rough Mobius coefficients and
response weights, so the theorem is not directly consumed.

AllShiftExceptionalBridge records the necessary conditions: one compatible
exceptional set, exact weighted-correlation matching, weighted exceptional mass,
Gram preservation, growing-stage uniformity and survival of the saving.

## Connection 4: pretentious stability

The predecessor formalized reciprocal prime-coordinate loss after deleting
primes dividing a growing shift. Instead of demanding every centered prime
supply survive, one may attempt to retain a global nonpretentious-distance lower
bound on average over r.

PretentiousMeanSquareBridge records the stronger source requirements:
- original distance lower bound;
- averaged deletion loss;
- survival of the distance for the weighted source;
- a correlation theorem uniform in the growing shifts;
- response-weight preservation;
- an actual mean-square saving.

No ordinary Elliott theorem is instantiated.

## Exact next dispersion expansion

After expanding the mean square, the off-diagonal is

  sum_(r<=H) sum_(m!=n)
    a_j(m)a_j(m+r)a_j(n)a_j(n+r)
    W_r(m)W_r(n),

where W_r(n) is the complete response weight, or after selected-divisor
expansion a q,s,q',s' sum of products of two Gram weights.

The next source-exact grouping is by k=n-m (with orientations retained). Then

  n=m+k,
  n+r=m+k+r,

and the four arithmetic coefficients become

  a_j(m)a_j(m+r)a_j(m+k)a_j(m+k+r).

This is a parallelogram correlation in (m,r,k). It is more structured than an
arbitrary four-point correlation because the same two shifts r and k occur on
opposite edges.

The dispersion route is useful only if the r-average or k-grouping supplies
cancellation for this parallelogram AFTER the response weights and masks are
retained. Applying absolute values first loses the mechanism.

## Formalization neighborhood

Reused local source candidates:
- PickupFourthMomentShiftFactorization;
- PickupExceptionalShiftConnections;
- PickupFourthMomentConnections;
- MertensSignedAbelFourthMoment and WeightedFourthMoment at their own source
  scopes.

OpenAI ordinary two-point formalization remains fixed-form binary infrastructure.
It is not a mean-square polynomial-shift theorem.

## Evidence classification

Local source proof candidate: finite shift mean-square expansion.
BDH/dispersion: structural method connection only.
Short-Fourier uniformity: literature connection only.
Guo 2026: literature/method connection only.
Pretentious theory: structural connection only.
New cancellation estimate: none.
Compilation: NOT_RUN.
Fresh kernel replay: NOT_RUN.
Transitive axiom audit: NOT_RUN.
External theorem acceptance: NOT_CLAIMED.
RH claim: none.
