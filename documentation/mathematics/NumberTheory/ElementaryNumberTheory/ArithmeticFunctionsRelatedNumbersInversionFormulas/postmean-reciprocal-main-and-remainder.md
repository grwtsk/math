# The post-mean kernel has a paid remainder and an unresolved reciprocal main

By grwtsk contributors. Written mathematics; no new Lean declarations.
Compilation, fresh kernel replay and transitive axiom audit: **NOT_RUN**.

## Exact source, profile and grid convention

Source chat:
https://chatgpt.com/g/g-p-6a9ce8907e348191a3f884d45ab4ad48-noeaaeue/c/6ae02348-86d4-83e8-b3e6-e5e06e1e920e,
assistant `9148b165-acda-42ba-adcd-eb9054fb9e63`, rendered-final SHA256
`fbbc55bd50ccd60d879b70bded1d6ceb66f51c227d263f58d9b541af4c6978e2`.
This is a direct finite-kernel deduction. It imports no external analytic cancellation theorem.
It does not identify different source grids or claim a bound for the complete signed source.

Fix integer j>=2, N=2^j, L=floor(sqrt N), integers
L<=M<Y<=min(2M,N), M>=64, U=floor(M^(1/3)), Delta=Y-M,
Q=product_(prime ell<=j)ell, and a(n)=mu(n)1_((n,Q)=1).
Choose a prime p dividing Q; put

\[
 S=\{s:s\mid Q/p,\ s\le M^{1/4}\},\quad
 \kappa=(1-1/p)\sum_{s\in S}{\mu(s)\over s},\qquad
 \theta(x)=\sum_{n\le x}{a(n)\over n}.
\]

Freeze eta=M^(-1/16), B=M^(1/6),
V=floor(Y/(U+1)), V_M=min(V,floor(M/U)).
The original source comes with its own disjoint boxes (D,2D] for the variable v
and [E,2E) for the inner integer d<=U. On any such cell, for r=s or ps, define

\[
 L_{r,Z}=\lfloor r\eta DE/Z\rfloor,\quad H_{r,Z}=\lfloor rBDE/Z\rfloor,
 \quad b_0(t)=1/2-\{t\},
\]
\[
 \Phi_{r,Z}(v,d)= {2Z\over rvd}b_0(r\eta DE/Z)
 +{1\over\pi}\sum_{L_{r,Z}<h\le H_{r,Z}}
 {\sin(2\pi hZ/(rvd))\over h},\qquad Z=M,Y.
\]

Empty inventories are empty sums; h is positive. Set
Gamma_Z(v,d)=sum_(s in S)mu(s)(Phi_(s,Z)-Phi_(ps,Z)).
For U<v<=V the literal original profile is

\[
 W(v)=\sum_{d\le U}a(d)
 (\Gamma_Y(v,d)-1_{v\le V_M}\Gamma_M(v,d)).
\]

On 1<=v<=U it is W(v)=kappa Delta theta(U)/v. These definitions retain the
original inner coefficient, both s/ps channels and the original box masks.
At a source boundary use its prescribed left-owned value. Different box grids
can produce different finite profiles and remainders; the theorem applies to
each specified profile separately. It does not change an anchored grid to an
origin-based grid. Clip existing boxes at U,2U or sqrt M without changing D.

Both endpoint channels are active through R=sqrt M. Indeed U+1<=sqrt M for
M>=64, so Y/(U+1)>=sqrt M; for any integer n<=sqrt M, n<=V.
Also M/U>=sqrt M, hence n<=floor(M/U). Thus no channel termination is omitted
in the following lower region. In particular 2U<=R for U>=4.

## Pointwise decomposition without a frequency-count loss

For every real t and complete positive integer interval A<=h<=H,

\[
 \left|{1\over\pi}\sum_{h=A}^H{\sin(2\pi ht)\over h}\right|\le4.
\tag{1}
\]

For completeness, let delta=distance(t,Z). At integer resonance the sum is zero.
Otherwise split a prefix at K=floor(1/(2delta)). The first K terms cost at most
pi, since |sin(2pi h delta)|/h<=2pi delta. A geometric-sum bound on every later
partial sum is <=1/sin(pi delta)<=1/(2delta); Abel summation bounds the remaining
tail by 1/(2delta(K+1))<1. A prefix is therefore bounded by pi+1. Subtracting
two prefixes and dividing by pi gives <4. This applies to complete windows,
not arbitrary subsets.

