# Exact growing-prime-band identity and a covariance-residual transfer

**Disposition:** source-bound arithmetic identity and a demonstrably sufficient
noncircular supplier; no new Liouville cancellation estimate and no claim of
Riemann Hypothesis completion.

**Prepared against `grwtsk/math/main`:**
`df0658168e17539da1112766166b05744ea2fa78`.

**New Lean source candidate:**
`GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/LiouvilleGrowingPrimeBandIdentity.lean`.

**Verification:** source inspection only. Compilation, expected-type checking,
fresh-kernel replay, and transitive axiom audit are all `NOT_RUN`.

## 1. Actual source and finite band

Retain the actual real Liouville coefficient

\[
a(n)=\lambda(n)\in\{-1,+1\},
\]

the original response

\[
r_n(u)=2\max\left(n^{-1/2}-e^{-u/2},0\right),
\]

and

\[
F(u)=\sum_{n\le e^u}\lambda(n)r_n(u),
\qquad
H(T)=\int_0^T F(u)^2\,du.
\]

Let \(P\) be a finite set of primes and let \(w_p\ge0\).  Put

\[
W(P)=\sum_{p\in P}w_p,
\]

\[
D_P(n)=\sum_{\substack{p\in P\\p\mid n}}w_p,
\qquad
U_P(n)=\sum_{\substack{p\in P\\p\nmid n}}w_p
      =W(P)-D_P(n),
\]

and define the complete signed uncovered waveform

\[
R_P(u)=
\sum_{n\le e^u}
\lambda(n)r_n(u)U_P(n).
\tag{1.1}
\]

No selected-prime absolute value has been taken.  Every unsifted integer is
retained in \(R_P\).

## 2. Exact one-prime delay identity

For a prime \(p\), complete multiplicativity gives

\[
\lambda(pn)=-\lambda(n)
\qquad(n\ge1).
\tag{2.1}
\]

The original response has the exact scaling

\[
r_{pn}(u)=p^{-1/2}r_n(u-\log p),
\tag{2.2}
\]

with both sides zero before the shifted source is born.  Reindexing \(m=pn\)
therefore gives

\[
\begin{aligned}
\sum_{\substack{m\le e^u\\p\mid m}}
\lambda(m)r_m(u)
&=
\sum_{n\le e^{u-\log p}}
\lambda(pn)r_{pn}(u)\\
&=
-p^{-1/2}
\sum_{n\le e^{u-\log p}}
\lambda(n)r_n(u-\log p)\\
&=
-p^{-1/2}F(u-\log p).
\end{aligned}
\tag{2.3}
\]

Repeated powers of \(p\) are not exceptional terms: they are already included
in the reindexing and in the exact completely multiplicative identity (2.1).

## 3. Exact finite-band waveform identity

Multiply (2.3) by \(w_p\) and sum over \(p\in P\).  Finite Fubini gives

\[
\sum_{n\le e^u}\lambda(n)r_n(u)D_P(n)
=
-\sum_{p\in P}w_pp^{-1/2}F(u-\log p).
\tag{3.1}
\]

Using \(W(P)=D_P(n)+U_P(n)\) pointwise yields

\[
\boxed{
W(P)F(u)
+
\sum_{p\in P}w_pp^{-1/2}F(u-\log p)
=
R_P(u).
}
\tag{3.2}
\]

This is the exact actual-Liouville growing-prime-band expansion requested by
the preceding obstruction analysis.  It is finite, has no exceptional set,
and preserves all repeated-prime, unsifted, and birth-boundary contributions.

## 4. Integrated signed covariance identity

Define

\[
C_p(T)=
\int_0^T
F(u)F(u-\log p)\,du.
\tag{4.1}
\]

Because \(F(u-\log p)=0\) for \(u<\log p\), this is equivalently the integral
from \(\log p\) to \(T\) when \(T\ge\log p\).  Put

\[
C_P(T)=\sum_{p\in P}w_pp^{-1/2}C_p(T)
\tag{4.2}
\]

and

\[
E_P(T)=\int_0^T R_P(u)^2\,du.
\tag{4.3}
\]

Multiplying (3.2) by \(F(u)\) and integrating gives

\[
\boxed{
W(P)H(T)+C_P(T)
=
\int_0^T F(u)R_P(u)\,du.
}
\tag{4.4}
\]

