# Joint quotient second moment: boundaries, two parameters, centered covariance, and gcd costs

Attribution: grwtsk contributors.

Baseline inspected: grwtsk/math/main at
`80b3f7755942c2b6c7536fff17abc358344c2158`.
Mathematical source commit: `06cf01063fa94e0fc4d166aec1aebd7e9f0bed93`.
Parent (including concurrent smooth-convolution and graph work):
`01e091254735a5e66844d40a271d2394ca6c67c0`.
This continues the existing `ab8a078d` quotient-Abel source and #1422.
The concurrent `rough-mobius-smooth-convolution.md` note is preserved at its
written externally supplied subpower-cancellation scope; its external theorem
is not imported as a newly verified result here.
All inherited native acceptance scopes remain NOT_RUN. No paper theorem,
zero-free region, random-Mobius model, or full-vector coercivity is imported.

## 1. Fixed arithmetic data and the exact split boundary

Fix j, T=j log 2, N=2^j, L=floor(sqrt N), J=j^2, and the unchanged stage
P={primes <=j}. Write a(n)=rough(P,n), Q={primes j<p<=N}, and
k(n)=omega(P,N,n)=#{p in Q:p|n}. The original block Gram is

    G(m,n)=integral_0^T K_(P,N)(m,u) K_(P,N)(n,u) du.

The inner horizon T, closed cutoff N, stage P, divisor inventory Q and all
Gram entries remain fixed when a quotient or prefix varies.

For a long prime p>L and fixed m>L with p not dividing m, set

    ell=max(1,floor(m/p)+1),  b=floor(min(N,Y)/p),
    alpha_p(q)=a(q)/k(pq),  A_p(t)=sum_(1<=q<=t) alpha_p(q),
    g(q)=G(m,pq).

The existing source proves k(pq)=1+k(q) ONLY after p does not divide q;
in the long range q<=N/p that condition follows from q<p. We use the
original p-dependent definition before this proof. Neither A_p nor an
anchored A_p difference is replaced by an ordinary Mobius prefix.

For any anchor J and nonempty (or adjacent empty) window,

 sum_(ell<=q<=b) alpha_p(q)g(q)
 = [A_p(b)-A_p(J)]g(b+1)-[A_p(ell-1)-A_p(J)]g(ell)
   +sum_(ell<=q<=b)[A_p(q)-A_p(J)](g(q)-g(q+1)).          (1)

This follows from the existing Abel identity and the exact difference
sum g(ell)-g(b+1). The first allowed quotient stays in the sum.

If ell<=J<b, the split is exactly

 low = A_p(J)g(J+1)-A_p(ell-1)g(ell)
       +sum_(ell<=q<=J) A_p(q)(g(q)-g(q+1)),
 high = [A_p(b)-A_p(J)]g(b+1)
       +sum_(J<q<=b)[A_p(q)-A_p(J)](g(q)-g(q+1)).        (2)

The low term A_p(J)g(J+1) is retained. If ell>J, formula (1) retains
the additional lower anchor A_p(ell-1)-A_p(J); it is zero only when
ell=J+1. If b<=J, the existing whole row is the low row. If b<ell,
the literal row is empty, rather than an invalid nonempty-window formula.
Only for Y=N does frozen support prove g(b+1)=0. It does not prove g(b)=0,
and it does not remove the matching internal boundary at J.

The new PickupRoughQuotientSplit module formalizes these fixed-anchor
and crossing identities and their actual qRow specializations.

## 2. Combine the small-prime and coprime sectors BEFORE squaring

Let W be the exact remaining sum

    W=shortPart(P,N,L,N,N,L,G)+coprimePart(P,N,L,N,N,L,G).

The second term includes q=1 and q>=2. This is a sum already defined in
main, not a new freely assigned remainder. Both orientations give

    R=R_lo-2 sharedPart(P,N,L,N,N,L,G)-2 W.             (3)

For each q>=1 define its actual column

 beta(q)=sum_(p in Q, q<=N/p, p not dividing q)
          sum_(L<m<pq, m<=N, [p<=L or p not dividing m])
                    a(m)G(m,pq).                    (4)

Prefix versions add the original guards m<=X and pq<=Y. The proof
cancels the repeated-prime term exactly, not approximately:

 c(p,q)/k(pq)=1_(p not dividing q) a(q)/(1+k(q)),
 c(p,q)=a(q)-1_(p|q)a(q).

