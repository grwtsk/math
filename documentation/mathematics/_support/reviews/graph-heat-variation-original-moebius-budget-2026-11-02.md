# Repository-wide source-preserving transport optimization: graph variation, signed Gram budget, and original Möbius return

Research date: 2026-11-02. Mathematical source: `grwtsk/math` at inspected `main` revision `2e1de65075856e29723fd308d92ae16fc562e758`; later publication has separate guarded source revision and readback. Research direction: grwtsk contributors. Source proof formalization, finite regression and comparative analysis assistance: OpenAI ChatGPT. External input owners retain their original data authorship and licenses.

**Trust classification:** Ordinary finite-dimensional mathematical proofs below; **three uncompiled Lean source proof-script candidates**; exact rational finite tests; source-bound empirical source comparisons. Git publication is not Lean theorem acceptance. Native Lean compile, precise type/universe checks, fresh trust=0 kernel and transitive axiom audit remain **NOT_RUN**.

## 1. Repository scope: central interfaces reused rather than replaced

The repository has hundreds of graph-theory and at least 1,000 measure/integration directory entries; it is neither safe nor mathematically meaningful to relabel all of them optimized from a handful of cross-cutting tests. This targeted optimization adds only reusable theorems and an RH-facing source adapter. Original definitions, source support, data, channel colors, Gödel metric, graph-sandwich relations and project toolchain are unchanged.

Inspected immutable dependencies:

| Maintained source | Blob | Reused mathematical contract |
|---|---|---|
| `GRWTSK/Combinatorics/GraphTheory/RootHeatState.lean` | `b58e2e0e16b134f110015059b0d3d5dd7d2aca47` | Rational nonnegative **column**-stochastic `HeatKernel`, mass-preserving `step` |
| `GRWTSK/Combinatorics/GraphTheory/WeightedSieveTypeDiffusion.lean` | `bfbd22cbff61a49461d7f32ca438996b39a0560a` | Finite positive-column mass normalization; not automatically row balanced |
| `GRWTSK/MeasureAndIntegration/ColoredDiffusiveGodelReconstruction.lean` | `d1d05d63a40633effdb2eeb3a1c081daf21ad6e8` | `realStep`, red/blue, complete `realLocalResidual`, optional `SharpSelfLoopLeakage` Prop |
| `GRWTSK/MeasureAndIntegration/ColoredSixPortPolarityBridge.lean` | `0d0e94f92be9d6925e55ce1dbe4649d0ee523105` | Six **provenance** labels × two **independent** numerical error polarities, exact return |
| `GRWTSK/MeasureAndIntegration/CERNWaveformSignedGram.lean` | `a2a1cf3bf6cd04677bc3072c70394e2203091e38` | Unchanged ordered off-diagonal Gram, signed defect, both mixed orientations and error-error packet |
| `GRWTSK/FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ObservationSandwich.lean` | `bb6edd0a7079788c1fe47e5fb4fba5eea861b0b6` | Actual pointwise uncertainty controls graph lower/middle/upper; guard retained |
| `GRWTSK/DifferentialGeometry/GodelObserverMetricVorticity.lean` | `f5d8a65fd1e4e59e97e139b3fc63829028c3c662` | Supplied Gödel tangent, actual Lorentz/spatial/vorticity tensors |
| `GRWTSK/DifferentialGeometry/GodelObserverRootTransport.lean` | `5460b8845cdd1d4c713ebec250eeef0951437569` | Existing exact chart-isometry, not data-derived physical observer |
| `GRWTSK/MeasureAndIntegration/UniversalWaveformInput.lean` | `639bd1f0954197c8b53510c38c8f54f61e29cd90` | Unrestricted `Time → Amplitude` input; exact decoder/source defect |
| `GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MertensPrimitive.lean` | `45e06c371d67bcf8c939d20a95fcbc63570546fa` | Actual `moebiusReal`, `pickupResponseGram` and `pickupCross(T)` |
| `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusUniversalWaveformReturn.lean` | `8f807513c6a5cbf264750717327ed319f926ed44` | Original cutoff `Finset.Icc 1 ⌊exp T⌋₊`, source-preserving coefficient input |

