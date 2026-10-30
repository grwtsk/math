# Exact Fourier reduction of weighted supply-bad shift mass

Local attribution: grwtsk contributors.

Status: SOURCE_PROOF_CANDIDATE / NOT_RUN / NOT_KERNEL_AUDITED.

## Source

Freeze the original stage and horizon. On any exact retained core interval I, put

  c_n(u) = a_j(n) K_N(n,u) 1_(n in I).

For d>=0 define the literal integrated shift correlation

  C_d = integral_0^T sum_n c_n(u)c_(n+d)(u) du,

with c_m=0 outside I. This retains the rough Mobius coefficient, every selected
divisor in K_N, the frozen physical horizon, terminal support and the chosen
source interval. Mask/top/shared allocations must be restored according to the
consumer; they are not absorbed into this definition.

Choose an integer M>2 max(I) and zeta=exp(2 pi i/M). Define

  P_u(k)=sum_n c_n(u) zeta^(k n),
  S(k)=integral_0^T |P_u(k)|^2 du.

Finite expansion and root-of-unity orthogonality give, for every shift d in the
nonaliased range,

  C_d = (1/M) sum_(k=0)^(M-1) S(k) zeta^(k d).

Thus the ORIGINAL weighted shift contribution is an additive Fourier
coefficient of the integrated power spectrum. No Dirichlet-polynomial
replacement has occurred.

Parseval gives the exact identity

  sum_(d mod M) |C_d|^2 = (1/M) sum_k S(k)^2.

Because the source is supported in an interval shorter than M/2, the positive
physical shifts occupy a nonaliased subset of the cyclic coefficients.

## Weighted supply-bad mass

For any finite Bad subset of physical shifts, Cauchy--Schwarz gives

  sum_(d in Bad) |C_d|
    <= sqrt(#Bad) * sqrt(sum_(physical d) |C_d|^2)
    <= sqrt(#Bad/M) * sqrt(sum_k S(k)^2).

Using the previously proved supply-depletion count

  #Bad <= J H/(epsilon H0)

yields

  sum_(d in Bad) |C_d|
    <= sqrt(J H/(epsilon H0 M)) * sqrt(sum_k S(k)^2).

This is the exact weighted-exceptional reduction. The exceptional density enters
with a square root. Cardinality is now coupled to an actual source norm rather
than to a free pointwise supremum.

## Fourth-moment form

By definition,

  sum_k S(k)^2
   = integral_0^T integral_0^T
       sum_k |P_u(k)|^2 |P_v(k)|^2 du dv.

Expanding the finite Fourier sum,

  (1/M) sum_k |P_u(k)|^2 |P_v(k)|^2
   = sum_(n1+n2=n3+n4)
       c_n1(u)c_n2(v)c_n3(u)c_n4(v),

where equality is literal rather than modulo M because M exceeds twice the
source diameter. Therefore the missing weighted bad-shift estimate is a
source-specific FOURTH MOMENT / ADDITIVE ENERGY estimate for the complete
response coefficients.

This retains all squareful zeros and shared-prime interactions in the four
coefficients. Taking absolute values termwise reconstructs a large deterministic
energy and gives no new cancellation.

## Why Guth--Maynard does not instantiate directly

Guth--Maynard large-value estimates concern multiplicative Dirichlet
polynomials sum a_n n^(-it). The exact shift transform above is the additive
polynomial sum c_n exp(i n theta). No source-preserving identity converting its
fourth moment to the required multiplicative Dirichlet-polynomial large-values
problem has been proved.

Therefore Guth--Maynard remains a literature connection, not a supplier for
this exact bridge.

## New precise obstruction

obstruction_id: pickup-bad-shift-fourth-moment-v1

To exploit the sparse supply-bad set without a pointwise worst-case bound, it is
sufficient to prove a quantitative bound on

  (1/M) sum_k S(k)^2

for the ORIGINAL response polynomial strong enough that its square root times
sqrt(#Bad) is below the desired source allowance.

Equivalently, prove cancellation in the additive-energy sum

  sum_(n1+n2=n3+n4)
    integral integral
      c_n1(u)c_n2(v)c_n3(u)c_n4(v) du dv.

This is not another RH-equivalent interface: it is the exact norm produced by
Cauchy--Schwarz and Fourier inversion when estimating the already-defined
supply-bad contribution.

## Complete-source boundary

The reduction applies to whichever exact disjoint source interval is inserted.
A complete RH-facing estimate still has to restore:
- low/core and terminal pieces;
- top rectangle and birth boundaries;
- near/far partition;
- far-only shared-prime correction;
- completed cofactor family and its exact complement;
- p=q and repeated-prime corrections;
- the original every-positive-rate endpoint target.

No proper interval fourth-moment estimate controls those pieces automatically.

## Evidence

New local mathematics: exact finite additive Fourier representation, Parseval
reduction, bad-mass Cauchy--Schwarz reduction, and fourth-moment expansion.
Guth--Maynard: literature connection only.
Compilation: NOT_RUN.
Fresh kernel replay: NOT_RUN.
Transitive axiom audit: NOT_RUN.
New cancellation estimate: none.
RH claim: none.
