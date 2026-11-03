# The original Möbius dense core after deterministic sparse-sector payment

Date: 2026-11-02. Mathematical direction and local attribution: **grwtsk contributors**. Source comparison, finite numerical diagnostics and Lean source-proof-candidate drafting: OpenAI ChatGPT. GRWTSK/Mathlib upstream authorship and licensing retained.

## Problem and exact original arithmetic source

The original source is the ordered off-diagonal causal Möbius Gram
\[
X(T)=\operatorname{pickupCross}(T)
 = \sum_{\substack{m,n\in W_T\\m\ne n}}
 \mu(m)\mu(n)\,\operatorname{pickupResponseGram}(T,m,n),
\quad W_T=\operatorname{endpointIndex}(T)
=\{1,\ldots,\lfloor e^T\rfloor\}.
\]
The *real* original response is \(\operatorname{pickupResponse}(n,u)=2(n^{-1/2}-e^{-u/2})\mathbf1_{u\ge\log n}\) and \(\operatorname{pickupResponseGram}(T,m,n)=\int_0^T r_m(u)r_n(u)\,du\). The exact existing physical observation is \(\operatorname{observedPacket}+\operatorname{signedReadoutDefect}=X\) for any stream; no missing or incorrectly indexed reading is silently interpreted as a true \(\mu(n)=0\).

