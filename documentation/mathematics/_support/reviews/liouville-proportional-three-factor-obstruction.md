# Uniform proportional three-factor obstruction for Liouville causal energy

**Disposition:** source-bound extension of the actual rough-Liouville obstruction
from the prime--semiprime regime to every fixed three-factor cutoff exponent
\(\theta\in(1/4,1/3)\); exact transfer to the complete negative Buchstab
covariance; no upper cancellation estimate and no claim of Riemann Hypothesis
completion.

**Prepared against `grwtsk/math/main`:**
`66e4dad1817a907693519585634ce78f2c8e7a95`, tree
`128ca2102d3cdbda8a1de4a53d29f5d54e8e014d`.

**New Lean source candidate:**
`GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/LiouvilleProportionalThreeFactorObstruction.lean`.

**Research scope:** `6ae605b4-a7b4-83e8-9ada-ee9c9089476b`.

**Verification:** source inspection and analytical derivation only. Compilation,
expected-type checking, fresh-kernel replay, native execution, external
Comparator replay, and transitive axiom auditing are all `NOT_RUN`.

## 1. Exact source and the three-factor regime

Retain the actual Liouville coefficient, the original response

\[
r_n(u)=2\max(n^{-1/2}-e^{-u/2},0),
\]

the exact initial-prime sieve, and the complete signed Buchstab covariance from
the predecessor modules.

Fix

\[
\frac14<\theta<\frac13,
\qquad
Y_T=\left\lfloor e^{\theta T}\right\rfloor.
\]

Define

\[
\beta_\theta=\frac{\theta+1/4}{2},
\qquad
\gamma_\theta=\theta+\frac23.
\]

Then

\[
\frac14<\beta_\theta<\theta,
\qquad
3\theta<\gamma_\theta<1,
\qquad
\frac{\theta}{\gamma_\theta}<\frac13,
\qquad
4\beta_\theta>1.
\]

These inequalities are proved in the new Lean source.

For sufficiently large \(T\), the floor satisfies

\[
\log Y_T\ge\beta_\theta T.
\]

On the terminal range

\[
e^{\gamma_\theta T}\le x\le e^T
\]

put

\[
\alpha=\frac{\log Y_T}{\log x}.
\]

Uniformly there,

\[
\beta_\theta\le\alpha\le\frac{\theta}{\gamma_\theta}<\frac13.
\]

The two endpoint inequalities imply

\[
Y_T^4>x
\qquad\text{and}\qquad
Y_T^3<x.
\]

Thus every \(Y_T\)-rough integer below \(x\) is exactly one of:

1. the unit \(1\);
2. a prime greater than \(Y_T\);
3. a product of two primes greater than \(Y_T\);
4. a product of three primes greater than \(Y_T\).

Prime squares, cubes, and repeated prime factors are included. No fourth
prime-factor stratum or exceptional integer occurs.

## 2. Exact alternating decomposition

For \(k=1,2,3\), let \(P_k(x,y)\) count integers \(n\le x\) with
\(P^-(n)>y\) and \(\Omega(n)=k\), counting prime factors with multiplicity.
Then the actual rough Liouville prefix is

\[
L(x,y)=1-P_1(x,y)+P_2(x,y)-P_3(x,y).
\tag{2.1}
\]

The prime term is

\[
P_1(x,y)=\pi(x)-\pi(y).
\tag{2.2}
\]

The semiprime term has the exact least-prime expression

\[
P_2(x,y)
=
\sum_{y<p\le\sqrt x}
\bigl(\pi(x/p)-\pi(p)+1\bigr).
\tag{2.3}
\]

The \(+1\) includes prime squares.

The triple-prime term is exactly

\[
P_3(x,y)
=
\sum_{y<p\le x^{1/3}}
\ \sum_{p\le q\le\sqrt{x/p}}
\bigl(\pi(x/(pq))-\pi(q)+1\bigr).
\tag{2.4}
\]

Here \(p\le q\le r\) are the three ordered prime factors and the final
parenthesis counts \(q\le r\le x/(pq)\). Repeated primes are retained, so
(2.4) includes \(p^3\), \(p^2q\), and \(pq^2\) without correction terms.

## 3. Prime-number-theorem main terms

For \(\alpha=\log y/\log x\) in a compact subinterval of
\((1/4,1/3)\), prime-number-theorem partial summation gives

\[
P_1(x,y)
=
\frac{x}{\log x}
+
O_\theta\left(\frac{x}{\log^2x}\right).
\tag{3.1}
\]

The semiprime main coefficient is

\[
J_2(\alpha)
=
\int_\alpha^{1/2}\frac{dv}{v(1-v)}
=
\log\left(\frac{1-\alpha}{\alpha}\right),
\tag{3.2}
\]

