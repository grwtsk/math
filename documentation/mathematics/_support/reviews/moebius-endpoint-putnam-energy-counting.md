# Putnam-style counting with causal endpoint energy

**Disposition:** two unconditional source-specific upper estimates for the
actual Möbius endpoint consumer:

1. an arbitrary finite set of additive gaps costs at most twice its cardinality
   times the actual diagonal energy;
2. every pair touching the final \(M\) source births costs at most
   \(16M^3/N^2\), where \(N=\lfloor e^T\rfloor\).

At the rate-dependent gap cutoff \(e^{\varepsilon T/2}\) and terminal width
\(e^{2T/3}\), both sectors satisfy the all-positive-rate requirement.  The
remaining packet is a dense signed core.  Pure counting plus positive Gram
energy is sharp on dense abstract fixtures and does not estimate that core.
No complete endpoint estimate, uniform causal-energy estimate, or Riemann
Hypothesis proof is claimed.

**Prepared against `grwtsk/math/main`:**
`40ece08b6c15381f17ffb2fd3a85ce5d5733466b`, tree
`749efd0e0f6108bdea41ccb45b9312b2f0c68442`.

**New Lean source candidate:**
`GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusEndpointPutnamEnergyCounting.lean`.

**Research scope:** `6ae605b4-a7b4-83e8-9ada-ee9c9089476b`.

**Verification:** mathematical derivation and source construction only.
Compilation, exact expected-type checking, fresh-kernel replay, native
execution, external theorem replay, and transitive axiom auditing are all
`NOT_RUN`.

## 1. Fixed endpoint source

Retain

\[
S_T=\{1,\dots,N\},\qquad N=\lfloor e^T\rfloor,
\]

the literal response Gram

\[
K_T(m,n)=\int_0^T r_m(u)r_n(u)\,du,
\]

and the complete ordered cross sum

\[
\mathcal X(T)=
\sum_{\substack{m,n\in S_T\\m\ne n}}
\mu(m)\mu(n)K_T(m,n).
\]

The existing diagonal is

\[
\mathcal D(T)=
\sum_{n\in S_T}\mu(n)^2K_T(n,n),
\]

with the already-published estimate

\[
0\le\mathcal D(T)\le 2T^2.
\tag{1.1}
\]

The endpoint quadrature satisfies

\[
|\mathcal E(T)-\mathcal X(T)|\le\frac14.
\tag{1.2}
\]

No replacement source or random-sign model is used below.

## 2. Putnam-style neighbour counting

Let \(A\) be any finite set of nonnegative integer gaps.  Define

\[
\mathcal X_A(T)=
\sum_{\substack{m,n\in S_T\\m\ne n\\|m-n|\in A}}
\mu(m)\mu(n)K_T(m,n).
\]

The values in \(A\) need not be small or consecutive.

For each fixed \(m\) and each \(h\in A\), there are at most two integers
\(n\) with \(|m-n|=h\): \(m-h\), when positive, and \(m+h\), when within
the endpoint inventory.  Therefore the degree of the distance graph is at
most

\[
2|A|.
\tag{2.1}
\]

The literal response Gram obeys the two-vector energy inequality

\[
2|\mu(m)\mu(n)K_T(m,n)|
\le
\mu(m)^2K_T(m,m)+
\mu(n)^2K_T(n,n).
\tag{2.2}
\]

One direct proof applies

\[
2|ab|\le a^2+b^2
\]

pointwise to
\(a=\mu(m)r_m(u)\), \(b=\mu(n)r_n(u)\), and then integrates over
\([0,T]\).  The responses are continuous at their zero births, so no collar or
exceptional-time term appears.

Taking one triangle inequality after the complete packet has been formed,
then summing (2.2), gives

\[
\begin{aligned}
2|\mathcal X_A(T)|
&\le
\sum_{\substack{m,n\in S_T\\m\ne n\\|m-n|\in A}}
\left(
\mu(m)^2K_T(m,m)+
\mu(n)^2K_T(n,n)
\right)\\
&=
2\sum_{m\in S_T}
\deg_A(m)\,\mu(m)^2K_T(m,m)\\
&\le
4|A|\mathcal D(T).
\end{aligned}
\]

Thus

