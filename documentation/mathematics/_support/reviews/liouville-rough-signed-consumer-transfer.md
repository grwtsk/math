# Tuned rough cancellation at the signed endpoint and double-Abel consumers

**Disposition:** source-exact transfer of the tuned rough-Liouville estimate to
the rough Möbius sector; exact rough/complementary decompositions for the
RH-facing endpoint and Liouville double-Abel consumers; rigorous obstruction
to consuming the available exponent-one bound as a positive allowance. No
all-positive-rate endpoint estimate, unsifted Liouville energy estimate, or
Riemann Hypothesis proof is claimed.

**Prepared against `grwtsk/math/main`:**
`f747503640d944f7ae2afac9c8bda23bc35fa766`, tree
`8c35a65ac47a15cf177f07cf78c03d952e0f969b`.

**New Lean source candidate:**
`GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/LiouvilleRoughSignedConsumerTransfer.lean`.

**Research scope:** `6ae605b4-a7b4-83e8-9ada-ee9c9089476b`.

**Verification:** source inspection and analytical derivation only. Compilation,
expected-type checking, fresh-kernel replay, native execution, external theorem
replay, and transitive axiom auditing are all `NOT_RUN`.

## 1. Fixed sources and the question tested

The preceding increment established, for

\[
Y_T=\left\lfloor
\exp\!\left(\frac{T\log\log T}{8\log T}\right)
\right\rfloor,
\]

the actual rough-Liouville energy estimate

\[
E^\lambda_{Y_T}(T)
\ll e^T\frac{(\log T)^8}{T^4(\log\log T)^6}.
\tag{1.1}
\]

The estimate is genuine cancellation relative to the unsigned rough source,
but its exponential rate is still one. The present increment tests whether it
can be inserted directly into either of the two complete signed consumers:

1. the Möbius endpoint sum
   `GRWTSK.NumberTheory.Moebius.PickupEndpointQuadrature.endpointSum`;
2. the Liouville double-Abel positive-gap aggregate
   `GRWTSK.NumberTheory.LiouvilleDoubleAbelCausalKernel.positiveGapAggregate`.

The result is a transfer and a no-go. The tuned estimate transfers to the
actual rough Möbius source, with an exponentially smaller squareful defect.
The rough sector can be split exactly from both complete consumers. But the
resulting positive allowance is not all-positive-rate, so a successful use
must retain signed cancellation between the rough and complementary sectors.

## 2. Rough Liouville versus rough Möbius prefixes

For integers \(Y,N\ge1\), define

\[
R^\lambda_Y(N)=
\sum_{\substack{n\le N\\p\mid n\Rightarrow p>Y}}\lambda(n),
\qquad
R^\mu_Y(N)=
\sum_{\substack{n\le N\\p\mid n\Rightarrow p>Y}}\mu(n).
\]

If \(n\) is squarefree, then

\[
\mu(n)=(-1)^{\omega(n)}=(-1)^{\Omega(n)}=\lambda(n).
\]

Hence the difference is supported only on nonsquarefree rough integers. Every
such integer is divisible by \(p^2\) for some prime \(p>Y\). A union bound gives

\[
\begin{aligned}
\left|R^\mu_Y(N)-R^\lambda_Y(N)\right|
&\le\sum_{\substack{p>Y\\p\ {\rm prime}}}
\left\lfloor\frac{N}{p^2}\right\rfloor\\
&\le N\sum_{m>Y}\frac1{m^2}\\
&\le \frac{N}{Y}.
\end{aligned}
\tag{2.1}
\]

There is no exceptional set. Repeated prime powers are exactly the source of
the defect and are paid by the displayed union bound. At the tuned cutoff,
\(Y_T\) grows faster than every power of \(T\), so the term \(N/Y_T\) is
exponentially smaller than the logarithmic rough-Liouville allowance on the
terminal physical-time band.

The Lean source records (2.1) as `RoughMoebiusLiouvillePrefixDefect`. It remains
a named proposition pending the exact Mathlib proof identifying the two
coefficients on squarefree integers and the finite union bound.

## 3. Causal waveform defect

Let

\[
F^\lambda_Y(u)=
\sum_{\substack{n\le e^u\\p\mid n\Rightarrow p>Y}}
\lambda(n)r_n(u),
\qquad
F^\mu_Y(u)=
\sum_{\substack{n\le e^u\\p\mid n\Rightarrow p>Y}}
\mu(n)r_n(u),
\]

