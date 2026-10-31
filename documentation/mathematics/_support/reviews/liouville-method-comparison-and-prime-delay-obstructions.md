# Liouville causal-energy method comparison and prime-delay obstructions

**Disposition:** source-bound mathematical review; one new programme-specific obstruction; no claim of Riemann Hypothesis completion.

**Prepared against `grwtsk/math/main`:** `4a0a4223f6af5933ae8689bf33d59adb76e269fb`

**New Lean source candidate:**
`GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/LiouvillePrimeDelayObstruction.lean`
(blob `0f4b1fa7f5fa69b3d8fa8b2ab2bef4abeec7c574`).

**Verification status:** source inspection only. Compilation, expected-type checking,
fresh-kernel replay, and transitive axiom audit are all `NOT_RUN`.

## 1. Fixed source and unchanged target

For every positive integer `n`, retain the original causal response

\[
r_n(u)=2\max\!\left(n^{-1/2}-e^{-u/2},0\right).
\]

For the actual Liouville function `lambda`, put

\[
F_\lambda(u)=\sum_{n\le e^u}\lambda(n)r_n(u),
\qquad
H_\lambda(T)=\int_0^T |F_\lambda(u)|^2\,du.
\]

The target is exactly

\[
\forall\varepsilon>0\;\exists C_\varepsilon\ge0\;\forall T\ge0,
\qquad
H_\lambda(T)\le C_\varepsilon e^{\varepsilon T}.
\tag{E}
\]

No method below may replace the complete signed source by independent random
signs, take absolute values before the complete arithmetic sum is formed,
replace the positive mixed-difference average by a rectangle supremum without
recording the strengthening, or assume a prefix estimate equivalent to (E).

## 2. Four viable methods against the same target

### 2.1 One-point / Mellin route

Let

\[
L(x)=\sum_{n\le x}\lambda(n).
\]

Discrete Abel summation for the exact response gives

\[
F_\lambda(u)=\int_1^{e^u}L(t)t^{-3/2}\,dt.
\tag{2.1}
\]

Assume, at one fixed rate `eta > 0`, that

\[
|L(x)|\le A x^{(1+\eta)/2}\qquad(x\ge1).
\tag{2.2}
\]

Then

\[
|F_\lambda(u)|
 \le A\int_1^{e^u}t^{-1+\eta/2}\,dt
 =\frac{2A}{\eta}\left(e^{\eta u/2}-1\right),
\]

and therefore

\[
H_\lambda(T)
\le \frac{4A^2}{\eta^3}\left(e^{\eta T}-1\right).
\tag{2.3}
\]

**Strongest unconditional input currently available to this route.** Classical
zero-free-region estimates give a sublinear prefix saving, including the
Vinogradov--Korobov form, but not the family (2.2) for every `eta > 0`.

**Exact transfer loss.** A prefix exponent `(1+eta)/2` becomes the energy
exponent `eta`, with multiplicative loss `4 A^2 eta^{-3}`.

**Unresolved premise.** The family (2.2) for every positive `eta` is already
RH-strength Liouville prefix control. This route is direct but circular if that
family is inserted as the arithmetic supplier.

### 2.2 Short-interval windows

For an exact cyclic window of length `H` on `1,...,N`, let `W_x` denote the
window sum and

\[
V_N(H)=\sum_{x=0}^{N-1}|W_x|^2.
\]

Every coefficient occurs in exactly `H` windows, so

\[
\sum_{x=0}^{N-1}W_x=H L(N).
\]

Cauchy--Schwarz gives the exact zero-mode extraction

\[
H^2|L(N)|^2\le N V_N(H).
\tag{2.4}
\]

If, uniformly for every `N`,

\[
H=\lceil N^\alpha\rceil,
\qquad
V_N(H)\le A N H N^\beta,
\tag{2.5}
\]

then `H >= N^alpha` and

\[
|L(N)|^2\le A N^{2-\alpha+\beta}.
\tag{2.6}
\]

Writing

\[
\eta=1-\alpha+\beta,
\]

(2.6) and (2.3) yield

\[
H_\lambda(T)
\le \frac{4A}{\eta^3}\left(e^{\eta T}-1\right)
\qquad(\eta>0).
\tag{2.7}
\]

**Strongest proved input.** The Matomäki--Radziwiłł theory and its extensions
supply cancellation in almost all short intervals or averaged higher
uniformity. The 2026 improvement of Menon remains an almost-all-interval result.
Those statements do not provide the all-`N` cyclic estimate (2.5) at the
near-full-window rates needed here.

