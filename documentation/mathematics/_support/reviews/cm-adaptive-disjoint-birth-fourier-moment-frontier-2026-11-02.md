# Disjoint adaptive births and all-even-moment Fourier frontier

Date: 2026-11-02. Mathematical direction: grwtsk contributors; formalization assistance: OpenAI.
Status: MATHEMATICAL_DERIVATION / SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.

## Exact source and geometric transport

Keep the original real Mobius coefficient mu(n), the original causal pickup
r_n(u)=2(n^(-1/2)-exp(-u/2)) for u >= log n and zero before that birth,
the closed dyadic indices 1..2^j, and the actual pickupEnergy.
No modular transformation on spatial sites changes any arithmetic coefficient.
Nonunits, squareful zeros, both parities and every mixed signed square term remain.

Set h_n=1/(n+1), n>=1, and theta=Real.smoothTransition:
s_n(u)=2 theta((u-log n)/h_n)*(n^(-1/2)-exp(-u/2)).
Its finite inventory is F_sm,j(u)=sum_(1<=n<=2^j) mu(n)s_n(u).
Let E_j=F_j-F_sm,j, where F_j is the original fixed-inventory wave.

## Disjointness and exact return

For n>=1,
log(n+1)-log n = -log(n/(n+1)) >= 1/(n+1)=h_n,
by log(y)<=y-1 for y>0. Thus [log n,log n+h_n]
is contained in the source birth cell [log n,log(n+1)].
The only atoms modified at a time u>=0 are in its current birth cell;
at integer-log endpoints, the original response vanishes or the transition
has returned to one. The exact identity F_j=F_sm,j+E_j holds. Consequently
F_j^2=F_sm,j^2+2F_sm,j E_j+E_j^2. The mixed term is not dropped.

## New analytic estimate (paper proof; Lean integral gate NOT_RUN)

For u=log n+s, 0<=s<=h_n,
r_n(log n+s)=2 n^(-1/2)(1-exp(-s/2)).
Since 0<=1-exp(-s/2)<=s/2 and 0<=theta<=1, the signed defect
obeys |mu(n)(r_n-s_n)|<=s/sqrt(n) on that interval and vanishes outside.
The intervals are disjoint, so
  integral_0^infinity |F-F_sm|^2 du
   <= sum_(n>=1) integral_0^h_n s^2/n ds
   =  sum_(n>=1) 1/(3 n (n+1)^3).
Because (n+1)^2 >=4 for every n>=1,
  1/(3 n(n+1)^3) <= 1/(12 n(n+1)),
and the reciprocal series telescopes to 1. Hence the global defect
is <=1/12, with no Mertens or RH hypothesis. In particular, for T>=0,
  H(T) <= 2 H_sm(T) + 1/6
and
  H_sm(T) <= 2 H(T) + 1/6.
These use the elementary (a+b)^2<=2a^2+2b^2 and
(a-b)^2<=2a^2+2b^2, integrated over physical time.
The Lean source currently defines AdaptiveErrorBudget:Prop and exact
energy return, but does NOT assert the integral <=1/12 as a proved theorem.

## Original-frequency Fourier and Schwartz transfer

Define b_n(u)=mu(n)s_n(u), with the same original integer n, and
W_j(u,x)=sum_(1<=n<=2^j) b_n(u)*exp(2 pi i n x).
Then W_j(u,0)=F_sm,j(u). Orthogonality gives
  integral_0^1 |W_j(u,x)|^2 dx=sum_n b_n(u)^2.
Since |s_n(u)|<=r_n(u) for n>=1,u>=0,
the complete spatial L2 time integral is at most the old
diagonal, <=2T^2 at the source dyadic horizon T.