Toolchain: `leanprover/lean4:v4.34.1`, pinned Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`, original `lean-toolchain` blob `ba8ebf2dbaf6a668cd2a0e086186d6d569b69ff5` and unchanged `lake-manifest.json` blob `c8044c56be77c58e6f41cca024b25237c59e8c79`.

## 2. New theorem: actual heat variation plus source-column imbalance

Let `K(target,source)≥0` and `Σ_target K(target,source)=1` for each **source** (the actual `HeatKernel` contract). For any original signed waveform `d : V → ℝ`, set `z(v)=Σ_u K(v,u)d(u)`, `ρ(v)=d(v)−z(v)` and `row(v)=Σ_u K(v,u)`. **No source coefficient is normalized, truncated, or replaced**. The exact identity is

\[
 \boxed{\rho(v)=\sum_u K(v,u)(d(v)-d(u))+(1-\operatorname{row}(v))d(v).}
\]

Taking absolute values gives the **finite universal quantitative improvement**:

\[
\boxed{\|\rho\|_1\le \sum_{v,u}K(v,u)|d(v)-d(u)|+\sum_v|1-\operatorname{row}(v)|\,|d(v)|.}
\]

The first term pays actual transport variation across original graph edges. The second is **necessary** for a merely column-stochastic graph. The additional `RowStochastic` hypothesis (or symmetry of the original column-stochastic kernel) kills it. Likewise, nonnegative column-stochastic transport is an ℓ¹ contraction for all signed sources: `||Kd||₁≤||d||₁`.

**Sharp counterexample to a commonly false generalization:** `K=[[1,1],[0,0]]` is column-stochastic, `d=(1,1)` is constant, yet `d−Kd=(-1,1)`, norm 2, while total graph variation is 0. The omitted row-imbalance term is exactly 2. Thus a representation theorem requiring only mass conservation cannot infer source constancy or low local error.

The first new additive Lean candidate is `GRWTSK/MeasureAndIntegration/GraphHeatVariationBudget.lean`. It supplies pointwise algebra, pointwise and whole-source budgets, symmetric-to-row-balance return, and signed real ℓ¹ contraction. No new arithmetic or geometric assumptions are invented.

An independently tested further finite identity, **not yet an accepted Lean theorem**, holds under doubly stochastic K:
\[
 \sum_v d(v)(d(v)-Kd(v))=\frac12\sum_{v,u}K(v,u)(d(v)-d(u))^2\ge0.
\]
It expresses genuine graph Dirichlet dissipation for a signed source; the operator's existence does not give RH cancellation for the arithmetic kernel.

## 3. New theorem: source-aware sparse ordered signed-Gram budget

For ANY finite original support `S`, original source `x`, observed source `y`, signed *possibly nonsymmetric* kernel `B(i,j)`, and complete retained `e=x−y`, write

\[
 X_B(x)=\sum_{i\ne j\in S} x_i x_j B_{ij}.
\]

The existing source theorem yields the complete identity
\[
 X_B(x)-X_B(y)=\sum_{i\ne j\in S} B_{ij}(e_i y_j+y_i e_j+e_i e_j).
\]

Applying only the triangle inequality **after** this equality gives the computable sparse edge budget
\[
\boxed{|X_B(x)-X_B(y)|\le\sum_{i\ne j\in S}|B_{ij}|\bigl(|e_i||y_j|+|y_i||e_j|+|e_i||e_j|\bigr).}
\]

No spectral norm has to be guessed. Real source indices, original support guards, both ordered orientations, nonsymmetric signed kernel values and the *full* residual remain visible. The upper source bound is `X_B(x) ≤ X_B(y)+budget`; if B is sparse, only its real nonzero edges contribute. The Lean candidate `GraphSignedGramEdgeBudget.lean` delegates the full exact mixed equality to the existing `CERNWaveformSignedGram` theorem and proves the new absolute bound by finite triangle inequalities. The inequality is true even for completely non-positive-indefinite kernels.

## 4. New original-Möbius specialization: a noncircular comparison, NOT an RH proof

`MoebiusPickupGraphBudget.lean` has the exact source 

\[
 S_T=\{1,\ldots,\lfloor e^T\rfloor\},\quad x_n=\mu(n),\quad B_T(m,n)=\operatorname{pickupResponseGram}(T,m,n).
\]

It directly identifies `orderedCross S_T x B_T` with **the ORIGINAL** `pickupCross T`, and supplies this unconditional finite upper comparison for every real observed coefficient sequence `y : ℕ → ℝ`:

\[
\boxed{\operatorname{pickupCross}(T)\le X_{B_T}(y)+\sum_{m\ne n\in S_T}|B_T(m,n)|\bigl(|e_m||y_n|+|y_m||e_n|+|e_m||e_n|\bigr),\quad e_n=\mu(n)-y_n.}
\]

It also retains the **exact signed** source return, not merely an upper bound. The source cannot be swapped for CERN mass, ATLAS spin coefficients, LIGO strain or a Gödel observer. The original analytic kernel is unchanged, and **neither the observed packet nor the budget is proved to have subexponential growth on fixed dyadic scales**. These are precisely the remaining noncircular, all-positive-rate RH-facing estimates.

## 5. All real input types: scoped quantitative tests

### Independent source-agnostic exact rational regression

`graph_transport_reference.py` and its JSON evidence use Python `Fraction` and no external dataset. **4,620** independent finite kernels in three classes (column stochastic, symmetric doubly stochastic, absorbing sink), 1–7 states, 18,480 pointwise source returns, 73,920 explicitly ordered signed-Gram terms, 27,720 original-guard graph sandwich edges, and 1,540 exact nonnegative Dirichlet work identities **PASS**. Tests retain full source data, red/blue masses and the original signed kernel at every step. Finite regression is not Lean theorem acceptance.

### Source-bound ATLAS coefficients (measured aggregates, not raw events)

The attached 2026 ATLAS Figure 5 CSV contains **12 published central-value coefficients**, grouped into 4 separate Run/coefficient blocks of 3 decay channels. Its 10 reported aggregate combinations are **not** additional independent samples. Under exactly the illustrative K=¾ I+¼ cyclic predecessor transport used previously, the new variation bound has **equality** within each of the four original three-item blocks:

| ATLAS source block | Exact local residual ℓ¹ = exact graph variation |
|---|---:|
| First coefficient, Run 2 | 263/200 = 1.315 |
| First coefficient, Run 3 | 353/200 = 1.765 |
| Second coefficient, Run 2 | 9/10 = 0.9 |
| Second coefficient, Run 3 | 29/200 = 0.145 |
| **Four blocks** | **4.125** |

These are unitless published coefficients and a synthetic diffusion; the equality is a finite algebraic result, not an ATLAS entanglement significance computation. The original total residual bound `4.760` from the generic escaped-mass test is weaker. The full signed Gram return is checked on all four blocks.

### LIGO published GW150914 strain, and separately its compressed preview

The source-bound previous LIGO analysis covers two filtered 3,441-sample GW150914 figure traces at 16,384 Hz, H1/L1, using the **reflecting time-path** K (not a physical instrument heat kernel). Its original residual R has 

| H1/L1 | Prior generic escaped-mass budget | New graph-variation budget from original full-source study | Actual local defect |
|---|---:|---:|---:|
| H1, plotted 10⁻²¹ strain units | 448.64 | 16.218288 | 0.863703 |
| L1, same units | 439.86 | 13.617009 | 0.704772 |

These full-resolution figures are **historical exact source-derived evidence from the previous turn**; the original six remote files were not downloaded or reexecuted inside this local container this turn. An additional independent test does execute on the attached **48-bin nonnegative RMS PREVIEW** only. That preview is not the original signed full waveform: 

- H1 48-bin RMS: exact rational residual ℓ¹ `2137263/2000000`, variation budget `2645637/2000000`.
- L1 48-bin RMS: exact rational residual ℓ¹ `2027377/2000000`, variation budget `2496599/2000000`.

Both checks PASS with the complete signed-Gram identity on the preview. No false claim that the preview supplies detector-time full-resolution acceptance.

### CERN four-muon 2012 data

The existing source-bound CERN interface and manifest retain all 95 original 41-field events in a pinned source snapshot. The mass channel is event-ordinal, NOT physical time, so **an event-order diffusion would be artificial and have no geometric interpretation**. Its previously published exact decimal quantization diagnostics remain useful for ensuring that residual and unit-bearing error budgets are preserved. The raw CERN CSV was **not** re-downloaded or replayed in this turn. The generic graph theorems are applicable to a supplied finite CERN graph; none is claimed to have been inferred from the event order.

### Six-color ports / Gödel observer / physical type boundary

Six-color source provenance is independent of red/blue polarity. The new finite estimates operate on the actual signed red-minus-blue signal and preserve each channel's original source indices; they do not reclassify physics samples as arithmetic primes. The Gödel metric/vorticity isometry remains valid only for a **separately supplied tangent field and physical chart**; no data establishes such a map from collider coefficients or gravitational-wave strain. A color-diffused mass conservation identity cannot recover an unknown observer.

## 6. Original Möbius response-kernel finite diagnostic (new independent source check)

A further finite diagnostic consumes the **actual** original `moebiusReal`, original `pickupResponseGram(T,m,n)`, both ordered orientations, and the original closed cutoff at dyadic `T=j log 2`, `N=2^j`, for `j=0,…,6` only. It computes the source kernel's causal integral analytically (with 65-digit `mpmath` evaluation), without changing its source:

\[
B_T(m,n)=4\left[\frac{\log(N/\max(m,n))}{\sqrt{mn}}
-2\left(\frac1{\sqrt m}+\frac1{\sqrt n}\right)
\left(\frac1{\sqrt{\max(m,n)}}-\frac1{\sqrt N}\right)
+\frac1{\max(m,n)}-\frac1N\right].
\]

A clearly selected **illustrative**, symmetric reflecting time/index heat on the original finite natural-number support produces an observed coefficient vector. The exact algebraic mixed source return and its absolute edge budget are checked at each `j`, with μ zero values retained. This graph is not an arithmetic sieve or physical metric.

| j / N | Original signed `pickupCross` | Smoothed signed packet | Complete signed residual | Nonnegative edge budget |
|---|---:|---:|---:|---:|
| 2 / 4 | −0.290873 | −0.076055 | −0.214818 | 0.235547 |
| 3 / 8 | −1.481238 | −0.400437 | −1.080801 | 2.044822 |
| 4 / 16 | −3.618107 | −0.864965 | −2.753142 | 9.378072 |
| 5 / 32 | −6.641582 | −1.343252 | −5.298330 | 30.230761 |
| 6 / 64 | −10.548201 | −1.824262 | −8.723940 | 78.146148 |

**Important mathematical warning:** The ratio of absolute edge-budget to actual signed defect **increases** from about 1.10 to 8.96 over these finite scales. The absolute allowance therefore destroys substantial cancellation already apparent in the actual source. It is valid but cannot be mistaken for an efficient all-scale RH estimate. A genuinely stronger route must control the **signed** original kernel's mixed terms or prove a sharp all-positive-rate joint packet estimate; a geometric/colored presentation alone cannot accomplish that. This finite trend is not an asymptotic lower or upper theorem. The exact high-precision source-linked script and JSON are local companion artifacts: `moebius_actual_kernel_budget_reference.py` and `.json` (no Native Lean replay).

## 7. Acceptance and next theorem

**Publication aim:** Add exactly three additive Lean source modules plus source review and finite regression scripts/JSON, with guarded non-force Git main commit and immutable blob readback. Do not modify any original scientific data or source definitions.

Native Lean/Lake/elan not available in this container. The new Lean `by` scripts are uncompiled **source proof candidates** and may require API/elaboration fixes. Compilation, exact expected types/universes, fresh trust=0 kernel and complete transitive axiom audit **NOT_RUN**. No Noe managed replay/queue job was dispatched; the approved owner/resource boundary is untouched.

**Next genuinely quantitative arithmetic supplier:** Find a uniform upper bound on the **observed original Möbius packet PLUS the complete kernel-weighted edge budget** on one fixed affine-frequent set, at **every positive rate**, or derive a different source-return theorem that controls the original `pickupCross`. Neither finite CERN, ATLAS, LIGO nor the current graph-variation bounds supplies that missing statement. `riemannHypothesis_of_endpoint_good_scales` remains conditional on the original all-positive-rate arithmetic estimate. The canonical RH has not been proved.