**Exact transfer loss.** The window parameters produce energy exponent
`1-alpha+beta`; ordinary rather than cyclic windows additionally require
explicit endpoint collars before (2.4) is valid.

**Unresolved premise.** An all-`N`, all-positive-rate family strong enough for
(E) also controls the zero mode and hence recovers RH-strength prefixes. The
short-window route differs genuinely from one-point Mellin only when it can
obtain a quantitative rate from averaged moving origins without first
recovering the complete prefix.

### 2.3 Prime-delay / entropy route

Complete multiplicativity and the original response give, for every prime `p`,

\[
\lambda(pn)=-\lambda(n),
\qquad
r_{pn}(u)=p^{-1/2}r_n(u-\log p),
\tag{2.8}
\]

where the response is zero before birth. After damping at `sigma > 0`, one
prime-delay inversion has the abstract form

\[
(I+aD_h)g=\text{remainder},
\qquad
h=\log p,
\qquad
a=p^{-(1+\sigma)/2}.
\]

The norm-only inverse loss is

\[
\|(I+aD_h)^{-1}\|\le(1-a)^{-1},
\tag{2.9}
\]

and energy pays its square. This constant is sharp. For `L >= h`, put

\[
g_L(u)=e^{i\pi u/h}\mathbf 1_{[0,L]}(u).
\]

A direct overlap calculation gives

\[
\frac{\|(I+aD_h)g_L\|_2^2}{\|g_L\|_2^2}
=(1-a)^2+\frac{2ah}{L}.
\tag{2.10}
\]

Thus no norm-only Euler-product inversion can beat `(1-a)^{-1}`.

**Strongest proved input.** Tao's entropy-decrement theorem proves a
logarithmically averaged two-point Chowla estimate for fixed affine forms.
It does not directly control the physical-time signed covariance

\[
\int_{\log p}^{T}
F_\lambda(u)F_\lambda(u-\log p)\,du
\tag{2.11}
\]

uniformly over a growing prime band with the weights and collars in (2.8).

**Exact transfer loss.** A norm-only prime inversion pays (2.9), squared for
energy; (2.10) proves that this loss cannot be improved abstractly.

**Unresolved premise.** A new signed covariance estimate for the actual
Liouville source is necessary. A single-prime all-rate energy supplier simply
repackages (E). The obstruction in Sections 4--6 below further shows that even
exact negative delays on an unbounded set of primes are insufficient when the
set is too sparse.

### 2.4 Double-Abel weighted rectangles

The current source retains the exact finite identity

\[
A_N(T)=\sum_{p,q\ge1}R_N(p,q)\,\Omega_T(p,q),
\qquad
\Omega_T(p,q)\ge0,
\tag{2.12}
\]

with the signed rectangle prefix `R_N` formed before multiplication by the
positive mixed-difference kernel. The arithmetic cancellation is therefore
allowed to occur across rectangles.

The source energy decomposition is

\[
H_\lambda(T)=D_\lambda(T)+2A_N(T),
\qquad
0\le D_\lambda(T)\le4T+2T^2.
\tag{2.13}
\]

If the complete signed average, not every individual rectangle, satisfies

\[
A_N(T)\le C_\varepsilon e^{\varepsilon T},
\tag{2.14}
\]

then

\[
H_\lambda(T)
\le
\left(2C_\varepsilon+\frac4\varepsilon+\frac4{\varepsilon^2}\right)
 e^{\varepsilon T}.
\tag{2.15}
\]

At dyadic heights, monotonicity of the nonnegative energy fills the next gap
with at most an additional factor `2^epsilon` in the constant.

**Strongest proved input.** Exact finite Fubini transport, the source-specific
causal kernel gates, kernel nonnegativity candidates, and a polynomial kernel
moment are present as source proof candidates.

**Exact transfer loss.** Equation (2.15), plus the stated dyadic gap factor.

**Unresolved premise.** The complete one-sided signed estimate (2.14). A
uniform supremum over rectangles is stronger, exposes RH-strength rows, and
throws away cancellation that (2.12) was designed to preserve.

## 3. Where the methods genuinely differ

The Mellin route asks for cancellation before squaring. The short-window route
moves the origin and asks a second moment to control the zero mode. The
prime-delay route uses complete multiplicativity before inequalities and must
retain the signed delayed waveform covariance. The double-Abel route keeps the
full quadratic arithmetic covariance and integrates it against a positive
mixed kernel only after the complete signed rectangle prefixes are formed.