and

\[
P_2(x,y)
=
\frac{x}{\log x}J_2(\alpha)
+
O_\theta\left(\frac{x}{\log^2x}\right).
\tag{3.3}
\]

For the triple-prime term, write

\[
v=\frac{\log p}{\log x},
\qquad
w=\frac{\log q}{\log x}.
\]

The ordered region is

\[
\alpha\le v\le\frac13,
\qquad
v\le w\le\frac{1-v}{2}.
\]

The PNT main term from (2.4) is

\[
\begin{aligned}
J_3(\alpha)
&=
\int_\alpha^{1/3}
\int_v^{(1-v)/2}
\frac{dw\,dv}{v\,w\,(1-v-w)}\\
&=
\int_\alpha^{1/3}
\frac{\log((1-2v)/v)}{v(1-v)}\,dv.
\end{aligned}
\tag{3.4}
\]

The inner evaluation follows from

\[
\int_v^{(1-v)/2}
\frac{dw}{w(1-v-w)}
=
\frac{\log((1-2v)/v)}{1-v}.
\]

Uniformly in the terminal relative-exponent interval,

\[
P_3(x,y)
=
\frac{x}{\log x}J_3(\alpha)
+
O_\theta\left(\frac{x}{\log^2x}\right).
\tag{3.5}
\]

The PNT errors from \(\pi(x/(pq))\) sum to
\(O_\theta(x/\log^2x)\). The subtractive \(\pi(q)\) terms have the same
order, and the `+1` terms are \(O_\theta(x^{3/4})\), hence smaller.

Combining (2.1) and (3.1)--(3.5) gives

\[
L(x,y)
=
\frac{x}{\log x}
\left[
\Psi_3(\alpha)
+
O_\theta\left(\frac1{\log x}\right)
\right],
\tag{3.6}
\]

where

\[
\boxed{
\Psi_3(\alpha)
=
-1+
\log\left(\frac{1-\alpha}{\alpha}\right)
-
\int_\alpha^{1/3}
\frac{\log((1-2v)/v)}{v(1-v)}\,dv.
}
\tag{3.7}
\]

This is the signed three-factor Buchstab profile.

## 4. Uniform negativity of the three-factor profile

Differentiate (3.7):

\[
\Psi_3'(\alpha)
=
\frac{\log((1-2\alpha)/\alpha)-1}
{\alpha(1-\alpha)}.
\tag{4.1}
\]

For \(1/4\le\alpha\le1/3\),

\[
1\le\frac{1-2\alpha}{\alpha}\le2,
\]

so

\[
\log\left(\frac{1-2\alpha}{\alpha}\right)
\le\log2<1.
\]

Hence

\[
\Psi_3'(\alpha)<0
\qquad(1/4\le\alpha\le1/3).
\tag{4.2}
\]

It remains to bound the left endpoint. For \(t>0\),

\[
\log t\ge1-\frac1t.
\]

On \(v\in[1/4,1/3]\), take \(t=(1-2v)/v\). Then

\[
\log\left(\frac{1-2v}{v}\right)
\ge
\frac{1-3v}{1-2v}.
\]

Therefore

\[
\begin{aligned}
J_3(1/4)
&\ge
\int_{1/4}^{1/3}
\frac{1-3v}{v(1-v)(1-2v)}\,dv\\
&=
\log\frac98.
\end{aligned}
\tag{4.3}
\]

The rational integral follows from

\[
\frac{1-3v}{v(1-v)(1-2v)}
=
\frac1v+\frac{2}{2v-1}-\frac2{v-1}.
\]

Since \(J_2(1/4)=\log3\),

\[
\begin{aligned}
\Psi_3(1/4)
&\le
-1+\log3-\log\frac98\\
&=
-1+\log\frac83.
\end{aligned}
\tag{4.4}
\]

The strict inequality \(8/3<e\) gives

\[
\eta_3
=
1-\log\frac83
>0.
\tag{4.5}
\]

Combining monotonicity with (4.4),

\[
\boxed{
\Psi_3(\alpha)\le-\eta_3
\qquad
(1/4\le\alpha\le1/3).
}
\tag{4.6}
\]

Numerically,

\[
\eta_3\approx0.01917074699.
\]

This bound is uniform in \(\theta\). Only the threshold at which the PNT and
floor errors are absorbed depends on the fixed exponent.

## 5. Actual rough-prefix and causal-energy obstruction

From (3.6) and (4.6), for every fixed
\(\theta\in(1/4,1/3)\), all sufficiently large \(T\), and all

\[
e^{\gamma_\theta T}\le x\le e^T,
\]

one has

\[
\boxed{
L_{\theta,T}(x)
\le
-\frac{\eta_3}{2}\frac{x}{\log x}.
}
\tag{5.1}
\]