using the unchanged response \(0\le r_n(u)\le2/\sqrt n\). Again only
nonsquarefree rough integers contribute. Writing \(n=p^2m\),

\[
\begin{aligned}
|F^\mu_Y(u)-F^\lambda_Y(u)|
&\le 2\sum_{p>Y}\frac1p
\sum_{m\le e^u/p^2}\frac1{\sqrt m}\\
&\le4e^{u/2}\sum_{p>Y}\frac1{p^2}\\
&\le\frac{4e^{u/2}}Y.
\end{aligned}
\tag{3.1}
\]

The overcount from integers divisible by more than one prime square is harmless
because the estimate is one-sided. The scalar inequality

\[
|a-b|\le d\Longrightarrow a^2\le2b^2+2d^2
\tag{3.2}
\]

then gives

\[
\boxed{
E^\mu_Y(T)\le2E^\lambda_Y(T)+\frac{32(e^T-1)}{Y^2}.
}
\tag{3.3}
\]

The Lean theorem `sq_le_two_sq_add_of_abs_sub_le` proves (3.2). The source
records (3.1) and (3.3) as
`RoughMoebiusLiouvilleWaveformDefect` and
`RoughMoebiusEnergyTransfer`, with interval-integral qualification still open.

At \(Y=Y_T\),

\[
\frac{e^T}{Y_T^2}=e^T
\exp\!\left(-\frac{T\log\log T}{4\log T}+O(1)\right),
\]

which is smaller than (1.1). Therefore

\[
\boxed{
E^\mu_{Y_T}(T)
\ll e^T\frac{(\log T)^8}{T^4(\log\log T)^6}.
}
\tag{3.4}
\]

This is a source-specific upper estimate for the actual Möbius coefficient
restricted to the tuned rough support. It is not an estimate for the full
Möbius pickup.

## 4. Exact endpoint-sector decomposition

Let \(X_{\rm rr}(Y,T)\) be the ordered off-diagonal pickup cross sum restricted
to pairs \(m,n\) that are both \(Y\)-rough. Define

\[
X_{\rm comp}(Y,T)=\operatorname{pickupCross}(T)-X_{\rm rr}(Y,T).
\]

It retains, without absolute values, rough--nonrough, nonrough--rough and
nonrough--nonrough interactions. The source proves

\[
\operatorname{pickupCross}(T)=X_{\rm rr}(Y,T)+X_{\rm comp}(Y,T).
\tag{4.1}
\]

The endpoint theorem already gives

\[
|\operatorname{endpointSum}(T)-\operatorname{pickupCross}(T)|\le\frac14.
\tag{4.2}
\]

At \(Y=Y_T\),

\[
\boxed{
\operatorname{endpointSum}(T)
\le X_{\rm rr}(Y_T,T)+X_{\rm comp}(Y_T,T)+\frac14.
}
\tag{4.3}
\]

The rough Möbius energy has the finite Gram split

\[
E^\mu_Y(T)=D^\mu_Y(T)+X_{\rm rr}(Y,T),
\qquad D^\mu_Y(T)\ge0.
\tag{4.4}
\]

Thus (3.4) supplies a one-sided rough-sector upper bound. The exact signed
condition needed to use it before paying a positive allowance is

\[
\boxed{
X_{\rm comp}(Y_T,T)
\le-X_{\rm rr}(Y_T,T)+C_\varepsilon e^{\varepsilon T}.
}
\tag{4.5}
\]

Under (4.5), the source theorem
`endpointSum_le_of_tuned_signed_remainder` gives

\[
\operatorname{endpointSum}(T)
\le C_\varepsilon e^{\varepsilon T}+\frac14.
\]

The all-rate family (4.5) is named
`TunedEndpointSignedRemainderSupplier`. It exposes the exact cross-sector
cancellation through which the rough estimate could participate.

## 5. Exact double-Abel-sector decomposition

For the actual Liouville double-Abel source, let \(A_{\rm rr}(Y,N)\) be the
positive-gap aggregate restricted to pairs \(m,m+g\) that are both \(Y\)-rough,
and define

\[
A_{\rm comp}(Y,N)=A(N)-A_{\rm rr}(Y,N).
\]

The source proves

\[
A(N)=A_{\rm rr}(Y,N)+A_{\rm comp}(Y,N)
\tag{5.1}
\]

without changing the causal kernel, gap labels, triangular support, or signs.
The exact signed remainder condition is

\[
\boxed{
A_{\rm comp}(Y_{\log N},N)
\le-A_{\rm rr}(Y_{\log N},N)+C_\varepsilon N^\varepsilon.
}
\tag{5.2}
\]