Their unresolved statements become equivalent in strength only after one
inserts an all-positive-rate supplier. Their intermediate data are not the
same: moving-origin variance, prime-delay covariance, and the complete
Omega-weighted rectangle average retain different cancellation channels.

## 4. Finite-prime completely multiplicative obstruction

Let `S` be a finite set of primes. Define the completely multiplicative sign

\[
f_S(p)=\begin{cases}-1,&p\in S,\\+1,&p\notin S.\end{cases}
\tag{4.1}
\]

Then, for every `p in S` and every positive integer `n`,

\[
f_S(pn)=-f_S(n).
\tag{4.2}
\]

Thus every selected prime-delay sign is exact, with no exceptional integers.
Define the multiplicative convolution factor `g_S` by

\[
g_S(1)=1,
\qquad
g_S(p^k)=
\begin{cases}
2(-1)^k,&p\in S,\ k\ge1,\\
0,&p\notin S,\ k\ge1.
\end{cases}
\tag{4.3}
\]

Since `f_S = 1 * g_S`, for `0 < rho < 1` put

\[
B_{S,\rho}
=\prod_{p\in S}\left(1+\frac{2}{p^\rho-1}\right),
\qquad
c_S=\prod_{p\in S}\frac{p-1}{p+1}>0.
\tag{4.4}
\]

For every real `x >= 1`, exact divisor expansion gives

\[
\sum_{n\le x}f_S(n)
=\sum_{d\le x}g_S(d)\left\lfloor\frac{x}{d}\right\rfloor.
\]

The floor error is at most `B_{S,rho} x^rho`, and the omitted tail from
`c_S x = x sum_d g_S(d)/d` is at most the same quantity. Hence

\[
\left|\sum_{n\le x}f_S(n)-c_Sx\right|
\le2B_{S,\rho}x^\rho.
\tag{4.5}
\]

This is uniform in `x`; no prime range or exceptional set is omitted.

For the unchanged causal waveform, Abel summation yields

\[
F_{f_S}(u)=\int_1^{e^u}\left(\sum_{n\le t}f_S(n)\right)t^{-3/2}\,dt.
\tag{4.6}
\]

Taking `rho = 1/4` gives

\[
F_{f_S}(u)
\ge2c_S(e^{u/2}-1)-8B_{S,1/4}.
\tag{4.7}
\]

With

\[
T_S=2\log\!\left(2+\frac{8B_{S,1/4}}{c_S}\right),
\]

one has, for every `T >= T_S`,

\[
H_{f_S}(T)\ge c_S^2(e^T-e^{T_S}).
\tag{4.8}
\]

Therefore no theorem using only a fixed finite family of exact negative prime
delays can force (E).

## 5. Explicit prime-two obstruction

Take `S = {2}`. Then

\[
f_2(n)=(-1)^{v_2(n)}.
\tag{5.1}
\]

Write every positive integer uniquely as `2^k m` with `m` odd. The tower
contribution is

\[
G_m(u)=\sum_{k\ge0}(-1)^k r_{2^k m}(u).
\]

The finite active response sequence is nonnegative and decreasing in `k`, so

\[
G_m(u)\ge r_m(u)-r_{2m}(u)\ge0.
\tag{5.2}
\]

Let `x=e^u >= 8`. There are at least `x/8` odd integers `m <= x/2`, and for
each of them

\[
r_m(u)-r_{2m}(u)
=2(1-2^{-1/2})m^{-1/2}
\ge2(\sqrt2-1)x^{-1/2}.
\tag{5.3}
\]

Consequently

\[
F_{f_2}(u)\ge\frac{\sqrt2-1}{4}e^{u/2}
\qquad(u\ge\log8),
\tag{5.4}
\]

and

\[
H_{f_2}(T)
\ge\frac{(\sqrt2-1)^2}{16}(e^T-8)
\qquad(T\ge\log8).
\tag{5.5}
\]

Every doubling edge is nevertheless perfectly anticorrelated:

\[
f_2(n)f_2(2n)=-1.
\tag{5.6}
\]

The complete waveform in (5.4) is nonnegative, so perfect coefficient
anticorrelation does not imply negative delayed waveform covariance.

Using (2.13), the same fixture reaches the complete double-Abel consumer. At
integer `N >= 8`, `T=log N`,

\[
A_{f_2,N}
\ge
\frac{(\sqrt2-1)^2}{32}(N-8)
-2\log N-(\log N)^2.
\tag{5.7}
\]

Thus the complete positive-kernel-weighted signed aggregate can grow linearly
in `N`, equivalently exponentially in physical time, despite exact negative
sign on every doubling edge.

