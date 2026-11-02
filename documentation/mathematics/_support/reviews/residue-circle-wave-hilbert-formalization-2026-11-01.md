# Residue-circle Hodge/wave Hilbert formalization — source and acceptance ledger

**Classification:** SOURCE_PROOF_CANDIDATE; native Lean/Lake compilation NOT_RUN; fresh kernel replay NOT_RUN; expected-type audit NOT_RUN; transitive axiom/unsafe audit NOT_RUN. This document is a mathematical source review, not an execution receipt.

## Source anchors reviewed

- `grwtsk/math` main, observed 2026-11-01 at `574fc11f42c5d0f38c2f520b432fa4d14bbf03be`; active concurrent main requires new head confirmation for publication and every later replay. Toolchain `leanprover/lean4:v4.34.1`; the relevant pinned Mathlib API was inspected at `d13f23b723b8a846827a245b89c10fc7d3f11612`, which must be rechecked against the actual manifest in a pinned acceptance run.
- `openai/math` main `4eaee87548250b2682affda7d05d947c05554bae`; local smoothing implementation `lean/OAI/Analysis/Fourier/LocalSmoothing/Comparator.lean` blob `6def181857b8148d9dbaed288876a225ca9ddbfb`; the **implementation**, not the challenge stub, delegates the theorem to `OAI.Analysis.Fourier.LocalSmoothing.euclidean_local_smoothing`.
- `openai/math` comparator Hodge solution `lean/ComparatorChallenges/HodgeConjectureCMAbelianVarieties/Solution.lean` blob `e9855a415328438d063f5f3f132473bf919595e3`; theorem has precisely the `Hdg^p(X; ℚ) ≤ algebraicCycleClassSpan X p` conclusion under smooth, integral, projective, group-object and geometric CM hypotheses.
- Existing `grwtsk/math` adapter modules: `GRWTSK/FunctionalAnalysis/LocalSmoothing.lean`, `GRWTSK/Geometry/HodgeConjectureCMAbelianVarieties.lean`, `GRWTSK/NumberTheory/FareyResidueChannelDecomposition.lean`, `GRWTSK/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicResidueHodge.lean`, `GRWTSK/HarmonicAnalysisOnEuclideanSpaces/ResidueGradedConvolution.lean`, and `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DyadicSignedResidueWaveform.lean`.
- Mathlib: `Mathlib/Analysis/InnerProductSpace/l2Space.lean`, `Mathlib/Analysis/InnerProductSpace/Projection/Basic.lean`, and `Mathlib/Analysis/Normed/Lp/lpSpace.lean`; important APIs include `lp.memℓp`, `Memℓp.const_mul`, `Memℓp.mono'`, `Memℓp.summable`, `Submodule.starProjection_add_starProjection_orthogonal`, and `norm_sq_eq_add_norm_sq_starProjection`.

## Three additive leaves

1. `GRWTSK/NumberTheory/ResidueCircleHodgePort.lean` — finite circle address, exact gcd/residue reconstruction, rational cochain extension, positive cyclic edge energy, unit/nonunit mixed term, and source energy preservation under a square-preserving real port.
2. `GRWTSK/HarmonicAnalysisOnEuclideanSpaces/ResidueCircleWaveHilbert.lean` — genuine `lp _ 2` over dependent `(scale, ZMod (q scale))`, rational-independent closed complex algebraic span, orthogonal residual, full gcd class recovery, counting/edge energy splitting for a COMMON fixed Hilbert projector, and bounded wave leakage. **Existing attached source is retained**; new source below does not silently revise its theorem hypotheses.
3. `GRWTSK/HarmonicAnalysisOnEuclideanSpaces/ResidueCircleWaveHilbertFormalization.lean` — new source-typed rational cycle-class and realization port, conditional source Hodge coverage, exact zero Hilbert residual of realized Hodge classes, explicit algebraic wave leakage norm, an actual all-scale `lp`-valued diagonal multiplier defined only after a zero-order norm bound, a theorem establishing dyadic weighted summability for **every** integer order from weighted multiplier bounds, and a constructive finite-band multiplier with an **exact retained omitted tail**.