\[
\boxed{
|\mathcal X_A(T)|
\le
2|A|\mathcal D(T)
\le
4|A|T^2.
}
\tag{2.3}
\]

This is the central counting-with-energy estimate.

### Consequences

* The estimate depends only on \(|A|\), not the magnitudes of its gaps.
* Every arbitrary gap family of cardinality \(\exp(o(T))\) is
  all-positive-rate.
* Sparse exceptional shifts can be removed geometrically whenever their
  actual cardinality is subexponential, without applying a separate
  correlation theorem to each exceptional shift.
* For \(A=\{1,\dots,H\}\), (2.3) improves the previous
  \(8HT(1+T)\) allowance to \(4HT^2\).

For a requested rate \(\varepsilon>0\), choose

\[
H_\varepsilon(T)=
\left\lfloor e^{\varepsilon T/2}\right\rfloor.
\]

Then

\[
|\mathcal X_{\{1,\dots,H_\varepsilon(T)\}}(T)|
\le
4e^{\varepsilon T/2}T^2
\le
C_\varepsilon e^{\varepsilon T}
\tag{2.4}
\]

eventually.  Half of the requested exponent pays the number of selected gaps
and half absorbs the quadratic energy.

## 3. The full terminal birth strip

The previous terminal anti-diagonal estimate only used pairs whose distance
was close to its maximum possible value.  A stronger row count removes every
pair touching one of the final \(M\) source births.

Define

\[
\mathcal B_M(T)=
\sum_{\substack{m,n\in S_T\\m\ne n\\
N<\max(m,n)+M}}
\mu(m)\mu(n)K_T(m,n).
\]

The strict inequality selects exactly the final \(M\) possible values of the
later index when \(M\le N\).

Take the orientation \(m<n\), write

\[
n=N-j,\qquad 0\le j<M,
\]

and put

\[
s=T-\log n.
\]

Since \(e^T<N+1\),

\[
s<
\log\frac{N+1}{n}
=
\log\left(1+\frac{j+1}{n}\right)
\le
\frac{j+1}{n}.
\]

If \(2M\le N\), then \(n\ge N/2\), and hence

\[
s\le\frac{2(j+1)}N.
\tag{3.1}
\]

At the later birth write \(u=\log n+v\).  The unchanged response is

\[
r_n(\log n+v)
=
\frac2{\sqrt n}(1-e^{-v/2})
\le
\frac v{\sqrt n},
\tag{3.2}
\]

using \(2(1-e^{-v/2})\le v\).  The earlier response satisfies
\(r_m(u)\le2/\sqrt m\).  Therefore

\[
K_T(m,n)
\le
\frac{s^2}{\sqrt{mn}}.
\tag{3.3}
\]

Summing the earlier index gives

\[
\sum_{m<n}K_T(m,n)
\le
\frac{s^2}{\sqrt n}
\sum_{m<n}\frac1{\sqrt m}
\le
2s^2.
\]

Using (3.1), restoring both orientations, and summing the \(M\) terminal
layers,

\[
\begin{aligned}
|\mathcal B_M(T)|
&\le
2\sum_{j=0}^{M-1}2
\left(\frac{2(j+1)}N\right)^2\\
&\le
\boxed{
16\frac{M^3}{N^2}
}.
\end{aligned}
\tag{3.4}
\]

The proof is termwise absolute, so the same bound holds after excluding any
previously selected set of additive gaps.

Choose

\[
M_T=\left\lfloor e^{2T/3}\right\rfloor.
\]

For all sufficiently large \(T\),

\[
2M_T\le N,\qquad
N\ge\frac12e^T,
\]

and (3.4) gives

\[
\boxed{
|\mathcal B_{M_T}(T)|\le64.
}
\tag{3.5}
\]

This larger sector contains the formerly isolated terminal anti-diagonal
sector.  The older \(128e^{-T/6}\) bound remains sharper on that smaller
sector; (3.5) is more useful because it removes every interaction involving a
source born among the final \(e^{2T/3}\) indices.

## 4. Exact counted-boundary/core decomposition

To avoid double counting, let
\(\mathcal B_{A,M}^{\mathrm{out}}(T)\) denote the terminal birth-strip packet
with gaps in \(A\) excluded.  Define the signed core by