This is not a counterexample to Liouville cancellation or RH. The source
`f_2` equals `+1` at every odd prime.

## 6. New stronger obstruction: infinitely many unbounded prime delays

The finite-prime obstruction leaves open the possibility that merely allowing
an unbounded set of exact prime delays might suffice. It does not.

Fix

\[
0<\rho<\frac12
\]

and choose an infinite set `S` of primes satisfying

\[
\sum_{p\in S}p^{-\rho}<\infty.
\tag{6.1}
\]

Such a set exists: choose successive primes `p_k >= 2^{2^k}`. Define `f_S` by
(4.1) and `g_S` by (4.3). Then every `p in S` supplies the exact identity
(4.2), and `S` is unbounded.

The absolutely convergent Euler products are

\[
B_{S,\rho}
=\prod_{p\in S}\left(1+\frac{2}{p^\rho-1}\right)<\infty,
\tag{6.2}
\]

and

\[
c_S
=\prod_{p\in S}\frac{p-1}{p+1}>0.
\tag{6.3}
\]

Indeed, (6.1) controls the logarithm of (6.2); it also implies
`sum_{p in S} 1/p < infinity`, which makes the positive product (6.3)
converge away from zero.

For every real `x >= 1`,

\[
\sum_{n\le x}f_S(n)-c_Sx
=
\sum_{d\le x}g_S(d)
 \left(\left\lfloor\frac{x}{d}\right\rfloor-\frac{x}{d}\right)
-x\sum_{d>x}\frac{g_S(d)}d.
\tag{6.4}
\]

Since

\[
\sum_{d\ge1}|g_S(d)|d^{-\rho}=B_{S,\rho},
\]

the first term in (6.4) has absolute value at most
`B_{S,rho} x^rho`. For `d > x` and `rho < 1`,

\[
\frac{x}{d}\le\left(\frac{x}{d}\right)^\rho,
\]

so the tail has the same bound. Therefore

\[
\boxed{
\left|\sum_{n\le x}f_S(n)-c_Sx\right|
\le2B_{S,\rho}x^\rho
}
\qquad(x\ge1).
\tag{6.5}
\]

This is an unconditional estimate with explicit constants and no exceptional
set.

Insert (6.5) into the exact Abel identity (4.6). Since `rho < 1/2`,

\[
F_{f_S}(u)
\ge
2c_S(e^{u/2}-1)
-\frac{2B_{S,\rho}}{1/2-\rho}.
\tag{6.6}
\]

Set

\[
E_{S,\rho}=\frac{2B_{S,\rho}}{1/2-\rho},
\qquad
T_{S,\rho}
=2\log\!\left(2+\frac{E_{S,\rho}}{c_S}\right).
\tag{6.7}
\]

Then for every `u >= T_{S,rho}`,

\[
F_{f_S}(u)\ge c_S e^{u/2},
\]

and for every `T >= T_{S,rho}`,

\[
\boxed{
H_{f_S}(T)
\ge c_S^2\left(e^T-e^{T_{S,\rho}}\right).
}
\tag{6.8}
\]

### Consequence

A universal inference based only on complete multiplicativity and exact
negative delay identities on an unbounded prime set is false. A viable
prime-delay proof for the actual Liouville function must use quantitative
prime-band mass or density and retain the signed covariance after all omitted
primes, repeated-prime terms, birth collars, and exceptional sets are paid.
Divergent reciprocal-prime mass is one natural condition that excludes this
fixture, but this review does not claim it is sufficient.

### Novelty disposition

The positive mean of this sparse-sign multiplicative function is consistent
with classical Wintner--Delange--Halász mean-value theory. No broad new theorem
about multiplicative functions is claimed. The new contribution is the
explicit all-constant embedding of that classical mechanism into this
repository's unchanged causal energy and complete signed double-Abel consumer,
showing that even infinitely many unbounded exact prime delays do not close the
RH target when their arithmetic mass is too sparse.

## 7. A second precise failure: finite prime coverage has a diagonal floor

Let `P` be a finite set of primes, let `w_p >= 0`, and put

\[
W=\sum_{p\in P}w_p,
\qquad
U(n)=\sum_{\substack{p\in P\\p\nmid n}}w_p.
\]

For every positive integer `N`,

\[
\frac1N\sum_{n\le N}U(n)
=\sum_{p\in P}w_p
 \left(1-\frac{\lfloor N/p\rfloor}{N}\right)
\ge\frac W2,
\tag{7.1}
\]

because every selected prime is at least two. Jensen's inequality gives

