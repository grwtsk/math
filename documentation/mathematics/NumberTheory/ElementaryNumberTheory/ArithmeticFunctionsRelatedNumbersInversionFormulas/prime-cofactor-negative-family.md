# A uniform negative prime–cofactor family in the upper Gram band

By grwtsk contributors.

This is a written mathematical deduction, not a Lean declaration or native acceptance
receipt. It bounds a proper signed family; its disjoint complement is unresolved.
Compilation, fresh kernel replay and transitive axiom audit: **NOT_RUN**.

## Sources and fixed arithmetic

The source conversation is
https://chatgpt.com/g/g-p-6a9ce8907e348191a3f884d45ab4ad48-noeaaeue/c/6ae172dd-a538-83e8-8008-ebad9b4c2295,
assistant message `1706e885-df02-436e-92f2-05f2eb8db1af`, rendered-final SHA256
`4ac9995fffd97f3d7ec13de9d9153a6e310167aff1eb699d105c1f53eba5a0cc`.
The supporting Gram calculation is [upper-bulk-gram-and-gcd.md](upper-bulk-gram-and-gcd.md),
source commit `1c5752c6befd711612179b5693950d09be60d9a6`, blob
`e6b0570ebb14062cf7d8d490704461e2caaef8a8`.

The sole external analytic input here is Daniel R. Johnston and Andrew Yang,
*Some explicit estimates for the error term in the prime number theorem*,
arXiv:2204.01980v2, 20 April 2022 (document date 21 April), Corollary 1.3,
equation (1.6), page 2: https://arxiv.org/pdf/2204.01980v2.
It gives, for every real x>=2,

\[
 |\pi(x)-\operatorname{li}(x)|\le x\epsilon(x),\qquad
 \epsilon(x)=9.59(\log x)^{0.515}e^{-0.8274\sqrt{\log x}}.
\]

Here pi counts primes <=x, and li is the principal-value integral from 0 to x,
not the integral from 2. The primary PDF's first two pages were inspected.
This is imported written mathematics, not a locally kernel-verified theorem.

Freeze integer j, N=2^j, T=log N, Q=product of primes <=j,
a(n)=mu(n)1_(n,Q)=1, D=2^ceil(j/8), L=floor(sqrt N),
h=2^floor(3j/4), b=min(floor(N/2),2^floor(15j/16)), W=N-b.
All logarithms are natural. Set

\[
 c_2=1-2^{-1/2},\quad f_N(t)={\log(N/t)-2\over\sqrt t}+{2\over\sqrt N},
 \quad F(x)={\log(1/x)-2\over\sqrt x}+2.
\]

The original upper band has N/4<m<=N/2, N/2<n<=W, n-m>h.
In its cell m>N/3, n>=2m, the frozen causal Gram is exactly
G(m,n)=4 c_2 f_N(n)/sqrt(m). The retained divisor fraction theta is the one
in the cited Gram note; no changed horizon or mask is used below.

## The proper family and exact reconstruction

For 1<=d<=D put P(d)={prime p:j^2<p<=j^8, p does not divide d},
and K(d)=P(d) disjoint-union {p1 p2:p1<p2, pi in P(d)}.
Take original pairs m=dr, n=dkq, with r,q prime, q>j^8, k in K(d),
s=kq, and the original cell restrictions

\[
 N/(2d)<s\le W/d,\qquad N/(3d)<r\le R_{d,s},\quad
 R_{d,s}=\min(\lfloor N/(2d)\rfloor,\lfloor s/2\rfloor,
 s-\lfloor h/d\rfloor-1).
\]

Initially require (s,d)=1 and (r,ds)=1. Let F_(j,d) be twice the sum of
 theta(m,n)a(m)a(n)G(m,n) over precisely these pairs.
Define X=N/(2D j^16). Suppose j>=17, D<=L, h<N/3, W>=3N/4,
and X>max(D,j^8,e^2). Nonempty rows have s>2N/(3d);
the displayed minimum then equals floor(s/2), including its strict-gap term.
Thus n-m>=m>N/3>h. All inner prime arguments exceed N/(3D)>X,
and all outer arguments exceed 2N/(3D j^16)>X.
Consequently r,q>D>=d and r,q>j^8. Also q<N/(d j^2)<N/(3d)<r,
so r does not divide kq. The prime factors of k avoid d by definition.
This proves every removed coprimality restriction; gcd(m,n)=d and theta=1.
Finally a(dr)a(dkq)=a(d)^2 mu(k). The family vanishes if a(d)=0.
Factorization is unique since q>j^8 and the small factors are distinct.

