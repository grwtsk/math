# Crossed-prime and retained-gap source; exact far-rectangle transform

Local mathematical attribution: grwtsk contributors.

Original source-candidate base: d44b2cef3d2a5aa4d5548e417762440a026aafc4.
Controller-transfer reconciliation head: 3c07c255edbb38ea4afb99f8e42ed60b9f54049c.
Source integration preserves the current expanded PickupRoughMixedCrossPrime
(opposite smaller-core divisibility) and PickupRoughDirectNearDiagonal modules.
The transferred crossed-QUOTIENT module is integrated as
PickupRoughMixedQuotientPrime with only its namespace renamed. These are
separate arithmetic families. The transferred PickupRoughRetainedGap is not
added: its source-mask and near/far results duplicate the existing direct
near-diagonal module, whose exact hypotheses and source pins remain in force.

Original transferred source blobs: edf660fc2023a7cb2ab3a50910c7d6c9ce4c11d3
(crossed quotient), 89e53ff1ba8a74bbec8c6b9dadb7003610ade4d3 (gap alternative).
Original note blob47c32bba927b4795b6c29735e031b8b519a6181c is edited here;
its original hash does not certify these editorial integration bytes.
Source chat6ae172dd-a538-83e8-8008-ebad9b4c2295, message4777a8f7-fe86-4e1c-9ac1-b4ff40e543bf,
rendered-text SHA25698c592cde162826cc3c522bdce8b9780b352ecdac775c03cad4efcd8b2b1e085.
The containing main commit pins this integrated revision. Compilation,
fresh kernel replay and transitive axiom auditing remain NOT_RUN. No root
import, dependency change, or native execution is part of integration.
Sections8-11 are written mathematics, not new Lean declarations.

## 1. Frozen arithmetic and exact moment organization

Fix j, T=j log 2, N=2^j, L=floor(sqrt N), P={primes<=j}. Keep

 a(n)=mu(n) 1_(no prime in P divides n),
 Q={primes p:j<p<=N}, k(n)=#{p in Q:p|n},
 G(m,n)=integral_0^T K_(P,N)(m,u)K_(P,N)(n,u) du,
 A(P)=product_(p in P)(1+p^(-1/2)), A(P_j)^2<=exp(4 sqrt j).

All integer inventories are closed. Neither a quotient nor a new core-gap
window changes P, N, T or the response. The selected prime counts use Q.
The earlier full source, internal-stage and endpoint comparisons remain intact.

For q>=1 split the already-published actual column beta(q)=beta_S(q)+beta_L(q):

 beta_S(q)=sum_(p in Q,p<=L,q<=N/p,p not|q)
                sum_(L<m<pq) a(m)G(m,pq),
 beta_L(q)=sum_(s in Q,s>L,q<=N/s,s not|q)
                sum_(L<n<sq,s not|n) a(n)G(n,sq).

The implicit m,n<=N follows from pq,sq<=N; the source code keeps the frozen
cutoff in its row guard. The corrected quotient is zero when its extraction
prime divides q. This is the proved repeated-prime correction, not an omitted
squareful term. Only on the remaining terms does w(pq)=1+k(q) hold.

The joint mean is

 W=sum_(q<=N) a(q)(beta_S(q)+beta_L(q))/(1+k(q)).

The COMPLETE quotient diagonal of W^2 is

 D=sum_(q<=N) a(q)^2/(1+k(q))^2 *
                [beta_S(q)^2+2 beta_S(q)beta_L(q)+beta_L(q)^2].

No mixed part of this diagonal is discarded. In the d=1 fiber the quotient
diagonal q=r occurs only at q=r=1. beta_S(1)=0, since L<m<p<=L is impossible.
Thus that fiber contains the deterministic term beta_L(1)^2. Centering a
polynomial would erase its degree-zero covariance but not this mean term.

For q!=r, gcd(q,r)=1, the d=1 off-diagonal has SS, LL and both SL orientations.
After swapping q,r in the LS orientation, the mixed contribution is

 M_SL=2 sum_(gcd(q,r)=1)
       a(q)a(r) beta_S(q)beta_L(r)/[(1+k(q))(1+k(r))].        (1)

