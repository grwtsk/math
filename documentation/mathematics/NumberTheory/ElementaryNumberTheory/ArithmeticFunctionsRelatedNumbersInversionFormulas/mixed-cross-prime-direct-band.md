# A paid cross-prime mixed family and a direct band of the negative joint mean

Attribution: grwtsk contributors.

Initial reconciliation: grwtsk/math/main at
`c6da0b696e400c584719777c6dec5ce2a6f2c153`.
The existing joint source is mathematical commit
`06cf01063fa94e0fc4d166aec1aebd7e9f0bed93`, documented at
`bae90328463773efdd18125d1e7044e7c35d5105`.
No old source identity, covariance lemma, mass interface, root import, toolchain,
or prior receipt is replaced. Exact publication pins are in verification.toml.

Mathematical source commit: `c02466ee7d05554872079df7fc3564a7e92c0d63`.
Source tree: `8227284ce386961902fc52a91562c92111b6a799`.
Parent: `d44b2cef3d2a5aa4d5548e417762440a026aafc4`.

Status: complete written finite argument and Lean source proof candidates.
Compilation, fresh kernel replay, and transitive axiom audit: NOT_RUN.
The estimates below are proper-sector estimates. The whole R, the full mean
lower bound, the full moment bound, and RH remain unproved.

## 1. Freeze the existing source

T=j log 2, N=2^j, L=floor(sqrt N), P=P_j={primes <=j},
Q={primes p: j<p<=N}, a(n)=mu(n) times the original P-roughness indicator,
w(n)=#{p in Q:p|n}, A=product_(p in P)(1+p^(-1/2)).
The actual frozen Gram is G(m,n)=integral_0^T K_(P,N)(m,u)K_(P,N)(n,u)du.
All source windows are closed at N, with strict comparison of smaller cores.
No quotient, prefix, reindexing, or integral changes T or P.

Split the existing JOINT column beta=beta_s+beta_l:

 beta_s(q)=sum_(p in Q,p<=L,q<=N/p,p not dividing q)
             sum_(L<m<pq) a(m)G(m,pq),
 beta_l(r)=sum_(k in Q,k>L,r<=N/k,k not dividing r)
             sum_(L<n<kr,k not dividing n) a(n)G(n,kr).

Every m,n is at most N, because pq,kr<=N. The repeated-prime correction
is still present: these no-divisibility guards are the proved rewrite of
[a(q)-1_(p|q)a(q)]/w(pq), not an omitted term. In particular,

 W=sum_(q=1)^N a(q)[beta_s(q)+beta_l(q)]/(1+w(q)).

There is no use of the other chat's subpower rough-sum theorem as a
fixed-power supplier. No new external analytic result is imported.

## 2. Begin at d=1: diagonal and actual four-Mobius terms

The full quotient diagonal of W^2 is

 D=sum_q a(q)^2/(1+w(q))^2 *
       [beta_s(q)^2+2 beta_s(q)beta_l(q)+beta_l(q)^2].

In the gcd=1 fiber, a diagonal pair q=r forces q=r=1. The short unit
column is zero: m>L and m<p<=L are incompatible. The long unit column
is NOT zero by convention. Thus the gcd=1 fiber is exactly

 M_1=beta_l(1)^2
   +sum_((q,r)=1,q!=r) a(q)a(r)/[(1+w(q))(1+w(r))] *
      [beta_s(q)beta_s(r)+2 beta_s(q)beta_l(r)+beta_l(q)beta_l(r)].

The factor two in this display accounts for SHORT/LONG and LONG/SHORT
in the square of W. It is distinct from the factor -2 relating W to R.
All unit/nonunit cross terms remain. Coprimality supplies no orthogonality.

Expanding the middle product BEFORE absolute values gives the atom

 a(q)a(r)a(m)a(n) G(m,pq)G(n,kr) /[(1+w(q))(1+w(r))],             (1)

with p<=L<k, q<=N/p, r<=N/k, p not dividing q, k not dividing r,
L<m<pq, L<n<kr, k not dividing n, gcd(q,r)=1, q!=r.
These are true FOUR rough-Mobius factors. Both denominators are retained.
Equivalently they are the original w(pq), w(kr) on the permitted support.

For general d<=L put q=d*u,r=d*v. The surviving products require

 gcd(d,u)=gcd(d,v)=gcd(u,v)=1,

and retain a(d)^2 a(u)a(v)a(m)a(n), with denominators
[1+w(d)+w(u)][1+w(d)+w(v)]. The two auxiliary powers remain
 t^(w(d)+w(u)) and s^(w(d)+w(v)); they are NOT identified.
Violations of squarefreeness give zero source coefficients rather than
permission to silently change the support. No coprimality of m,n with
u,v,d is imposed without proof.

The source reuses the existing integral/weight identities. The new
source_sectors_rows and mixedFull_quotient_columns identify the new
prime-first family with precisely these original short/long columns.

## 3. A previously unpaid genuinely mixed family: k divides the OTHER core

