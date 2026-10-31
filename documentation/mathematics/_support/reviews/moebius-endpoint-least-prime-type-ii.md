# Least-small-prime Type II decomposition of the Möbius endpoint consumer

**Disposition:** exact source partition of the RH-facing ordered Möbius endpoint
cross sum into tuned rough, mixed, and least-prime Type II sectors; exact
Möbius repeated-prime zero and harmless nonrough diagonal; quantitative
obstruction to using fixed logarithmic correlation savings as positive packet
errors. No complete endpoint estimate, unsifted Liouville-energy estimate, or
Riemann Hypothesis proof is claimed.

**Prepared against `grwtsk/math/main`:**
`7a4551d03fc0ee59b859620c8f16d29794c0ca30`, tree
`ff77de7246f3839561b55a425aa015004013d8c3`.

**New Lean source candidate:**
`GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusEndpointLeastPrimeTypeII.lean`.

**Research scope:** `6ae605b4-a7b4-83e8-9ada-ee9c9089476b`.

**Verification:** source inspection and mathematical derivation only.
Compilation, exact expected-type checking, fresh-kernel replay, native
execution, external theorem replay, and transitive axiom auditing are
`NOT_RUN`.

## 1. Fixed source and least-selected-prime tag

For a finite prime band \(P\), retain the repository definition

\[
\tau_P(n)=\operatorname{firstSelectedDivisor}(P,n).
\]

It is zero when no selected prime divides \(n\), and otherwise is the least
selected divisor furnished by the finite predicate. Directly from the
definition,

\[
\tau_P(n)\in\{0\}\cup P.
\tag{1.1}
\]

For the initial band

\[
P_Y=\{p:p\le Y,\ p\text{ prime}\},
\]

the intended source normalization is

\[
\tau_{P_Y}(n)=0
\quad\Longleftrightarrow\quad
p\mid n\Longrightarrow p>Y.
\tag{1.2}
\]

The new source records (1.2) as `InitialPrimeTagRoughBridge`, so the remaining
finite prime-factor API is visible rather than hidden inside a rewrite.

Let

\[
K_T(m,n)=\int_0^T r_m(u)r_n(u)\,du
\]

be the literal response Gram, and let

\[
S_T=\{1,\ldots,\lfloor e^T\rfloor\}.
\]

For tag conditions \(A(m,n)\), every packet below retains the original summand

\[
\mathbf 1_{m\ne n}\mathbf 1_{A(m,n)}
\,\mu(m)\mu(n)K_T(m,n).
\]

## 2. Exact three-sector endpoint identity

Define

\[
X_{00}(P,T)
=
\sum_{\substack{m,n\in S_T\\m\ne n\\
\tau_P(m)=0,\ \tau_P(n)=0}}
\mu(m)\mu(n)K_T(m,n),
\]

\[
X_{\mathrm{mix}}(P,T)
=
\sum_{\substack{m,n\in S_T\\m\ne n\\
\text{exactly one of }\tau_P(m),\tau_P(n)\text{ is }0}}
\mu(m)\mu(n)K_T(m,n),
\]

and

\[
X_{\mathrm{II}}(P,T)
=
\sum_{\substack{m,n\in S_T\\m\ne n\\
\tau_P(m)\ne0,\ \tau_P(n)\ne0}}
\mu(m)\mu(n)K_T(m,n).
\]

The four Boolean possibilities for the two tags give the unconditional finite
identity

\[
\boxed{
\operatorname{pickupCross}(T)
=
X_{00}(P,T)+X_{\mathrm{mix}}(P,T)+X_{\mathrm{II}}(P,T).
}
\tag{2.1}
\]

The Lean theorem `pickupCross_eq_firstTag_sectors` proves (2.1) directly. It
does not use a norm estimate, probabilistic model, or conjectural correlation
bound.

For the initial band, (1.2) identifies \(X_{00}(P_Y,T)\) with the previously
published rough--rough endpoint sector. Symmetry of \(K_T\) gives

\[
X_{\mathrm{mix}}(P_Y,T)=2M_Y(T),
\tag{2.2}
\]

where \(M_Y\) is one rough/nonrough orientation. The source keeps (2.2) in the
analytical interface pending the exact finite-sum symmetry replay.

## 3. Exact Möbius prime extraction

Let \(p\) be prime. If \(p\mid a\), then \(p^2\mid pa\), hence

\[
\boxed{\mu(pa)=0.}
\tag{3.1}
\]

If \(p\nmid a\), then \(p\) and \(a\) are coprime and multiplicativity gives

\[
\boxed{\mu(pa)=-\mu(a).}
\tag{3.2}
\]

Both statements are proved in the new Lean source at the actual real-valued
coefficient `moebiusReal`.

