# A tuned upper cancellation estimate for rough Liouville sums

**Disposition:** unconditional source-specific upper cancellation for the actual
Liouville function restricted to a tuned rough support; transport through the
unchanged causal response; quantitative obstruction to positive inverse-sieve
consumption; no upper estimate for the unsifted Liouville energy and no claim of
Riemann Hypothesis completion.

**Prepared against `grwtsk/math/main`:**
`ddcba3d61c70e576b72e0945c42c21caed44663d`, tree
`81c78c85b06a79aee9b6a006a88ddcbb1d118ca4`.

**New Lean source candidate:**
`GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/LiouvilleRoughUpperCancellation.lean`.

**Research scope:** `6ae605b4-a7b4-83e8-9ada-ee9c9089476b`.

**Verification:** analytical derivation and static source construction only.
Compilation, expected-type checking, fresh-kernel replay, native execution,
external proof replay, and transitive axiom auditing are all `NOT_RUN`.

## 1. Fixed arithmetic source

For real `X,z >= 2`, let

\[
\Xi(X,z)
=
\sum_{\substack{n\le X\\p\mid n\Rightarrow p\ge z}}
\lambda(n),
\]

with the strict-cutoff convention that all primes below `z` are removed.  At an
integer cutoff `Y`, taking `z=Y+1` gives exactly the repository predicate
`roughAbove Y`.

For the causal transport, retain

\[
r_n(u)=2\max(n^{-1/2}-e^{-u/2},0),
\]

\[
F_Y(u)=
\sum_{\substack{n\le e^u\\p\mid n\Rightarrow p>Y}}
\lambda(n)r_n(u),
\qquad
E_Y(T)=\int_0^T|F_Y(u)|^2\,du.
\]

No random-sign model, independent-prime assumption, or replacement response is
used.

## 2. Why the fixed-factor search has no hidden favorable zero

The preceding proportional-cutoff calculations produced the one-, two-, and
three-factor alternating profiles.  Their complete continuation is not a new
oscillatory function.  Ford--Maynard's ordered-simplex identity gives, for
`alpha*v >= 1`,

\[
\sum_{k=1}^{\lfloor\alpha v\rfloor}(-1)^k
\int_{\substack{\beta_1+\cdots+\beta_k=\alpha\\
1/v\le\beta_1\le\cdots\le\beta_k}}
\frac{d\beta}{\beta_1\cdots\beta_k}
=
-\frac{\rho(\alpha v-1)}{\alpha},
\]

where `rho` is the Dickman function.  Equivalently, the normalized signed rough
Liouville main term is negative on every finite-factor branch because
`rho(u)>0`.

This eliminates the proposed search for a sign-changing four-factor profile.
A genuine upper bound must instead move to a depth `u` growing with the height,
where the Dickman main term itself becomes small.

## 3. Selberg extremal input with its sharper error

Montgomery--Vaughan define

\[
T_\pm(X,z)
=
\sum_{\substack{n\le X\\(n,P(z))=1}}
(1\mp\lambda(n)).
\]

Thus

\[
T_-(X,z)-T_+(X,z)=2\Xi(X,z).
\tag{3.1}
\]

Their Selberg extremal theorem gives

\[
T_\pm(X,z)
=
XV(z)f_\pm(u)+\text{error},
\qquad
u:=\frac{\log X}{\log z},
\]

throughout

\[
\exp((\log X)^{2/3})\le z\le X/\log X.
\tag{3.2}
\]

The inductive estimate inside its proof is sharper than the coarser displayed
final error.  If

\[
k-1<u\le k,
\qquad
3\le k\le(\log X)^{1/3}+1,
\]

then

\[
\left|
T_\pm(X,z)-XV(z)f_\pm(u)
\right|
\le
C\frac{Xk^3\log\log X}{(\log X)^2}
\tag{3.3}
\]

for an absolute `C` and all sufficiently large `X`.

For the linear-sieve functions,

\[
f_+(s)=\frac{2e^\gamma}{s},\qquad f_-(s)=0
\quad(1\le s\le2),
\]

and

\[
(sf_+)'=f_-(s-1),
\qquad
(sf_-)'=f_+(s-1).
\]

Consequently

\[
\boxed{
f_+(s)-f_-(s)=\frac{2e^\gamma}{s}\rho(s-1)
}\tag{3.4}
\]

