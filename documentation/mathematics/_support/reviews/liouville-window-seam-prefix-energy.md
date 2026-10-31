# Exact wrap-window completion in anchored Liouville prefixes

Local attribution: grwtsk contributors.
Source scope: actual lambda(n), original positive labels, and the cyclic window
criterion of math `22f9e20885ac2dee753099c9f3c982ad8a0dfa1a`.
Predecessor local note: `cyclic-window-zero-mode-obligations.md`.
This is a finite mathematical derivation, not a verified Lean result.

## 1. The seam is a signed sum of two original boundary prefixes

Let N>=1 and 1<=H<=N be integers, and L(s)=sum_(n=1)^s lambda(n), L(0)=0.
For starts t=0,...,N-H the window is L(t+H)-L(t). For the remaining starts
write t=N-k, 1<=k<=H-1. They contain the last k source labels and then the
first H-k source labels. Thus, exactly,

    B_(N,H)(N-k)=R_N(k)+L(H-k),
    R_N(k)=L(N)-L(N-k).

No boundary label is discarded or replaced by a random sample. At H=1
there are no seam starts; all sums below are zero. At H=N every window
is the full prefix, including all seam windows, as a consistency check.

Define

    V_bulk=sum_(t=0)^(N-H) [L(t+H)-L(t)]²,
    A_seam=sum_(k=1)^(H-1) R_N(k)²,
    B_seam=sum_(s=1)^(H-1) L(s)²,
    C_seam=sum_(k=1)^(H-1) R_N(k)*L(H-k).

Then the complete uncentered statistic is

    V_N(H)=V_bulk+A_seam+B_seam+2*C_seam.              (1)

The cross term is signed. The right and left boundary pieces use the SAME
arithmetic source and original anchoring. There is no independence premise.

## 2. Exact quantitative options for the missing boundary supplier

Finite Cauchy--Schwarz gives

    |C_seam|<=sqrt(A_seam*B_seam),
    0<=V_N(H)-V_bulk<=(sqrt(A_seam)+sqrt(B_seam))²
                           <=2*(A_seam+B_seam).       (2)

Thus sufficient separate uncentered estimates are

    V_bulk<=K_bulk*N*H,
    A_seam+B_seam<=K_boundary*N*H,

with constants uniform in all chosen N,H. Equation (2) then supplies
V_N(H)<=(K_bulk+2*K_boundary)*N*H. Alternatively, estimate the SIGNED
combination A_seam+B_seam+2*C_seam directly, which may be smaller.
Neither boundary estimate is established here.

A stronger but transparent boundary supplier is

    A_seam<=K_right*H²,  B_seam<=K_left*H².

It gives seam energy <=2*(K_right+K_left)*H², which is <=the same constant
*N*H because H<=N. This is an anchored prefix-mean-square requirement;
it is not obtained by saying almost every translated interval is good.

The crude coefficient bound |lambda|<=1 gives each wrap window magnitude
at most H and hence seam energy <=(H-1)*H². It is compatible with N*H
only up to H=O(sqrt N) without a new saving. For H=ceil(N^(1-eta)),
eta<1/2, the crude seam-to-target ratio has order N^(1-2eta).
Equations (1),(2) identify the precise boundary arithmetic to improve.

## 3. What a pointwise all-prefix supplier would buy (conditionally)

Suppose epsilon>0, C>=0 and |L(s)|<=C*s^(1/2+epsilon) for every positive integer s. Then

    A_seam<=4*C²*H*N^(1+2epsilon),
    B_seam<=C²*H^(2+2epsilon),
    seam energy<=10*C²*N*H*N^(2epsilon).

The first inequality uses |L(N)-L(N-k)|<=2*C*N^(1/2+epsilon).
The second sums H-1 bounds each <=C²*H^(1+2epsilon). The third follows
from (2) and H<=N. These conditional estimates fit an ALL-POSITIVE-RATE
window criterion after the explicit exponent allowance, not the stronger
constant-rate diffusive supplier without N^(2epsilon).
No such pointwise supplier is assumed to be proved, and no pointwise bound
is inferred from a centered short-interval theorem.

## 4. Why ordinary centered average estimates leave this unpaid

A theorem averaging over many translated interval starts does not
by itself bound the two specially anchored families

    {L(s):1<=s<H},
    {L(N)-L(N-k):1<=k<H}.

The second varies interval length at ONE right boundary; the first varies
length at the original origin. An exceptional-set estimate for translations
can permit these particular boundaries to be exceptional. Their location,
measure/number, weights and parameter ranges must be priced before import.
Likewise, centering windows by H*L(N)/N leaves their global zero mode
uncontrolled. Restoring just the centered variance is not (1).

There is no assertion that the actual Liouville boundaries are bad. The
claim is that the available qualitative/centered theorem statement alone
has not supplied the displayed anchored quantitative bound. This is a
source-transport and arithmetic-estimate obligation, not a logical
contradiction or a new proof of RH.

## 5. Link to original causal energy and retained alternatives

Once an actual uncentered V_N(ceil(N^(1-eta)))<=A_eta*N*ceil(N^(1-eta))
bound is supplied uniformly, the published local-to-global and original
causal Abel transfer apply with their stated constants. No time-dependent
response or mixed-parity product is replaced in that transfer. The existing
square-divisor delay then returns a valid Liouville estimate to Möbius energy.

The separate complete signed cross-block/within-block supplier and the
prime-delay covariance route remain alternatives. None of these identities
proves their all-positive-rate arithmetic input.

Compilation, expected types, fresh kernel replay and transitive axiom audit:
NOT_RUN. Source publication is not attempted through the preserved new shared
Git lock. No native job, root import, dependency migration or added axiom.
