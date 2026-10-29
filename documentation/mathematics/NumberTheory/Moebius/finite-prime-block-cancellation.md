# Finite prime blocks: an unconditional estimate and its remaining signed cost

Local mathematical attribution: grwtsk contributors.

This note gives written mathematical proofs for the literal causal response in
`GRWTSK.RiemannHypothesis.CCC.pickupResponse`. It does not assert Lean acceptance
of these arguments. Compilation, fresh kernel replay and transitive axiom audit
of the corresponding source development are **NOT_RUN**. The independent finite
floor-sum module below is a source proof candidate, with its own narrower scope.

For integers n >= 1 and real u, write

\[
r_n(u)=2(n^{-1/2}-e^{-u/2})1_{\log n\le u}
      =2(n^{-1/2}-e^{-u/2})_+.
\]

Here x_+ = max(x,0). Define the original, unsifted source and its energy by

\[
F(u)=\sum_{1\le n\le e^u}\mu(n)r_n(u),\qquad
H(T)=\int_0^T F(u)^2\,du\quad(T\ge0).
\]

These are `wholePickup` and `pickupEnergy`, not replacement source models.

## Two primes give a positive complete block

For distinct primes p < q and m >= 1, put

\[
K_{p,q}(m,u)=r_m(u)-r_{pm}(u)-r_{qm}(u)+r_{pqm}(u).
\]

Let a = p^(-1/2), b = q^(-1/2), and t = sqrt(m) exp(-u/2). Then
0 < b < a < 1 and

\[
K_{p,q}(m,u)=\frac2{\sqrt m}\Psi_{a,b}(t),\qquad
\Psi_{a,b}(t)=(1-t)_+-(a-t)_+-(b-t)_++(ab-t)_+.
\]

The exact successive values are

\[
\Psi_{a,b}(t)=
\begin{cases}
(1-a)(1-b),&0\le t\le ab,\\
1-a-b+t,&ab\le t\le b,\\
1-a,&b\le t\le a,\\
1-t,&a\le t\le1,\\
0,&t\ge1.
\end{cases}
\]

All are nonnegative: in the second interval the lower endpoint gives
1-a-b+ab = (1-a)(1-b) > 0. Thus K_(p,q)(m,u) >= 0, including every birth
endpoint. This conclusion is about this complete four-term response block.

Partition an integer with nonzero Mobius coefficient according to its p and q
factors. Its exponents at p and q are zero or one; larger exponents have zero
Mobius coefficient. Multiplicativity therefore gives the exact finite identity

\[
F(u)=\sum_{\substack{m\le e^u\\(m,pq)=1}}\mu(m)K_{p,q}(m,u).
\]

Terms whose multiples are above the original cutoff have their original zero
response. No survivor normalization, prime-density input or diagonal deletion
is used. Since |mu(m)| <= 1 and K >= 0,

\[
|F(u)|\le B(u):=\sum_{\substack{m\le e^u\\(m,6)=1}}K_{2,3}(m,u).
\]

## A period-36 certificate and the resulting actual-source bound

Reindexing the four terms gives B(log x) = sum_(n<=x) gamma(n) r_n(log x), where

\[
\gamma(n)=
\begin{cases}
0,&4\mid n\text{ or }9\mid n,\\
(-1)^{1_{2\mid n}+1_{3\mid n}},&\text{otherwise}.
\end{cases}
\]

The sequence has period 36 and sum 4 over one period. For
G(r) = sum_(1<=n<=r) gamma(n), the complete vector 9G(r)-r for r = 0,...,36 is

```text
0,8,-2,-12,-13,-5,3,11,10,9,-1,7,6,14,4,-6,-7,1,0,
8,7,-3,-13,-5,-6,2,-8,-9,-10,-2,6,14,13,3,-7,1,0.
```

Each entry is an integer calculation from the displayed gamma. Its maximum is
14. Writing an integer cutoff as 36k+r extends the certificate to every integer;
taking the floor extends the upper bound to every real x >= 1:

\[
G(x)\le x/9+14/9.
\]

Finite summation of
r_n(log x) = integral_(n)^x t^(-3/2) dt gives the exact identity

\[
B(\log x)=\int_1^xG(t)t^{-3/2}\,dt.
\]

Integration of the preceding bound proves, for every u >= 0,

