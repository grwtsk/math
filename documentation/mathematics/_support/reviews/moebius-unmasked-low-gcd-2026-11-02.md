# Unmasked low-gcd Möbius arithmetic and complete high-gcd payment

Local mathematical attribution: grwtsk contributors.
Research date: 2026-11-02 (America/Los_Angeles).
Mathematical status: exact finite source partition and elementary absolute price argued; Lean source is proof CANDIDATE only. Actual compiler/kernel/axiom acceptance NOT_RUN. RH open.

## 1. Original physical-time source only, without geometry masks

For T>=0 define N=floor(exp T), D_*(T)=max(1,floor(exp(T-sqrt T))) and the original ordered signed causal Gram source
 X(T)=sum_(1<=m,n<=N,m!=n) mu(m)mu(n)K_T(m,n).
Every mu sign, squareful zero, birth gate and BOTH orientations are retained.

Define
 A_D(T)=sum_(1<=m,n<=N,m!=n,gcd(m,n)<=D)mu(m)mu(n)K_T(m,n),
 Q_D(T)=sum_(1<=m,n<=N,m!=n,gcd(m,n)>D)mu(m)mu(n)K_T(m,n).

For EVERY D,T the exact finite identity is X=A_D+Q_D. Set A_*(T)=A_(D_*(T))(T). It has no Putnam gap, no strong/physical overlap mask and no comparable/noncomparable classifier. This removes a restrictive selection from the ARITHMETIC FORMULATION, not from any already published original geometric source.

## 2. Complete (including comparable) high-gcd root tail, no arithmetic cancellation

For T>=0 and m,n in the actual endpoint index,
 0<=K_T(m,n)<=4*T/sqrt(m*n).
For g=gcd(m,n)>D, write uniquely m=g*a,n=g*b with gcd(a,b)=1; comparable pairs a=1 or b=1 are NOT discarded. Since |mu|<=1,
 sum_(m,n with gcd=g,m!=n)|mu(m)mu(n)K_T(m,n)|
 <=(4*T/g)*(sum_(1<=a<=N/g) a^(-1/2))^2
 <=16*T*N/g^2.
The second inequality uses sum_(1<=a<=Y)1/sqrt(a)<=2sqrt Y; removing coprimality/a!=b only increases a positive absolute cost. Integrating the decreasing 1/x^2 gives sum_(g>D)g^(-2)<=1/D for D>=1. Therefore
 |Q_D(T)|<=completeHighGcdAbsoluteCost(D,T)<=16*T*N/D.  (A)
This proves on paper an elementary source bound for ALL high-gcd original pairs, strictly broader in scope than the prior incomparable-only root-tail. The finite gcd bijection and summation ingredients are named an UNPROVED pinned Lean proposition CompleteHighGcdAbsoluteRootTailTarget. No RH, Mertens cancellation, new axiom or fixed affine Chowla theorem is invoked.

For T>=4 the existing floor/cutoff fact has N/D_*(T)<=2exp(sqrt T); hence
 |Q_(D_*(T))(T)|<=32*T*exp(sqrt T). (B)
For EVERY delta>0 and T>=max(4,4/delta^2),
 sqrt T<=delta*T/2, and T<=(2/delta)*exp(delta*T/2).
Thus (B)<= (64/delta)*exp(delta*T). Same D_* for every delta.
The finite Lean floor target FixedGcdRatioTarget and scalar calculus are NOT YET verified.

## 3. Exact endpoint and the genuinely unpaid arithmetic target

The original endpoint quadrature has |endpointSum(T)-pickupCross(T)|<=1/4. Thus for T>=4, conditional on the elementary finite tail/floor proofs,
 endpointSum(T)<=A_*(T)+32*T*exp(sqrt T)+1/4.  (C)

A one-sided every-positive-rate upper for this SAME A_* on ONE fixed affine-frequent set suffices for the existing endpoint/RH return after its exact source and kernel checks. The concrete dyadic target is
 forall delta>0, exists C_delta>=0, forall j in Nat,
 A_*(j*log 2)<=C_delta*2^(delta*j).  (D)