The q=r=1 term in (1) is zero because beta_S(1)=0. Expanding the actual rows
BEFORE absolute values makes each summand in (1) exactly

 2 a(q)a(r)a(m)a(n) G(m,pq)G(n,sr)
                 /[(1+k(q))(1+k(r))],                    (2)

with all conditions

 p in Q, p<=L, s in Q, s>L,
 1<=q<=floor(N/p), 1<=r<=floor(N/s), gcd(q,r)=1,
 p not|q, s not|r,
 L<m<pq, L<n<sr, s not|n.

These are genuine four-Mobius products, including four original roughness
masks. In particular, m and n have not been replaced by an unweighted count
until the explicit absolute majorization below. The long row keeps r=1.

For a general d fiber put q=du,r=dv. The surviving product is

 a(d)^2 a(u)a(v)a(m)a(n),

and it retains gcd(d,u)=gcd(d,v)=gcd(u,v)=1. The denominators are

 [1+k(d)+k(u)] [1+k(d)+k(v)],

not a common parameter. Before integration they are represented by
 t^(k(d)+k(u)) z^(k(d)+k(v)) with two independent integration coordinates.
Nonsquarefree products vanish through the actual coefficient. Coprimality
never implies orthogonality. No d>1 estimate is asserted in this increment.

### Native source coverage of the d=1 mixed identification

The source candidate in `GRWTSK.NumberTheory.Moebius.PickupRoughMixedQuotientPrime`
now defines `shortColumn` and `longColumn` from the original `sourceRow`.
`column_eq_short_add_long` identifies their sum with the published joint column.
`jointCoefficient_pair_expansion` retains SS, SL, LS and LL in the actual
joint-square numerator. `mixedCoprime_eq_columns` returns the closed quotient
cutoffs to the frozen N by literal zero support, and
`mixedCoprime_eq_d_one_mixed_fiber` identifies `mixedCoprime` with BOTH mixed
orientations at gcd(q,r)=1, with the two original denominator factors.
`shortColumn_one` and `jointCoefficient_unit_square` retain the long unit
square: only its short factor vanishes. No new primality, positivity, stage,
or kernel-size hypothesis is imposed for these algebraic identities.
These are SOURCE_PROOF_CANDIDATE scripts; compilation, fresh kernel replay
and transitive axiom audit are NOT_RUN. This closes the written-only source
identification gap at the script level, not at the mathematical acceptance
level. The remaining SS, LL and uncrossed mixed estimates, terminal-strip
formalization and full signed bulk estimate remain unresolved.

## 2. A new mixed family: a LONG prime divides the OTHER quotient

In (1)-(2) retain s|q. Denote its complete sum, INCLUDING both SL/LS moment
orientations, by M_cross. The complement retains s not|q, and

 M_SL=M_cross+M_uncross                                      (3)

is an exact signed partition. This is not the old shared-core sector s|n:
that sector is already excluded from the long row by s not|n.

Since s>L, the long quotient r satisfies r<s and r<=L. From s|q and q>=1
one has q>=s>L, so q!=r. Thus M_cross is a genuine off-diagonal d=1 family,
not a reclassification of the old large-gcd tail (which had d>L).

Reindex q=s*h exactly. The range is

 1<=h<=floor(floor(N/p)/s), 1<=r<=floor(N/s),
 gcd(s*h,r)=1,
 p not|s*h, s not|r,
 L<m<p*s*h, L<n<s*r, s not|n.

The numerator remains a(s*h)a(r)a(m)a(n). If it is further factored,

 a(s*h)=if s|h then 0 else -a(h),

by actual rough-Mobius multiplicativity. The repeated-square condition s|h
must not be lost. Both counts stay 1+k(s*h) and 1+k(r). A product collision
pq=sr can occur at h=1,r=p; it remains included, and is not mistaken for
q=r. The long unit r=1 is also included. The family is nonempty already
at j=8: p=11,s=19,q=19,r=1,m=23,n=17 is allowed.

## 3. Independent bound with all source costs

