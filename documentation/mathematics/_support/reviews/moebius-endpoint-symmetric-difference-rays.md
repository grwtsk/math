# Symmetric-difference ray decomposition and a multiplicative-cube obstruction

**Disposition:** exact source-specific decomposition of the complete ordered
Möbius endpoint cross into nonnegative symmetric-difference ray masses, followed
by a rigorous obstruction to a naive Euler-product/complete-monotonicity
bootstrap.  The decomposition is a representation, not new cancellation.  The
obstruction is new to this programme: at the literal horizon `T=log 12`, a
third mixed prime difference of the exact ray weights is strictly negative.

**Prepared from `grwtsk/math/main`:**
`0c49b2f8729288ddfbe6c89815b39e8323d6635b`.

**Research scope:** `6ae605b4-a7b4-83e8-9ada-ee9c9089476b`.

**Verification:** mathematical derivation and source construction only.
Compilation, expected-type checking, fresh-kernel replay, native execution and
transitive axiom audit are `NOT_RUN`.  No complete endpoint estimate, uniform
energy theorem or Riemann Hypothesis proof is claimed.

## 1. Unchanged endpoint source

Retain the original positive-index causal response

\[
 r_n(u)=2\max(n^{-1/2}-e^{-u/2},0),
\]

the actual real Möbius coefficient, and the literal Gram

\[
 K_T(m,n)=\int_0^T r_m(u)r_n(u)\,du.
\]

Put \(N_T=\lfloor e^T\rfloor\).  The complete ordered endpoint cross is

\[
 \mathcal X(T)=
 \sum_{\substack{1\le m,n\le N_T\\m\ne n}}
 \mu(m)\mu(n)K_T(m,n).
\]

The existing endpoint quadrature obeys

\[
 |\mathcal E(T)-\mathcal X(T)|\le \frac14 .
\]

Every ordered orientation, terminal birth, squareful zero coefficient and
diagonal exclusion remains unchanged.

## 2. Symmetric-difference ray label

For positive labels \(m,n\), put

\[
 d=(m,n),\qquad a=m/d,\qquad b=n/d,
\]

and define

\[
 q(m,n)=ab=\frac m{(m,n)}\frac n{(m,n)}.
\]

If \(m,n\) are squarefree, then \(d,a,b\) are squarefree and pairwise
coprime.  Hence

\[
 \mu(m)\mu(n)
 =\mu(d)^2\mu(a)\mu(b)
 =\mu(ab)
 =\mu(q(m,n)).
 \tag{1}
\]

If \(m\ne n\), then \(q(m,n)\ge2\).  Also \(q(m,n)\le mn\le N_T^2\).

Define the complete nonnegative mass on ray \(q\) by

\[
 W_T(q)=
 \sum_{\substack{m,n\le N_T\\m,n\ {\rm squarefree}\\
                  m\ne n,\ q(m,n)=q}}
 K_T(m,n).
 \tag{2}
\]

The Gram is nonnegative for \(T\ge0\), so \(W_T(q)\ge0\).  Squareful
indices contribute zero to the original source.  Partitioning the finite
ordered pair inventory by \(q(m,n)\) and using (1) gives the exact identity

\[
 \boxed{\mathcal X(T)=
   \sum_{2\le q\le N_T^2}\mu(q)W_T(q).}
 \tag{3}
\]

Non-squarefree \(q\) have zero Möbius coefficient and may remain in the
displayed finite range.

This identifies the earlier ratio-two and ratio-three packets as the rays
\(q=2\) and \(q=3\).  More generally, every ray with an odd number of prime
factors is termwise nonpositive, while every even-parity ray is termwise
nonnegative.  Equation (3) does not estimate the parity balance and therefore
does not by itself advance the all-positive-rate endpoint bound.

The exact causal common-factor scaling is also retained:

\[
 r_{ga}(u)=g^{-1/2}r_a(u-\log g),
\]

and, with causal zero extension,

\[
 K_T(ga,gb)=g^{-1}K_{T-\log g}(a,b).
 \tag{4}
\]

Thus each ray is a positive common-factor sum, but the arithmetic sign resides
entirely in its squarefree ray label.

## 3. Tempting complete-monotonicity bootstrap

For a prime \(p\nmid q\), define the multiplicative forward difference

\[
 \Delta_p W_T(q)=W_T(q)-W_T(pq).
\]

A natural Euler-product attempt would require all mixed differences to be
nonnegative.  In particular, for distinct primes \(p,r,s\nmid q\),

\[
\begin{aligned}
\Delta_p\Delta_r\Delta_sW_T(q)
={}&W_T(q)-W_T(pq)-W_T(rq)-W_T(sq)\\
 &+W_T(prq)+W_T(psq)+W_T(rsq)-W_T(prsq)
 \ge0.
\end{aligned}
\tag{5}
\]

Such a property would permit positive-measure or cube-telescoping arguments
across prime-support parity.  The literal causal cutoff violates (5).

## 4. Exact `N=12` counterexample

Take

\[
 T=\log12,\qquad q=11,\qquad (p,r,s)=(2,3,5).
\]

At this horizon, the only ordered pairs on the eight relevant rays are:

\[
\begin{array}{c|c}
q'&\text{ordered pairs contributing to }W_T(q')\\ \hline
11&(1,11),(11,1)\\
22&(2,11),(11,2)\\
33&(3,11),(11,3)\\
55&(5,11),(11,5)\\
66&(6,11),(11,6)\\
110&(10,11),(11,10)\\
165&\varnothing\\
330&\varnothing .
\end{array}
\]