Choose chi in Schwartz(R) whose Fourier transform has support
(-1/3,1/3) and value 1 at zero. Poisson summation yields
sum_(m in Z)chi(x+m)=1; f_u(x)=chi(x)W_j(u,x) is Schwartz and
sum_m f_u(x+m)=W_j(u,x). For each fixed finite 1<=p<infinity,
the corresponding R and torus Lp norms are comparable by the bounded
positive periodic weight sum_m |chi(x+m)|^p. No periodization
or wave dispersion estimate by itself bounds the coherent x=0 trace.

## The exact fourth moment and all-k frontier

For finite coefficients b_n(u), set
 C_h(u)=sum_{n,n+h in source inventory} b_n(u)b_(n+h)(u)
for h>=0. Then Fourier orthogonality gives the signed identity
  integral_0^1 |W_j(u,x)|^4 dx
   = C_0(u)^2 + 2 sum_(h>=1) C_h(u)^2.
This identity retains original signs *inside* every correlation.
It does not replace the source by |mu| before forming C_h.
The Lean leaf defines each literal shift and the nonnegative
algebraic ledger. Its integral/L4 identity remains a formal proof gate.

For every fixed k>=1 define
  M_k(T)=integral_0^T integral_0^1 |W_j(u,x)|^(2k) dx du
at T=dyadicTime j. A new sufficient arithmetic supplier is
  forall k>=1, exists C_k>=0,A_k in N,
    forall j, M_k(dyadicTime j)<=C_k (1+dyadicTime j)^A_k.
The classical Nikolskii estimate for trigonometric polynomials supported
on frequencies <=2^j implies
  H_sm(T) <= K_k (2^j)^(1/k) T^(1-1/k) M_k(T)^(1/k).
Here (2^j)^(1/k)=exp(T/k) for T=j log 2.
Fix any requested epsilon>0; take k>1/epsilon and absorb
the polynomial factors into exp(epsilon T). Combine with
the paid 1/12 defect to return an all-positive-rate bound for
the ORIGINAL pickupEnergy on the exact dyadic grid.
The existing good-scale return would then imply canonical RH,
but this route is wholly CONDITIONAL on the new arithmetic moment bounds.
The exact Nikolskii proof and transfer to the accepted analytic
consumer require Lean elaboration/replay and a no-axiom audit.

## Source comparison and non-circularity

Existing direct sources:
- CMWindowedBirthResidueRegularization.lean: width 1/(k+2), source-minus-smoothed
  error and complete signed mixed terms. The new width is source-indexed.
- DyadicSignedResidueWaveform.lean: exact original parity/residue return.
- CMDiscreteMoebiusResidueWaypoints.lean: original signed atom on an actual
  transformed discrete spatial lattice; geometry alone is no cancellation.
- PickupEndpointQuadrature.lean: |endpointSum(T)-pickupCross(T)|<=1/4,
  with the original signed five-moment polynomial.
- openai/math@4eaee87548250b2682affda7d05d947c05554bae,
  WavePackets/{Poisson,Periodic,Lp}.lean, and
  LocalSmoothing/Main.lean: distinct Schwartz/periodic/Euclidean mechanisms.

No source is changed, no new axiom/sorry/native trust or mock arithmetic
certificate is used. No fixed-k bound is represented as all-rate, and
the 1/12 smoothing allowance does not estimate the remaining signed
off-diagonal sum. Full arithmetic moment bounds are OPEN.

## Acceptance gates

1. Clean elaboration of both newly added leaves at Lean v4.34.1,
   Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612.
2. Fresh kernel replay and transitive axiom/opaque-helper audit; inspect exact
   expected declarations and the complete imports, not only this note.
3. Formalize disjoint-window support localization and the global <=1/12
   integral budget from original mathlib pickupResponse and smoothTransition.
4. Prove the actual Fourier fourth-moment identity with 2pi and the
   integer winding/full-inventory distinction, plus general all-k Nikolskii.
5. Supply a noncircular ALL-k arithmetic estimate (or the prior equivalent
   signed endpoint bound). A generic positivity or L2 spatial averaging
   theorem does not suffice.