\[
\mathcal C_{A,M}(T)
=
\mathcal X(T)-
\mathcal X_A(T)-
\mathcal B_{A,M}^{\mathrm{out}}(T).
\]

Then

\[
\boxed{
\mathcal X(T)=
\mathcal X_A(T)+
\mathcal B_{A,M}^{\mathrm{out}}(T)+
\mathcal C_{A,M}(T).
}
\tag{4.1}
\]

The core has the literal support

\[
m\ne n,\qquad
|m-n|\notin A,\qquad
\max(m,n)+M\le N.
\tag{4.2}
\]

From (1.2),

\[
\mathcal E(T)
\le
|\mathcal X_A(T)|
+
|\mathcal B_{A,M}^{\mathrm{out}}(T)|
+
\mathcal C_{A,M}(T)
+\frac14.
\tag{4.3}
\]

With

\[
A=A_\varepsilon(T)=
\{1,\dots,\lfloor e^{\varepsilon T/2}\rfloor\},
\qquad
M=M_T,
\]

the first two terms in (4.3) are all-positive-rate.  The exact remaining
arithmetic supplier is

\[
\boxed{
\mathcal C_{A_\varepsilon(T),M_T}(T)
\le
C_\varepsilon e^{\varepsilon T}.
}
\tag{4.4}
\]

Its support is confined to

\[
|m-n|>e^{\varepsilon T/2}+O(1),
\qquad
\max(m,n)\le
\lfloor e^T\rfloor-e^{2T/3}+O(1).
\tag{4.5}
\]

This strictly narrows the previously published middle-gap supplier.

## 5. Sharp boundary of pure counting and energy

The degree factor in (2.3) cannot be removed by an abstract positive-Gram
argument.  On an \(N\)-vertex complete graph, take every vector equal to one
unit vector and every coefficient equal to \(+1\).  The diagonal energy is
\(N\), the degree is \(N-1\), and the ordered off-diagonal packet is

\[
N(N-1)=(N-1)N.
\]

Thus the degree-times-energy inequality is attained exactly.

This is not a Möbius counterexample.  It proves a method limitation: once the
remaining relation has degree comparable to \(N=e^T\), counting plus positive
energy alone returns an exponent-one allowance.  Further progress on (4.4)
must use the actual Möbius signs, least-prime Type II structure, or a signed
block identity before absolute values.

## 6. Relation to current correlation results

Guo's current all-shift logarithmic theorem permits an exceptional set whose
intersection with every initial interval has density smaller than every fixed
negative power of \(\log x\).  At \(x=e^T\), an allowance of
\(H/T^A\) exceptional gaps is still exponential when \(H\asymp e^T\).
Equation (2.3) pays such a set only at exponent-one scale.  It does,
however, remove any genuinely subexponential exceptional subfamily without
additional correlation input.

Hughes' theorem controls logarithmically averaged affine correlations in
individual windows with explicit form and tolerance dependence.  OpenAI's
ordinary two-point theorem gives a power-logarithmic saving for every fixed
nonproportional affine pair, with form-dependent constants.  None presently
supplies the signed dense-core estimate (4.4): termwise summation over an
exponential-degree relation retains exponential rate one.

The contribution here is not a new general graph-energy theorem.  It is the
source-exact embedding of the degree count and terminal birth-row estimate
into the unchanged endpoint consumer, with explicit rate allocation and a
new dense-core frontier.

## 7. Formalization boundary

The new source provides proof terms for:

* the exact algebraic three-sector decomposition;
* the scalar Young inequality;
* the bounded-terminal-strip to all-rate transfer;
* the endpoint comparison;
* the final all-rate logical return from the three supplied sectors;
* the dense abstract saturation fixture.

The following remain named source propositions:

* the literal interval-integral Möbius Gram Young inequality;
* the finite two-neighbours-per-gap count;
* the complete gap-set energy sum;
* the \(4|A|T^2\) specialization;
* the all-rate rate-gap calculation;
* the terminal birth-strip reindexing and \(16M^3/N^2\) estimate;
* the tuned uniform \(64\) bound;
* the signed dense-core supplier.

No theorem is accepted merely because its source text was published.
Compilation, expected-type checking, fresh-kernel replay, and transitive axiom
audit remain separate obligations.