Use the exact causal Abel identity

\[
F_{\theta,T}(u)
=
\int_1^{e^u}
L_{\theta,T}(t)t^{-3/2}\,dt.
\tag{5.2}
\]

Split at \(x_0=e^{\gamma_\theta T}\). The complete early contribution costs at
most

\[
2e^{\gamma_\theta T/2}.
\tag{5.3}
\]

For \(T-1\le u\le T\), equation (5.1) gives

\[
\int_{x_0}^{e^u}
L_{\theta,T}(t)t^{-3/2}\,dt
\le
-\frac{\eta_3}{T}
\left(e^{u/2}-e^{\gamma_\theta T/2}\right).
\tag{5.4}
\]

Since \(\gamma_\theta<1\), the early cost is exponentially smaller. After
increasing the threshold,

\[
F_{\theta,T}(u)
\le
-\frac{\eta_3}{2T}e^{u/2}
\qquad(T-1\le u\le T).
\tag{5.5}
\]

Squaring and integrating over the final unit interval gives

\[
\boxed{
E_\theta(T)
\ge
\frac{\eta_3^2}{4}(1-e^{-1})
\frac{e^T}{T^2}
}
\tag{5.6}
\]

for all sufficiently large \(T\). The explicit coefficient is approximately

\[
5.80788482\times10^{-5}.
\]

Thus the complete proportional three-factor regime retains positive exponential
actual-source causal energy.

## 6. Complete negative Buchstab covariance

The inherited signed Gram sandwich is

\[
\frac{E_Y(T)-E_1(T)}2
\le
\max\{-\mathcal C_Y(T),0\}.
\tag{6.1}
\]

Since \(E_1(T)\le4T\), exponential domination makes the unit response at most
half of (5.6) eventually. Hence

\[
\boxed{
\max\{-\mathcal C_{Y_T}(T),0\}
\ge
\frac{\eta_3^2}{16}(1-e^{-1})
\frac{e^T}{T^2}
}
\tag{6.2}
\]

for all sufficiently large \(T\). The displayed coefficient is approximately

\[
1.45197121\times10^{-5}.
\]

The new source proves the exact factor-four transfer from a named three-factor
rough-energy lower-bound family to the negative-covariance family, conditional
only on the already explicit terminal identity, integrated identity,
nonnegativity, Young bound, unit linear bound, and exponential-over-cubic
premises.

## 7. Consequence for external-proof routes

Every growing-correlation envelope at a fixed exponent
\(\theta\in(1/4,1/3)\) must majorize a covariance of size

\[
\gg_\theta e^T/T^2.
\]

Every PFR-style global potential at such a cutoff must dominate at least that
quantity after the inverse sieve cost is included.

The source records the no-go interfaces

```lean
NoThreeFactorProportionalCorrelationEnvelope
NoThreeFactorProportionalGlobalPotential
```

with the standard exponential-dominance and inverse-cost lower-bound APIs kept
explicit.

The viable phase is therefore pushed below the three-factor threshold. A fixed
proportional cutoff can only remain potentially useful once its rough support
contains at least four prime factors, i.e. in the branch
\(\theta\le1/4\), or when the proof uses a non-proportional cutoff such as
\(Y(T)=T^A\).

## 8. Literature and novelty boundary

Buchstab's identity, finite least-prime-factor iteration, the prime number
theorem, and almost-prime simplex integrals are classical. Modern explicit
rough-number estimates, including Steve Fan's 2024 work, concern the unsigned
count. Ford--Maynard's 2024 sieve analysis gives the relevant parity and
Type-I/Type-II context.

No broad novelty claim is made for those components. The programme-specific
contribution is:

1. the explicit signed three-factor profile (3.7) for the unchanged actual
   Liouville source;
2. the elementary uniform negative gap (4.6);
3. its transport through the original causal response to (5.6);
4. the complete negative-covariance obstruction (6.2).

A search of the cited primary and repository sources did not locate this exact
physical-time causal-energy statement. That absence is not a proof of global
novelty.

## 9. Formalization and verification status

The Lean source proves the parameter geometry and the exact
rough-energy-to-covariance transfer. It records the profile integral, uniform
gap, PNT prefix estimate, causal-energy lower bound, and no-go statements as
named propositions.

Verification remains:

- source inspection: `DONE`;
- analytical derivation: `WRITTEN`;
- compilation: `NOT_RUN`;
- expected types: `NOT_RUN`;
- fresh kernel: `NOT_RUN`;
- transitive axiom audit: `NOT_RUN`;
- native execution: `NOT_RUN`;
- external Comparator replay: `NOT_RUN`.

No runtime script, mutable receipt, controller, queue, or browser state is
stored in the mathematics repository.
