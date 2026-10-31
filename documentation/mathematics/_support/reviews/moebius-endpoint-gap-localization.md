# Additive-gap localization of the Möbius endpoint consumer

**Disposition:** unconditional geometric upper bound for every additive-gap
endpoint sector of subexponential cardinality; exact reduction of the RH-facing
endpoint sum to an exponentially-large-gap signed complement; quantitative
obstruction to termwise use of fixed-logarithmic correlation estimates. No
complete endpoint estimate, unsifted Liouville-energy estimate, or Riemann
Hypothesis proof is claimed.

**Prepared against `grwtsk/math/main`:**
`8425bebeb3e693ea3efcbcd4569074425fcdc5c1`, tree
`9cc22c4f1c181f9f40d507df323f31d4c748d587`.

**New Lean source candidate:**
`GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusEndpointGapLocalization.lean`.

**Research scope:** `6ae605b4-a7b4-83e8-9ada-ee9c9089476b`.

**Verification:** mathematical derivation and source construction only.
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

and the complete ordered Möbius cross sum

\[
\mathcal X(T)=
\sum_{\substack{1\le m,n\le \lfloor e^T\rfloor\\m\ne n}}
\mu(m)\mu(n)K_T(m,n).
\]

No coefficient, sign, birth collar, or ordered orientation is changed.

For a positive additive gap \(h\), define the forward packet

\[
\mathcal P_h(T)=
\sum_{1\le m\le\lfloor e^T\rfloor-h}
\mu(m)\mu(m+h)K_T(m,m+h).
\]

For an integer cutoff \(H\ge0\), the complete ordered small-gap sector is

\[
\mathcal X_{\le H}(T)=2\sum_{1\le h\le H}\mathcal P_h(T).
\]

The factor two restores the opposite orientation. Symmetry of the Gram and the
finite change of variables \(n=m+h\) give the exact double-sum interpretation

\[
\mathcal X_{\le H}(T)=
\sum_{\substack{m,n\le\lfloor e^T\rfloor\\
m\ne n,\ |m-n|\le H}}
\mu(m)\mu(n)K_T(m,n).
\]

The source records this finite reindexing separately as
`EndpointForwardGapReindexing`.

Define the signed complement

\[
\mathcal X_{>H}(T)=\mathcal X(T)-\mathcal X_{\le H}(T).
\]

Then, identically,

\[
\boxed{\mathcal X(T)=\mathcal X_{\le H}(T)+\mathcal X_{>H}(T).}
\tag{1.1}
\]

## 2. Harmonic bound for one additive gap

For \(n\ge1\), the literal response is nonnegative and satisfies

\[
0\le r_n(u)\le \frac2{\sqrt n}.
\]

Hence, for \(T\ge0\),

\[
0\le K_T(m,n)\le\frac{4T}{\sqrt{mn}}.
\tag{2.1}
\]

When \(n=m+h\), monotonicity of the square root gives

\[
\frac1{\sqrt{m(m+h)}}\le\frac1m.
\tag{2.2}
\]

Since \(|\mu(n)|\le1\),

\[
\begin{aligned}
|\mathcal P_h(T)|
&\le
4T\sum_{m\le\lfloor e^T\rfloor-h}\frac1m\\
&\le
4T\left(1+\log\lfloor e^T\rfloor\right)\\
&\le4T(1+T).
\end{aligned}
\tag{2.3}
\]

The last inequality uses \(1\le\lfloor e^T\rfloor\le e^T\) for \(T\ge0\).
There is no arithmetic cancellation in (2.3).

Summing the packets gives the unconditional estimate

\[
\boxed{
|\mathcal X_{\le H}(T)|
\le8HT(1+T).
}
\tag{2.4}
\]

Every floor, terminal zero birth, and both ordered orientations are included.

The Lean source supplies proof candidates for the response and Gram bounds.
The casted harmonic normalization and endpoint floor inequality are retained as
the explicit proposition `EndpointHarmonicBound`; compilation has not been run.

## 3. Every subexponential gap family is harmless

Let \(H(T)\) be a nonnegative integer cutoff satisfying

\[
\log(1+H(T))=o(T).
\]

Then (2.4) implies

\[
|\mathcal X_{\le H(T)}(T)|=e^{o(T)}.
\tag{3.1}
\]

More explicitly, for a requested rate \(\varepsilon>0\), take

\[
H_\varepsilon(T)=
\left\lfloor e^{\varepsilon T/4}\right\rfloor.
\]

The quadratic factor in (2.4) is eventually at most
\(C_\varepsilon e^{3\varepsilon T/4}\), so

\[
\boxed{
|\mathcal X_{\le H_\varepsilon(T)}(T)|
\le C_\varepsilon e^{\varepsilon T}.
}
\tag{3.2}
\]

The tuned Selberg--Dickman cutoff

\[
Y_T=
\left\lfloor
\exp\left(\frac{T\log\log T}{8\log T}\right)
\right\rfloor
\]

also satisfies \(\log Y_T=o(T)\). Therefore

\[
|\mathcal X_{\le Y_T}(T)|=e^{o(T)}.
\tag{3.3}
\]

This is a new unconditional upper estimate for a complete source sector of the
actual RH-facing endpoint sum.

## 4. Exact large-gap completion target

