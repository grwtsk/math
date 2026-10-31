# Signed prime-band contraction cannot center the exact causal residual

**Disposition:** rigorous programme-specific obstruction to a signed-weight
finite-prime bootstrap for the unchanged Liouville causal-energy target. The
countermodel is completely multiplicative, satisfies every selected exact
negative prime delay, and preserves the original causal response. Its exact
prime-band residual nevertheless has positive linear mean and positive
exponential causal energy whenever the signed delay operator has a strict
finite-horizon contraction margin. This does not refute the actual Liouville
function, RH, or a mechanism using an unbounded source-specific prime family.

**Prepared against `grwtsk/math/main`:**
`bbe1db164465c352413557b6628588796faa3eab`, tree
`53736ea56c55563d244b2e1db53203acdbc0688b`.

**Research scope:** `6ae605b4-a7b4-83e8-9ada-ee9c9089476b`.

**New source candidate:**
`GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/LiouvilleSignedPrimeBandContractionObstruction.lean`,
Git blob `ab84ddecee5084b64b60c316563c62b7b57d77ca`.

**Verification:** source inspection and mathematical derivation only.
Compilation, exact expected-type checks, fresh-kernel replay, native execution,
external theorem replay and transitive axiom audit are `NOT_RUN`.

## 1. Unchanged target and the proposed signed-weight escape

The original target remains

\[
r_n(u)=2\max(n^{-1/2}-e^{-u/2},0),
\qquad
F_\lambda(u)=\sum_{n\le e^u}\lambda(n)r_n(u),
\]

\[
H_\lambda(T)=\int_0^T |F_\lambda(u)|^2\,du,
\]

and

\[
\forall\varepsilon>0\;\exists C_\varepsilon\ge0\;\forall T\ge0,
\qquad
H_\lambda(T)\le C_\varepsilon e^{\varepsilon T}.
\tag{U}
\]

For a finite prime set \(P\) and arbitrary real weights \(w_p\), put

\[
W=\sum_{p\in P}w_p,
\qquad
\rho=\sum_{p\in P}\frac{|w_p|}{\sqrt p},
\qquad
Q=\sum_{p\in P}\frac{w_p}{p}.
\]

For a coefficient source \(a\), define

\[
D_w(n)=\sum_{\substack{p\in P\\p\mid n}}w_p,
\qquad
R_{P,w,a}(u)
 =\sum_{n\le e^u}a(n)\bigl(W-D_w(n)\bigr)r_n(u).
\]

Whenever \(a(pn)=-a(n)\) at every selected prime, the literal response
scaling gives the exact identity

\[
\boxed{
W F_a(u)+\sum_{p\in P}\frac{w_p}{\sqrt p}
 F_a(u-\log p)=R_{P,w,a}(u).
}
\tag{1}
\]

The delayed sum has finite-horizon \(L^2\)-operator norm at most \(\rho\).
Thus a strict Neumann/contraction route requires

\[
\boxed{0<\rho<W.}
\tag{2}
\]

The proposed escape from the earlier nonnegative-weight obstruction was to
allow signed \(w_p\), hoping to center the residual while retaining (2).
The calculation below proves that this cannot work even in the exact finite
prime-delay class.

## 2. Arithmetic-realizable finite-prime source

Define the completely multiplicative sign \(f_P\) by

\[
f_P(p)=
\begin{cases}
-1,&p\in P,\\
+1,&p\notin P.
\end{cases}
\]

Then, for every \(p\in P\) and every positive integer \(n\),

\[
f_P(pn)=-f_P(n).
\tag{3}
\]

Its mean is the positive Euler product

\[
c_P=\prod_{p\in P}\frac{p-1}{p+1}>0.
\tag{4}
\]

For one selected prime \(p\), exact valuation summation gives

\[
\lim_{x\to\infty}\frac1x
\sum_{\substack{n\le x\\p\mid n}}f_P(n)
=-\frac{c_P}{p}.
\tag{5}
\]

The same identity follows immediately at finite cutoffs from the bijection
\(n=pk\) and (3):

\[
\sum_{\substack{n\le x\\p\mid n}}f_P(n)
=-\sum_{k\le x/p}f_P(k).
\tag{6}
\]

Now define the exact band residual coefficient