for `s>=1`: both sides have the same initial data and differential-delay
equation.

Mertens' product estimate is

\[
V(z)=\frac{e^{-\gamma}}{\log z}
\left(1+O\left(\frac1{\log z}\right)\right).
\tag{3.5}
\]

Combining (3.1)--(3.5), and using `u log z=log X`, gives the signed asymptotic

\[
\boxed{
\left|
\Xi(X,z)+\frac{X\rho(u-1)}{\log X}
\right|
\ll
\frac{X(u+1)^3\log\log X}{(\log X)^2}.
}
\tag{3.6}
\]

The Mertens-product correction is
`O(X u/(log X)^2)` and is absorbed by the displayed error.  Equation (3.6) is
the general upper-cancellation interface extracted in this increment.

## 4. Tuned unconditional upper estimate

Put

\[
L_1=\log X,
\qquad
L_2=\log L_1,
\qquad
L_3=\log L_2,
\]

and choose

\[
u_X=\frac{8L_2}{L_3},
\qquad
z_X=\exp\left(\frac{L_1L_3}{8L_2}\right)=X^{1/u_X}.
\tag{4.1}
\]

For sufficiently large `X`, this lies in (3.2), while
`k=ceil(u_X)` satisfies the hypotheses of (3.3).

The standard reciprocal-Gamma bound

\[
0\le\rho(v)\le\frac1{\Gamma(v+1)}
\]

and Stirling's lower bound imply

\[
\rho(u_X-1)\le L_1^{-3}
\tag{4.2}
\]

once `X` is large.  The main term in (3.6) is therefore
`O(X/L_1^4)`.  The error term is

\[
\frac{X(u_X+1)^3L_2}{L_1^2}
\ll
X\frac{L_2^4}{L_1^2L_3^3}.
\]

Hence

\[
\boxed{
|\Xi(X,z_X)|
\ll
X\frac{(\log\log X)^4}
{(\log X)^2(\log\log\log X)^3}.
}
\tag{4.3}
\]

This is genuine cancellation on the rough support.  The unsigned rough count
has order `X u_X/log X`, so the relative saving in (4.3) is

\[
\ll
\frac{(\log\log X)^3}
{(\log X)(\log\log\log X)^2}
=o(1).
\]

The value `8` is chosen for a robust elementary use of the reciprocal-Gamma
bound; it is not claimed to be optimal.

## 5. Transport through the original causal response

At physical horizon `T`, choose

\[
Y_T=
\left\lfloor
\exp\left(
\frac{T\log\log T}{8\log T}
\right)
\right\rfloor
\tag{5.1}
\]

and write

\[
q(T)=
\frac{(\log T)^4}{T^2(\log\log T)^3}.
\tag{5.2}
\]

The same proof as (4.3), now with one cutoff fixed at the final horizon, is
uniform for

\[
T-8\log T\le u\le T.
\]

The floor and the replacement of the strict real cutoff by `Y_T+1` change the
logarithmic depth by an exponentially small amount.  Uniformly on this terminal
band,

\[
\left|
\sum_{\substack{n\le e^u\\p\mid n\Rightarrow p>Y_T}}
\lambda(n)
\right|
\ll e^u q(T).
\tag{5.3}
\]

Use the exact Abel identity

\[
F_{Y_T}(u)
=
\int_1^{e^u}R_{Y_T}(t)t^{-3/2}\,dt.
\tag{5.4}
\]

Split at

\[
x_0=e^{T-8\log T}=e^T/T^8.
\]

The complete early contribution is bounded trivially by

\[
2\sqrt{x_0}=2e^{T/2}T^{-4}.
\tag{5.5}
\]

The terminal contribution from (5.3) is at most

\[
2Cq(T)e^{u/2}.
\tag{5.6}
\]

Before the split, the trivial waveform bound gives energy `O(e^T/T^8)`.
Across the terminal band, the square of (5.5) contributes
`O(e^T T^{-8}\log T)`, and (5.6) contributes `O(e^Tq(T)^2)`.
The two boundary costs are smaller than the last term.  Therefore

\[
\boxed{
E_{Y_T}(T)
\ll
 e^T\frac{(\log T)^8}
 {T^4(\log\log T)^6}.
}
\tag{5.7}
\]

