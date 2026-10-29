# Complete small-cofactor accounting leaves a positive proper family

By grwtsk contributors. Written mathematical source, not new Lean declarations.
Compilation, fresh kernel replay, transitive axiom audit: **NOT_RUN**.

## Source and unchanged arithmetic

Source conversation:
https://chatgpt.com/g/g-p-6a9ce8907e348191a3f884d45ab4ad48-noeaaeue/c/6ae172dd-a538-83e8-8008-ebad9b4c2295,
assistant `5ddeadb3-786b-4ce0-88f3-090d89edfb48`, rendered-final SHA256
`fed33b09e16d3c235055a2e9fa74c73694f899bc026ad04ccfb2fc79976daf5c`.
Use the exact arithmetic, causal Gram, constants c2,F,F0,kappa,G0,J_* and
Johnston–Yang input in [prime-cofactor-negative-family.md](prime-cofactor-negative-family.md).
That input is Daniel R. Johnston and Andrew Yang, *Some explicit estimates for the
error term in the prime number theorem*, arXiv:2204.01980v2 (20 April 2022),
Corollary 1.3 (1.6), https://arxiv.org/pdf/2204.01980v2, all real x>=2,
|pi(x)-li(x)|<=x epsilon(x), epsilon(x)=9.59(log x)^0.515 exp(-0.8274 sqrt(log x)).
The unshifted principal-value li convention is retained. No stronger PNT is used.

Freeze N=2^j,T=log N,D=2^ceil(j/8),L=floor(sqrt N),Q=product_(p<=j)p,
a(n)=mu(n)1_((n,Q)=1),h=2^floor(3j/4),b=min(floor(N/2),2^floor(15j/16)),W=N-b.
Let P(d)={prime ell:j^2<ell<=j^8,ell does not divide d}, B_d=product_(ell in P(d))ell.
Both i,k range over all divisors of B_d, with (i,k)=1. The actual family consists of
m=d i p,n=d k q, with p,q>j^8 prime, p,q not dividing d, p!=q, and

\[
 N/(2d)<kq\le W/d,\quad N/(3d)<ip\le R_{d,kq},\qquad
 R_{d,s}=\min(\lfloor N/(2d)\rfloor,\lfloor s/2\rfloor,
 s-\lfloor h/d\rfloor-1).
\]

For h<N/3, nonempty rows have s>2N/(3d) and R_(d,s)=floor(s/2),
so n-m>=m>N/3>h. This is a consequence of the original minimum, not a changed cutoff.
Factorization is unique; gcd(m,n)=d<=D<=L, theta=1, and
 a(m)a(n)=a(d)^2 mu(i)mu(k). The exact source E_(j,d) is twice the original theta aaG
sum on this family. Its original Gram is G=4c2 f_N(n)/sqrt(m), with 0<=G<=G0/N.
The old negative prime-r family and its finite-degree positive enlargement are
contained here. Their separate signed estimates must not be added as extra credits.

## Algebra becomes applicable only after two source-tail bounds

Put H_d=sum_(ell in P(d))1/ell. For j>=5 and 5/4<=H_d<=3/2,

\[
 \Gamma_d=\sum_{i,k\mid B_d,(i,k)=1}{\mu(i)\mu(k)\over ik}
 =\prod_{\ell\in P(d)}(1-2/\ell)>1/32,
\quad \sum_{i,k\mid B_d,(i,k)=1}{1\over ik}
 =\prod_{\ell\in P(d)}(1+2/\ell)\le e^3.
\]

Each prime is assigned to i, k, or neither. The positivity bound follows from
log Gamma>=-sum 2/(ell-2)>=-75/23>-5log2. Squareful and shared-small-prime diagonals
have been excluded, not discarded in an approximation.

Take alpha=1/(8log j), Z=exp(64(log j)^2). Since ell^alpha<=e,
Rankin on each side and a union bound prove

