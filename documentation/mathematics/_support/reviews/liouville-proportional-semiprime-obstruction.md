# Uniform proportional semiprime-cutoff obstruction

**Disposition:** source-bound generalization of the proportional rough-Liouville
obstruction from the single exponent \(2/5\) to every
\(\theta\in(1/3,1/2)\); exact transfer to the complete negative Buchstab
covariance; no upper cancellation estimate and no claim of Riemann Hypothesis
completion.

**Prepared against `grwtsk/math/main`:**
`6553619cce25f4b529f7e57b73cb21b38fde4c52`, tree
`4e394b2ca1bf914f952b7a8c7212446e787c785b`.

**New Lean source candidate:**
`GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/LiouvilleProportionalSemiprimeObstruction.lean`.

**Research scope:** `6ae605b4-a7b4-83e8-9ada-ee9c9089476b`.

**Verification:** source inspection and analytical derivation only. Compilation,
expected-type checking, fresh-kernel replay, native execution, external
Comparator replay, and transitive axiom auditing are all `NOT_RUN`.

## 1. Exact source and parameter range

Retain the actual Liouville coefficient, the original causal response

\[
r_n(u)=2\max(n^{-1/2}-e^{-u/2},0),
\]

the exact initial-prime sieve, and the complete signed Buchstab covariance
published in the predecessor modules.

Fix

\[
\frac13<\theta<\frac12,
\qquad
Y_T=\left\lfloor e^{\theta T}\right\rfloor.
\]

Define

\[
\beta_\theta=\frac{\theta+1/3}{2},
\qquad
\gamma_\theta=\theta+\frac12.
\]

Then

\[
\frac13<\beta_\theta<\theta,
\qquad
2\theta<\gamma_\theta<1,
\qquad
\frac{\theta}{\gamma_\theta}<\frac12.
\]

These elementary inequalities are proved in the new Lean source.

For all sufficiently large \(T\), the floor satisfies

\[
\log Y_T\ge\beta_\theta T.
\]

On the terminal range

\[
e^{\gamma_\theta T}\le x\le e^T,
\]

put

\[
\alpha=\frac{\log Y_T}{\log x}.
\]

Uniformly on this range,

\[
\beta_\theta\le\alpha\le\frac{\theta}{\gamma_\theta}<\frac12.
\]

Moreover,

\[
Y_T^3>e^T\ge x
\]

because \(3\beta_\theta>1\), while

\[
Y_T^2<x
\]

because \(2\theta<\gamma_\theta\). Thus every \(Y_T\)-rough integer below
\(x\) is exactly one of:

1. the unit \(1\);
2. a prime greater than \(Y_T\);
3. a product of two primes greater than \(Y_T\), with repeated primes retained.

No higher prime-factor stratum or exceptional integer occurs.

## 2. Exact prime--semiprime decomposition

Let

\[
L_{\theta,T}(x)
=
\sum_{\substack{n\le x\\p\mid n\Rightarrow p>Y_T}}\lambda(n).
\]

The support classification gives

\[
L_{\theta,T}(x)
=
1-\bigl(\pi(x)-\pi(Y_T)\bigr)+Q(x,Y_T),
\]

where

\[
Q(x,y)
=
\sum_{y<p\le\sqrt x}
\bigl(\pi(x/p)-\pi(p)+1\bigr).
\]

The \(+1\) includes prime squares.

Uniform prime-number-theorem partial summation on compact subintervals of
\((1/3,1/2)\) yields

\[
Q(x,y)
=
\frac{x}{\log x}
\log\left(\frac{1-\alpha}{\alpha}\right)
+
O_\theta\left(\frac{x}{\log^2x}\right).
\]

The term \(\pi(Y_T)\) is exponentially smaller than \(x/\log x\), since
\(\gamma_\theta>\theta\). Hence

\[
L_{\theta,T}(x)
=
\frac{x}{\log x}
\left[
-1+\log\left(\frac{1-\alpha}{\alpha}\right)
+O_\theta\left(\frac1{\log x}\right)
\right].
\]

The coefficient is the two-factor branch of the signed Buchstab profile. It is
strictly negative throughout the present range. Indeed,
\(\alpha\ge\beta_\theta>1/3\), so

\[
\log\left(\frac{1-\alpha}{\alpha}\right)
\le
\log\left(\frac{1-\beta_\theta}{\beta_\theta}\right)
<
\log2<1.
\]

Set

\[
\eta_\theta
=
1-\log\left(\frac{1-\beta_\theta}{\beta_\theta}\right)>0,
\qquad
c_\theta=\frac{\eta_\theta}{2}.
\]

For all sufficiently large \(T\), uniformly on the terminal range,

\[
\boxed{
L_{\theta,T}(x)
\le
-c_\theta\frac{x}{\log x}.
}
\tag{2.1}
\]