The denominator insertion is valid for every fresh p once p not dividing q
is proved, including the small-prime sector. Terms with p|q are zero because
of the actual repeated-prime correction. After a finite extension of the
q inventory and exchange of the three finite sums,

    W=sum_(q=1)^N a(q)beta(q)/(1+k(q)).                (5)

beta includes all small-prime/long-prime cross information. Squaring beta
must not replace it by a sum of separate squared sector coefficients.

The new joint_eq_columns proves (5) from the existing shortPart and
coprimePart. interaction_joint proves (3) for the original Gram.

## 3. The auxiliary identity, with two parameters retained

For integer k>=0, elementary integration gives

    integral_0^1 t^k dt=1/(k+1).

Define the actual finite polynomial

    F(t)=sum_(q=1)^N c(q)t^k(q),   c(q)=a(q)beta(q).

Then W=integral F(t)dt. Every exchange below involves a finite sum of
continuous polynomials; no conditional convergence, infinite Euler product,
or interchange of asymptotic limits is involved.

On coprime positive u,v, the rough coefficient is multiplicative and the
selected-divisor sets are disjoint. Thus

 a(uv)=a(u)a(v),  k(uv)=k(u)+k(v),
 a(uv)t^k(uv)=[a(u)t^k(u)][a(v)t^k(v)].                (6)

This is multiplicativity BEFORE averaging. It does not make a(q)/(k(q)+1)
multiplicative. Its exact multiplicativity defect is a(u)a(v) times the
covariance kernel in section 4. The new arithmetic source lemmas prove
both statements, preserving the same frozen finite prime inventory.

The exact second moment of the joint mean is

 W^2=integral_0^1 integral_0^1 F(t)F(s) ds dt
    =sum_(q,r=1)^N c(q)c(r)/[(k(q)+1)(k(r)+1)].        (7)

The parameters t and s are independent integration coordinates. They are
not randomness assumptions on the arithmetic. Replacing s by t changes
(7) to

 M_common=integral_0^1 F(t)^2 dt
         =sum_(q,r=1)^N c(q)c(r)/(k(q)+k(r)+1).        (8)

Already for F(t)=1-t, (7)=1/4 while (8)=1/3. That difference is not a harmless
normalization. The source files prove both finite integral evaluations.

## 4. Compute the centered correlation, not a new supplier interface

The exact kernel is

 K(h,k)=1/(h+k+1)-1/[(h+1)(k+1)]
       =hk/[(h+k+1)(h+1)(k+1)].                      (9)

Consequently

 Var(F):=integral_0^1 [F(t)-W]^2 dt
        =sum_(q,r) c(q)c(r)K(k(q),k(r)) >=0,
 M_common=W^2+Var(F).                               (10)

K has nonnegative scalar entries, but c(q)c(r) is signed. The proof of
nonnegativity of the complete centered form is its exact square integral,
not an entrywise-sign argument. The unit degree k=0 has zero covariance;
its contribution remains in W, so centering does not erase the unit from
the arithmetic target.

The already proved low-q arithmetic implies the exact JOINT decomposition

    F(t)=U-t Pi+H(t),
    U=1_(1<=J) beta(1),
    Pi=sum_(q<=min(J,N), q prime, q>j) beta(q),
    H(t)=sum_(J<q<=N) a(q)beta(q)t^k(q).              (11)

For j=0 the low part is empty and the unit remains in H. Pi is a signed
source column sum; no positivity of beta or G is assumed. The source theorem
joint_polynomial_low_high proves (11), using the actual prime-layer result.
This raw finite expansion is equivalent to summing (2), with the matching
boundary retained; it does not change the Abel observation or its weights.

Put

 h=integral H(t)dt,
 b_H=integral (t-1/2)H(t)dt
    =sum_(q>J) c(q) k(q)/[2(k(q)+1)(k(q)+2)].          (12)

The centered low/high mixed term is computed exactly:

 Var(F)=Pi^2/12 - 2 Pi b_H + Var(H).                  (13)

The sign and the coefficient -2 are essential. Moreover, define the
independently prescribed projection residual

 E(t)=H(t)-h-12 b_H(t-1/2).

Using integral(t-1/2)=0 and integral(t-1/2)^2=1/12 gives

 integral E(t)^2 dt=Var(H)-12 b_H^2 >=0,
 Var(F)=(Pi-12 b_H)^2/12+integral E(t)^2 dt.           (14)

Thus the mixed centered correlation has been evaluated, and its residual
nonnegativity has been proved. There is no new centered-correlation assumption.
The arithmetic mean still equals

                    W=U-Pi/2+h.                    (15)