For t in [2N/3,W] put

\[
 A_d(t)=\sum_{N/(3d)<r\le t/(2d),\ r\text{ prime}}r^{-1/2},\qquad
 J_d(t)=\int_{N/(3d)}^{t/(2d)}{du\over\sqrt u\log u},
 \quad \Xi_d(t)=\sum_{k\in K(d)}{\mu(k)\over k\log(t/(dk))}.
\]

Then, with the original endpoint W and response f_N,

\[
 F_{j,d}={8c_2a(d)^2\over\sqrt d}
 \sum_{k\in K(d)}\mu(k)\sum_{2N/3<dkq\le W,\ q\text{ prime}}
 f_N(dkq)A_d(dkq),
\]
\[
 M_{j,d}={8c_2a(d)^2\over d\sqrt d}
 \int_{2N/3}^W f_N(t)J_d(t)\Xi_d(t)\,dt.
\]

## Uniform density and full error costs

Write H_d=sum_(p in P(d))1/p, H2_d=sum 1/p^2 and
S_d=H_d+(H_d^2-H2_d)/2=sum_(k in K(d))1/k.
If H=H_1, then

\[
 0\le H-H_d\le {\log d\over j^2\log(j^2)},\qquad
 0\le H2_1-H2_d\le {H-H_d\over j^2}.
\]

Indeed the product of distinct excluded primes divides d and each exceeds j^2.
The squarefree coefficient is (H_d^2-H2_d)/2-H_d; the diagonal is retained.
Partial summation in the cited PNT bound gives
|H-log4|<=(2+6log j)epsilon(j^2), for j>=3, since epsilon decreases on [e^2,infinity).
Thus the sufficient condition

\[
 (2+6\log j)\epsilon(j^2)+{\log D\over j^2\log(j^2)}\le1/16
\tag{A}
\]

implies 5/4<=H_d<=3/2 and S_d<=21/8 simultaneously for all d<=D.
If additionally

\[
 16\log j\le\tfrac1{10}\log(2N/(3D)),
\tag{B}
\]

then, writing lambda=log(t/d), the positive and negative density terms together obey

\[
 \Xi_d(t)\le{(H_d^2-H2_d)/(1.8)-H_d\over\lambda}
 \le-{1\over4\lambda}\le-{1\over4T}.
\]

No cancellation of separate densities is assumed. Put F0=F(2/3),
kappa=2(1/sqrt2-1/sqrt3), tau=log(N/(3D)).
Weighted partial summation on the exact inner interval yields
|A_d(t)-J_d(t)|<=sqrt(2N/d)epsilon(X). Both endpoints are included.
Also 0<=f_N<=F0/sqrt N, J_d(W)<=kappa sqrt(N/d)/log(N/(3d)).
Since f_N decreases and J_d increases, with J_d(2N/3)=0,

\[
 |(f_NJ_d)(W)|+\operatorname{Var}(f_NJ_d)
 \le{2F0\kappa\over\sqrt d\log(N/(3d))}.
\]

For each k the outer prime-counting error is at most N epsilon(X)/(dk).
First replace A_d by J_d using the elementary count N/(dk), then apply this
variation estimate to the outer prime sum. Summing the actual reciprocal masses,
not the number of cofactors, proves

\[
 |F_{j,d}-M_{j,d}|\le
 8c_2F0 S_d\,{a(d)^2N\over d^2}\epsilon(X)
 \left(\sqrt2+{2\kappa\over\log(N/(3d))}\right).
\tag{C}
\]

This bound includes both prime endpoints, the upper residue at W, the original
Gram and every cofactor. It does not use a masked harmonic-tail transport.

## A negative bound and its exact scope

Define the positive integral

\[
 J_* =\int_{2/3}^{3/4}F(x)\,2(\sqrt{x/2}-1/\sqrt3)\,dx,
 \qquad c_*=c_2J_*.
\]

Since F(x)=integral_(x to1)(-log t)/(2t^(3/2))dt>=(1-x)^2/4,
on [7/10,3/4] it is at least 1/64; the second factor is at least 1/60
by rationalizing its square-root difference. Hence J_*>=1/76800 and
c_*>1/307200. Moreover
J_d(Nx)>=sqrt(N/d)2(sqrt(x/2)-1/sqrt3)/T.
The density inequality and W>=3N/4 therefore imply