\[
 \sum_{i>Z\ {\rm or}\ k>Z\atop i,k\mid B_d,(i,k)=1}{1\over ik}
 \le r_j:=2e^{3(e+1)/2}j^{-8}.
\]

Thus the bounded coefficient Gamma_(d,Z) differs from Gamma_d by at most r_j.
For the actual source tail, retain both large-prime lower cutoffs, p,q not dividing d,
p!=q and all geometric restrictions; only after absolute values enlarge the prime
counts to N/(2di) and N/(dk). The original Gram gives

\[
 |E_{j,d}^{\rm tail}|\le G0\,r_j\,{a(d)^2N\over d^2}.
\tag{1}
\]

No independent-prime approximation is made in this tail. It is O(N/j^8) at d=1,
small compared with N/T^2 but not O(N^(7/8)).

## Bounded core and independent large-prime diagonal correction

Set Dbar=2N^(1/8)>=D, X=N/(3Dbar Z), tau0=log X,
tau_d=log(N/d), tau*=log(N/Dbar), rho=log(3Z)/tau*.
Require X>max(Dbar,j^8,e^2), h<N/3,W>=3N/4,D<=L and tau_d>=T/2.
For i,k<=Z every inner prime endpoint is >=X and every outer one >=2X.
Only here are the explicit p,q>j^8 and p,q not dividing d conditions redundant.
Define

\[
 A_{d,i}(t)=\sum_{N/(3di)<p\le t/(2di),p\ {\rm prime}}p^{-1/2},\qquad
 J_{d,i}(t)=\int_{N/(3di)}^{t/(2di)}{du\over\sqrt u\log u}.
\]

The independent-prime core is

\[
 \widetilde E_{j,d,Z}={8c2\,a(d)^2\over\sqrt d}
 \sum_{i,k\mid B_d\atop i,k\le Z,(i,k)=1}{\mu(i)\mu(k)\over\sqrt i}
 \sum_{2N/3<dkq\le W,q\ {\rm prime}}f_N(dkq)A_{d,i}(dkq).
\]

Its forbidden p=q correction is exactly

\[
 \Delta_{j,d,Z}=2a(d)^2
 \sum_{i,k\mid B_d\atop i,k\le Z,(i,k)=1,\ 2i\le k<3iW/N}\mu(i)\mu(k)
 \sum_{N/(3di)<p\le W/(dk),p>j^8\ {\rm prime},\ p\nmid d}G(dip,dkp).
\]

The source is E=tilde E-Delta+E_tail. The upper relation is strict because the
inner birth endpoint is strict. At fixed k, at most floor(k/2) integers i qualify.
Counting p by N/(dk) therefore yields the new bound

\[
 |\Delta_{j,d,Z}|\le G0\,{a(d)^2 Z\over d}
 \le {a(d)^2N\over d^2}\,{G0\,Dbar Z\over N}.
\tag{2}
\]

This does not assume k<=j^16. It is an auxiliary subtraction; theta=1 is not asserted
on forbidden diagonal pairs and no original shared-prime allocation is paid twice.

## Shifted logarithms and both prime-counting errors

Replacing the two prime sums by their densities gives, by t=Nx,u=Nv/(di),

\[
 M_{j,d,Z}=8c2\,{a(d)^2N\over d^2}
 \int_{2/3}^{W/N}F(x)\int_{1/3}^{x/2}{\Lambda_{d,Z}(x,v)\over\sqrt v}\,dv\,dx,
\]
\[
 \Lambda_{d,Z}(x,v)=\sum_{i,k\mid B_d\atop i,k\le Z,(i,k)=1}
 {\mu(i)\mu(k)\over ik\log(Nv/(di))\log(Nx/(dk))}.
\]

Both logs lie in [(1-rho)tau_d,tau_d], so
|tau_d^2 Lambda-Gamma_(d,Z)|<=eta_j:=((1-rho)^(-2)-1)e^3.
If r_j<=1/128,rho<1/2,eta_j<=1/128, then