Its proof is still RH-strength. No new cancellation theorem has been supplied.

## 4. Preserve exact signed relationship to older compensated core

Old source identities from MoebiusFixedSublinearCompensatedEndpoint.lean (blob f2d9748589f5999ff667486538968d7eff5a753f) give
 X=G_gap(H_*,T)+W_weak(H_*,T)+C_*(T)+L_selectedIncomparable,gcd>D_*.
Using the new complete X=A_*+Q_(D_*), therefore EXACTLY:
 A_*=C_*+G_gap+W_weak+L_selectedIncomparable,gcd>D_*-Q_(D_*). (E)
The selected incomparable packet is NOT identified with the complete unmasked high-gcd packet. Both are retained with their own original signs. The earlier negative odd-coprime comparable credit is not counted twice.

Both the original paid sectors and Q_(D_*) have all-rate absolute allowances once the named elementary Lean targets are proved. The new unmasked low-gcd source is therefore an equivalent sufficient arithmetic completion frontier, with less geometrical API and fewer selection constraints.

## 5. Exact unmasked coprime primitive form, genuine physical-time shift

For a nonzero original Mobius pair, with g=gcd(m,n), m=g*a, n=g*b, one has gcd(a,b)=1 and, from squarefreeness, gcd(g,a)=gcd(g,b)=1. True multiplicativity gives mu(m)mu(n)=mu(g)^2*mu(a)*mu(b). True causal covariance is K_T(ga,gb)=g^(-1)*K_(T-log g)(a,b), not a false unshifted formula.

Thus the finite A_D(T) has the triple form
 sum_(1<=g<=min(D,N)) mu(g)^2/g *
   sum_(a,b>=1, a!=b, gcd(a,b)=1, gcd(g,a)=gcd(g,b)=1,
        ga,gb<=N) mu(a)mu(b)*K_(T-log g)(a,b).  (F)
a=1/b=1 (comparable) and all orientations remain. Squareful source terms have their actual mu zero. The Lean definition plainPrimitiveGcdTruncation is literal; its equality to A_D is an explicitly UNPROVED finite reindex target PlainPrimitiveGcdReindexTarget. The arithmetic correlation bound for this sum remains unproved.

The genuine shifted tail also permits a sharper PAPER-only allowance
 |Q_D(T)| <=16*N*max(0,T-log(D+1))/D
and at D_*, <=32*(sqrt T+log 2)*exp(sqrt T), T>=4.
This is not part of the Lean numeric consumer and requires further formal reindex/real integral work.

## 6. Independent numerical diagnostic with the original Gram

At T=log N, ordinary double-precision evaluation of the exact birth-window integrated causal K_T and original integer Mobius values gave:
 (N,D_*,A_*,Q_*,sum_abs_high)
 (24,4,-5.154602161,-0.124641375,0.145558784)
 (48,6,-8.580064762,-0.237819694,0.310789154)
 (96,11,-12.954130615,-0.308079943,0.378681527)
 (200,20,-18.594052583,-0.429186080,0.543401739).
These are finite approximate checks, not certified interval proofs or asymptotics.

## 7. Scope and verification

New Lean candidate MoebiusUnmaskedLowGcdEndpoint.lean: exact partition, high-gcd triangle payment, original endpoint source consumer, exact relation to fixed C_*, and conditional fixed-cutoff numeric return; all with proof bodies. Explicitly UNPROVED targets CompleteHighGcdAbsoluteRootTailTarget, CompleteHighGcdScalarEveryRateTarget, PlainPrimitiveGcdReindexTarget, PlainLowGcdEveryRateDyadic; earlier FixedGcdRatioTarget remains unproved. No source root import, pin change, runner dispatch, or historical certification replacement.

Pinned Lean 4.34.1, Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612. Parsing, expected types, full import compilation, fresh independent kernel, transitive axioms/sorry/unsafe checks NOT_RUN; #1566 and RH #15 remain OPEN.