The immediate mathematical advance is **not** an unproved estimate for the entire unsigned row total. It uses the pre-existing [MoebiusEndpointPutnamSmallRatioAllRate.lean](https://github.com/grwtsk/math/blob/a2f3e461f1a1f78c1dca399d6803ad2c9457b44c/GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusEndpointPutnamSmallRatioAllRate.lean) source candidate and its true three-way partition. For \(\varepsilon>0\) let
\[
Q_{\varepsilon,T}=\{1,\ldots,\lfloor e^{\varepsilon T/2}\rfloor\}.
\]
The exact source partition is
\[
X(T)=G_\varepsilon(T)+R_\varepsilon(T)+C_\varepsilon(T),
\]
where \(G\) selects *all ordered* pairs whose positive additive distance lies in \(Q\), \(R\) selects previously unpaid ordered positive-integer-multiple pairs with quotient in \(Q\), and \(C\) retains the remaining ordered pairs. These sectors are disjoint and never replace the coefficient \(\mu(m)\mu(n)\). The imported candidate estimates have the explicit quantitative cost
\[
|G_\varepsilon(T)|,\ |R_\varepsilon(T)|
\le 32\,\varepsilon^{-2} e^{\varepsilon T}
\quad (T\ge0,\ \varepsilon>0).
\]
They are **source-proof candidates, not native Lean-accepted results** in this investigation. The signed dense core \(C_\varepsilon\) is the actual unresolved arithmetic channel.

## Additive Lean sources, exact publication identities

| Source | Theorem candidates | Final source revision | Exact blob |
| --- | ---: | --- | --- |
| [MoebiusDenseCoreRowControlVariate.lean](https://github.com/grwtsk/math/blob/8e3ec83415c3702c93dda4a123534fc42e161648/GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusDenseCoreRowControlVariate.lean) | 12 | \`8e3ec83415c3702c93dda4a123534fc42e161648\` | \`ab3c4fa71e53f6d512560b0dab32edb04ef1c9f3\` |
| [MoebiusDenseCoreRowSamplingVariance.lean](https://github.com/grwtsk/math/blob/8c9a676a42b4c3a7a85a450bfd74f3d1b3593a82/GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusDenseCoreRowSamplingVariance.lean) | 11 | \`8c9a676a42b4c3a7a85a450bfd74f3d1b3593a82\` | \`3b2090c1031e7ed91c7ed7f32d342c3d8a8def64\` |
| [MoebiusDenseCoreZeroWitness.lean](https://github.com/grwtsk/math/blob/b43b8760709e269e1e21c1707ea2ad96aaa70dcb/GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusDenseCoreZeroWitness.lean) | 1 | \`b43b8760709e269e1e21c1707ea2ad96aaa70dcb\` | \`709a23d08cc6ff9084147549904684c82edc5d38\` |

The first module's initial source was published at \`a2f3e461f1a1f78c1dca399d6803ad2c9457b44c\`; its final revision includes the **two-sided** endpoint-to-direct-core error. The second module's original publication at \`2d10ce4a54a80b7372706b27afee49399e337ef5\` was refined to resolve original namespace imports and to **separate the accessible source-cross estimator from the ideal endpoint-defect calibration**. The source manifests pin only final byte-identities. No original source definition or root import was modified.

## New mathematical consequence 1: exact signed return and unconditional sector payment

The first module defines the actual ordered hard-core entry \(K^C_{Q,T}(m,n)\) with exactly the pre-existing Putnam predicate. Its signed row is
\[
R^C_{Q,T}(m)=\sum_{n\in W_T} K^C_{Q,T}(m,n),
\qquad C_Q(T)=\sum_{m\in W_T}R^C_{Q,T}(m).
\]
For any positive probability row \(w\) on *all* original integer indices in \(W_T\), the source includes
\[
\mathbb E_{m\sim w}\left[\frac{R^C_{Q,T}(m)}{w_m}\right]=C_Q(T).
\]
No arithmetic signs are sampled independently: the only selected random variable is the original index. The two sparse sector totals are deterministic control variates. The candidate \`pickupCross_eq_paid_add_denseCoreMean\` reconstructs the complete original signed source, with both ordered orientations.

The new \`paidSparseSectors_abs_le\` combines the existing source-specific Putnam estimates, and \`pickupCross_sub_denseCore_abs_le\` establishes
\[
|X(T)-C_\varepsilon(T)|
 \le \frac{64}{\varepsilon^2}e^{\varepsilon T}.
\]
Combining this with the distinct original \`PickupEndpointQuadrature.endpointSum_error\` statement
\(|\operatorname{endpointSum}(T)-X(T)|\le1/4\), valid only for \(T\ge0\), yields the new **two-sided** original-source comparison
\[
\boxed{
|\operatorname{endpointSum}(T)-C_\varepsilon(T)|
\le \frac{64}{\varepsilon^2}e^{\varepsilon T}+\frac14.
}
\]
The signed-core all-positive-rate criterion already has a repository theorem-candidate equivalence with the original signed-cross criterion on the same fixed set of good scales. That equivalence is **not** the proof of its open arithmetic premise. The new \`DenseCoreRowAbsAllRateOn\` hypothesis, concerning \(\sum_m|R^C_{\varepsilon,T}(m)|\), is a stronger optional supplier and is not established.

**Rate-separated analytic consequence (ordinary finite algebra, not separately kernel checked):** choosing the sparse cutoff at rate \(\delta<\eta\), the ratio \(e^{-\eta T}|\operatorname{endpointSum}(T)-C_\delta(T)|\) is bounded by \((64/\delta^2)e^{-(\eta-\delta)T}+(1/4)e^{-\eta T}\). For \(T\ge0\), this tends to zero as \(T\to+\infty\). This makes the original source rate-\(\eta\) problem asymptotically equivalent to the corresponding smaller dense-core signed problem at a strictly slower sparse cutoff. It does **not** provide the missing dense-core upper estimate.

## New consequence 2: only the unresolved dense core incurs sampling variance

For independent *index draws under the explicitly chosen product law* \(w\otimes w\), let
\[
Z_2(m,n)=\frac{K^C_{Q,T}(m,n)}{w_mw_n},\qquad
Z_1(m)=\frac{R^C_{Q,T}(m)}{w_m}.
\]
The second module reuses the **existing** finite law-of-total-variance theorem:
\[
\mathbb E Z_1=\mathbb E Z_2=C_Q(T),\qquad
\mathrm{Var}_w(Z_1)\le\mathrm{Var}_{w\otimes w}(Z_2).
\]
There is no assumption that \(\mu(m)\) and \(\mu(n)\) are independent.

Define the **source-defined cross estimator**
\[
\widehat X_Q(m)=Z_1(m)+G_Q(T)+R_Q(T).
\]
The new \`denseCoreCrossRowEstimator_mean\` says \(\mathbb E_w\widehat X_Q=X(T)\) EXACTLY. At \(T\ge0\), \`denseCoreCrossRowEstimator_mean_endpointError\` further says
\[
\big|\mathbb E_w\widehat X_Q-\operatorname{endpointSum}(T)\big|\le\tfrac14.
\]
This is a bound on the *mean/bias*, **not** a guarantee that every randomly sampled estimate lies within \(1/4\) of the endpoint. Its sampling variance equals \(\mathrm{Var}_w(Z_1)\) and is bounded by the two-index hard-core sampling variance. Although the deterministic gap/ratio sums are explicit finite source functions, evaluating them and all row weights may still be expensive; no runtime speedup is asserted.

The file ALSO retains the mathematically exact, but **ideal-calibrated** \(\widehat E_Q(m)=\widehat X_Q(m)+\operatorname{endpointCurvatureDefect}(T)\), whose expectation is exactly \(\operatorname{endpointSum}(T)\). The curvature defect is **defined as** \(\operatorname{endpointSum}(T)-X(T)\); it cannot be assumed cheaply available to a practical estimator merely because its absolute value is at most \(1/4\). Any computable unbiased endpoint estimator requires a separate actual method of evaluating this signed correction. The accessible cross estimator above does **not** require it.

## New consequence 3: necessary positive hard-core spikes under a hypothetical zero

The third module consumes the repository's \`MoebiusOriginalObserverZeroTransport.hypothetical_zero_forces_ideal_physical_bit_spikes\`, with all independent hypotheses explicit: a genuine hypothetical zero \(\rho\) satisfying \(1/2<\Re\rho<1\), its actual zeta-zero equation, an \(\eta>0\) with \(\eta<2\Re\rho-1\), \`OriginalLaplaceRightLineIdentityTarget\`, \`WeightedWholePickupLaplaceHolomorphyTarget\`, \`LaplaceProductIdentityTheoremTarget\`, and \`DyadicOriginalEnergyCeilingTarget\`.

It applies the existing source-preserving *ideal* two-bit identity at the actual fixed dyadic scale \(T_J=J\log2\), then subtracts the two sparse sectors with their already paid allowance \(64\eta^{-2}e^{\eta T_J}\). For any real \(K\), the resulting candidate says a dyadic \(J\ge1\) exists with
\[
C_\eta(T_J)>K e^{\eta T_J}.
\]
This is a **conditional necessary consequence** of a hypothetical off-critical zero. It does not assume such a zero exists, and it neither proves RH nor discharges any independently unported analytic premise.

## Hostile checks and finite diagnostics

Finite actual-\(\mu\) source calculations used \(\mu(n)\) from integer arithmetic and the original response Gram, evaluated with mpmath at 60–70 decimal-digit working precision, on \(T=\log N\). A separate calculation integrated the physical source waveform squared over its individual source-birth breakpoints and compared \(\operatorname{pickupEnergy}-\operatorname{pickupDiagonal}\) with the independently accumulated signed off-diagonal Gram:

| \(N\) | Physical energy | Original diagonal | Original signed cross | Difference of independently evaluated cross values |
| ---: | ---: | ---: | ---: | ---: |
| 8 | 0.346852027 | 1.828089830 | -1.481237803 | about \(1.2\times10^{-60}\) |
| 16 | 0.381715127 | 3.999822286 | -3.618107158 | about \(4.4\times10^{-60}\) |
| 24 | 0.471472917 | 5.750716453 | -5.279243536 | about \(7.5\times10^{-60}\) |

With sparse cutoff rate \(0.65\), the original signed three-sector decomposition was also numerically checked at \(N=8,16,32,48\), with absolute numerical residuals approximately \(10^{-69}\) (70 digits). At \(N=16\), the original cross was about \(-3.6181071585\), the paid additive-gap sector \(-3.32416032\), the paid ratio sector \(-0.2112061445\), and the remaining dense core \(-0.0827406942\). At \(N=32\), the core was approximately \(0.1067189192\) while its unsigned signed-row total was approximately \(3.019109687\): **a small final signed core does not imply its row-absolute total is small**.

For positive smoothing \(\varepsilon_{\mathrm{weight}}=0.01\), the actual-\(\mu\) hard-core importance estimator with source-derived weights had row variance approximately \(0.577105739\) at \(N=16\), compared with approximately \(42.6488969\) for the ordered-pair estimator. At \(N=32\), these were approximately \(9.68414779\) and \(652.195487\), respectively. These are small finite numerical diagnostics, **not** exact-rational proof, a universal statistical guarantee, an asymptotic arithmetic estimate, or kernel verification.

The S4 torus view, Hilbert bitfield comparisons, categorical fiber claims, Dirichlet-family averaged orthogonality and arbitrary waveform adapters are separate source carriers. The recently published \`MoebiusDirichletLargeModulusEnergy.lean\` (original all-character average) is compatible background but a family average does not imply a fixed principal-character/source bound, and no additional Fourier estimate is claimed.

## Verification, trust boundary and next missing theorem

Git publication and exact blob readback are source-identity evidence only. Lean \`v4.34.1\` and Mathlib \`d13f23b723b8a846827a245b89c10fc7d3f11612\` remain pinned and unchanged. The container has no Lean, Lake or Elan. No remote compiler or kernel run has been dispatched; parsing, full dependency-closure compilation, expected-type checks, fresh kernel replay and transitive axiom inspection remain **NOT_RUN**. Any authored gap scan is strictly noncertifying. Provenance: existing mathematical definitions and sparse source estimates from GRWTSK; source-bridge proof drafting and stated finite diagnostics from this increment.

The **next single substantive arithmetic obligation** is a noncircular one-sided every-positive-rate upper bound on the actual signed \(\operatorname{endpointDenseAddMulCoreCross}(Q_{\varepsilon,T},T)\) on a *fixed affinely frequent* set of original scales, retaining its original Möbius coefficients, both ordered pair orientations and full birth-gated response Gram. A bound on the unsigned total of complete signed dense rows would be sufficient but stronger; finite variance optimization, a Dirichlet-character family average, and hypothetical offcritical-zero spike consequences do not supply it. RH remains **OPEN**.
