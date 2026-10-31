# Reciprocal-prime-mass obstruction and the dense-band covariance frontier

**Disposition:** source-bound mathematical review; stronger programme-specific
obstruction and finite-band diagonal lower bound; no claim of Riemann
Hypothesis completion.

**Prepared against `grwtsk/math/main`:**
`c2a00d1676f082c51b1699fb339c4945ba42a734`.

**New Lean source candidate:**
`GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/LiouvilleReciprocalPrimeMassObstruction.lean`.

**Verification status:** source inspection only. Compilation, expected-type
checking, fresh-kernel replay, and transitive axiom audit are all `NOT_RUN`.

## 1. Unchanged causal target

For a real coefficient source `a`, retain exactly

\[
r_n(u)=2\max\!\left(n^{-1/2}-e^{-u/2},0\right),
\]

\[
F_a(u)=\sum_{n\le e^u}a(n)r_n(u),
\qquad
H_a(T)=\int_0^T |F_a(u)|^2\,du.
\]

For the actual Liouville function the target remains

\[
\forall\varepsilon>0\;\exists C_\varepsilon\ge0\;\forall T\ge0:
\qquad
H_\lambda(T)\le C_\varepsilon e^{\varepsilon T}.
\tag{E}
\]

The previous review showed that exact negative delay identities on a finite
prime set, and even on an infinite set satisfying
\(\sum_{p\in S}p^{-\rho}<\infty\) for some \(0<\rho<1/2\), do not imply (E).
The present argument removes the power-summability hypothesis.

## 2. Completely multiplicative reciprocal-sparse sign

Let \(S\) be an infinite set of primes satisfying only

\[
\sum_{p\in S}\frac1p<\infty.
\tag{2.1}
\]

Define the completely multiplicative function

\[
f_S(p)=
\begin{cases}
-1,&p\in S,\\
+1,&p\notin S.
\end{cases}
\tag{2.2}
\]

For every \(p\in S\) and every positive integer \(n\),

\[
f_S(pn)=-f_S(n).
\tag{2.3}
\]

Thus the selected delay set is infinite and unbounded, and every selected
delay identity is exact with no exceptional integers.

Let \(g_S=f_S*\mu\), so \(f_S=1*g_S\).  On prime powers,

\[
g_S(p^k)=
\begin{cases}
2(-1)^k,&p\in S,\ k\ge1,\\
0,&p\notin S,\ k\ge1,
\end{cases}
\qquad g_S(1)=1.
\tag{2.4}
\]

The absolute Dirichlet mass at one is

\[
A_S
:=\sum_{d\ge1}\frac{|g_S(d)|}{d}
=\prod_{p\in S}\left(1+\frac{2}{p-1}\right)
=\prod_{p\in S}\frac{p+1}{p-1}<\infty.
\tag{2.5}
\]

Indeed, the logarithm of the product is \(O(\sum_{p\in S}1/p)\).
The signed product is

\[
c_S
:=\sum_{d\ge1}\frac{g_S(d)}d
=\prod_{p\in S}\left(1-\frac{2}{p+1}\right)
=\prod_{p\in S}\frac{p-1}{p+1}
=A_S^{-1}>0.
\tag{2.6}
\]

No rate stronger than convergence is used.

## 3. Elementary positive-mean derivation

For an integer \(N\ge1\), convolution gives

\[
M_S(N):=\sum_{n\le N}f_S(n)
=\sum_{d\le N}g_S(d)\left\lfloor\frac Nd\right\rfloor.
\tag{3.1}
\]

Subtracting \(c_SN\) and dividing by \(N\),

\[
\begin{aligned}
\left|\frac{M_S(N)}N-c_S\right|
\le{}&
\frac1N\sum_{d\le N}|g_S(d)|
+\sum_{d>N}\frac{|g_S(d)|}{d}.
\end{aligned}
\tag{3.2}
\]

Fix \(Y\le N\).  Split the first sum at \(Y\).  Since \(d\le N\) implies
\(1/N\le1/d\),

\[
\frac1N\sum_{d\le N}|g_S(d)|
\le
\frac1N\sum_{d\le Y}|g_S(d)|
+\sum_{Y<d\le N}\frac{|g_S(d)|}{d}.
\tag{3.3}
\]

Consequently,