Retain the part of (1) with k|m. The long column already has k not dividing n,
so m!=n. This is not an outer-core diagonal, and is not the previously paid
shared sector inside the long column. That old sector had k|n, which is
excluded here. It is also disjoint from the earlier paid gcd(q,r)>L tail.

Call the contribution M_hit,D, including the cross-orientation factor two,
with gcd(q,r)<=D and q!=r. For D=1 it is exactly the requested coprime fiber;
D=L includes this family throughout the unpaid small-gcd off-diagonal.
The complement M_avoid,D has k not dividing m, and

 M_SL,off,D=M_hit,D+M_avoid,D                                (2)

is a source identity before any estimate. M_avoid,D is not bounded here.

At j=8,N=256,L=16,P={2,3,5,7}, permitted nonzero arithmetic atoms include

 (p,k,q,r,m,n)=(11,17,13,11,17,19),
 (p,k,q,r,m,n)=(11,29,13,1,29,19).

The second example retains the long unit quotient. The first has four
nonunit rough factors, distinct quotient indices and distinct smaller cores.
These examples establish that the arithmetic support is nonempty, not an
analytic estimate or an asymptotic argument.

## 4. Bound every prime, quotient, core and Gram cost

Suppose |G(m,n)|<=K/(sqrt(m)sqrt(n)), with K>=0. The actual source supplies
K=4*T*A^2; this is discharged in the final source-specific theorem.
The normalized source coefficient of every atom has modulus at most one.

For any k>=1 and M>=0, exact reindexing m=k*h gives

 sum_(1<=m<=M,k|m) 1/sqrt(m)
   =k^(-1/2) sum_(h<=floor(M/k)) 1/sqrt(h)
   <=2 sqrt(M)/k.                                        (3)

The last inequality uses sum_(h<=B) h^(-1/2)<=2sqrt B and k floor(M/k)<=M.
The finite cutoff floor(M/k), not a changed horizon, is preserved.

At fixed p,k,q,r the absolute short row with k|m is at most

 [K/sqrt(pq)] sum_(m<=pq,k|m) 1/sqrt(m) <=2K/k.

The complete long coprime row is at most

 [K/sqrt(kr)] sum_(n<=kr) 1/sqrt(n) <=2K.

No rough-Mobius cancellation is assumed in these two estimates. All omitted
restrictions are removed only in nonnegative majorants. In particular the
source still has L<m<pq, L<n<kr, the repeated-prime guards, and k not dividing n.
The actual product of rows is therefore bounded by 4K^2/k.

The quotient counts contribute at most (N/p)(N/k). Summing all short p and
long k, and retaining the cross-orientation factor two, gives

 |M_hit,D| <=8 K^2 N^2 (sum_(p<=L) 1/p)(sum_(k>L) 1/k^2)
           <=8 K^2 N^2 H_N/L,                            (4)

where H_N=sum_(n<=N)1/n<=1+log N. There is no prime-density input.
The finite reciprocal-square bound is the already proved integer telescope.
This bound holds uniformly in D. It does not claim a saving for M_avoid,D.

At N=2^j, N/L<=2sqrt N and K=4T A^2, so

 |M_hit,D| <=256 T^2 A^4 H_N N^(3/2).                    (5)

The inherited amplitude estimate and an elementary explicit payment give

 A^2<=exp(4sqrt j),
 4sqrt j<=T/24+96/log2,
 T<=24exp(T/24), 1+T<=25exp(T/24),
 T A^2(1+T)<=600 exp(96/log2) exp(T/8).                   (6)

Since H_N<=1+T<=(1+T)^2, (5)-(6) imply

 |M_hit,D| <=92,160,000 exp(192/log2) N^(7/4).             (7)

The main Lean theorem mixedHit_dyadic_seven_fourths proves (7) as a
source proof candidate, for every D (in particular 1 and L). This is not
merely a written bound deferred behind a caller-supplied Gram hypothesis.
Compilation and kernel/axiom acceptance still have not been run.

## 5. Why this does not close the moment route

The gcd=1 long-unit diagonal beta_l(1)^2, the short/short and long/long
off-diagonal, the mixed complement k not dividing m, and the remaining
small-gcd diagonals are still present. The existing unsigned column bound
is |beta(q)|<=8 T A^2 N/q. Applied globally, it yields only an N^2 times
subpower-factor moment allowance. This is an upper-bound limitation, NOT
an exponential lower bound for the actual arithmetic.

Accordingly, (7) is NOT square-rooted to assert |W|=O(N^(7/8)). We switch
to the weaker direct negative-part observation -2W. There is no further
variance/projection lemma and no new growth-supplier interface.

## 6. Recombine the direct extraction mask exactly

For 1<=m<n<=N define

 lambda(m,n)=#{p in Q:p|n and [p<=L or p does not divide m]}/w(n),

with the real division convention at w(n)=0. The numerator is an actual
subset count, so 0<=lambda<=1, including the zero-count case.
For EACH selected divisor p|n the corrected quotient is exactly -a(n),
including every nonsquarefree zero. Reindexing n=pq in the existing JOINT
sum, with the original closed cutoff, therefore gives

 W=-sum_(L<m<n<=N) a(m)a(n)lambda(m,n)G(m,n).             (8)