\[
a_{P,w}(n)=f_P(n)\bigl(W-D_w(n)\bigr).
\tag{7}
\]

Using (4)--(6), its linear mean is

\[
\boxed{
m_{P,w}
=c_P\left(W+Q\right).
}
\tag{8}
\]

The plus sign in (8) is essential. It comes from the negative correlation
between \(f_P\) and divisibility by a selected prime.

## 3. Contraction and centering are incompatible

Since every selected prime satisfies \(p\ge2\),

\[
\frac1p\le\frac1{\sqrt2\sqrt p}.
\]

Therefore

\[
\boxed{
|Q|\le\frac{\rho}{\sqrt2}.
}
\tag{9}
\]

Under the contraction condition (2),

\[
W+Q\ge W-|Q|
 \ge W-\frac\rho{\sqrt2}
 >0.
\tag{10}
\]

Consequently

\[
\boxed{
m_{P,w}>0.}
\tag{11}
\]

More sharply, exact centering would require

\[
W+Q=0.
\]

Equations (9) and this identity imply

\[
W=|Q|\le\frac\rho{\sqrt2},
\qquad\text{hence}\qquad
\boxed{\rho\ge\sqrt2\,W.}
\tag{12}
\]

Thus mean centering is not merely outside the strict margin \(\rho<W\); it is
separated from it by the fixed factor \(\sqrt2\).

The Lean source proves the weaker but sufficient scalar form using
\(|Q|\le\rho\): a contractive band has positive mean factor, and exact
centering forces \(W\le\rho\). The sharp \(1/\sqrt2\) finite-sum inequality is
retained as an explicit source target.

## 4. Uniform prefix estimate with explicit dependencies

Fix any

\[
0<r<\frac12.
\]

The finite-prime convolution from the preceding obstruction work gives

\[
\left|
\sum_{n\le x}f_P(n)-c_Px
\right|
\le 2B_{P,r}x^r,
\tag{13}
\]

where

\[
B_{P,r}
=\prod_{p\in P}
\left(1+\frac{2}{p^r-1}\right).
\tag{14}
\]

There is no exceptional set. Combining (6), (7), and (13) yields, first for
\(x\ge\max P\),

\[
\left|
\sum_{n\le x}a_{P,w}(n)-m_{P,w}x
\right|
\le
2B_{P,r}
\left(
 |W|+\sum_{p\in P}|w_p|p^{-r}
\right)x^r.
\tag{15}
\]

For \(1\le x<\max P\), the finite range is absorbed explicitly by increasing
the right-hand constant. One permissible global constant is

\[
C_{P,w,r}
=2B_{P,r}
\left(
 |W|+\sum_{p\in P}|w_p|p^{-r}
\right)
+
\left(
 |W|+\sum_{p\in P}|w_p|+m_{P,w}
\right)\max(1,\max P).
\tag{16}
\]

Thus, for every real \(x\ge1\),

\[
\boxed{
\left|
\sum_{n\le x}a_{P,w}(n)-m_{P,w}x
\right|
\le C_{P,w,r}x^r.
}
\tag{17}
\]

All dependencies on \(P,w,r\) are displayed. There is no omitted prime range,
random model, or asymptotic uniformity assertion in a growing band.

## 5. Positive exponential residual energy

For any real coefficient sequence, finite Abel reversal with the unchanged
response gives

\[
F_a(u)=
\int_1^{e^u}
\left(\sum_{n\le t}a(n)\right)t^{-3/2}\,dt.
\tag{18}
\]

Apply (17). Since \(r<1/2\),

\[
F_{a_{P,w}}(u)
\ge
2m_{P,w}(e^{u/2}-1)
-
\frac{C_{P,w,r}}{1/2-r}.
\tag{19}
\]

Put

\[
E_{P,w,r}=\frac{C_{P,w,r}}{1/2-r},
\qquad
T_{P,w,r}=2\log\left(2+\frac{E_{P,w,r}}{m_{P,w}}\right).
\tag{20}
\]

Then, for every \(u\ge T_{P,w,r}\),

\[
F_{a_{P,w}}(u)\ge m_{P,w}e^{u/2}.
\tag{21}
\]

Hence, for every \(T\ge T_{P,w,r}\),