\[
\left|\frac{M_S(N)}N-c_S\right|
\le
\frac1N\sum_{d\le Y}|g_S(d)|
+2\sum_{d>Y}\frac{|g_S(d)|}{d}.
\tag{3.4}
\]

First let \(N\to\infty\) with \(Y\) fixed, then let \(Y\to\infty\).
Absolute convergence in (2.5) yields

\[
\boxed{\frac{M_S(N)}N\longrightarrow c_S>0.}
\tag{3.5}
\]

This is the elementary convolution form of the classical Wintner--Delange
positive-mean mechanism.  No broad novelty claim about multiplicative mean
values is made.

## 4. Return to the unchanged causal energy

Choose \(N_0\) such that

\[
M_S(N)\ge\frac{c_S}{2}N
\qquad(N\ge N_0).
\tag{4.1}
\]

For real \(t\ge X:=\max(2N_0,2)\), put \(N=\lfloor t\rfloor\).  Then
\(N\ge t/2\), and hence

\[
\sum_{n\le t}f_S(n)=M_S(N)\ge\frac{c_S}{4}t.
\tag{4.2}
\]

The original Abel identity is

\[
F_{f_S}(u)
=
\int_1^{e^u}
\left(\sum_{n\le t}f_S(n)\right)t^{-3/2}\,dt.
\tag{4.3}
\]

Set

\[
C_X=
\left|
\int_1^X
\left(\sum_{n\le t}f_S(n)\right)t^{-3/2}\,dt
\right|,
\qquad
D_X=C_X+\frac{c_S}{2}\sqrt X.
\tag{4.4}
\]

For \(e^u\ge X\), (4.2) gives

\[
F_{f_S}(u)
\ge
-C_X+\frac{c_S}{4}\int_X^{e^u}t^{-1/2}\,dt
=
\frac{c_S}{2}e^{u/2}-D_X.
\tag{4.5}
\]

Let

\[
R_X=\max\left(1,\sqrt X,\frac{4D_X}{c_S}\right),
\qquad
T_0=2\log R_X.
\tag{4.6}
\]

Then, for every \(u\ge T_0\),

\[
F_{f_S}(u)\ge\frac{c_S}{4}e^{u/2}.
\tag{4.7}
\]

Therefore, for every \(T\ge T_0\),

\[
\boxed{
H_{f_S}(T)
\ge
\frac{c_S^2}{16}
\left(e^T-e^{T_0}\right).
}
\tag{4.8}
\]

Taking any upper-target rate \(0<\varepsilon<1\), for example
\(\varepsilon=1/2\), shows that no finite \(C_\varepsilon\) can satisfy the
all-positive-rate upper target for this source.

## 5. Consequence for prime-delay methods

A universal implication based only on

1. complete multiplicativity, and
2. exact negative delay identities on an infinite unbounded prime set

is false even when the delay set is substantially larger than the set allowed
by the previous power-summability obstruction.

A necessary condition for any delay-set-only universal theorem is now:

\[
\boxed{\sum_{p\in S}\frac1p=\infty.}
\tag{5.1}
\]

This condition is necessary only.  It is not claimed to be sufficient.
The actual Liouville source uses every prime and therefore is not represented
by this countermodel.

The noncircular junction is correspondingly sharper: a successful
prime-delay/entropy proof must exploit a growing prime band with quantitatively
divergent reciprocal mass and must retain signed cross-prime covariance after
all omitted-prime, repeated-prime, unsifted, birth-collar, and exceptional-set
costs have been paid.

## 6. New finite-band diagonal floor

Let \(P\) be a finite prime set, let \(w_p\ge0\), and define

\[
U(n)=\sum_{\substack{p\in P\\p\nmid n}}w_p.
\tag{6.1}
\]

For every integer \(N\ge1\),

\[
\begin{aligned}
\frac1N\sum_{n\le N}U(n)
&=
\sum_{p\in P}w_p
\left(1-\frac{\lfloor N/p\rfloor}{N}\right)\\
&\ge
\sum_{p\in P}w_p\left(1-\frac1p\right).
\end{aligned}
\tag{6.2}
\]

Cauchy--Schwarz gives

\[
\boxed{
\frac1N\sum_{n\le N}U(n)^2
\ge
\left(
\sum_{p\in P}w_p\left(1-\frac1p\right)
\right)^2.
}
\tag{6.3}
\]

With harmonic weights \(w_p=1/p\), write