Write C_G=4*T*A(P)^2. The inherited actual Gram bound is

 |G(m,n)|<=C_G/(sqrt m sqrt n).

At any fixed permitted p,q,

 sum_(L<m<pq) |a(m)G(m,pq)|
 <= C_G/sqrt(pq) * sum_(1<=m<=pq) 1/sqrt m
 <=2*C_G.                                                (4)

The long row has the same bound; dropping its coprimality guard occurs only
in this nonnegative upper bound. Both arithmetic denominators are >=1 and
all rough coefficients have magnitude <=1. Thus the complete double m,n
sum at fixed p,s,q,r is at most 4*C_G^2 in absolute value.

The TWO quotient cardinalities after q=s*h contribute

 floor(floor(N/p)/s) * floor(N/s) <= N^2/(p*s^2).

Including both moment orientations and then every extraction prime yields

 |M_cross| <= 8*C_G^2*N^2
                (sum_(p in Q,p<=L) 1/p)
                (sum_(s in Q,s>L) 1/s^2)
           <= 8*C_G^2*N^2*H_N/L,                        (5)

where H_N=sum_(n<=N)1/n. The finite reciprocal-square inequality is

 sum_(s=L+1)^N 1/s^2 <=sum_(s=L+1)^N [1/(s-1)-1/s]<=1/L.

This is an independent estimate. No Mertens, Type I/II, random-sign, Fourier,
variance, source-mass, or full-vector coercivity premise is used. The 1/s^2
comes from the source quotient q=s*h AND the other quotient range N/s.
It is not the old shared-core overlap spent a second time.

Substituting C_G and using N/L<=2sqrt N and H_N<=1+log N gives

 |M_cross| <=256*T^2*A(P)^4*(1+T)*N^(3/2).                (6)

All remaining losses can be paid explicitly. Completing a square gives

 8sqrt(j)<=T/8+128/log2.

The nonnegative exponential series at x=T/8 gives

 T^2<=128 exp(T/8), T^3<=3072 exp(T/8),
 T^2(1+T)<=3200 exp(T/8).

Therefore, for EVERY j>=0,

 |M_cross| <=819200*exp(128/log2)*N^(7/4).                 (7)

The j=0 expression is empty. This is a proper MIXED-family allowance inside
W^2. No square root of (7) is claimed to bound W. The remaining SS, LL and
uncrossed SL terms, as well as the deterministic quotient diagonal, remain.
The previous unsigned high-q diagonal budget still has exponent 2. The actual
source may be smaller; that is not proved by this majorization.

The new Lean source proves the exact original column-row identity, the four
arithmetic coefficient expansion, crossed partition/reindexing, and (5) with
C_G discharged by the actual Gram. Formulae (6)-(7) are complete written
consequences, not additional asserted native-checked declarations.

## 4. Switch to the weaker mean target, not a variance bound

Because a full moment norm still has no proved fixed gain, return to -2W.
Define the source-computed retention fraction

 theta(m,n) = #{p in Q:p|n and [p<=L or p not|m]} / k(n),

with real division by zero interpreted as zero. Its numerator is a subset
of the SAME selected-prime divisor set, hence 0<=theta<=1, including k(n)=0.
This is NOT a source mass chosen as a ratio of unknown energies.

For every selected p|n, the actual corrected quotient satisfies

 correctedQuotient(P,p,n/p)=-a(n).

Reindexing each original closed quotient sum back to n=pq and summing the
retained prime indicators gives the exact identity

 W= -sum_(L<m<n<=N) theta(m,n)a(m)a(n)G(m,n).              (8)

At n=1 the triangular m inventory is empty. Prime-square terms are zero
only after their corrected source coefficient is used. The closed endpoint
n=N remains; no unproved cutoff convention is introduced. This identity
is implemented in joint_eq_retained in the new direct-gap module.

For an integer H>=0 partition the right side into n-m<=H and n-m>H. Write

 Near_j(H)=2 sum_(L<m<n<=N,n-m<=H) theta(m,n)a(m)a(n)G(m,n),
 Far_j(H) =2 sum_(L<m<n<=N,n-m>H)  theta(m,n)a(m)a(n)G(m,n).

