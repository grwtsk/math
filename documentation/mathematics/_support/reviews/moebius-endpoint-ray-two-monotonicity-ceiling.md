# Two-monotone endpoint rays and the higher-order parity obstruction

Local mathematical attribution: grwtsk contributors. Research scope:
`6ae605b4-a7b4-83e8-9ada-ee9c9089476b`. Research date: 2026-10-31.

**Disposition.** This note records a completed source-specific analysis of one
attempt to prove the original all-positive-rate causal-energy estimate. The
complete squarefree Möbius endpoint cross has nonnegative first and second
multiplicative prime differences, and each one-prime insertion has a strict
pointwise contraction factor. Nevertheless, the third difference is negative
at the already identified literal `N=12` causal boundary, and the failure
persists at every order at least three. Consequently, an unsigned Euler-product,
positive-measure, or completely-monotone-capacity bootstrap cannot prove the
uniform-energy target.

This is a rigorous programme-specific obstruction and a positive low-order
structural theorem. It is **not** a proof of `UniformEnergySupplier`, the
complete endpoint estimate, or the Riemann Hypothesis.

The companion Lean file is a `SOURCE_PROOF_CANDIDATE`. Compilation, expected
interfaces, fresh-kernel replay, native execution and transitive axiom audit are
all `NOT_RUN`.

## 1. Unchanged target and endpoint consumer

The original Liouville target remains

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

The exact square-divisor delay transport already relates the all-positive-rate
Liouville and Möbius energies with only polynomial physical-time loss. Thus it
is legitimate to test an actual Möbius endpoint proof, but it is not legitimate
to call a reversible source transformation new cancellation.

For the unchanged Möbius endpoint source, put

\[
K_T(m,n)=\int_0^T r_m(u)r_n(u)\,du,
\]

\[
\mathcal X(T)=
\sum_{\substack{1\le m,n\le\lfloor e^T\rfloor\\m\ne n}}
\mu(m)\mu(n)K_T(m,n).
\]

The endpoint quadrature satisfies

\[
|\mathcal E(T)-\mathcal X(T)|\le\frac14.
\]

Hence an all-positive-rate one-sided estimate for the complete signed
`pickupCross`, or for `endpointSum` on affinely covering scales, is the exact
arithmetic obligation. The present work does not supply it.

## 2. Exact symmetric-difference rays

For positive squarefree labels `m,n`, write

\[
d=(m,n),\qquad a=m/d,\qquad b=n/d,
\]

and define

\[
q(m,n)=ab.
\]

The factors `d,a,b` are squarefree and pairwise coprime. Therefore

\[
\mu(m)\mu(n)=\mu(a)\mu(b)=\mu(q(m,n)).
\]

The nonnegative ray mass is

\[
W_T(q)=
\sum_{\substack{m,n\le\lfloor e^T\rfloor\\
 m,n\ \mathrm{squarefree},\ m\ne n\\q(m,n)=q}}
K_T(m,n)\ge0.
\]

The predecessor source and review record the exact finite partition

\[
\mathcal X(T)=
\sum_{2\le q\le\lfloor e^T\rfloor^2}\mu(q)W_T(q).
\tag{1}
\]

Every ordered orientation, squareful zero coefficient, causal birth and finite
cutoff remains literal.

## 3. First response differences are nonnegative

Fix a prime `p`. Define

\[
\delta_p r_n(u)=r_n(u)-r_{pn}(u).
\]

Since `pn>=n` and the response decreases with its source label,

\[
\boxed{\delta_p r_n(u)\ge0.}
\tag{2}
\]

For a direct scalar proof, put

\[
\phi_c(x)=2\max(x-c,0),
\qquad
x=n^{-1/2},\quad c=e^{-u/2},\quad a=p^{-1/2}.
\]

Then `r_n(u)=phi_c(x)` and `r_(pn)(u)=phi_c(ax)`, with `0<a<1`.
Monotonicity of `phi_c` gives (2).

## 4. Second mixed response differences are nonnegative

For distinct primes `p,r`, define

\[
\delta_p\delta_r r_n
=r_n-r_{pn}-r_{rn}+r_{prn}.
\]

Let

\[
h_a(x)=\phi_c(x)-\phi_c(ax).
\]

The function `h_a` is nondecreasing on the nonnegative real axis. Explicitly,

\[
h_a(x)=
\begin{cases}
0,&x\le c,\\
2(x-c),&c\le x\le c/a,\\
2(1-a)x,&c/a\le x.
\end{cases}
\]

The three pieces join continuously and have nonnegative slopes. With
`b=r^{-1/2}<=1`, one has `bx<=x`, hence

