# Exact zero-abscissa closure and the strongest current weighted-prefix rate

Local mathematical attribution: grwtsk contributors. Research date: 2026-10-31.

**Disposition.** The proposed zero-abscissa, damping, spectral, odd-filter and
linear-limsup formulas are valid when their stated classical analytic inputs
are supplied. They do not prove `WeightedPrefixSquareAllRate`: the first
formula makes that supplier analytically equivalent to the Riemann Hypothesis.

A concrete external advance is nevertheless available. The OpenAI preprint
*The Quasi-Riemann Hypothesis: A Zero-Free Half-Plane Re(s)>7/8*, pinned at
`openai/math@4eaee87548250b2682affda7d05d947c05554bae`, states that zeta is
zero-free in `Re s>7/8`. Combined with the exact growth-abscissa theorem, this
yields

\[
J(T)\ll_\varepsilon \exp((3/4+\varepsilon)T),
\]

and the same fixed limiting exponent for the odd filter and the unchanged
causal energy. This is a genuine improvement over a rate-one
Vinogradov--Korobov bound, but it is not an all-positive-rate estimate.

The Lean source records all external and analytic ingredients as explicit
premises. No theorem from another repository is imported as an axiom.
Compilation, exact-type checking, fresh-kernel replay and transitive axiom
audit are `NOT_RUN`.

## 1. Exact weighted-prefix source

Let

\[
L(x)=\sum_{n\le x}\lambda(n),\qquad
J(T)=\int_1^{e^T}\frac{L(x)^2}{x^2}\,dx,
\]

and put

\[
f(u)=e^{-u/2}L(e^u),\qquad J(T)=\int_0^T|f(u)|^2\,du.
\]

Let

\[
\Theta=\sup\{\Re\rho:\zeta(\rho)=0,\ 0<\Re\rho<1\}.
\]

The exact Dirichlet/Mellin identity, initially for `Re s>1`, is

\[
\int_1^\infty L(x)x^{-s-1}\,dx
=\frac{\zeta(2s)}{s\zeta(s)}.
\tag{1}
\]

## 2. Exact growth exponent

We prove

\[
\boxed{
\limsup_{T\to\infty}\frac{\log(1+J(T))}{T}=2\Theta-1.
}
\tag{2}
\]

### Upper bound

For every `theta>Theta`, the classical Liouville power-abscissa theorem gives

\[
L(x)=O_\theta(x^\theta).
\]

For `theta>1/2`, this implies

\[
J(T)\ll_\theta\int_1^{e^T}x^{2\theta-2}\,dx
\ll_\theta e^{(2\theta-1)T}.
\]

Letting `theta` decrease to `Theta` proves the upper inequality in (2). If
`Theta=1`, use `theta>1` and then let `theta` decrease to one; the trivial
bound `|L(x)|<=x` supplies the same limiting conclusion.

### Lower bound

Suppose

\[
J(T)\le C e^{\delta T}\qquad(T\ge0).
\tag{3}
\]

For every complex `z` with `Re z>delta/2`, choose `sigma` with
`delta<sigma<2 Re z`. Then

\[
\int_0^\infty e^{-2\Re z\,u}|f(u)|^2du<\infty
\]

by positive Tonelli applied to (3), and Cauchy--Schwarz gives local uniform
convergence of

\[
F(z)=\int_0^\infty e^{-zu}f(u)\,du.
\]

Hence `F` is holomorphic on `Re z>delta/2`. On `Re z>1/2`, equation (1), with
`s=z+1/2`, gives

\[
F(z)=\frac{\zeta(1+2z)}{(z+1/2)\zeta(z+1/2)}.
\tag{4}
\]

Meromorphic identity continuation extends (4) throughout the half-plane of
`F`. If `rho=beta+i gamma` is a zeta zero with `beta>1/2`, the right side has a
nonremovable pole at `z=rho-1/2`: its numerator is nonzero because
`Re(2rho)>1`. Thus (3) forces

\[
\delta\ge2\beta-1.
\]

