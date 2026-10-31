# Terminal anti-diagonal localization of the Möbius endpoint consumer

**Disposition:** unconditional source-specific upper estimate for the complete
endpoint sector whose additive gap is within a prescribed width of the maximal
possible gap; exact three-sector endpoint reduction; rigorous fixed-moment
outer-sum obstruction. No complete endpoint estimate, unsifted Liouville-energy
estimate, or Riemann Hypothesis proof is claimed.

**Prepared against `grwtsk/math/main`:**
`d432b037fc69d1c819a22b9f78b0b7d0c445a371`, tree
`7dd0bb19f87fca5c7d11eba1b42d2708631b334c`.

**New Lean source candidate:**
`GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusEndpointTerminalGapLocalization.lean`.

**Research scope:** `6ae605b4-a7b4-83e8-9ada-ee9c9089476b`.

**Verification:** mathematical derivation and static source construction only.
Compilation, exact expected-type checking, fresh-kernel replay, native
execution, external theorem replay, and transitive axiom auditing are all
`NOT_RUN`.

## 1. Fixed endpoint source

Retain the literal response

\[
r_n(u)=
\begin{cases}
2(n^{-1/2}-e^{-u/2}),&\log n\le u,\\
0,&u<\log n,
\end{cases}
\]

the response Gram

\[
K_T(m,n)=\int_0^T r_m(u)r_n(u)\,du,
\]

and the complete ordered Möbius endpoint cross

\[
\mathcal X(T)=
\sum_{\substack{1\le m,n\le N\\m\ne n}}
\mu(m)\mu(n)K_T(m,n),
\qquad
N=\lfloor e^T\rfloor.
\]

The preceding additive-gap increment defined the complete small-gap sector
\(\mathcal X_{\le H}(T)\) and proved analytically

\[
|\mathcal X_{\le H}(T)|\le 8HT(1+T).
\tag{1.1}
\]

This increment treats the other geometric end of the gap range.

## 2. Terminal anti-diagonal sector

For an integer width \(M\ge0\), define

\[
\mathcal X_{\mathrm{term}}(M,T)
=
\sum_{\substack{1\le m,n\le N\\m\ne n\\
N\le |m-n|+M}}
\mu(m)\mu(n)K_T(m,n).
\tag{2.1}
\]

Thus the additive distance is at least \(N-M\). Both ordered orientations are
included.

For the forward orientation \(m<n\), write

\[
n=N-j.
\]

The terminal-gap condition gives

\[
N-j-m\ge N-M,
\qquad\text{hence}\qquad
m+j\le M.
\tag{2.2}
\]

In particular,

\[
1\le m\le M,
\qquad
0\le j\le M-m.
\tag{2.3}
\]

There is no exceptional set and no approximation in this reindexing.

## 3. Quadratic vanishing of the Gram at the later birth

Assume \(1\le m\le n\le N\), and put

\[
s=T-\log n\ge0.
\]

For \(u=\log n+v\) with \(0\le v\le s\),

\[
r_n(u)
=
\frac{2}{\sqrt n}(1-e^{-v/2}).
\]

The elementary exponential inequality

\[
2(1-e^{-v/2})\le v
\qquad(v\ge0)
\tag{3.1}
\]

therefore gives

\[
0\le r_n(\log n+v)\le\frac{v}{\sqrt n}.
\tag{3.2}
\]

The earlier response obeys

\[
0\le r_m(u)\le\frac2{\sqrt m}.
\tag{3.3}
\]

Since the later response vanishes before \(\log n\),

\[
\begin{aligned}
K_T(m,n)
&=
\int_{\log n}^T r_m(u)r_n(u)\,du\\
&\le
\frac{2}{\sqrt{mn}}\int_0^s v\,dv\\
&=
\boxed{\frac{s^2}{\sqrt{mn}}.}
\end{aligned}
\tag{3.4}
\]

This quadratic collar gain is stronger than the previously used global bound
\(K_T(m,n)\le4T/\sqrt{mn}\).

## 4. Converting the terminal collar into an integer distance