This identity preserves the unit larger index by its empty triangle; it
neither deletes mu(1) nor changes the denominator from w(n) to w(m).
It is precisely the retained short/long-coprime divisor fraction. The
complement is the already separately recorded shared extraction allocation.
Thus a future estimate may use signed information in (8) without redoing
or double-counting the internal prime-stage transfers.

The new joint_pair_identity supplies (8) using rough_divisor_identity and
exact finite quotient reindexing. It does not posit a freely chosen remainder.

## 7. Direct negative-part saving for a wide near-diagonal band

For any integer H>=0 split the negative observation into

 -2W = D_near(H)+D_far(H),
 D_near(H)=2 sum_(L<m<n<=N,n<=m+H) a(m)a(n)lambda(m,n)G(m,n),
 D_far(H) =2 sum_(L<m<n<=N,m+H<n) a(m)a(n)lambda(m,n)G(m,n). (9)

This is a disjoint partition of the divisor-allocated source. Its smaller
core satisfies m>L, so it does not reuse the already-paid thin strip.
It also does not reuse the shared-prime allocation: lambda contains only
its complement. All within-block signs and mixed terms are retained in G.

On m<n, sqrt(mn)>=m. For each m, at most H integer successors n lie in
the band. Thus the independently supplied Gram estimate and 0<=lambda<=1 give

 |D_near(H)| <= 2K H H_N =8 T A^2 H H_N.                 (10)

Every extraction-prime cost has already been accounted for by the exact
fraction lambda; no additional hidden prime sum or divisor multiplicity is
suppressed in (10).

Choose the fixed gap schedule

 H_j=2^floor(3j/4) <= N_j^(3/4).

This partitions core gaps only. It does not alter the block-prime schedule,
source cutoff, arithmetic modulus or inner horizon. From (6) and (10),

 |D_near(H_j)| <=4800 exp(96/log2) N_j^(7/8).             (11)

The source theorem nearNegative_seven_eighths constructs this direct bound.
It does not invoke a bound for S, a weighted quotient prefix, a centered
correlation, or the other chat's subpower benchmark.

## 8. Exact unpaid sum and original-source return

Write E=exp(64/log2). Current main's actual constants are
|R_lo|<=512 E N^(7/8) and |R_shared|<=1024 E N^(5/8).
The source relation is R=R_lo+R_shared-2W. Equations (9)-(11) yield

 R_(P_j)(T_j)
 <=[1536 exp(64/log2)+4800 exp(96/log2)] N_j^(7/8)+D_far,j, (12)

where the exact unpaid sum is

 D_far,j = 2 sum_(L_j<m<n<=N_j,m+2^floor(3j/4)<n)
   a_j(m)a_j(n) G_j(m,n)
   * #{p in Q_j:p|n and [p<=L_j or p does not divide m]}/w_j(n). (13)

No bound on (13) is proved here. In particular (12) is NOT a first
full-energy exponent improvement. An independently proved upper bound
D_far,j<=C0*N_j^(7/8), with C0 independent of j, would give that improvement;
no new Prop or wrapper asserting this premise has been added. A fixed 7/8
bound would still require a justified route to every positive rate for RH.

No energy-ratio mass or full-vector coercivity is introduced. The earlier
Euler-product/Laplace obstruction retains its written-only scope. The
existing q-Abel anchoring, j^2 matching boundary and both auxiliary parameters
are unchanged, and no older NOT_RUN result is promoted to acceptance.

## 9. Formal and diagnostic scope

New files: PickupRoughMixedCrossPrime.lean and PickupRoughDirectNearDiagonal.lean.
The first proves the actual row/column return, four-coefficient identity,
cross-divisibility split, finite quotient and harmonic costs and (7).
The second proves the retained divisor-fraction identity, direct source
partition, the wide-band bound (11), and original-source comparison (12).
The d=1 expansion in section 2 is finite algebra of the retained source06
moment and the new row identities. No new common-parameter covariance is used.

The external preflight checks exact arithmetic and signed rational MODEL
kernels, including nonzero dyadic cross-family examples, both denominators,
unit retention, repeated-prime zero, and strict cutoffs. It is not an enclosure
of the analytic Gram, asymptotic evidence, Lean elaboration or kernel replay.
The manifest pins all source blobs, hashes and passive verification commands.

## Next mathematical execution instruction

For (13), perform Abel summation in m on L_j<m<=n-H_j-1 at each fixed n,
keeping a_j(m)lambda_j(m,n) as the coefficient and the original G_j(m,n)
as the weight; retain both boundaries and estimate the resulting signed
masked-prefix/Gram-difference sum jointly over n.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9c9d4a00e7aeadfc7834a7a507b78f5e31d9753bb5447e8ab51693db25ba449d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_APPLICABLE. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":[],"status":"NOT_APPLICABLE","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