\[
 {1\over64\tau_d^2}\le\Lambda_{d,Z},\qquad
 |\Lambda_{d,Z}|\le{4e^3\over\tau_d^2}.
\tag{3}
\]

This prices both omitted coefficient tails and all shifted logs before using the product.

Partial summation on the exact inner interval proves
|A_(d,i)-J_(d,i)|<=sqrt(2N/(di)) epsilon(X), including both endpoint residues.
The outer weight f_N J_(d,i) has lower value zero and full upper-residue-plus-variation
at most 2F0 kappa/(sqrt(di) log(N/(3di)))<=2F0 kappa/(sqrt(di) tau0).
The outer prime error is <=N epsilon(X)/(dk). Summing actual reciprocal masses <=e^3,
then adding (1),(2), proves

\[
 |E_{j,d}-M_{j,d,Z}|\le{a(d)^2N\over d^2}\mathcal E_j,\qquad
 \mathcal E_j=8c2 F0e^3\epsilon(X)(\sqrt2+2\kappa/\tau0)
 +G0\,Dbar Z/N+G0\,r_j.
\tag{4}
\]

Every error has the original d^-2 weight before summation. No period size or
cofactor-cardinality factor is inserted. W and the frozen horizon N remain unchanged.

## Positive conclusion, asymptotic, and unpaid complement

Put J1=integral_(2/3 to1)F(x)2(sqrt(x/2)-1/sqrt3)dx, and J_*>0 as in the linked note.
From (3), M>=c2 J_* a(d)^2N/(8d^2T^2) and
|M|<=128c2 e^3J1 a(d)^2N/(d^2T^2).
Require also T^2 mathcal(E)_j<=c2 J_*/16. Then

\[
 {c2 J_*\over16}{a(d)^2N\over d^2T^2}
 \le E_{j,d}\le(128c2e^3J1+c2J_*/16){a(d)^2N\over d^2T^2}.
\]

The lower constant exceeds 1/4915200. Explicit sufficient stages additionally obey
(2+6log j)epsilon(j^2)+log D/(j^2 log(j^2))<=1/16, which guarantees H_d in [5/4,3/2]
uniformly. All displayed sufficient conditions hold eventually: log X=(7/8)jlog2
-O((log j)^2), rho tends to zero, r_j=O(j^-8), and T^2 mathcal(E)_j tends to zero.
No numerical starting threshold is certified.

Uniformly in active d<=D, H_d tends to log4 and sum_(ell in P(d))ell^-2 tends to zero.
The excluded-prime loss is <=log d/(j^2 log(j^2)); thus Gamma_d tends to 1/16.
In the exact main integral, shifted logs converge uniformly after tau_d normalization,
W/N tends to1, and tau_d^2 mathcal(E)_j tends to zero. Therefore

\[
 E_{j,d}={a(d)^2N\over d^2\log^2(N/d)}(c2 J1/2+o(1))
\]

uniformly on active support. Summing d gives (c2 J1/2+o(1))N/T^2:
the d=1 term leads; active d>1 imply d>j and their reciprocal-square mass is <=1/j.

The earlier negative prime-r subfamily, positive degree-one union, and negative
all-i/restricted-k family are contained here. None is independent net credit.
This positive proper family cannot have an O(N^(7/8)) upper bound; sufficient
cancellation of the original bulk must involve its exact disjoint complement.
That complement includes zero or multiple primes above j^8 in a residual core,
rough factors outside (j^2,j^8], the other Gram cells and the outside-band source.
All remain unbounded here. Neither positivity nor a finite computation proves RH.

Imported mathematics: the pinned scalar PNT bound in written scope. New local source:
written cutoff, Rankin, diagonal and signed-density deductions. New fully qualified
Lean declarations: none; kernel-verified bridges: none claimed. No axiom/certificate,
finite evidence or analogy is promoted to acceptance. Compilation, fresh kernel replay
and transitive axiom audit remain NOT_RUN; no proof execution was dispatched.