## What the mathematics proves conditionally

Let `I = Σ j : ℕ, ZMod (q j)` and `H = ℓ²(I, ℂ)`. For any source-identified cycle map `cl : Cycle ->ₗ[ℚ] V` and rational-linear `realize : V ->ₗ[ℚ] H`, define `A = closure(span_ℂ(range(realize ∘ cl)))`. The complete output is `x = P_A x + P_(A^⊥) x` and `‖x‖² = ‖P_A x‖² + ‖P_(A^⊥) x‖²`. If the selected Hodge submodule is in the actual range of `cl`, its realized vectors lie in `A`, so their residual projection is zero. That premise is not constructed from the external theorem without a concrete realization adapter.

An all-order diagonal multiplier `M(i)` supplies, for **each** `m∈ℕ`, a nonnegative constant `C_m` with `2^(m*j(i))‖M(i)‖ ≤ C_m`. For all original `x∈H`, the coordinatewise output `Mx` lies in `H` and satisfies `Σ_i 2^(2*m*j(i)) ‖M(i)x(i)‖² < ∞` for **every** `m`. This follows from `Memℓp.mono'` and the genuine ℓ² membership of `x`, not from inserting a pre-proved smoothness field into the output. The **finite-band** multiplier `M_N(i)=1_{j(i)≤N}` is explicitly constructed with `C_m=2^(mN)`. Its output plus `x-M_Nx` returns **exactly x**. It need not preserve the original energy by itself, and its high-scale omitted tail is not zero in general.

For a wave `W_j` acting on the chosen Hilbert space, `P_(A^⊥) W_j P_A` measures literal algebraic-to-residual leakage and is bounded by `‖W_j‖‖P_A x‖` on each input. Commutation of `W_j` and `P_A` (not supplied by a residue label) is required for zero leakage. The unit/nonunit arithmetic mask is different from this algebraic projector and need not commute with the cyclic difference.

## Open substantive obligations

- Supply *actual* `X,p,Hdg^p(X;ℚ), CH^p(X)_ℚ`, the native cycle-class map with rational linear-combination semantics, and a continuous coefficient/realization map into a chosen Hilbert fiber or completed Hilbert sum. Prove map compatibility (degree, projectors, pairings, supports, coefficients) before using the OpenAI CM-Hodge theorem to instantiate `CyclesSpanHodge`.
- Prove Euclidean-to-circle and finite-to-complete wave transport at the exact Fourier normalization, Schwartz domain, time windows, Sobolev exponent and scale-loss constants. OpenAI local smoothing is on `ℝ^n × [1,2]` for `n≥2`; it is **not** a theorem asserting C∞ smoothing on the residue circle.
- For genuine geometric smoothness, prove the elliptic/derivative characterization of the dyadic weighted `DyadicAllOrders` predicate. Our finite-band cutoff is spectrally finite in **scale**, not automatically a C∞ function of the physical variable.
- For nontrivial Hilbert bundles, supply unitary seam maps, cocycles and a common compatible projection family. Track `[P,W]`, `[P_r,T_r]` and `[Q_d,D]` defects; the last generally fails to vanish.
- The actual RH-facing signed Möbius `pickupResponse` still contains birth events and all ordered mixed terms; an all-scale Hilbert wave port requires a **source-exact** comparison to the original real integral energy. No one-sided all-positive-rate arithmetic estimate or RH proof follows from these generic Hilbert facts.

## Acceptance sequence

Reconcile imports against immutable main, compile all three direct modules with `lake build --wfail` and trust-zero Lean, verify all exact theorem types and transitive dependencies, perform fresh `leanchecker` replay, and audit all axioms, opaque/unsafe/native helper dependencies. Only afterward promote a scope-correct theorem or extend root imports. This source review contains no runtime success claims and authorizes no remote execution.