Then

                       -2W=Near_j(H)+Far_j(H).           (9)

No absolute value is taken in this partition. theta preserves all extraction
sectors in the joint mean, including its q=1 contribution. The old shared
sector is not reintroduced.

## 5. An independent direct allowance for a close-core band

If m<n then 1/sqrt(mn)<=1/m. For fixed m there are at most H permitted n
with 0<n-m<=H. Consequently,

 |Near_j(H)| <=2*C_G sum_(m<=N) H/m
              =8*T*A(P)^2*H*H_N.                       (10)

This prices all prime multiplicities by the exact fraction theta<=1, rather
than introducing an extra prime sum or a logarithmic average of another
source. The finite counting and the actual Gram specialization are Lean source
proof candidates in nearOrdered_abs_le and nearOrdered_gram_bound.

Choose the fixed gap width

 h_j=2^floor(3j/4) <=N^(3/4).

It is a core-gap cutoff, NOT a change to P_j or the discrepancy schedule.
Use

 4sqrt j<=T/24+96/log2,
 T<=24 exp(T/24), 1+T<=25 exp(T/24).

Then T*A(P_j)^2*(1+T)<=600 exp(96/log2)exp(T/8), and

 |Near_j(h_j)| <=4800 exp(96/log2)N^(7/8).                (11)

This is a direct allowance in -2W. It is not the square root of the mixed
moment allowance, and the two bounds are not added at different degrees.
The near band has m>L, so it does not repeat the previously paid thin strip.
Its retention mask excludes the already-paid long shared-core allocation.

## 6. Exact remaining signed sum and original-source accounting

The still-unpaid quantity in this direct branch is the actual far-core sum

 U_j=2 sum_(L<m<n<=N, n-m>2^floor(3j/4))
               theta(m,n)a(m)a(n)G(m,n).                (12)

It retains all four block-sign products through the complete G. No estimate
for U_j is proved, installed as an axiom, or added as a new supplier interface.
The exact source accounting is

 R=R_lo-2*C_shared+Near_j(h_j)+U_j.

Using CURRENT MAIN's constants, not the stronger older uncommitted proposals,

 R <= [1536 exp(64/log2)+4800 exp(96/log2)]N^(7/8)+U_j.    (13)

The single one-sided inequality U_j<=C0*N^(7/8), with C0 independent of j,
would finish this fixed-exponent branch. The completed source diagonal would
then be absorbed at that rate. Such a fixed rate would still require a new,
justified argument to reach every positive rate for RH.

The crossed-prime moment region does not pay U_j, and no whole-source gain
is claimed. The first chat's rough-sum estimate remains a subpower written
benchmark; it was not used as a fixed-power supplier. Its external analytic
input and the older Euler-product/Laplace obstruction keep their original
written-only status. The newly read harmonic-tail note supplies a written
proper complete-tail bound, not a full interval power saving and not a bound
on arbitrary masked subsets. Its estimate is not applied to the new theta/G
mask without a source-specific transform and endpoint comparison.

## 7. Formal coverage and trust boundary

The renamed quotient-prime module contains the finite crossed-quotient proof
scripts with unchanged hypotheses. The already-present direct near-diagonal
module covers the overlapping gap results. Neither contains the rectangle
transform or terminal-strip proofs in sections 8-11.
Those additions are complete written derivations only. Native API/tactic
repairs may remain. No root import, dependency revision, whole-source growth
witness, source-only mass witness or full-vector coercivity is introduced.
No acceptance of any imported closure is inferred from these source files.

## 8. Exact far-rectangle transform, with all masks inside the kernel

The results in sections 8-11 are new WRITTEN deductions. They are not new
Lean declarations in the integrated modules, and have no native
acceptance claim. All data below are at the same frozen j,P,N,T as above.
Write h=2^floor(3j/4), F(m,n)=theta(m,n)*1_(L<m<n<=N,n-m>h)*G(m,n).