The difference of the boundary coefficients is exactly

\[
 {2\over rvd}\{Yb_0(r\eta DE/Y)-Mb_0(r\eta DE/M)\}
 ={\Delta\over rvd}+{2(YL_{r,Y}-ML_{r,M})\over rvd}.
\tag{2}
\]

The continuous terms cancel. Both YL_(r,Y) and ML_(r,M) belong to [0,r eta DE],
so the second term in (2) has magnitude <=2eta DE/(vd)<=2eta.
There is no assumed favorable floor-crossing sign and no lower bound on Delta.

By (1), the two endpoint sine windows cost at most8 for one r. Pairing s and ps
costs at most16 for all four complete windows. The two floor defects cost at
most4eta. Summing the exact reciprocal terms in (2) first gives

\[
 W(v)={C_0\over v}+R_C(v),\qquad C_0=\kappa\Delta\theta(U),
\]
\[
 |R_C(v)|\le(16+4\eta)|S|\sum_{d\le U}|a(d)|\le20|S|U.
\tag{3}
\]

This applies on every actual cell through sqrt M. Common frequencies, unmatched
frequencies and both boundary coefficients are all included in their original
complete endpoint inventories. No separate derivative or mask-change cost is dropped.

## Exact arithmetic main and quantitative proper-region remainders

For a clipped original cell C=(a,b] within (U,sqrt M], multiply (3) by the literal
a(n) and sum at its integer atoms. Then

\[
 \sum_{a<n\le b}a(n)W_C(n)
 =\kappa\Delta\theta(U)(\theta(b)-\theta(a))+E_C,
\]
\[
 |E_C|\le20|S|U\sum_{a<n\le b}|a(n)|.
\tag{4}
\]

Summing cells partitions the original integer inventory, so no box-count factor
appears. In particular

\[
 \sum_{U<n\le2U}a(n)W(n)
 =\kappa\Delta\theta(U)(\theta(2U)-\theta(U))+E_{\rm post},
 \qquad |E_{\rm post}|\le20|S|U^2.
\tag{5}
\]

Adding the unchanged mean row and continuing through R=sqrt M gives

\[
 \sum_{n\le\sqrt M}a(n)W(n)
 =\kappa\Delta\theta(U)\theta(\sqrt M)+E_{\rm low},
 \qquad |E_{\rm low}|\le20|S|U(\lfloor\sqrt M\rfloor-U)
 \le20|S|M^{5/6}.
\tag{6}
\]

These identities also retain both Abel residues and source jumps: they evaluate
that exact finite sum at its original atoms instead of bounding each derivative
piece separately. They give no favorable sign to the main or the remainder.

For every epsilon>0 there is C_epsilon independent of j,M,Y with
|S|<=C_epsilon M^epsilon on these frozen scales. One elementary justification:
Chebyshev's binomial bound yields theta_prime(x)<=4xlog2. Splitting primes at sqrt j
gives pi(j)<=sqrt j+8jlog2/log j. Hence log(2^pi(j))=o(j), whereas
M<2^j<(M+1)^2 implies j=O(log M). Since |S|<=2^pi(j), the assertion follows,
with a finite initial-range adjustment. This is a written elementary deduction,
not a numerical certificate.

Thus E_post=O_epsilon(M^(2/3+epsilon)) and E_low=O_epsilon(M^(5/6+epsilon));
for epsilon=1/48 the latter is O(M^(41/48)), below M^(7/8).
The constants do not depend on Delta, and all its contribution remains in the main.

The main kappa Delta theta(U)theta(sqrt M) is **not proved** to satisfy M^(7/8)
uniformly for Delta comparable to M. Classical subpower reciprocal-prefix bounds
or exact gcd/product rewritings do not turn it into a fixed-power saving.
The entire original high region n>sqrt M, including its source terminations,
is also outside (6). The paid remainders must not be charged again to those terms.

## Acceptance boundary

Local written proof candidates: the exact kernel decomposition and proper-region
remainder estimates. New fully qualified Lean declarations: NONE. Kernel-verified
bridges: NONE claimed. No external analytic theorem, new axiom/certificate interface,
finite evidence or analogy is promoted to acceptance. Missing: native formalization,
fixed-power cancellation of the retained reciprocal main, the high-region bound,
and the stronger every-positive-rate complete arithmetic estimate required for RH.
Compilation, fresh kernel replay and transitive axiom audit remain NOT_RUN.