If the limsup in (2) were below `2 beta-1`, choose `delta` between them and
absorb the bounded initial interval into the constant in (3), a contradiction.
Taking the supremum over the zero real parts proves the reverse inequality.

Consequently

\[
\boxed{
\texttt{WeightedPrefixSquareAllRate}
\quad\Longleftrightarrow\quad
\Theta=1/2
\quad\Longleftrightarrow\quad
\mathrm{RH}.
}
\tag{5}
\]

Equation (5) is the decisive no-closure point: (2) can be used to prove the
supplier only after independently proving `Theta<=1/2`.

## 3. Damping and full-frequency identity

For `a>0`, define

\[
D(a)=\int_0^\infty e^{-2au}|f(u)|^2du.
\]

Since

\[
e^{-2au}=\int_u^\infty 2a e^{-2aT}\,dT,
\]

positive Tonelli gives

\[
D(a)=2a\int_0^\infty e^{-2aT}J(T)\,dT.
\tag{6}
\]

For any nondecreasing nonnegative `J`, (6) implies that the convergence
abscissa in the variable `2a` equals

\[
\limsup_{T\to\infty}\frac{\log(1+J(T))}{T}.
\]

Using (2),

\[
\boxed{
\inf\{a>0:D(a)<\infty\}=\Theta-1/2.
}
\tag{7}
\]

No assertion is made at the endpoint.

For `a>Theta-1/2`, the function

\[
g_a(u)=\mathbf 1_{u\ge0}e^{-au}f(u)
\]

belongs to `L^1(R) cap L^2(R)`. Its Fourier transform is (4) on the line
`z=a+it`; analytic continuation is legitimate because this line is strictly
to the right of every relevant denominator zero. Fourier--Plancherel yields

\[
\boxed{
D(a)=\frac1{2\pi}\int_{\mathbb R}
\left|
\frac{\zeta(1+2a+2it)}{(1/2+a+it)\zeta(1/2+a+it)}
\right|^2dt.
}
\tag{8}
\]

Thus RH is equivalent to finiteness of (8) for every `a>0`. If RH is false,
functional-equation reflection supplies a zero `rho=beta+i gamma` with
`beta>1/2`; on the line `a=beta-1/2`, the quotient has a local singularity of
order `|t-gamma|^{-m}` for some `m>=1`, and its squared modulus is not locally
integrable.

This is a full continuous-frequency statement. A finite measurable partition
of the frequency axis must place a nonintegrable singularity in at least one
channel. A countable partition can have infinitely many finite channel
integrals with divergent sum, so countable channelwise finiteness is not by
itself sufficient.

## 4. Exact fixed-prime and odd filter

For a fixed finite prime set `P`, let `Q_P=prod_(p in P)p` and

\[
O_P(x)=\sum_{\substack{n\le x\\(n,Q_P)=1}}\lambda(n).
\]

Finite inclusion--exclusion and `lambda(p)=-1` give the exact identity

\[
O_P(x)=\sum_{d\mid Q_P}L(x/d)=\prod_{p\in P}(I+S_p)L(x),
\qquad S_pf(x)=f(x/p),
\tag{9}
\]

with `L(y)=0` for `y<1`.

In the Hilbert space `L^2([1,e^T],dx/x^2)`, change of variables gives

\[
\|S_pf\|^2
=\frac1p\int_{1/p}^{e^T/p}|f(y)|^2\frac{dy}{y^2}
\le\frac1p\|f\|^2.
\tag{10}
\]

Applying the triangle and reverse-triangle inequalities successively yields

\[
\boxed{
\prod_{p\in P}(1-p^{-1/2})^2J(T)
\le J_P(T)
\le\prod_{p\in P}(1+p^{-1/2})^2J(T).
}
\tag{11}
\]

For `P={2}` this is

\[
O(x)=L(x)+L(x/2)
\]

and

\[
\boxed{
(1-2^{-1/2})^2J(T)
\le J_{\rm odd}(T)
\le(1+2^{-1/2})^2J(T).
}
\tag{12}
\]

Therefore every fixed finite-prime filter has the same exponential growth
abscissa `2Theta-1`; it transfers the obstruction but does not diminish it.