For \(p\in P_Y\), a nonzero term with \(\tau_{P_Y}(n)=p\) has a unique
representation

\[
n=pa,
\qquad
q\mid a\Longrightarrow q>p.
\]

Repeated \(p\) is not discarded by an assumption: its Möbius coefficient is
zero by (3.1). The response has the exact scaling

\[
r_{pa}(u)=p^{-1/2}r_a(u-\log p)
\]

with zero extension before birth. Therefore the tag-\(p\) waveform is

\[
\boxed{
B_p(u)
=
-p^{-1/2}
\sum_{\substack{a\le e^{u-\log p}\\q\mid a\Rightarrow q>p}}
\mu(a)r_a(u-\log p).
}
\tag{3.3}
\]

The finite reindexing, cutoff normalization, and response-scaling composition
are recorded together as `InitialPrimeTagShiftBridge`. They remain open source
obligations; equations (3.1)--(3.2) themselves have Lean proof terms.

Equation (3.3) yields the exact waveform partition

\[
F_\mu(u)=R_Y(u)+\sum_{p\le Y}B_p(u),
\tag{3.4}
\]

where \(R_Y\) is the actual rough Möbius waveform.

## 4. No distinct-prime overlap diagonal

The selected-divisor representation weights an integer once for every selected
prime dividing it; distinct prime labels can therefore share one original
integer. The least-prime tag is different: every original integer has exactly
one tag.

Define

\[
D_{\mathrm{nr}}(P,T)
=
\sum_{\substack{n\in S_T\\\tau_P(n)\ne0}}
\mu(n)^2 K_T(n,n).
\]

There is no \(p\ne q\) shared-index diagonal in the tag-\(p\), tag-\(q\)
decomposition. Consequently,

\[
\int_0^T\left(\sum_{p\le Y}B_p(u)\right)^2du
=
D_{\mathrm{nr}}(P_Y,T)+X_{\mathrm{II}}(P_Y,T).
\tag{4.1}
\]

Moreover the diagonal is an unsigned sub-sum of the existing endpoint
diagonal. The new theorem `firstTagNonroughDiagonal_bounds` proves

\[
\boxed{
0\le D_{\mathrm{nr}}(P,T)\le2T^2
\qquad(T\ge0).
}
\tag{4.2}
\]

Thus every nonpolynomial difficulty after the least-prime partition is signed
and off-diagonal. The distinct-prime positive overlap diagonal identified in
the selected-divisor Liouville reconstruction is absent here because the
Möbius tag is unique.

Combining (2.1)--(4.1),

\[
\operatorname{pickupCross}(T)
=
X_{00}(P_Y,T)+2M_Y(T)+X_{\mathrm{II}}(P_Y,T).
\tag{4.3}
\]

At the energy level,

\[
\mathcal H(T)
=
E^\mu_Y(T)+2M_Y(T)+D_{\mathrm{nr}}(P_Y,T)
+X_{\mathrm{II}}(P_Y,T).
\tag{4.4}
\]

All terms, both orientations, zero births, and repeated-prime zeros are
accounted for.

## 5. Exact use of the tuned rough upper estimate

At

\[
Y_T=
\left\lfloor
\exp\left(\frac{T\log\log T}{8\log T}\right)
\right\rfloor,
\]

the preceding source gives

\[
E^\mu_{Y_T}(T)
\ll
\mathcal A(T),
\qquad
\mathcal A(T)
=
e^T\frac{(\log T)^8}{T^4(\log\log T)^6}.
\tag{5.1}
\]

Since \(X_{00}\le E^\mu_{Y_T}\), there is a constant \(A\ge0\) with

\[
X_{00}(P_{Y_T},T)\le A\mathcal A(T)
\tag{5.2}
\]

eventually.

The new source isolates the following noncircular sufficient certificate:

\[
\boxed{
X_{\mathrm{mix}}(P_{Y_T},T)+X_{\mathrm{II}}(P_{Y_T},T)
\le
-A\mathcal A(T)+C_\varepsilon e^{\varepsilon T}
}
\tag{5.3}
\]

for every \(\varepsilon>0\), with the same \(A\) as in (5.2). Equations
(2.1), (5.2), and (5.3) give

\[
\operatorname{pickupCross}(T)\le C_\varepsilon e^{\varepsilon T}.
\tag{5.4}
\]

This is formalized as `TunedLeastPrimeCompensationCertificate` and the proved
transfer theorem `tunedLeastPrimeCompensation_to_endpointCross`.

Condition (5.3) is stronger than the terminal endpoint theorem and is not
claimed to be proved. Its value is that it states exactly what a Type II,
entropy, or global-potential argument must do with the new exponent-one rough
allowance: supply signed compensation before positive majorization.