Because \(N=\lfloor e^T\rfloor\),

\[
e^T<N+1.
\]

For \(n=N-j\),

\[
\begin{aligned}
s
&=T-\log n\\
&<\log\frac{N+1}{n}\\
&=\log\left(1+\frac{j+1}{n}\right)\\
&\le\frac{j+1}{n}.
\end{aligned}
\tag{4.1}
\]

If \(2M\le N\), then \(j\le M\) gives \(n=N-j\ge N/2\), so

\[
s\le\frac{2(j+1)}N.
\tag{4.2}
\]

Equations (3.4) and (4.2) yield

\[
K_T(m,N-j)
\le
\frac{4(j+1)^2}{N^2\sqrt{m(N-j)}}
\le
\frac{4\sqrt2\,(j+1)^2}
{N^{5/2}\sqrt m}.
\tag{4.3}
\]

All floor and terminal-birth effects are included. When \(n=e^T\) is an exact
integer, the collar is zero and the corresponding response is zero.

## 5. Complete terminal-sector estimate

Using \(|\mu|\le1\), equations (2.3) and (4.3), and then restoring both
orientations,

\[
\begin{aligned}
|\mathcal X_{\mathrm{term}}(M,T)|
&\le
2\sum_{m=1}^{M}
\sum_{j=0}^{M-m}
\frac{4\sqrt2\,(j+1)^2}
{N^{5/2}\sqrt m}\\
&\le
\frac{8\sqrt2}{N^{5/2}}
\sum_{m=1}^{M}
\frac{(M-m+1)^3}{\sqrt m}\\
&\le
\frac{8\sqrt2 M^3}{N^{5/2}}
\sum_{m=1}^{M}m^{-1/2}\\
&\le
\boxed{
16\sqrt2\,
\frac{M^{7/2}}{N^{5/2}}.
}
\end{aligned}
\tag{5.1}
\]

The last inequality uses
\(\sum_{m\le M}m^{-1/2}\le2\sqrt M\).

This is a deterministic source bound. It uses neither a Möbius correlation
theorem nor independence.

## 6. A robust tuned width

Choose

\[
M_T=\left\lfloor e^{2T/3}\right\rfloor.
\tag{6.1}
\]

For all sufficiently large \(T\),

\[
2M_T\le N,
\qquad
N\ge\frac12e^T.
\]

Substituting into (5.1),

\[
\begin{aligned}
|\mathcal X_{\mathrm{term}}(M_T,T)|
&\le
16\sqrt2\,
\frac{e^{7T/3}}{(e^T/2)^{5/2}}\\
&=
\boxed{128e^{-T/6}.}
\end{aligned}
\tag{6.2}
\]

Hence the entire terminal anti-diagonal sector is exponentially decaying and,
a fortiori, satisfies every positive exponential rate.

More generally, a width \(M_T=e^{\alpha T+o(T)}\) gives the exponent

\[
\frac{7\alpha-5}{2}T+o(T).
\tag{6.3}
\]

Thus every fixed \(\alpha<5/7\) is harmless by absolute geometry. The choice
\(2/3\) leaves a clean margin.

## 7. Exact three-sector reduction

Define the signed middle sector algebraically by

\[
\mathcal X_{\mathrm{mid}}(H,M,T)
=
\mathcal X(T)
-\mathcal X_{\le H}(T)
-\mathcal X_{\mathrm{term}}(M,T).
\tag{7.1}
\]

Then exactly

\[
\boxed{
\mathcal X(T)
=
\mathcal X_{\le H}(T)
+
\mathcal X_{\mathrm{mid}}(H,M,T)
+
\mathcal X_{\mathrm{term}}(M,T).
}
\tag{7.2}
\]

The endpoint quadrature comparison gives

\[
\boxed{
\mathcal E(T)
\le
|\mathcal X_{\le H}(T)|
+
|\mathcal X_{\mathrm{term}}(M,T)|
+
\mathcal X_{\mathrm{mid}}(H,M,T)
+
\frac14.
}
\tag{7.3}
\]

For a requested rate \(\varepsilon>0\), take