\[
 M_{j,d}\le-2c_*{a(d)^2N\over d^2T^2}.
\]

Together with (C), a final explicit sufficient condition is

\[
 21F0 T^2\epsilon(X)(\sqrt2+2\kappa/\tau)\le J_*.
\tag{D}
\]

For every stage satisfying the stated geometric conditions and (A),(B),(D),

\[
 F_{j,d}\le-c_*{a(d)^2N\over d^2T^2}\quad(1\le d\le D).
\]

These conditions hold for all sufficiently large j: log D=O(j),
log X=(7/8)j log2-O(log j), the loss in (A) tends to zero,
and epsilon(X) decays faster than any inverse power of j. They are explicit
checkable inequalities; no particular numerical starting stage is certified here.

Distinct d families are disjoint because gcd(m,n)=d. Their sum is at most
-c_* N/T^2 sum_(d<=D)a(d)^2/d^2. For d>1 active roughness forces d>j,
so the remaining reciprocal mass is <=1/j; this upper bound may bound the error,
but must not be substituted into a negative upper bound with reversed direction.

The original bulk equals this family plus its exact set-theoretic complement.
The other cell-D pairs (including semiprime r), the other Gram cells and the
outside-band contribution are **unbounded here**. A positive complementary family
can overwhelm this negative margin. This is not an absolute N^(7/8) bound, a full
energy improvement, or the every-positive-rate arithmetic estimate required for RH.

## Classification

Imported mathematics: the pinned Johnston–Yang scalar PNT theorem in written scope.
New source: the written arithmetic reconstruction and uniform proper-family estimate.
New fully qualified Lean declarations: none. Kernel-verified bridges: none claimed.
Conditional interfaces, finite evidence and analogies: none promoted to acceptance.
Missing bridges: native formalization of these deductions and signed control of the
complete complementary source. Compilation, fresh kernel replay and transitive axiom
audit remain NOT_RUN; no proof execution is authorized by this note.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=76df41ee91ec5bc855393e6b9a980cebb8cd9b0aca63a7ef7da079a42cab0843 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_APPLICABLE. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":[],"status":"NOT_APPLICABLE","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->


## Adding one small factor to the first core reverses the signed credit

Written extension by grwtsk contributors. Source chat
https://chatgpt.com/g/g-p-6a9ce8907e348191a3f884d45ab4ad48-noeaaeue/c/6ae172dd-a538-83e8-8008-ebad9b4c2295,
assistant `d6c98ac9-4992-49fd-9829-ee70abff0646`, rendered-final SHA256
`5de237c985089bab0350b762f2f37e366d367e3f52d09c42b7c97e2cc1b4846a`.
Use the definitions and pinned Johnston–Yang input of the preceding note.
This extension does not invalidate the negative subfamily theorem. It shows why
that theorem cannot supply a net credit after adding the following sector.

Let I(d)={1} union P(d), and let original m=d i p, n=d k q, with
i in I(d), k in K(d), p,q>j^8 prime. Keep the original R_(d,s) and s=kq,
and impose (i,k)=1 and p!=q. The verified endpoint conditions imply p,q>d;
all small factors avoid d. Thus gcd(m,n)=d, theta=1, and the arithmetic
coefficient is a(d)^2 mu(i)mu(k). Factorization is unique. Write E_(j,d)
for this union's actual contribution, counting both ordered orientations.
It includes the old family exactly once at i=1.

The forbidden small patterns for i=ell are k=ell and k=ell*v. The forbidden
large pattern is p=q. Temporarily allow p=q only in an auxiliary product sum.
With A_(d,i)(t)=sum_(N/(3di)<p<=t/(2di),p prime)1/sqrt(p), that sum is

\[
 \widetilde E_{j,d}={8c_2a(d)^2\over\sqrt d}
 \sum_{i\in I(d)}{\mu(i)\over\sqrt i}
 \sum_{k\in K(d),(i,k)=1}\mu(k)
 \sum_{2N/3<dkq\le W,q\ {
m prime}} f_N(dkq)A_{d,i}(dkq).
\]