Equations (13)-(14) are NOT an upper bound for the negative part of (15).
For example, an arbitrary constant polynomial has zero variance and arbitrary
mean. Here U,Pi,h are fixed by the source, not arbitrary, but their required
joint lower estimate is not supplied by the variance identity.

There is also a concrete signed calculation one layer further. On an actual
quotient interval lying below min(j^3,N/p), with p>sqrt N, the nonzero rough
indices consist of the unit, primes >j and products of TWO DISTINCT primes >j.
Three such prime factors would have product at least (j+1)^3>j^3; repeated
prime factors have zero Mobius coefficient. If u records whether the unit is
allowed, P1 is its literal prime count, and P2 its literal distinct-semiprime
count, the auxiliary prefix polynomial is exactly

                      u-P1 t+P2 t^2.

Its mean is u-P1/2+P2/3, and its centered variance is

 P1^2/12-P1 P2/6+4P2^2/45
       =(P1-P2)^2/12+P2^2/180.                       (16)

This exhibits an actual negative prime/semiprime mixed term. It also proves
that crediting that term alone is invalid: the displayed residual remains.
The polynomial covariance identity is a Lean source candidate; this extension
of the arithmetic classification to j^3 is written-only in this increment.
No claim is made that P1 and P2 are close or that (16) bounds the entire source.

## 5. Exact gcd grouping does not create orthogonality

Grouping (7) by d=gcd(q,r), before taking any absolute value, gives

 W^2=sum_(d<=N) sum_(u,v<=N/d, gcd(u,v)=1)
              c(du)c(dv)/[(k(du)+1)(k(dv)+1)].        (17)

For the actual rough Mobius coefficients, nonsquarefree products vanish.
The surviving arithmetic product and degrees are

 a(du)a(dv)=a(d)^2 a(u)a(v),
 k(du)=k(d)+k(u),  k(dv)=k(d)+k(v),

with gcd(d,u)=gcd(d,v)=gcd(u,v)=1. These restrictions must remain. In the
two-parameter integrand the powers are t^(k(d)+k(u)) and s^(k(d)+k(v)),
not a single common-parameter power.

The q=r part is

 D_q=sum_(d<=N) a(d)^2 beta(d)^2/(1+k(d))^2.           (18)

Every cross term inside beta(d)^2 remains, including small-prime/high-quotient
cross terms. The off-diagonal consists of u!=v in (17); no orthogonality
has been proved for it. In particular, gcd=1 does NOT mean probabilistic
independence of the source coefficients.

The source files prove the exact gcd-fiber partition of (7). Reindexing each
fiber q=du,r=dv and the multiplicative vanishing statements above have their
complete written proof here: positive gcd divides both indices, division
is a bijection onto coprime u,v; the rough Mobius multiplicativity and the
square-factor zero rule give the displayed factors. No convergence is involved.

## 6. All prime, quotient and Gram costs in the large-gcd region

The following quantitative argument is written mathematics, not a claimed new
Lean bound in this increment.

The actual Gram already satisfies

 |G(m,n)|<=4 T A(P)^2/(sqrt m sqrt n),
 A(P_j)^2<=exp(4sqrt j).

At fixed p,q, the original strict triangle has m<pq. Therefore

 sum_(permitted m) |a(m)G(m,pq)|
 <=[4 T A(P)^2/sqrt(pq)] sum_(m<=pq) 1/sqrt m
 <=8 T A(P)^2.

There are at most floor(N/q) possible extracted primes p. This prices every
prime sum without a prime-counting conjecture. Hence, for q>=1,

 |beta(q)|<=8 T A(P)^2 N/q=:B_T/q,
 |c(q)/(1+k(q))|<=B_T/q.                              (19)

The sector guards and repeated-prime zero only remove terms in this absolute
bound; no new saving is attributed to them. The entire JOINT column is bounded,
not its pieces assumed independent.

Let H_N=sum_(n<=N)1/n. For any D>=1, the signed large-gcd slice of (7) obeys

 |M_(gcd>D)|
 <=sum_(d>D) sum_(u,v<=N/d) B_T^2/(d^2 u v)
 <=B_T^2 H_N^2 sum_(d>D)1/d^2
 <=B_T^2 H_N^2/D.                                    (20)

The finite tail is paid by 1/d^2<=1/(d-1)-1/d. Dropping gcd/coprimality
restrictions happens only in this nonnegative upper bound.
The harmonic bound H_N<=1+log N follows by comparison with integral_1^N dx/x.
At D=floor(sqrt N), N>=1 implies 1/D<=2/sqrt N, so

 |M_(gcd>L)|<=128 T^2 A(P)^4 (1+T)^2 N^(3/2).          (21)