The delayed covariance remains signed.  Equation (4.4) does not replace it by
a norm, an Euler-product inverse, or independent random signs.

## 5. Exact sufficient transfer

Assume \(W(P)>0\) and

\[
C_P(T)\ge0.
\tag{5.1}
\]

Cauchy--Schwarz applied only after the complete signed identity gives

\[
W(P)H(T)
\le
\left|\int_0^T F(u)R_P(u)\,du\right|
\le
H(T)^{1/2}E_P(T)^{1/2}.
\tag{5.2}
\]

If \(H(T)=0\), the desired upper bound is immediate.  Otherwise divide by
\(H(T)^{1/2}\) and square:

\[
\boxed{
H(T)\le \frac{E_P(T)}{W(P)^2}.
}
\tag{5.3}
\]

Consequently, the following supplier is sufficient for the unchanged target:
for every \(\varepsilon>0\), choose one finite prime band and nonnegative
weights with \(W(P)>0\) such that, for every \(T\ge0\),

\[
C_P(T)\ge0
\tag{5.4}
\]

and

\[
E_P(T)\le W(P)^2 C_\varepsilon e^{\varepsilon T}.
\tag{5.5}
\]

Then

\[
H(T)\le C_\varepsilon e^{\varepsilon T}.
\tag{5.6}
\]

The transfer loss is exactly \(W(P)^{-2}\), which is already paid in (5.5).
No Liouville prefix estimate, RH, uniform Chowla conjecture, or target-energy
bound is a premise.

## 6. Why this is not yet a cancellation theorem

The preceding reciprocal-mass review proves that coefficient-level uncovered
weight has a large diagonal floor:

\[
\frac1N\sum_{n\le N}U_P(n)^2
\ge
\left(
\sum_{p\in P}w_p(1-1/p)
\right)^2.
\tag{6.1}
\]

For harmonic weights, the lower bound is
\((\sum 1/p-\sum1/p^2)^2\).  Therefore (5.5) cannot be obtained by deleting
signs and bounding \(R_P\) by coefficient magnitudes.  It requires cancellation
inside the complete signed uncovered waveform.

The prime-two and reciprocal-sparse countermodels also show that (5.4) alone is
insufficient: their delayed waveform covariance can be nonnegative while the
residual is exponentially large.

The exact missing arithmetic statement is thus narrower than the original
energy target but remains genuinely new:

> find a quantitatively dense prime band for the actual Liouville function for
> which the complete delayed covariance is nonnegative and the normalized
> uncovered signed waveform energy has every-positive-rate growth.

A more flexible version may allow a controlled negative part of \(C_P\), paid
together with \(E_P\), but it must retain the exact identity (4.4).

## 7. Relation to the four methods

The one-point and short-window routes do not naturally expose (4.4).  The
prime-delay route does, but only if complete multiplicativity is applied before
norms.  The double-Abel route can consume any resulting causal-energy gain
without replacing its complete signed rectangle average by a supremum.

The new identity therefore identifies the precise junction between
prime-delay/entropy and double Abel:

\[
\text{growing-band covariance plus uncovered-waveform cancellation}
\Longrightarrow
\text{causal-energy bound}
\Longrightarrow
\text{complete double-Abel/RH return}.
\]

The first implication is (5.3).  The second remains the existing source-bound
analytic chain and retains its separate verification obligations.

## 8. Formalization inventory and status

This increment adds:

1. `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/LiouvilleGrowingPrimeBandIdentity.lean`;
2. this mathematical review;
3. `documentation/mathematics/_verification/targets/liouville-growing-prime-band-identity.json`;
4. `documentation/mathematics/_support/reference/literature/reading-background/liouville-growing-prime-band-identity-references.md`.

The Lean source defines every finite-band quantity in (1.1)--(4.3), records
(2.3), (3.2), and (4.4) as exact propositions pending proof, and records the
supplier-to-energy transfer as a proposition.  It proves only elementary
nonnegativity of total band mass from nonnegative weights.

For the full conversation inventory, the predecessor prime-delay four-artifact
publication and the reciprocal-mass four-artifact publication remain unchanged.
All compilation, expected-type, fresh-kernel, and transitive-axiom facets are
`NOT_RUN`.  Publication is not acceptance and proves neither (5.4)--(5.5) nor
RH.