The last two cube faces would require a source index at least \(15\), which has
not been born by \(\log12\).

For \(1\le m\le11\), direct integration of the unchanged response gives

\[
\begin{aligned}
K_{\log12}(m,11)=4\bigg[
 &\frac{\log(12/11)}{\sqrt{11m}}
 -2\left(\frac1{\sqrt m}+\frac1{\sqrt{11}}\right)
    \left(\frac1{\sqrt{11}}-\frac1{\sqrt{12}}\right)\\
 &+\frac1{11}-\frac1{12}\bigg].
\end{aligned}
\tag{6}
\]

Let

\[
\begin{aligned}
D={}&W_T(11)-W_T(22)-W_T(33)-W_T(55)\\
   &+W_T(66)+W_T(110)+W_T(165)-W_T(330).
\end{aligned}
\]

The two orientations and (6) give

\[
 \boxed{D=8AB,}
 \tag{7}
\]

where

\[
\begin{aligned}
A={}&1-\frac1{\sqrt2}-\frac1{\sqrt3}-\frac1{\sqrt5}
       +\frac1{\sqrt6}+\frac1{\sqrt{10}}\\
  ={}&\left(1-\frac1{\sqrt2}\right)
      \left(1-\frac1{\sqrt3}-\frac1{\sqrt5}\right),
\end{aligned}
\tag{8}
\]

and

\[
 B=\frac{\log(12/11)}{\sqrt{11}}
   -2\left(\frac1{\sqrt{11}}-\frac1{\sqrt{12}}\right).
 \tag{9}
\]

The factor \(A\) is strictly negative.  Indeed,
\(\sqrt3<7/4\) and \(\sqrt5<7/3\), so

\[
 \frac1{\sqrt3}+\frac1{\sqrt5}>
 \frac47+\frac37=1,
\]

while \(1-1/\sqrt2>0\).

The factor \(B\) is strictly positive.  Put
\(t=\sqrt{12/11}>1\).  Then \(t^{-1}=\sqrt{11/12}\), and the strict elementary
logarithm inequality

\[
 \log t>1-\frac1t\qquad(t>1)
\]

gives

\[
 \log(12/11)=2\log t>
 2\left(1-\sqrt{11/12}\right).
\]

After division by \(\sqrt{11}\), this is exactly \(B>0\).  Therefore

\[
 \boxed{D<0.}
 \tag{10}
\]

Numerically, only as a diagnostic,

\[
 D\approx-3.2375497095\times10^{-5}.
\]

The sign in (10), not the decimal evaluation, proves the obstruction.

## 5. Consequence for the endpoint search

Third-order multiplicative complete monotonicity of the exact ray weights is
false.  Hence the endpoint estimate cannot be completed by treating
\(W_T(q)\) as a completely monotone prime-support weight and then applying an
unsigned Euler-product or positive-measure parity argument.

The failure is source-specific and occurs at a literal birth boundary.  It is
not a generic counterexample sequence and does not refute the actual endpoint
estimate.  It identifies a missing cost: any multiplicative-cube telescoping
must retain the un-birthed boundary faces instead of assigning them zero and
claiming positivity.

The exact RH-facing obligation remains

\[
 \forall\delta>0\;\exists C_\delta,R_\delta\ge0:
 \quad
 \mathcal E(T)\le C_\delta e^{\delta T}
\]

on an affinely covering scale set.  By (3), an equivalent arithmetic task is
to control the complete signed parity sum
\(\sum_q\mu(q)W_T(q)\), not each ray independently.

## 6. Comparison with existing source work

The current repository already proves or records as source candidates:

- exact squareful Möbius zeroing;
- a complete oriented partition of ratio-two squarefree edges;
- nonpositive ratio-two and ratio-three packets;
- all-rate payment of subexponentially many additive gaps;
- terminal-birth and terminal-antidiagonal geometric bounds;
- equivalence of the surviving dense signed remainder and the complete
  endpoint estimate under those payable sectors.

The ray decomposition unifies the finite ratio packets but does not make their
remainder smaller.  The new contribution is the exact multiplicative-cube
failure (10), which rules out one plausible attempt to aggregate all ratio
packets by unsigned prime-support monotonicity.

The next bounded step is either:

1. derive a boundary-corrected signed cube identity whose complete boundary
   term is independently all-positive-rate; or
2. estimate the ray-parity sum directly by a source-specific Type-II,
   growing-shift, or endpoint argument before outer absolute values.

A fixed finite collection of negative rays, another reversible
representation, or fixed-form logarithmic correlation estimates do not
discharge that task.

## 7. Source and acceptance boundary

The new Lean candidate defines the ray weights and proves their nonnegativity,
the scalar amplitude factorization, and the logical implication from the exact
`N=12` formula and sign facts to failure of third-order monotonicity.

The following remain explicit named formalization targets:

- the squarefree Möbius sign identity (1);
- the finite ray partition (3);
- the exact finite evaluation (7);
- the elementary signs \(A<0\) and \(B>0\).

They are definitions of propositions, not axioms or accepted theorems.

Current evidence:

- source inspection: `DONE`;
- mathematical derivation: `WRITTEN`;
- compilation: `NOT_RUN`;
- expected types: `NOT_RUN`;
- fresh-kernel replay: `NOT_RUN`;
- transitive axiom audit: `NOT_RUN`;
- complete endpoint estimate: `UNPROVED`;
- uniform causal energy: `UNPROVED`;
- Riemann Hypothesis: `UNPROVED`.