This is the new programme-specific causal upper estimate.  It remains an
exponent-one estimate; the gain is a fourth power of physical time, up to
iterated logarithms.

## 6. Exact quantitative gap: the positive inverse is unpayable

The Selberg theorem requires at least

\[
\log z\ge(\log X)^{2/3}.
\]

At physical height `T=log X`, every such cutoff satisfies
`z>=exp(T^(2/3))`.  The exact inverse-sieve cost is

\[
\kappa(z)=
\prod_{p<z}(1-p^{-1/2})^{-2}.
\]

Prime-number-theorem partial summation gives

\[
\log\kappa(z)
\ge
2\sum_{p<z}p^{-1/2}
\asymp
\frac{4\sqrt z}{\log z}.
\tag{6.1}
\]

Already at the lower edge of the Selberg range, the right side is

\[
\gg
\frac{\exp(T^{2/3}/2)}{T^{2/3}},
\]

which dominates every linear function of `T`.  Thus

\[
\kappa(z)>e^{AT}
\]

for every fixed `A` and all sufficiently large `T`.

In particular, (5.7) cannot be transferred to the original Liouville energy by
positive norm inversion.  Any useful application must retain signed
prime-delay or subset-delay cancellation before the inverse product is paid.

## 7. Independent payable-cutoff comparator

There is an exact finite identity

\[
R_Y(N)
=
\sum_{d\mid\prod_{p\le Y}p}
L\!\left(\left\lfloor\frac Nd\right\rfloor\right),
\tag{7.1}
\]

because the coprimality indicator contributes `mu(d)` and, for squarefree `d`,
`mu(d)lambda(d)=1`.

Splitting (7.1) at `d=sqrt N`, using the classical Vinogradov--Korobov
Liouville-prefix bound on the short divisors and the trivial bound on the tail,
gives for `Y=(log N)^A`, `0<A<2`,

\[
|R_Y(N)|
\ll
N\log Y\,
\exp\left(-c(\log N)^{3/5}(\log\log N)^{-1/5}\right)
+
N^{3/4}e^{2\sqrt Y}.
\tag{7.2}
\]

The corresponding causal energy satisfies

\[
E_{T^A}(T)
\ll
 e^T(\log T)^2
\exp\left(-cT^{3/5}(\log T)^{-1/5}\right).
\tag{7.3}
\]

For `A<6/5`, the positive inverse cost is smaller than the displayed
zero-free-region saving.  This is a useful consistency check and a payable
rough-source estimate, but it is only a transport of the existing
Vinogradov--Korobov saving and is not counted as new cancellation.

## 8. Literature and novelty boundary

Montgomery--Vaughan already prove the Selberg extremal theorem and the sharper
inductive error (3.3).  Ford--Maynard record the exact alternating-simplex
collapse to the Dickman function.  Dickman's reciprocal-Gamma bound and
Mertens' product theorem are classical.

The contribution claimed here is narrower:

1. isolate the signed rough-Liouville asymptotic (3.6) with the sharper
   `u^3` error;
2. choose the growing depth (4.1) and derive the explicit cancellation bound
   (4.3);
3. carry that bound through the unchanged GRWTSK causal response with every
   early-range and collar cost, obtaining (5.7);
4. identify the exact superexponential inverse-cost gap (6.1).

The exact tuned formula and its physical-time causal transport were not located
in the primary sources inspected.  That absence is not asserted to prove global
novelty.  The underlying sieve and Dickman results retain their original
attribution.

## 9. Formalization and verification status

The new Lean module defines the strict rough source, tuned cutoff and allowances,
a source-exact Selberg--Dickman input interface, the tuned prefix and energy
statements, the inverse-cost obstruction, and the independent squarefree-divisor
comparator.  It proves the elementary extraction of an absolute bound from a
signed main-term approximation.

The substantive analytic inputs and transports remain named propositions until
they are formalized and replayed locally.

Verification remains:

- source inspection: `DONE`;
- analytical derivation: `WRITTEN`;
- compilation: `NOT_RUN`;
- expected types: `NOT_RUN`;
- fresh kernel: `NOT_RUN`;
- transitive axiom audit: `NOT_RUN`;
- native execution: `NOT_RUN`;
- external theorem replay: `NOT_RUN`.

No runtime script, mutable receipt, controller, queue, or browser state is
stored in the mathematics repository.