\[
\boxed{
\delta_p\delta_r r_n(u)=h_a(x)-h_a(bx)\ge0.
}
\tag{3}
\]

No arithmetic cancellation is used in (2)--(3); this is exact causal geometry.

## 5. Exact first ray difference identity

Assume `p` does not divide `q`. Each ordered pair on ray `q` has a unique form

\[
(m,n)=(ga,gb),\qquad ab=q,\quad(a,b)=1,
\]

with the complete squarefree conditions retained. Remove `p` from the common
factor `g`. For each resulting `p`-free base triple, the four placements are:

- `p` absent from both endpoints: `K_T(ga,gb)`;
- `p` common to both: `K_T(pga,pgb)`;
- `p` assigned to the first endpoint: `K_T(pga,gb)`;
- `p` assigned to the second endpoint: `K_T(ga,pgb)`.

The first two belong to ray `q`; the latter two belong to ray `pq`. Therefore

\[
\begin{aligned}
W_T(q)-W_T(pq)
={}&\sum_{ab=q}\sum_{g\;p\text{-free}}
\int_0^T
\bigl(r_{ga}-r_{pga}\bigr)
\bigl(r_{gb}-r_{pgb}\bigr)\,du.
\end{aligned}
\tag{4}
\]

The sums are finite. If a multiplied label lies above the horizon, its literal
response is zero on `[0,T]`, so there is no omitted boundary term. By (2),

\[
\boxed{W_T(pq)\le W_T(q).}
\tag{5}
\]

## 6. Exact second ray difference identity

Now let `p,r` be distinct primes not dividing `q`. Partition the common factor
simultaneously by `p` and `r`. The sixteen placement terms factor exactly:

\[
\begin{aligned}
&W_T(q)-W_T(pq)-W_T(rq)+W_T(prq)\\
&\quad=
\sum_{ab=q}\sum_{g\;(pr)\text{-free}}
\int_0^T
\bigl(\delta_p\delta_r r_{ga}(u)\bigr)
\bigl(\delta_p\delta_r r_{gb}(u)\bigr)\,du.
\end{aligned}
\tag{6}
\]

Equation (3) gives

\[
\boxed{
W_T(q)-W_T(pq)-W_T(rq)+W_T(prq)\ge0.
}
\tag{7}
\]

Thus the exact ray field is multiplicatively two-monotone.

## 7. Quantitative one-prime insertion contraction

A stronger pointwise inequality is available. Put

\[
x=r_m(u),\quad y=r_n(u),\quad
x'=r_{pm}(u),\quad y'=r_{pn}(u),\quad a=p^{-1/2}.
\]

The literal response satisfies

\[
0\le x'\le ax,\qquad0\le y'\le ay.
\tag{8}
\]

When `xy>0`, write `alpha=x'/x` and `beta=y'/y`. For
`0<=alpha,beta<=a<=1`,

\[
2a(1+\alpha\beta)-(1+a^2)(\alpha+\beta)
=(a-\alpha)(1-a\beta)+(a-\beta)(1-a\alpha)\ge0.
\tag{9}
\]

The zero cases follow directly. Hence

\[
x'y+xy'\le
\frac{2a}{1+a^2}(xy+x'y').
\]

After integration and the exact placement partition,

\[
\boxed{
W_T(pq)\le c_pW_T(q),
\qquad
c_p=\frac{2\sqrt p}{p+1}<1.
}
\tag{10}
\]

The source file proves the scalar algebra (9). The response comparison and
finite ray reindexing remain explicit qualification targets.

## 8. Third-order positivity fails at the literal source

The predecessor review gives the exact symbolic counterexample

\[
T=\log12,\qquad q=11,\qquad(p,r,s)=(2,3,5).
\]

Its third difference is

\[
\begin{aligned}
& W_T(11)-W_T(22)-W_T(33)-W_T(55)\\
&\quad+W_T(66)+W_T(110)+W_T(165)-W_T(330)\\
&=8AB<0,
\end{aligned}
\tag{11}
\]

where

\[
A=\left(1-\frac1{\sqrt2}\right)
\left(1-\frac1{\sqrt3}-\frac1{\sqrt5}\right)<0
\]

and

\[
B=\frac{\log(12/11)}{\sqrt{11}}
-2\left(\frac1{\sqrt{11}}-\frac1{\sqrt{12}}\right)>0.
\]

The missing `165` and `330` faces require an endpoint at least `15`, which has
not been born. This is an exact causal-boundary failure, not a surrogate-kernel
counterexample.

## 9. Failure persists at every order at least three

For a finite prime set `P`, write