Let I={i0+1,...,i0+M}, J={j0+1,...,j0+B} be nonempty integer rectangles
inside [1,N]. A dyadic rectangle or an edge-clipped dyadic rectangle is a
special case. Put m_x=i0+1+x and n_y=j0+1+y for 0<=x<M,0<=y<B, and
H(x,y)=F(m_x,n_y). No factorization of theta, the gap mask, or G is assumed.
With e(z)=exp(2*pi*i*z), define

 Hhat(r,s)=(1/(M*B))*sum_(x<M,y<B) H(x,y)e(-r*x/M-s*y/B),
 H(x,y)=sum_(r<M,s<B) Hhat(r,s)e(r*x/M+s*y/B).          (14)

Proof of inversion: interchange finite sums and use
sum_(r=0)^(M-1)e(r*(x-z)/M)=M if x=z, and zero otherwise.
For x!=z the latter is a finite geometric sum with nontrivial root of unity;
the same calculation in the second coordinate gives the B factor.
There is no continuum approximation, asymptotic limit, or period assumption
on the arithmetic source in this finite coordinate transform.

For A_I(r)=sum_(x<M)a(m_x)e(r*x/M), and similarly A_J(s), the exact signed
rectangle contribution, INCLUDING both original orientations, is

 U_(I,J)=2*Re sum_(r<M,s<B) Hhat(r,s) A_I(r) A_J(s).   (15)

Taking the conjugate in the finite orthogonality calculation proves

 sum |Hhat|^2=(1/(M*B))*sum |H|^2,
 sum_r |A_I(r)|^2=M*sum_(m in I) a(m)^2.              (16)

In particular the coefficient norm is explicitly priced:

 sum |Hhat| <= sqrt(sum_(m in I,n in J)|F(m,n)|^2)
 <= C_G sqrt((sum_(m in I)1/m)*(sum_(n in J)1/n)),
 C_G=4*T*A(P)^2.                                    (17)

The first inequality is Cauchy-Schwarz on M*B frequencies and (16).
The second retains the entire mask and uses 0<=theta<=1, not an assumed
one-dimensional multiplier estimate. For I subset (M0,2M0], J subset
(B0,2B0], each reciprocal sum is at most one. The norm is then at most C_G,
not at most the much smaller entrywise size C_G/sqrt(M0*B0).

Cauchy-Schwarz on (15), using BOTH arithmetic Parseval identities, gives

 |U_(I,J)| <= 2*sqrt(sum |F|^2)
                 *sqrt((sum_(m in I)a(m)^2)*(sum_(n in J)a(n)^2))
             <= 2*sqrt(M*B)*sqrt(sum |F|^2).          (18)

On comparable bulk rectangles the general amplitude bound only gives order
T*A(P)^2*N. Thus this complete transform has not created a power saving.
Separating the two arithmetic Fourier factors in (15) is an exact finite
identity; treating the MASKED coefficient norm as cost-free would not be.

The discrete rectangle endpoints are also retained. For fixed y, the exact
cyclic-difference formula is

 (1-e(-r/M))*Hhat(r,s)
  =(1/(M*B))*sum_y e(-s*y/B)*[
     H(0,y)-H(M-1,y)
     +sum_(x=1)^(M-1)(H(x,y)-H(x-1,y))*e(-r*x/M)].    (19)

There is an identical formula in the second coordinate. The displayed wrap
boundary is not assumed zero or smooth. Theta and the strict gap contribute
their actual jumps; applying a derivative/variation estimate to G alone
would omit them. The zero frequency is not divided by a vanishing factor.

## 9. Causal endpoints and the scope of the harmonic-tail theorem

For positive integers v,w<=N, put b=log(max(v,w)),
A_v=1/sqrt(v), A_w=1/sqrt(w). Direct integration of the ORIGINAL responses,
starting at their latest birth b, yields

 g_T(v,w)=4*[(T-b)/sqrt(v*w)
          -2*(A_v+A_w)*(exp(-b/2)-exp(-T/2))
          +exp(-b)-exp(-T)].                         (20)

The lower-birth and upper-horizon corrections are respectively

 g_birth=-8*(A_v+A_w)*exp(-b/2)+4*exp(-b),
 g_top=8*(A_v+A_w)*exp(-T/2)-4*exp(-T).