The new source records this as
`ProportionalSemiprimePrefixMainTerm`. The PNT and partial-summation step remains
a source proof candidate, not a kernel-accepted theorem.

## 3. Original causal transport

The exact causal Abel identity gives

\[
F_{\theta,T}(u)
=
\int_1^{e^u}
L_{\theta,T}(t)t^{-3/2}\,dt.
\]

Split at

\[
x_0=e^{\gamma_\theta T}.
\]

The entire early range costs at most

\[
\left|
\int_1^{x_0}
L_{\theta,T}(t)t^{-3/2}\,dt
\right|
\le
2e^{\gamma_\theta T/2}.
\]

For \(T-1\le u\le T\), equation (2.1) gives

\[
\int_{x_0}^{e^u}
L_{\theta,T}(t)t^{-3/2}\,dt
\le
-\frac{2c_\theta}{T}
\left(e^{u/2}-e^{\gamma_\theta T/2}\right).
\]

Since \(\gamma_\theta<1\), the early term is exponentially smaller than
\(e^{u/2}/T\) on the final unit interval. Therefore, after increasing the
threshold,

\[
F_{\theta,T}(u)
\le
-\frac{c_\theta}{T}e^{u/2}
\qquad(T-1\le u\le T).
\]

Squaring and integrating yields

\[
\boxed{
E_{\theta}(T)
\ge
c_\theta^2(1-e^{-1})\frac{e^T}{T^2}
}
\tag{3.1}
\]

for all sufficiently large \(T\).

Thus every fixed exponent in \((1/3,1/2)\) has positive exponential actual
rough-Liouville causal energy. The earlier \(2/5\) theorem is one member of
this family and retains its sharper source-specific constant; the uniform
construction here uses the floor-stable \(\beta_\theta<\theta\).

The new source records (3.1) as
`ProportionalSemiprimeRoughEnergyLowerBound`.

## 4. Complete negative covariance

The predecessor Gram calculation proves

\[
\frac{E_Y(T)-E_1(T)}2
\le
\max\{-\mathcal C_Y(T),0\}.
\]

The unit-response energy satisfies \(E_1(T)\le4T\). Standard exponential
dominance gives, eventually,

\[
8T^3\le
c_\theta^2(1-e^{-1})e^T,
\]

and hence

\[
E_1(T)\le\frac12E_\theta(T).
\]

Therefore

\[
\boxed{
\max\{-\mathcal C_{Y_T}(T),0\}
\ge
\frac{c_\theta^2}{4}(1-e^{-1})
\frac{e^T}{T^2}.
}
\tag{4.1}
\]

The new Lean theorem

```lean
semiprimeEnergyLower_implies_negativeCovarianceLower
```

proves this transfer from the named rough-energy lower bound, the terminal
Buchstab/Gram premises, the unit linear bound, and an explicit
exponential-dominates-cubic premise. The exact loss is a factor of four.

## 5. Consequences for every external-proof route

Every growing-correlation majorant using a cutoff
\(\lfloor e^{\theta T}\rfloor\), \(1/3<\theta<1/2\), must eventually satisfy

\[
M(T)\gg_\theta \frac{e^T}{T^2}.
\]

Every PFR-style global potential dominating the paid negative covariance must
satisfy the same lower bound, and in fact also carries the superexponential
initial-prime inverse cost.

Consequently no such proportional semiprime cutoff can yield an
all-positive-rate certificate. This is not merely the failure of
\(\theta=2/5\); the entire two-factor proportional regime is eliminated.

The source records the terminal no-go interfaces as

```lean
NoSemiprimeProportionalCorrelationEnvelope
NoSemiprimeProportionalGlobalPotential
```

pending the elementary inverse-cost and exponential-dominance closure.

## 6. Literature and novelty boundary

Classical Buchstab theory supplies least-prime-factor decomposition and the
unsigned rough-number profile. Modern explicit work supplies uniform estimates
for the unsigned count. Ford--Maynard explains why Type-II information is
needed to pass the parity barrier. None of those sources is claimed to state
the present physical-time energy theorem.

No broad novelty claim is made for the prime number theorem, semiprime
partial summation, Buchstab decomposition, or sieve parity. The
programme-specific contribution is the uniform embedding of the signed
two-factor profile into the unchanged GRWTSK causal response, yielding
(3.1)--(4.1) for every \(\theta\in(1/3,1/2)\).

## 7. Formalization status

The new source proves:

- all parameter-window inequalities;
- the implication from uniform rough-energy lower bounds to eventual unit
  negligibility;
- the exact factor-four transfer from rough-energy lower bounds to complete
  negative-covariance lower bounds.

The PNT prefix estimate and resulting rough-energy lower-bound family remain
named source proof candidates.

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