\[
\frac1N\sum_{n\le N}U(n)^2\ge\frac{W^2}{4}.
\tag{7.2}
\]

Therefore a finite-band bootstrap that estimates only diagonal uncovered mass
cannot make the remainder small relative to its total selected weight. Signed
cross-prime covariance could still cancel it, so (7.2) is an obstruction to a
particular inequality, not a lower bound for the actual Liouville waveform.

## 8. Comparison with primary literature

- Kaisa Matomäki and Maksym Radziwiłł, *Multiplicative functions in short
  intervals*, Annals of Mathematics 183 (2016), 1015--1056,
  DOI `10.4007/annals.2016.183.3.6`. Its central cancellation statements are
  for almost all interval origins, not the all-`N` cyclic variance supplier in
  (2.5).
- Terence Tao, *The logarithmically averaged Chowla and Elliott conjectures for
  two-point correlations*, arXiv:`1509.05422` (2015). The theorem is
  logarithmically averaged for fixed affine forms and does not directly give
  the growing-prime-band physical-time covariance (2.11).
- Kaisa Matomäki, Maksym Radziwiłł, Terence Tao, Joni Teräväinen and Tamar
  Ziegler, *Higher uniformity of bounded multiplicative functions in short
  intervals on average*, Annals of Mathematics 197 (2023), 739--857,
  DOI `10.4007/annals.2023.197.2.3`. The result remains averaged over interval
  origins.
- Siddarth Menon, *Improved bounds for multiplicative functions in almost all
  short intervals*, arXiv:`2607.15574` (2026). The improved rates remain
  almost-all statements and do not remove the all-horizon zero-mode gap.
- Hubert Delange, *Sur les fonctions arithmétiques multiplicatives*, Annales
  scientifiques de l'École Normale Supérieure 78 (1961), 273--304,
  DOI `10.24033/asens.1103`.
- Gábor Halász, *Über die Mittelwerte multiplikativer zahlentheoretischer
  Funktionen*, Acta Mathematica Academiae Scientiarum Hungaricae 19 (1968),
  365--403, DOI `10.1007/BF01894515`.

The last two sources explain why a completely multiplicative sign that differs
from `1` only on a reciprocal-summable prime set can retain nonzero mean. The
explicit estimates (6.5)--(6.8) are derived here directly rather than imported
as a black box.

## 9. Repository comparison and exact status

The four pre-existing analytic source candidates remain:

| Source | Blob at review base | Status |
|---|---|---|
| `LiouvilleCausalEnergyTarget.lean` | `a00aaa07c067b4c88203372870b5d5d151de0de4` | source candidate; all four verification facets `NOT_RUN` |
| `LiouvilleDoubleAbelCausalKernel.lean` | `b102b4af07b0a1001424b084101c2cc16077181a` | source candidate; all four verification facets `NOT_RUN` |
| `LiouvilleDoubleAbelAnalyticGates.lean` | `b4bd9a83c83603faa5eff5326d9a99ec35dae2d4` | source candidate; all four verification facets `NOT_RUN` |
| `LiouvilleDoubleAbelPolynomialMoment.lean` | `30c71b912487b98a1a341d6010cb28e75c6798f7` | source candidate; all four verification facets `NOT_RUN` |

The new source proves only the finite prime-two coefficient algebra:

- `primeTwoSign_mul`;
- `primeTwoSign_double`;
- `primeTwoSign_eq_one_or_neg_one`;
- `primeTwoSign_sq`;
- `primeTwo_doubling_product`;
- `primeTwoSign_exactDelay`.

It records, without assuming them, the paper propositions
`PrimeTwoCausalEnergyLowerBound` and
`InfiniteSparsePrimeDelayObstruction`. No declaration concludes (E) for the
actual Liouville function, and no declaration concludes RH.

## 10. Next bounded arithmetic step

The obstruction rules out finite-prime and sparse-unbounded-prime delay-only
bootstraps. The next source-exact task is a growing prime-band expansion for
the actual Liouville waveform. It must:

1. start from (2.8) before applying inequalities;
2. choose a band whose reciprocal-prime mass grows quantitatively;
3. preserve the signed covariance (2.11);
4. enumerate repeated-prime and unsifted terms exactly;
5. retain birth collars from the zero extension of `r_n`;
6. carry every remainder into the complete Omega-weighted consumer (2.12);
7. produce an upper gain that survives the polynomial kernel moment.

The first target should be a finite identity with explicit band endpoints and
all remainders, not another norm inversion. Only after that identity is exact
should entropy decrement, short-interval averaging, or a sieve estimate be
tested against the unchanged consumer.