\[
H_\varepsilon(T)=
\left\lfloor e^{\varepsilon T/4}\right\rfloor,
\qquad
M=M_T.
\]

The first term in (7.3) is all-positive-rate by (1.1), and the second decays by
(6.2). Therefore the remaining consumer-facing arithmetic statement is

\[
\boxed{
\mathcal X_{\mathrm{mid}}
\bigl(H_\varepsilon(T),M_T,T\bigr)
\le C_\varepsilon e^{\varepsilon T}.
}
\tag{7.4}
\]

Geometrically, the remaining ordered pairs satisfy

\[
e^{\varepsilon T/4}
<
|m-n|
<
N-e^{2T/3}
\]

up to the harmless floor conventions.

## 8. Why long-shift moment theorems still do not close the middle sector

Guo's current all-shift preprint proves, among other results, that for every
fixed \(1<p<\infty\),

\[
\frac1H\sum_{L<h\le L+H}
\sup_{y\le x}
\left|
\sum_{n\le y}\frac{\lambda(n)\lambda(n+h)}n
\right|^p
\ll_p 1+\frac{x}{H},
\tag{8.1}
\]

and gives bounded fixed moments on every shift window of length
\(H\ge x^\theta\), \(\theta>1/3\). It also proves first- and second-moment
bounds for every polynomial shift range. These are logarithmically weighted
correlation theorems, not direct endpoint estimates.

The logical outer-sum limitation is sharp. A packet family

\[
a_h\equiv1
\]

satisfies, for every fixed moment \(p\),

\[
\frac1H\sum_{h\le H}|a_h|^p=1,
\tag{8.2}
\]

but

\[
\sum_{h\le H}a_h=H.
\tag{8.3}
\]

Thus bounded normalized moments, even all fixed moments and even with no
exceptional shifts, do not imply cancellation in the signed outer shift sum.
Hölder gives at best the same \(H\)-scale bound, and the constant family shows
that this loss is unavoidable without additional outer-mean information.

When \(H\asymp e^T\), any polynomial physical-time packet allowance therefore
still aggregates to exponential rate one. The recent moment theorems may be
useful only if inserted before the outer sum in a source identity that produces
signed cancellation between shift or ratio blocks.

Primary comparison:

- Jizhou Guo, *Logarithmic Chowla Correlations Across All Shift Scales*,
  arXiv:2608.23500v4, Theorems 1.2--1.4.
- Scott D. Hughes, *Effective logarithmic two-point Chowla bounds in every
  window*, arXiv:2609.28526.
- OpenAI, *Ordinary two-point correlations of multiplicative functions*,
  fixed affine forms with form-dependent constants.

No theorem above is asserted to contain (7.4).

## 9. Formalization scope

The Lean source proves:

- the exact algebraic three-sector identity;
- the elementary inequality \(2(1-e^{-v/2})\le v\);
- the endpoint comparison once the three sectors are defined;
- the logical return from all-rate small, terminal, and middle bounds;
- constant-packet moment saturation.

The finite terminal-pair reindexing, the complete estimate (5.1), and the
asymptotic specialization (6.2) remain named propositions until their natural
number, floor, interval-integral, and real-cast interfaces are compiled.

## 10. Verification and disposition

Current status:

- source inspection: `DONE`;
- mathematical derivation: `WRITTEN`;
- compilation: `NOT_RUN`;
- exact expected types: `NOT_RUN`;
- fresh-kernel replay: `NOT_RUN`;
- transitive axiom audit: `NOT_RUN`;
- native execution: `NOT_RUN`;
- external theorem replay: `NOT_RUN`;
- middle-gap supplier (7.4): `UNPROVED`;
- complete endpoint estimate: `UNPROVED`;
- uniform causal-energy target: `UNPROVED`;
- Riemann Hypothesis: `UNPROVED`.

The next bounded research step is to form dyadic ratio blocks inside the middle
sector and test a signed block estimate before applying absolute values over
the exponentially many gaps. If only fixed normalized moments are used, the
constant-packet fixture proves that the outer \(e^T\) loss is unavoidable.