\[
\boxed{
H_{a_{P,w}}(T)
\ge
m_{P,w}^2
\left(e^T-e^{T_{P,w,r}}\right).
}
\tag{22}
\]

Taking \(r=1/4\) gives exactly the source interface
`PositiveMeanWithPowerError ... (1/4)` used in the new Lean candidate.

This is an exponential lower bound for the exact residual on the right side
of (1), not only for the full countermodel waveform.

## 6. The failed uniform-energy bootstrap

A contraction argument from (1) gives

\[
(W-\rho)\|F_{f_P}\|_{L^2(0,T)}
\le
\|R_{P,w,f_P}\|_{L^2(0,T)}.
\tag{23}
\]

The hoped-for strategy was to choose signed weights so that the residual became
centered or otherwise universally small while \(W-\rho>0\). Equations
(12) and (22) prove the exact failure:

\[
\boxed{
\text{contractive signed band}
\Longrightarrow
\text{positive-mean residual}
\Longrightarrow
H_R(T)\gg_{P,w}e^T.
}
\tag{24}
\]

Thus no theorem using only:

1. complete multiplicativity;
2. the exact negative delay identities at one fixed finite set of primes;
3. a signed finite-band Neumann/contraction inversion;
4. a universal residual estimate;

can prove the all-positive-rate uniform energy target.

This result is stronger than the earlier nonnegative-band norm equivalence and
stronger than the finite-prime countermodel without weights: it permits
arbitrary signed weights and places the obstruction directly in the exact
weighted residual consumed by the proposed inversion.

## 7. Relation to the actual Liouville source

The countermodel agrees with Liouville only at the selected primes and takes
value `+1` at every unselected prime. It therefore does not refute a mechanism
that uses:

- the actual sign at an unbounded prime family;
- a complete signed Type-II or Buchstab aggregate before norm inversion;
- the endpoint or double-Abel consumer;
- an arithmetic contraction not obtained from the finite-band absolute
  operator radius.

The actual target (U), the complete endpoint estimate, and RH remain open.
The new obstruction says that allowing signed finite-band weights does not
repair the already-sharp norm-only prime-delay route.

The next bounded arithmetic step is to retain an unbounded prime family inside
one signed bilinear object. A candidate estimate must avoid both the finite
countermodel and the contraction/centering tradeoff, and its inverse loss must
be `exp(o(T))` at every requested positive rate.

## 8. Source and novelty boundary

The positive mean of a finite-prime completely multiplicative sign is
consistent with classical Delange--Halasz mean-value theory. No new general
multiplicative mean theorem is claimed. The programme-specific contribution is:

- the signed-weight contraction-versus-centering inequality;
- the exact residual mean formula `c_P (W + sum w_p/p)`;
- the explicit unchanged-causal residual energy lower bound;
- the elimination of the finite signed-weight Neumann bootstrap.

Local predecessor sources:

- `LiouvillePrimeDelayObstruction.lean`, blob
  `0f4b1fa7f5fa69b3d8fa8b2ab2bef4abeec7c574`;
- `LiouvilleGrowingPrimeBandIdentity.lean`, blob
  `477ca1d19b634a09e8d5c1e38e8035798bb0ef37`;
- `LiouvilleCausalEnergyTarget.lean`, blob
  `a00aaa07c067b4c88203372870b5d5d151de0de4`.

The source candidate proves only the scalar and finite-product positivity
lemmas. `FinitePrimeResidualPrefixIdentity` and
`ContractiveSignedBandResidualEnergyObstruction` remain named propositions,
not axioms or accepted theorems.

## 9. Verification and acceptance boundary

Current status:

- source inspection: `DONE`;
- mathematical derivation: `WRITTEN`;
- compilation: `NOT_RUN`;
- expected types: `NOT_RUN`;
- fresh-kernel replay: `NOT_RUN`;
- transitive axiom audit: `NOT_RUN`;
- native execution: `NOT_RUN`;
- actual Liouville uniform energy: `UNPROVED`;
- complete endpoint estimate: `UNPROVED`;
- Riemann Hypothesis: `UNPROVED`.

Publication is not theorem acceptance. Formal qualification must compile the
new file against Lean `v4.34.1` and Mathlib
`d13f23b723b8a846827a245b89c10fc7d3f11612`, check exact expected types,
replay through a fresh kernel, and audit the transitive dependency closure.