\[
\Delta_PW_T(q)=
\sum_{S\subseteq P}(-1)^{|S|}
W_T\!\left(q\prod_{p\in S}p\right).
\tag{12}
\]

At `T=log 12`, every ray label containing a prime `ell>12` is empty: every
prime factor of the symmetric-difference product of two labels at most twelve
is itself at most eleven. Thus

\[
W_{\log12}(\ell q')=0\qquad(\ell>12\text{ prime}).
\tag{13}
\]

Consequently, adjoining such a prime difference leaves the value unchanged:

\[
\Delta_\ell f(q')=f(q')-f(\ell q')=f(q').
\]

Starting from (11), choose any `k-3` distinct primes greater than twelve.
Then

\[
\boxed{
\forall k\ge3,\quad
\text{some exact order-}k\text{ prime difference of }W_{\log12}
\text{ is negative}.
}
\tag{14}
\]

The ray weights are therefore exactly two-monotone and not `k`-monotone for
any `k>=3`.

## 10. Low-order positivity plus strict insertion loss is insufficient

The failure is not repaired by using only the quantitative contraction (10).
Consider a rank-dependent nonnegative set function on six labels:

\[
w_0=1,\qquad w_1=\frac12,\qquad w_2=\frac14,\qquad
w_3=w_4=w_5=w_6=0.
\]

It is decreasing, its first three second differences are nonnegative,

\[
w_0-2w_1+w_2=\frac14,\qquad
w_1-2w_2+w_3=0,\qquad
w_2-2w_3+w_4=\frac14,
\]

and every insertion pays a factor at most one half. Nevertheless its complete
nonempty parity sum is

\[
-6w_1+15w_2-20w_3+15w_4-6w_5+w_6
=\frac34>0.
\tag{15}
\]

For the six primes `2,3,5,7,11,13`, the exact factors `c_p` in (10) are all at
least one half. Hence first-order contraction, second-order positivity, and the
actual six-prime insertion constants do not logically force the needed parity
upper bound. The Lean source proves the scalar fixture (15).

This is an abstract method fixture, not a counterexample to the actual endpoint
ray field.

## 11. Consequence for the uniform-energy proof attempt

By (1), the unresolved endpoint arithmetic is the complete parity sum

\[
\sum_q\mu(q)W_T(q).
\]

If every prime difference were nonnegative, one could seek an Euler-product,
positive-measure, or complete-inclusion-exclusion certificate. Equations
(11)--(14) prove that this premise is false at the unchanged source. Equations
(5), (7), and (10) remain useful low-order facts, but the six-label fixture
shows they do not imply the complete signed upper estimate.

Therefore this attempt does **not** prove (U). The first failed inequality is
precise:

\[
\Delta_2\Delta_3\Delta_5W_{\log12}(11)\ge0
\]

is false.

The next viable arithmetic object must retain the signed third-and-higher
boundary corrections. Two bounded routes remain:

1. derive a boundary-corrected multiplicative-cube identity whose complete
   boundary contribution has an independently all-positive-rate upper bound;
2. estimate the complete ray-parity sum directly by a source-specific Type-II,
   growing-shift, endpoint, or double-Abel theorem before outer absolute values.

A fixed-form logarithmic correlation estimate has physical-time error
`exp(T)/T^c` and cannot by itself provide an all-positive-rate bound. The
current exact zero-abscissa analysis also confirms that the missing exponent is
precisely RH-strength rather than an unpriced geometric loss.

## 12. Source and verification boundary

New source candidate:

`GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusEndpointRayTwoMonotonicityCeiling.lean`.

Its source-level proved scope is limited to:

- the scalar insertion inequality (9);
- the explicit six-label fixture (15);
- the conditional import of the existing `N=12` third-order failure.

The following remain named source propositions:

- exact first and second ray Gram reindexings;
- pointwise first and second response-difference nonnegativity;
- exact first/second ray monotonicity and insertion contraction;
- vanishing of rays containing primes above the `N=12` horizon;
- the all-orders extension of the third-order failure.

Current evidence:

- source inspection: `DONE`;
- mathematical derivation: `WRITTEN`;
- compilation: `NOT_RUN`;
- expected-type checking: `NOT_RUN`;
- fresh-kernel replay: `NOT_RUN`;
- transitive axiom audit: `NOT_RUN`;
- complete endpoint estimate: `UNPROVED`;
- uniform Liouville causal energy: `UNPROVED`;
- Riemann Hypothesis: `UNPROVED`.

Publication records exact source bytes and the mathematical result. It is not
Lean acceptance and does not promote the unproved arithmetic supplier.