The endpoint quadrature theorem already gives

\[
|\mathcal E(T)-\mathcal X(T)|\le\frac14.
\]

Combining it with (1.1),

\[
\boxed{
\mathcal E(T)
\le
|\mathcal X_{\le H}(T)|
+\mathcal X_{>H}(T)+\frac14.
}
\tag{4.1}
\]

Consequently, after choosing \(H=H_\varepsilon(T)\), the only new arithmetic
input required for rate \(\varepsilon\) is a one-sided signed estimate

\[
\mathcal X_{>H_\varepsilon(T)}(T)
\le C_\varepsilon e^{\varepsilon T}.
\tag{4.2}
\]

The source records this as `LargeGapEndpointSupplier`. Once the elementary
small-gap asymptotic is qualified, (4.2) gives eventual all-positive-rate
control of `endpointSum`, and the existing affine-good-scale return may be
applied.

The reduction is not circular: \(\mathcal X_{>H}\) is an explicit subset of
the original ordered pairs, not an unrestricted remainder field. It contains
only additive gaps larger than an exponentially small power selected from the
requested target rate.

## 5. Relation to the least-prime decomposition

The preceding least-prime identity gives

\[
\mathcal X=X_{00}+X_{\rm mix}+X_{\rm II}.
\]

Gap localization commutes with this partition. Each of the three packets splits
again into \(|m-n|\le H\) and \(|m-n|>H\) parts. Equation (3.2) pays the complete
near-diagonal sum without estimating any one least-prime packet separately.

Thus the remaining signed compensation problem may be restricted to

\[
|m-n|>H_\varepsilon(T).
\]

This removes every fixed, polylogarithmic, and more generally
\(\exp(o(T))\)-sized additive-shift family from the arithmetic frontier. The
hard packet is simultaneously:

* off the additive diagonal by an exponentially growing amount;
* split by rough, mixed, and least-prime Type II structure;
* still weighted by the literal causal Gram;
* still required only as a one-sided complete aggregate.

## 6. Why current logarithmic correlation theorems do not finish the sum

Jizhou Guo's arXiv:2608.23500v4 proves a logarithmically weighted Liouville
two-point estimate across the full shift range outside a single exceptionally
sparse set of shifts. Scott D. Hughes' arXiv:2609.28526 treats Liouville or
Möbius logarithmic correlations uniformly in affine forms and windows, with
effective but very large parameter thresholds. OpenAI's fixed-form ordinary
two-point theorem gives a power-of-logarithm saving for each fixed Liouville
affine pair, with constants allowed to depend on the forms.

These results are valuable comparators, but a termwise use cannot establish
(4.2). Even an idealized uniform estimate of polynomial physical-time size for
each of the \(O(e^T)\) possible gaps yields

\[
e^T T^B,
\]

which has exponential rate one. A sparse exceptional set of relative size
\(T^{-A}\) still contributes \(e^T T^{B-A}\) under a trivial packet bound.
Neither expression is \(O_\varepsilon(e^{\varepsilon T})\) for all
\(\varepsilon>0\).

The precise failed inequality is therefore

\[
\sum_{h\le e^T}|\mathcal P_h(T)|
\ \lesssim\ e^T T^B.
\tag{6.1}
\]

Equation (6.1) loses the complete signed cancellation across additive gaps.
A usable external theorem must instead bound the weighted aggregate over the
large-gap family, or supply a source-exact spectral/Type II mechanism that
retains its signs before the shift sum is estimated.

The new source records this obstruction as
`FullShiftTermwisePolylogNoGo`.

## 7. Research disposition

The arithmetic frontier has narrowed from the complete endpoint cross to its
exponentially-large-gap sector. In particular:

1. additive shifts \(h\le\exp(o(T))\) require no Chowla theorem;
2. fixed-logarithmic estimates summed termwise over all shifts retain rate one;
3. the remaining candidate estimate must exploit cancellation across large
   gaps and across the least-prime mixed/Type II packets simultaneously;
4. the exact endpoint target, curvature allowance, diagonal accounting, and
   analytic return are unchanged.

The next bounded source task is to form the large-gap least-prime packet
explicitly and test whether the physical-time Gram admits a dyadic separation
in the ratio \(n/m\), rather than in the additive shift alone. A successful
estimate must be aggregate and one-sided.

## 8. Formalization and verification status

The module proves or records:

* exact small/large signed decomposition;
* literal response and Gram upper bounds;
* reciprocal-root decay along one forward gap;
* the finite harmonic packet estimate;
* the all-rate small-gap transfer;
* the large-gap endpoint supplier interface;
* the termwise full-shift no-go.

Current evidence:

* source inspection: `DONE`;
* analytical derivation: `WRITTEN`;
* compilation: `NOT_RUN`;
* expected types: `NOT_RUN`;
* fresh kernel: `NOT_RUN`;
* transitive axiom audit: `NOT_RUN`;
* native execution: `NOT_RUN`;
* external theorem replay: `NOT_RUN`;
* large-gap supplier: `UNPROVED`;
* complete endpoint estimate: `UNPROVED`;
* uniform causal energy: `UNPROVED`;
* Riemann Hypothesis: `UNPROVED`.

No runtime script, mutable receipt, controller, queue, or browser state is
stored in the mathematics repository.