There is an explicit j-independent payment to exponent 7/4:

 4sqrt j<=T/24+96/log2,
 T<=24 exp(T/24),   1+T<=25 exp(T/24),
 T A(P_j)^2(1+T)<=600 exp(96/log2) exp(T/8).

Consequently

 |M_(gcd>L)|
 <=46,080,000 exp(192/log2) N^(7/4).                  (22)

This is a proper sector of the SECOND MOMENT W^2. It is not a new 7/8 bound
for W, not a source-energy reduction, and not another subtraction of an already
paid shared-prime or internal-stage contribution. The small-gcd slice remains
signed in (17). In fact q<=L on every long-prime row: otherwise p,q>=L+1
would give pq>N. Thus d>L is automatically a short-prime/short-prime
part of this moment. The mixed small/long correlations all remain in d<=L;
none is claimed to be paid by (22).

The unweighted absolute estimate for the high-q diagonal is only

 sum_(q>J) a(q)^2 beta(q)^2/(1+k(q))^2 <=B_T^2/J       (J>=1). (23)

With J=j^2 this has N-exponent 2, not 7/4. Off-diagonal absolute values are no
better in general. Thus the available independent amplitude and quotient
budgets do NOT establish a uniform exponent gain for the full second moment.
This is a limitation of the proved bounds, not a lower bound for the actual
signed diagonal or a proof that the actual correlation cannot be small.

## 7. The remaining mean, and the already-controlled side

The current source identity is H=D_P+R. Combining it with (3) and H>=0 gives

 2W<=D_P+R_lo-2 sharedPart
    <=D_P+|R_lo|+2|sharedPart|.                       (24)

This upper side is independently paid by existing component bounds. The new
joint_upper_from_square proves the source-specific inequality (24), not its
missing opposite direction. It uses square-integral positivity, not uniform
coercivity on the layer space.

For the requested full-energy improvement, the negative side of the actual
mean U-Pi/2+h must still be controlled. No proof of that signed estimate or of
the required small-gcd off-diagonal suppression is supplied here. The exact
centered correlation, the proper large-gcd moment budget, and the prime/semiprime
mixed identity do not turn this into an assumed certificate. No growth Prop,
new RH wrapper, energy-ratio mass, or full-vector coercivity premise is added.

A full N^(7/8) energy estimate, were established later, would still need a
justified route to EVERY positive rate for the existing RH endpoint consumer.
The secondary Euler-product/Laplace obstruction remains at its prior written
scope, separate from its finite Lean reductions and all pending native checks.

## 8. Formal coverage and acceptance

New source candidates:
- FinitePowerMoments: finite integral exchanges with TWO parameters, common-
  parameter comparison, exact centered kernel, explicit affine correlation,
  projection residual and prime/semiprime covariance algebra.
- PickupRoughQuotientSplit: fixed-anchor and crossing q-Abel identities with
  matching boundary, plus source-row specializations.
- PickupRoughJointSecondMoment: corrected source-weight guard, coprime arithmetic
  multiplicativity and its averaged defect, exact joint column return, actual
  low/high polynomial split, complete second moment, gcd fibers, and paid upper
  side of the mean from the original square integral.

Not encoded as new Lean declarations in this increment: the j^3 arithmetic
classification, quotient-coordinate gcd reindex, actual column majorant (19),
and large-gcd quantitative estimate (20)-(22). These have the written proofs
above; their formal implementation and acceptance remain separate obligations.

All new and inherited compilation, fresh replay and transitive axiom checks
remain NOT_RUN. Source scripts may require elaboration/API/tactic repairs.
Finite diagnostics are exact rational arithmetic and signed model-kernel tests;
they are neither analytic Gram certificates nor evidence for an asymptotic
cancellation estimate. No remote execution is dispatched.

## Next mathematical execution instruction

In the still-unpaid d<=floor(sqrt N), u!=v part of (17), substitute the exact
small-prime/low-q/high-q decomposition of BOTH beta(du) and beta(dv), expand
its mixed products before absolute values, and separate the source mean
U-Pi/2+h from the computed affine projection residual; retain all three
coprimality conditions and both auxiliary exponents when comparing with the
concurrent frozen Type I/II decomposition.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e865b407e1349d1dea7cd1bbed8c6b0e5fe92bd8212a3f5e8cd785b4164168d9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_APPLICABLE. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":[],"status":"NOT_APPLICABLE","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