## 6. Family size is payable; a fixed log saving is not

The number of active tags is at most \(Y_T\), and

\[
\frac{\log Y_T}{T}
=
\frac{\log\log T}{8\log T}+o(1)
\longrightarrow0.
\]

Hence

\[
|P_{Y_T}|=e^{o(T)},
\qquad
|P_{Y_T}|^2=e^{o(T)}.
\tag{6.1}
\]

The source records this as `TunedPrimeTagCountSubexponential`. It also proves
the generic rule that a product of two nonnegative all-positive-rate
allowances is again all-positive-rate, after splitting the requested exponent
in half. Therefore the mere number of prime-tag pairs is not the decisive
barrier. A genuinely uniform all-rate per-packet error could be summed.

By contrast, a fixed logarithmic saving at arithmetic height \(X=e^T\) has
physical-time size

\[
\frac{X}{(\log X)^c}
=
\frac{e^T}{T^c}.
\]

For the target rate \(\varepsilon=1/2\),

\[
\frac{e^T/T^c}{e^{T/2}}
=
\frac{e^{T/2}}{T^c}
\longrightarrow\infty.
\tag{6.2}
\]

Thus no fixed power of \(\log X\), even with perfect coefficient uniformity and
a subexponential number of forms, is an all-positive-rate error. The source
records the general statement as `FixedRatePolylogAllowanceNotAllRate`.

This gives the first precise failed inequality for the current external-proof
attempt. Replacing the complete signed packet by termwise estimates of size

\[
O\left(\frac{e^T}{T^c}\right)
\]

can at best return another exponent-one bound. It neither supplies the negative
main term in (5.3) nor leaves an \(e^{o(T)}\) aggregate error.

## 7. Comparison with available correlation theorems

The OpenAI ordinary two-point theorem supplies, for each fixed
nonproportional affine pair, a bound

\[
O_{a_1,a_2,b_1,b_2}\left(\frac{X}{(\log X)^c}\right)
\]

with one absolute \(c>0\) and a form-dependent constant. Its Lean statement
retains that quantifier order. Even an unproved strengthening making the
constants uniform over all active tags would still have the fixed-rate
obstruction (6.2). In addition, the endpoint packets are causal Gram sums over
two independent descendant indices, not one affine correlation sum.

Guo's 2026 theorem is logarithmically weighted and uniform only for additive
shifts \(h\le(\log X)^\kappa\), \(\kappa<1/700\). Hughes' 2026 result is also
logarithmically weighted and has iterated-exponential thresholds; its simple
translation corollary permits only iterated-logarithmic shifts. At \(X=e^T\),

\[
(\log X)^\kappa=T^\kappa
\ll
Y_T
\]

for every fixed \(\kappa>0\). These theorems do not provide (5.3), and no
ordinary-weight conversion with the required sign is silently assumed.

Ford--Maynard's Type I/Type II framework explains why a signed bilinear layer
is structurally necessary in parity-sensitive sieve problems. It does not
supply the particular physical-time Möbius packet estimate (5.3).

## 8. Next bounded research step

The next source increment should prove `InitialPrimeTagRoughBridge` and
`InitialPrimeTagShiftBridge`, then expand

\[
M_Y(T)
\quad\text{and}\quad
X_{\mathrm{II}}(P_Y,T)
\]

as explicit finite sums over

\[
p,q\le Y,\qquad
a\text{ rough above }p,\qquad
b\text{ rough above }q,
\]

retaining \(pa\ne qb\), both orientations, the exact cutoff, and every birth
collar.

The arithmetic test should then be main-term-sensitive. A zero-main
correlation theorem with a fixed logarithmic error is quantitatively
insufficient. A viable result must do at least one of the following:

1. prove the rough endpoint sector itself is all-positive-rate;
2. produce the negative aggregate main term in (5.3) with all-rate error;
3. identify a different exact consumer in which the rough main term cancels
   algebraically before an error estimate is applied.

## 9. Verification status

- Source inspection: `DONE`.
- Mathematical derivation: `WRITTEN`.
- Compilation: `NOT_RUN`.
- Exact expected types: `NOT_RUN`.
- Fresh-kernel replay: `NOT_RUN`.
- Transitive axiom audit: `NOT_RUN`.
- Native execution: `NOT_RUN`.
- External theorem replay: `NOT_RUN`.
- Compensation estimate (5.3): `UNPROVED`.
- Complete endpoint estimate: `UNPROVED`.
- Uniform causal-energy target: `UNPROVED`.
- Riemann Hypothesis: `UNPROVED`.

No runtime script, mutable receipt, controller, queue, or browser state is
stored in the mathematics repository.