Together with g_main=4*(T-b)/sqrt(v*w), they sum to g_T exactly.
At b=T the TOTAL is zero. Neither endpoint correction may be removed or
bounded as though this terminal cancellation occurred in each term alone.

Let Q0 be the squarefree product of the selected primes P. Expanding the
finite block recurrence gives the exact frozen Gram

 G(m,n)=sum_(d,e|Q0, d*m<=N, e*n<=N)
          mu(d)mu(e)g_T(d*m,e*n).                    (21)

The source cutoffs are present before integration, including equality at N.
Equation (21) has the original subset signs, not an absolute divisor sum.
Apply (14) to theta times the strict mask times the COMPLETE expression (21).
In particular, for ANY selected set Omega of low/middle modes containing
(0,0), equation (15) is exactly

 2*Re[ Hhat(0,0) A_I(0) A_J(0)
       +sum_(Omega minus {(0,0)}) Hhat(r,s) A_I(r) A_J(s)
       +sum_(Omega complement) Hhat(r,s) A_I(r) A_J(s)]. (22)

Every Hhat here contains g_main+g_birth+g_top. The zero mode and the two
causal endpoint corrections stay jointly with the low/middle expression;
no smallness or favorable sign for any separate component is asserted.

The existing rough-fourier-harmonic-tail.md, as inspected at
3c07c255edbb38ea4afb99f8e42ed60b9f54049c, bounds complete reciprocal-phase
endpoint-box tails with phases h*Z/(r*u*d), specified lower frequency masks,
and a signed difference of two differently clipped endpoint inventories.
The additive finite-coordinate modes r*x/M+s*y/B in (14) are not that source.
Multiplication by theta and the gap can convolve modes and does not preserve
its complete-tail inventory. No exact bridge to that theorem is supplied
here, so NONE of its frequency-tail bounds is invoked in (14)-(24).
The following quantitative result instead bounds a complete actual far
rectangle directly from the causal endpoint, including all of its modes.

## 10. An independently paid terminal FAR rectangle and strip

Take an integer width 0<=b0<=floor(N/2). For N-b0<n<=N, every selected prime
p>=2 has p*n>N. Hence the exact finite block recurrence and support give

 K_(P,N)(n,u)=r_n(u).

For u<log n this is zero. For log n<=u<=T, let v=u-log n. Since
1-exp(-v/2)<=v/2, the prescribed response obeys

 0<=r_n(u)=2*(1/sqrt n)*(1-exp(-v/2))<=v/sqrt n.

For the other, completely signed block use ONLY the inherited bound
|K_(P,N)(m,u)|<=2*A(P)/sqrt m. Integrating the product on its actual support
proves the sharpened Gram estimate

 |G(m,n)| <= A(P)*log(N/n)^2/sqrt(m*n)
          <=4*A(P)*(N-n)^2/[N^2*sqrt(m*n)].          (23)

The second inequality uses log(N/n)<= (N-n)/n<=2*(N-n)/N.
This calculation combines both endpoint corrections in (20), rather than
estimating their large pieces separately. The terminal n=N is retained
and has zero contribution by proof. No positivity of K(m,u), G, or the
arithmetic coefficient is assumed.

For an actual rectangle I=(N/4,N/2], J=(N-b0,N] with integer endpoints and
b0<=N/4, its entrywise MASKED bound is

 |F(m,n)|<=16*A(P)*b0^2/N^3.

Here 1/sqrt(m*n)<=4/N. Its dimensions are M=N/4 and B=b0. Thus (16)-(18)
price the complete transform, without assuming mask separation:

 ||Hhat||_1 <=8*A(P)*(b0/N)^(5/2),
 |U_(I,J)| <=2*M*B*(16*A(P)*b0^2/N^3)
            =8*A(P)*b0^3/N^2.

The l1 price alone combined with maximal arithmetic Fourier coefficients
would be wasteful. The displayed source bound follows from both Parseval
identities, or equivalently from the finite complete absolute sum.