The theorem `positiveGapAggregate_le_of_tuned_remainder` proves that (5.2)
implies \(A(N)\le C_\varepsilon N^\varepsilon\). Both consumers therefore
identify the same missing phenomenon: cancellation between the tuned rough
sector and its complete small-prime complement.

## 6. Why a positive-sector bootstrap cannot close

Put

\[
\mathcal A(T)=e^T\frac{(\log T)^8}{T^4(\log\log T)^6}.
\]

For \(\varepsilon=1/2\),

\[
\frac{\mathcal A(T)}{e^{\varepsilon T}}
=e^{T/2}\frac{(\log T)^8}{T^4(\log\log T)^6}\to\infty.
\tag{6.1}
\]

Therefore \(\mathcal A\) is not all-positive-rate subexponential. The source
formalizes the logical obstruction independently of the analytic formula. If
`PositiveAllowanceRule A` says that `sector ≤ A` plus an independently
all-rate remainder always gives an all-rate total, choosing `sector=A` and
`remainder=0` proves that the rule implies `A` itself is all-rate. Hence

\[
\neg\operatorname{EventualAllRateUpper}(A)
\Longrightarrow
\neg\operatorname{PositiveAllowanceRule}(A).
\tag{6.2}
\]

The Lean theorems

```lean
positiveAllowanceRule_implies_allowance_allRate
no_positiveAllowanceRule_of_not_allRate
tuned_positive_allowance_rule_fails
```

prove this exact no-go. It eliminates the bootstrap “rough-sector upper bound
+ independently subexponential complementary upper bound + triangle
inequality.” A successful argument must retain a negative mixed-sector
contribution such as (4.5) or (5.2).

## 7. Recent growing-shift correlation theorems

Jizhou Guo proves logarithmically weighted two-point cancellation uniformly for

\[
1\le h\le(\log x)^\kappa,
\qquad0<\kappa<1/700.
\]

At \(x=e^T\), this is \(h\le T^\kappa\). Scott D. Hughes obtains effective
logarithmic-window estimates with a uniform additive shift only in an
iterated-logarithmic range. The 2026 ordinary two-point result gives an ordinary
power-of-logarithm saving for each fixed nonproportional affine pair, with
constants allowed to depend on the forms.

By contrast,

\[
\log Y_T=\frac{T\log\log T}{8\log T}+O(1),
\qquad\log(T^\kappa)=\kappa\log T.
\]

Thus \(T^\kappa<Y_T\) eventually for every fixed \(\kappa>0\). The source
records this parameter gap as `TunedCutoffDominatesEveryPolylogShift`.
There are also object mismatches: the endpoint source is a complete Möbius
quadratic sum; prime delay is multiplicative rather than additive; double Abel
has a growing two-parameter family; and the Guo/Hughes estimates are
logarithmically weighted. No source-exact transfer to (4.5) or (5.2) is
currently supplied.

## 8. First failed inequality and next bounded step

The first failed inequality is explicit:

\[
X_{\rm rr}(Y_T,T)\le C\mathcal A(T),
\qquad X_{\rm comp}(Y_T,T)\le C_\varepsilon e^{\varepsilon T}
\]

only yields

\[
\operatorname{endpointSum}(T)
\le C\mathcal A(T)+C_\varepsilon e^{\varepsilon T}+\frac14,
\]

and the first term is not all-rate subexponential. The identical failure occurs
for double Abel.

The next bounded target is not another positive estimate. It is a signed
cross-sector inequality proved before sectorwise absolute values. A practical
intermediate target is the exact small-prime least-factor expansion of
`endpointComplementaryCross`, retaining both mixed orientations, repeated
primes, squareful zero symbols, and the original response Gram. Only then can
recent correlation theorems be tested against the actual growing family.

## 9. Formalization and verification status

The new Lean module proves the scalar square transfer; exact endpoint and
double-Abel sector splits; pointwise signed-remainder transfers; and the generic
positive-allowance no-go. The squarefree coefficient comparison, rough prefix
and waveform defects, interval-integral energy transfer, rough Gram split,
tuned asymptotics, and growing-shift parameter comparison remain named
propositions.

Verification remains `COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN /
NATIVE_EXECUTION_NOT_RUN / EXTERNAL_THEOREM_REPLAY_NOT_RUN`. The complete
endpoint estimate, complete double-Abel estimate, uniform causal-energy target,
and Riemann Hypothesis remain unproved.