The true E is this auxiliary sum minus Delta. At p=q the original geometry
requires 2ell<=k<3ell and N/(3dell)<p<=W/(dk), with ell not dividing k.
The exact nonempty interval automatically strengthens k<3ell to k<3ell W/N.
The auxiliary correction is

\[
 \Delta=-2a(d)^2\sum_{\ell\in P(d)}
 \sum_{k\in K(d),\ell\nmid k,2\ell\le k<3\ell}\mu(k)
 \sum_{N/(3d\ell)<p\le W/(dk),p\ {
m prime}}G(d\ell p,dkp).
\]

The original Gram obeys G<=G0/N in this cell, G0=4sqrt(3)c_2F0.
For each ell there are at most ell integers k in [2ell,3ell), whose reciprocal
sum is <=1/2. Counting primes by N/(dk) therefore proves
|Delta|<=G0 a(d)^2 j^8/d. This is an auxiliary analytic subtraction; it is
not a second credit for the original shared-prime allocation.

Put H=sum_(ell in P(d))1/ell, Hr=sum ell^(-r), e2=(H^2-H2)/2,
e3=(H^3-3HH2+2H3)/6. After the small-factor exclusions, the signed reciprocal
coefficient and absolute reciprocal mass are exactly

\[
 \gamma=3e_2-H-3e_3,
 \qquad S=H+3e_2+3e_3.
\]

Indeed the old coefficient is e2-H and the new one is 2e2-3e3;
the factors count the possible allocation of a distinct small prime to i.
All repeated-prime diagonals remain excluded. If 5/4<=H<=3/2 and j>=3,
S<=105/16. Also

\[
 \gamma=(H-1)(H-H^2/2+3H_2/2)-H_3
 \ge15/128-1/54>3/32,
\]

using H3<=H/j^4. Thus the reciprocal coefficient has changed sign.

This algebra alone is not a source estimate. Set tau_d=log(N/d),
rho=(16log j+log3)/log(N/D), and

\[
 \Lambda_d(x,v)=\sum_{i\in I(d),k\in K(d),(i,k)=1}
 {\mu(i)\mu(k)\over ik\log(Nv/(di))\log(Nx/(dk))}.
\]

Replacing the two actual prime sums by their densities gives precisely

\[
 M_{j,d}=8c_2{a(d)^2N\over d^2}
 \int_{2/3}^{W/N} F(x)\int_{1/3}^{x/2}
 {\Lambda_d(x,v)\over\sqrt v}\,dv\,dx.
\]

Both logarithms lie in [(1-rho)tau_d,tau_d]. Hence
|tau_d^2 Lambda-gamma|<=((1-rho)^(-2)-1)S.
For rho<=1/512, the right side is <1/32, and consequently
1/(16tau_d^2)<=Lambda<=7/tau_d^2. With tau_d>=T/2 and W>=3N/4,
this implies M_(j,d)>=c_2 J_* a(d)^2N/(2d^2T^2).

The same two partial summations as in the preceding note now sum the actual
mass S, without a factor equal to its cardinality. Put tau0=log(N/(3D j^8))
and X=N/(2D j^16). With every endpoint above X>max(D,j^8,e^2),

\[
 |E_{j,d}-M_{j,d}|\le {a(d)^2N\over d^2}\mathcal E_j,
\quad \mathcal E_j=
 8c_2F0\,{105\over16}\epsilon(X)(\sqrt2+2\kappa/\tau0)
 +G0 D j^8/N.
\]

This includes the independent p=q subtraction and preserves the original horizon.
Under the explicit sufficient conditions already stated here and
T^2 mathcal(E)_j<=c_2 J_*/4,

\[
 E_{j,d}\ge {c_2J_*\over4}\,{a(d)^2N\over d^2T^2}
 >{a(d)^2N\over1228800d^2T^2}
\]

on active support. These conditions hold eventually: excluded-prime losses tend
to zero, rho tends to zero, and both T^2 epsilon(X) and T^2 D j^8/N tend to zero.
No particular numerical starting stage is certified. The d=1 enlarged family
therefore cannot have an O(N^(7/8)) upper bound. This does not rule out cancellation
with its exact disjoint complement, which remains unbounded. Other small-cofactor
degrees may change the sign again; no truncation supplies a full arithmetic bound.
Compilation, fresh kernel replay and transitive axiom audit: NOT_RUN. No new Lean
declarations, kernel-verified bridges or proof execution are claimed.