There is a stronger coverage statement: retain ALL smaller cores m>L,
with the ORIGINAL strict gap n-m>h, for N-b0<n<=N. Call this terminal far
strip E_j(b0). It is a subset of the previously unpaid far sum, not the
already-paid close-core band. Using (23), 0<=theta<=1, and |a|<=1 gives

 |E_j(b0)|
 <=(8*A(P)/N^2)*sum_(n=N-b0+1)^N
       (N-n)^2/sqrt n * sum_(m<=N)1/sqrt m
 <=(32*A(P)/N^2)*sum_(v=0)^(b0-1) v^2
 <=32*A(P)*b0^3/N^2.                                (24)

In the middle inequality sum 1/sqrt m<=2sqrt N and sqrt(N/n)<=2.
Dropping the core and gap restrictions occurs only inside this nonnegative
upper bound; those restrictions remain in the definition of E_j.
No logarithmic number-of-rectangles cost is needed: (24) bounds the whole
terminal strip at once, and includes both ordered orientations.

Now choose the width BEFORE any estimates:

 b_j=min(floor(N_j/2), 2^floor(15j/16)).

For j=0 the width is zero and the strip is empty. For all j,
b_j^3/N_j^2<=N_j^(13/16). The existing stage bound gives A(P_j)<=exp(2sqrt j).
Completing the square gives

 2sqrt j <= T_j/16 +16/log 2.

Consequently the complete proper terminal far strip satisfies, uniformly
in every j>=0,

 |E_j(b_j)|<=32*exp(16/log2)*N_j^(7/8).               (25)

For j>=32, b_j=2^floor(15j/16)<=N_j/4, h_j<=N_j/4, and N_j/4>=L_j.
Every pair in I=(N_j/4,N_j/2], J=(N_j-b_j,N_j] then has m>L_j and
n-m>h_j. This is a genuine dyadic FAR rectangle, not a gap-clipped remnant.
Its bound after all mask and transform costs is

 |U_(I,J)|<=8*exp(16/log2)*N_j^(7/8).                (26)

Its arithmetic theta is unchanged. The strict gap is identically satisfied
on this particular rectangle by proof, not by substituting a new mask.
This is an absolute proper-region bound and hence a one-sided bound; it
is not a newly proved arithmetic cancellation theorem for the bulk.

## 11. Precise remaining signed bulk

Partition the complete far sum using the width b_j in section 10:

 U_j=E_j(b_j)+U_bulk,j,
 U_bulk,j=2 sum_(L_j<m<n<=N_j-b_j, n-m>h_j)
                 theta_j(m,n)a_j(m)a_j(n)G_j(m,n).    (27)

Both pieces retain the original cutoff N_j INSIDE the blocks and Gram.
The new upper index N_j-b_j is only a partition of the outer n inventory.
It is not a shorter inner horizon or a change of source normalization.
The earlier source comparison and (25) imply

 R_(P_j)(T_j)
 <=[1536*exp(64/log2)+4800*exp(96/log2)+32*exp(16/log2)]
        *N_j^(7/8)+U_bulk,j.                         (28)

No one-sided O(N_j^(7/8)) bound for U_bulk,j is proved here. All zero modes,
birth/terminal corrections and remaining low/middle modes for that bulk
remain signed in (21)-(22); they are not made small by naming a supplier.
The generic complete-mask transform still only supplies rate one on
comparable bulk rectangles. The harmonic-tail comparison needed to improve
that has NOT been established. The full energy exponent and RH remain open
in this increment. Even a future fixed exponent improvement would not,
without another proof, supply the every-positive-rate RH target.

## Concrete next mathematical execution instruction

For the next bulk rectangle (N/4,N/2] times (N/2,3N/4], with its ORIGINAL
strict gap mask, expand the latest-birth formula (20)-(21), compute the
zero mode jointly with the nonzero low/middle modes of the complete masked
kernel, and establish the exact weighted endpoint-box comparison required
before applying any reciprocal-phase harmonic-tail estimate.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d6b7043b53b2da6d2c37fa5f9d96ea894aefc5216d5337e72aaaddfc8eeacef5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_APPLICABLE. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":[],"status":"NOT_APPLICABLE","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