\[
\boxed{|F(u)|\le\frac29e^{u/2}+\frac{26}9-\frac{28}9e^{-u/2}.}
\]

Dropping only the last favorable term and integrating the square gives, for
every T >= 0,

\[
\boxed{H(T)\le\frac4{81}(e^T-1)
 +\frac{208}{81}(e^{T/2}-1)+\frac{676}{81}T.}
\]

The existing source identities subtract the nonnegative original diagonal and
pay at most 1/4 for endpoint quadrature. Consequently the explicit endpoint
sum at T has an upper bound given by the last display plus 1/4. This improves
an unconditional allowance while retaining exponential rate one. It does not
give the required bound at every positive rate.

## A third prime has a strictly negative block

For P = {2,3,5}, Q = 30 and
K_P(m,u) = sum_(d|Q) mu(d) r_(dm)(u), direct use of the original birth cutoffs
at m = 1 and u = log 10 gives

\[
K_P(1,\log10)=2(1-1/\sqrt2-1/\sqrt3-1/\sqrt5
                    +1/\sqrt6+1/\sqrt{10})<-7/500<0.
\]

A rational certificate for the strict upper bound uses
1/sqrt(2) > 7071/10000, 1/sqrt(3) > 5773/10000,
1/sqrt(5) > 4472/10000, 1/sqrt(6) < 4083/10000, and
1/sqrt(10) < 3163/10000. Each comparison follows by squaring positive rationals;
their substitution gives exactly -7/500. Thus positivity of all later prime
blocks cannot be a premise supplied by the two-prime argument.

## Uniform finite floor error for changing prime sets

For finite prime set P and Q = product_(p in P) p, the same unsigned-cofactor
reindexing gives

\[
\gamma_P(n)=\prod_{p\in P}(1-2\,1_{p\mid n}+1_{p^2\mid n}).
\]

Expanding the two copies of each local factor gives

\[
G_P(x)=\sum_{d,e\mid Q}\mu(d)\mu(e)
       \left\lfloor\frac{x}{de}\right\rfloor,\qquad
\alpha_P=\left(\sum_{d\mid Q}\frac{\mu(d)}d\right)^2
        =\prod_{p\in P}(1-1/p)^2.
\]

For x >= 0, subtract x alpha_P and apply the floor error at each ordered pair.
Since |mu(d)mu(e)| <= 1,

\[
|G_P(x)-\alpha_Px|\le\tau(Q)^2=4^{|P|}.
\]

`GRWTSK.NumberTheory.Moebius.FiniteDivisorFloorDiscrepancy` supplies a Lean source
candidate for the literal signed double-divisor floor estimate for every
natural Q and x >= 0, including Q = 0. The coefficient reindexing from gamma_P
and the final prime-product simplification above are written finite arguments;
they are not additional Lean declarations supplied by that module.

The constants now vary explicitly with P. A fixed-P asymptotic statement cannot
be used as a uniform growing-stage estimate without paying those constants.

## The remaining signed arithmetic obligation

For p outside P, the original complete blocks obey
K_(P union {p})(m,u) = K_P(m,u)-K_P(pm,u). The negative part of the new block is
max(K_P(pm,u)-K_P(m,u),0); it is not an arbitrary remainder.

For nonempty P, every fully born block has the exact positive value
2 product_(p in P)(1-p^(-1/2))/sqrt(m). Therefore its negative part is confined
to exp(u)/Q < m <= exp(u). The actual waveform still carries the outer signed
coefficient mu(m). If Q(T) > exp(T), no integer block is fully born anywhere
in [0,T]. Both the growing product and the unsaturated signed contribution
must be controlled; positive blocks alone supply no such control.

The precise unresolved source proposition remains

\[
\forall\delta>0\ \exists C_\delta\ge0\ \forall j\in\mathbb N,
\quad\mathrm{dyadicBirthSum}(j)\le C_\delta2^{\delta j},
\]

with `dyadicBirthSum` and `birthExpression` unchanged in
`GRWTSK.NumberTheory.Moebius.PickupDyadicEndpoint`. This is a one-sided signed
bound. Its source-level energy equivalent keeps the original H(j log 2).
The estimates here neither construct its witness nor verify the complete
conditional implication to canonical RH.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f1132e911ed962414f3bcc9850a7a6c50899737f44965b7150d3112cb0f8d430 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_APPLICABLE. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":[],"status":"NOT_APPLICABLE","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