\[
W(P)=\sum_{p\in P}\frac1p,
\qquad
Q(P)=\sum_{p\in P}\frac1{p^2}.
\]

Then

\[
\frac1N\sum_{n\le N}U(n)
\ge W(P)-Q(P),
\tag{6.4}
\]

and

\[
\frac1N\sum_{n\le N}U(n)^2
\ge\bigl(W(P)-Q(P)\bigr)^2.
\tag{6.5}
\]

Since \(Q(P)\) remains bounded as the finite band grows while \(W(P)\) may
diverge, an uncovered-diagonal estimate becomes comparable to the square of
the entire reciprocal mass.  Dense reciprocal mass therefore does not rescue
a norm-only prime-band argument.  It makes signed cross-prime covariance
indispensable.

Equations (6.2)--(6.5) are unconditional finite identities/inequalities.  They
are not lower bounds for the actual Liouville waveform, because signed
off-diagonal prime interactions may cancel them.

## 7. Method comparison after the stronger obstruction

The four methods retain the exact comparison in the predecessor review:

- one-point/Mellin converts a prefix exponent \((1+\eta)/2\) into energy
  exponent \(\eta\), with loss \(4A^2\eta^{-3}\);
- short-window variance converts parameters \((\alpha,\beta)\) into energy
  exponent \(1-\alpha+\beta\);
- norm-only prime inversion pays the sharp factor
  \((1-p^{-(1+\sigma)/2})^{-1}\), squared for energy;
- the complete double-Abel signed average pays
  \(2C_\varepsilon+4/\varepsilon+4/\varepsilon^2\), plus the recorded dyadic
  coverage factor.

The new result changes only the prime-delay route's admissible arithmetic
supplier.  Exact delays on a reciprocal-summable set are eliminated.  A finite
or growing band must now produce a genuinely signed covariance gain; diagonal
coverage, delay count, and unboundedness of the selected primes are
insufficient.

## 8. Literature and novelty boundary

Hubert Delange's 1961 multiplicative mean-value work and the classical
Wintner convolution criterion place (3.5) in established mean-value theory.
Gábor Halász's 1968 theorem gives the broader pretentious mean-value
classification.  The local contribution is not a new general theorem about
multiplicative functions.  It is the explicit embedding of the reciprocal-mass
threshold into the repository's unchanged causal response, together with the
finite harmonic-band diagonal floor (6.5).

The predecessor short-interval and entropy literature boundaries remain
unchanged.  No result from those papers is promoted to the missing
growing-band physical-time covariance.

## 9. Formalization and verification inventory

Pre-existing conversation artifacts, present on current main:

1. `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/LiouvillePrimeDelayObstruction.lean`;
2. `documentation/mathematics/_support/reviews/liouville-method-comparison-and-prime-delay-obstructions.md`;
3. `documentation/mathematics/_verification/targets/liouville-prime-delay-obstruction.json`;
4. `documentation/mathematics/_support/reference/literature/reading-background/liouville-prime-delay-obstruction-references.md`.

New artifacts in this increment:

5. `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/LiouvilleReciprocalPrimeMassObstruction.lean`;
6. this review;
7. `documentation/mathematics/_verification/targets/liouville-reciprocal-prime-mass-obstruction.json`;
8. `documentation/mathematics/_support/reference/literature/reading-background/liouville-reciprocal-prime-mass-obstruction-references.md`.

Every Lean theorem in the new source is only elementary projection algebra.  The
positive-mean-to-energy argument and finite weighted-coverage bounds are
recorded as named propositions pending Lean proof.

For all new and inherited RH source candidates in this inventory:

- compilation: `NOT_RUN`;
- expected-type checking: `NOT_RUN`;
- fresh-kernel replay: `NOT_RUN`;
- transitive axiom audit: `NOT_RUN`.

Source publication does not establish the causal upper estimate, the
lower-bound propositions' Lean proofs, or RH.

## 10. Canonical-ledger write boundary

The exact literature entry is published as a ledger shard in the canonical
reading-background directory.  The monolithic
`paper-to-formalization-references.md` is intentionally not replaced: this
environment exposes whole-file replacement but no textual append/patch action,
and the complete current bytes cannot be materialized into the working
container.  Replacing it from truncated connector output would risk destroying
concurrent entries.  The shard records exact source identities and the blocker
until a source-complete patch-capable path merges it.