## 5. Critical linear lower floor

We prove unconditionally

\[
\boxed{
\limsup_{T\to\infty}\frac{J(T)}T
\ge\frac1{\zeta(1/2)^2}.
}
\tag{13}
\]

If RH is false, (2) gives positive exponential growth along a sequence, so the
left side is infinite. Suppose RH is true and set

\[
F(a)=\int_0^\infty e^{-au}f(u)\,du.
\]

From (4) on the positive real axis and the pole of zeta at one,

\[
\lim_{a\downarrow0}aF(a)=\frac1{\zeta(1/2)}.
\tag{14}
\]

Cauchy--Schwarz gives

\[
\left|aF(a)\right|^2
\le a\int_0^\infty e^{-au}f(u)^2du
=a^2\int_0^\infty e^{-aT}J(T)dT.
\tag{15}
\]

If `K=limsup J(T)/T` is finite, then for every `epsilon>0`,
`J(T)<=(K+epsilon)T` beyond some threshold. The bounded initial part in (15)
is `o(1)`, while

\[
a^2\int_0^\infty T e^{-aT}dT=1.
\]

Letting `a` decrease to zero and then `epsilon` decrease to zero proves (13).
For a fixed finite prime filter, (14) is multiplied by
`prod_(p in P)(1+p^{-1/2})`, giving

\[
\limsup_{T\to\infty}\frac{J_P(T)}T
\ge
\frac{\prod_{p\in P}(1+p^{-1/2})^2}{\zeta(1/2)^2}.
\tag{16}
\]

These are lower bounds and are fully compatible with all-positive-rate upper
bounds.

## 6. Strongest rate currently supplied by the external 7/8 theorem

The OpenAI theorem states

\[
\zeta(s)\ne0\qquad(\Re s>7/8).
\tag{17}
\]

Hence `Theta<=7/8`, and equation (2) gives

\[
\limsup_{T\to\infty}\frac{\log(1+J(T))}{T}\le\frac34.
\]

Equivalently, for every `epsilon>0`, there is `A_epsilon` such that

\[
\boxed{
J(T)\le A_\varepsilon e^{(3/4+\varepsilon)T}
\qquad(T\ge0).
}
\tag{18}
\]

Equation (12) gives the same fixed limiting exponent for the odd filter.
The exact Abel--Hardy transfer

\[
H_\lambda(T)\le\frac{T^2}{2}J(T)
\]

and polynomial absorption imply

\[
\boxed{
H_\lambda(T)\ll_\varepsilon e^{(3/4+\varepsilon)T}.
}
\tag{19}
\]

The external theorem has not been replayed or kernel-audited in this
repository. Equations (18)--(19) are therefore recorded as source-bound
analytic transfers from that theorem, not as independently accepted GRWTSK
formal theorems.

## 7. Why the proposed package does not prove all open goals

The five displayed mechanisms have the following logical roles:

1. the growth identity is an equivalence between the supplier and RH;
2. the damping threshold is the same equivalence in Laplace form;
3. the spectral formula is the same equivalence in Fourier form;
4. fixed-prime filters preserve the growth exponent;
5. the limsup floor is a lower bound.

None supplies the missing inequality `Theta<=1/2`. The current external
`7/8` theorem supplies only the fixed exponent `3/4+epsilon`. Consequently
`WeightedPrefixSquareAllRate`, `UniformEnergySupplier`, Problem P and RH remain
open. A valid next proof must improve the zero-free boundary all the way to the
critical line or establish the all-positive-rate arithmetic estimate directly.

## 8. Formalization boundary

The companion Lean module proves the rate algebra:

- `7/8` plus the named classical zero-free transfer gives `3/4+epsilon`;
- a weighted-prefix fixed rate gives the unchanged causal fixed rate after an
  arbitrarily small polynomial-absorption loss;
- the exact odd comparison preserves each fixed rate.

The classical zero-free-to-prefix transfer, its reverse pole obstruction, the
continuous odd comparison and the external `7/8` theorem remain explicit
premises. No axiom or hidden RH assumption is added.
