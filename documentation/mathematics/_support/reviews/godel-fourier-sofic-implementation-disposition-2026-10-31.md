# Implementation-to-mathematics chain: source, proof and refinement disposition

Local mathematical attribution: grwtsk contributors. 2026-10-31.

## Exact source identity and consumer

Source implementation: `sphere_torus_godel_observer.html`, archived byte-for-byte at `documentation/mathematics/_support/simulations/sphere_torus_godel_observer-2026-10-31.html`. Its original SHA-256 is `c6f3c143a273399f8c74a547b52921fc532d89a58fd3c1145e591c0a96e2e5eb`. This is the same executable delivered in the preceding simulation conversation; it has not been silently revised to fit the proofs. It is a static stand-alone browser demonstration, not a Noe process runner or validation receipt. Browser run permissions are not implied by inclusion in mathematical documentation. Local finite diagnostics for the exact archived version: 36 symmetric positive-definite band matrices across all three configured bands and representative nonnegative step/damping/coupling settings; finite complex seven-bin partition and a hostile same-residue interference fixture; desktop and mobile browser checks (1150 px and 390 px) for paused startup, 48 CSS px rail, accepted `1001`/rejected `101`, observer-root positivity with nonzero vorticity, chart invariance, and energy-preserving prime/spring controls. All local checks PASS. These tests do not inspect the hardware WebGL shader path or certify Lean.

New source candidates:

- `GRWTSK/NumericalAnalysis/GodelFourierSoficImplementationChain.lean` — finite source/observation pipeline, exact signed residue aggregation, positive band form, graph route minimum consumer, spatial radial clipping, actual Gödel tensor readout and three separate bounds.
- `GRWTSK/NumericalAnalysis/GodelFourierSoficRefinementBoundary.lean` — source-preserving variable-substep signed mechanical energy law, decorative cloth update, separate energy ledger, named browser refinement gates.
- Literary research reading: `documentation/mathematics/_support/reference/literature/reading-background/the-seven-ribbons-and-the-clock-that-cannot-circle.md`.

Existing source theorems are imported without modification: `CorkscrewSpringEnergy.Step`, `step_energy_balance`, `step_energy_le_work`; `FiniteModeDrapeEnergy.advance_energy_le`; `ResidueBandedFourierSoficPath.rotorDFT`, `residueBin`, `cutoffResidual_nonneg`, `bandDissipation_nonneg`, `optimal_route_exists`, `radialClip_bounded`, `model_language_is_sofic`; `GodelObserverMetricVorticity.spatialMetric_self_nonneg`, `spatialMetric_self_zero_iff_root`, `spatialMetric_shift`, `vorticity_shift`; `SphereFourThreeTorusDrape.abc_energy_le_twelve`.

## Actual program inventory and typed abstract arrows

The browser contains **five distinct categories** of state or readout: (a) physical two-inertia spring plus decorative cloth; (b) historical temporal rotor samples and 64-point DFT; (c) seven residue/linear-solve harmonic channels; (d) finite-state word-controlled bounded 3D display motion; and (e) observer rest-space tensor/vorticity and cross-family demonstrations. None is definitionally the other.

At screen initialization `playing=false`; physical angular speeds and position are zero, but the supplied geometric angles need not be zero. The control rail has CSS width `3em` with the browser-default `1em`. Passive object markers signal where one can drag the crank/rim/bearing; the actual actionable buttons are all in the rail and its attached panels. This is a UI fact, not an invariant of the physical ODE.

| JS operation (source spelling) | Exact mathematical object or Lean-facing type | Proven source-level fact / obligation |
| --- | --- | --- |
| `stepDynamics(h)` free branch | `CorkscrewSpringEnergy.Step p h τ old next` | Exact real work balance and variable-step signed-work inequality; equivalence of JS floating-point closed-form calculation to `Step` NOT_PROVED |
| manual `crankDragging`, `rimDragging`, wind-click and flick | externally constrained coordinates / impulsive input | full work/constraint-force and discontinuity ledger OPEN; no free-branch proof is applied to these paths |
| `modes[i] ← q R(φ_i) modes[i]` | seven real two-component `FiniteModeDrapeEnergy.advance` | contractive decorative pair update if 0≤q≤1; does not establish a Navier–Stokes Galerkin identity |
| `captureSpectrum(rotorRate)` | ordered `Fin 64 → ℂ` history, `FiniteRotorFourier` | finite DFT and signed residue reconstruction; continuous-time frequency calibration OPEN |
| `bins[k%7] += Fourier[k]` | `Fin 7 → ℂ`, `sum_residue_channels` | exact sum reconstruction BEFORE norming; intra-class complex cross terms retained |
| `solveBanded(input,h)` | banded linear action and `BandedSolve.satisfies` | exact quadratic coercivity for h,ν,κ≥0; Cholesky/float refinement OPEN |
| spectral-energy projection | `FilteredModes budget` | norm upper bound is an explicit output certificate; JS numerical projection is not kernel-verified |
| `wordEdges`, `optimizeWord` | `evenShiftResidueGraph`, `AdmissibleRoute`, all-start `optimal_route_exists` | exact graph language/finite minimum; Viterbi predecessor optimality refinement OPEN |
| `smoothDir`, `activeFourierVector`, `advanceTranslation` | selected finite route and visual forcing; projected R³ position/velocity | `radialClip_bounded` proves output of exact-real projection lies in radius; Catmull–Rom/normalization and tangent correction/error model OPEN |
| `godelLorentz`, `godelSpatial`, `godelVorticity` | published Gödel metric, observer rest tensor and antisymmetric 2-form | source-dependent nonnegativity, root and chart isometry; JS roundoff/Levi-Civita identification OPEN |
| `familyState` spring/prime controls | existing spring gear shift and prime `ZMod p` phase `flic` | independent zero-work source transports; no signed Möbius Gram cancellation is introduced |

The high-level path is typed:

`(Spring.State, input, h) → Spring.State → (Fin64 → ℂ) → (Fin33 → ℂ) → (Fin7 → ℂ) → FilteredModes → (Fin(|w|+1)→Bool×Fin7) → (Fin3→ℝ)^2 → (Godel.Parameters, Godel.Tangent) → ℝ × Λ²`.

The Gödel observer readout probe maps displayed velocity `v` into the tangent `(t=1, x=0.32*v₀, y=0.30*v₂, z=0.30*v₁)`, with chart x `0.32*position₀`. The `probeMode=root` button instead picks the normalized timelike observer itself. One should not call this map a geodesic or a source-preserving embedding of toy Euclidean space into Gödel spacetime. The chart action `F_s` acts on the observer probe in the target tensor as specified, without changing the toy's forces or spring state.

## Primary analytical arguments and genuinely distinct checks

**Variable-step work bound.** For the original implicit physical `Step` relation with nonnegative source inertias/stiffness/damping, `step_energy_le_work` supplies `E_{n+1} ≤ E_n+h_n τ_n ω_{c,n+1}`. Summing by induction and the exact `Finset.sum_range_succ` identity yields `E_n ≤ E_0 + Σ_{j<n}h_j τ_j ω_{c,j+1}`. The full signed hand work stays intact. In particular zero torque at all stages makes the bound nonincreasing. The physically distinct decorative modal rotations use their own energy contract. Neither proves the JS manual/pointer branches satisfy `Step`.

**Positive band form.** The implementation matrix has diagonal `1+h*(.12 + ν(1+(r+1)^2/16)) + hκ*degree(r)` and off-diagonal `-hκ` for `0<d₇(r,s)≤band`. For a complex vector z, its Hermitian quadratic has the form `||z||² + h Σ d_r |z_r|² + (h/2)Σ_{ordered band edges}κ|z_r-z_s|² ≥ ||z||²`. Therefore it is strictly positive for any nonzero z at exact-real arithmetic. An independent cross-check is Gershgorin: for each row, its positive diagonal exceeds the sum of absolute off-diagonal entries by at least 1. Gershgorin and sum-of-squares share the same diagonal-dominance source; they are distinct analytical presentations, not independent verification of Cholesky code.

**Complex residue accounting.** The index `k%7` partitions each retained frequency exactly once. Thus `Σ_r b_r=Σ_{k≤K}W_k`. An explicit hostile example: take two retained frequencies k=1,8 with coefficients 1 and -1. Both have residue 1, and their complex bin is 0 although their separate absolute-square energies sum to 2. So it is false that `Σ_r |b_r|²` always equals the sum of individual modal energies. The separately measured `cutoffResidual` counts omitted conjugate frequencies with their original multiplicity. The seven-bin reweighting/forcing is not a proof that any NS spatial high-high-to-low interaction vanishes.

**Sofic minimality.** The 14-state graph is finite and defined for ALL finite words; its `Bool×Fin7` successor relation is the source of the browser edge recurrence. The typed `optimal_route_exists` selects a finite optimum for any admitted word and supplied edge cost. The browser's Viterbi recurrence is an algorithm that requires a corresponding theorem. A finite graph path for one toy does not establish soficity of every physical trajectory's full factor language.

**Spatial and observer safety.** Radius clipping and preliminary speed clipping are independent exact-real 3D projections. The browser's additional boundary-normal subtraction and discrete force/tether update need their own refinement. The Gödel spatial metric is positive on the rest quotient, with exact root equation; its vorticity is a signed tensor with strictly positive spatial squared norm. The chart shift is an *isometry*, not a time step. No actual Gödel geodesic or closed timelike curve is simulated.

## Hostile cases, implementation pitfalls, and explicit nonclaims

1. Browser `tick` caps wall-frame dt at `.05`, subdivides by `ceil(dt/.0125)` and takes h=dt/n. Therefore the ring is sampled at variable h, contradicting a literal `120 Hz` sampling assertion in an earlier source comment. The DFT remains a valid vector DFT, but frequency-to-seconds conversion and temporal Fourier energy calibration are OPEN.
2. Cholesky uses `sqrt(max(1e-10,s))` and finite IEEE values; the exact-real SPD theorem alone cannot bound roundoff or guarantee `A z = rhs` exactly. The final JS harmonic budget applies a separate projection and records the difference as `filterResidual`; that quantity is not the complete physical off-band Navier–Stokes remainder.
3. If a user flicks the rim or drags the crank, the physical work of the imposed boundary condition is not in the free-step torque work `hτ ω_c'`. The complete physical energy need not decrease after that input.
4. Changing word cost while the harmonic state evolves makes the already selected Viterbi path a time-snapshot optimum, not an everywhere-in-time optimum of a coupled control problem.
5. The Catmull–Rom unit-direction normalization includes a fallback at small vector length and can have unproved geometric regularity at the fallback. No uniform curvature or globally differentiable motion theorem is claimed.
6. A nontrivial congruence class may contain both positive and negative complex contributions. Throwing away signs makes the residual ledger inaccurate.
7. A CTC is not created by a 3D toy trail. A torsion-free connection may coexist with nonzero vorticity; the observer's spatial root does not imply zero vorticity.
8. The separate prime-phase `flic` preserves auxiliary finite torsion cost and source integer indexing. It does not make Dirichlet nonunit classes vanish from the original Möbius causal Gram, nor return an RH bound.
9. No source file in this increment proves unrestricted NS regularity, Gödel spacetime dynamics of the toy, or Riemann Hypothesis. The finite all-start graph does not establish a sofic language for arbitrary PDE or arithmetic traces.

## Verification scope

- Static reference HTML: SHA-256 `c6f3c143a273399f8c74a547b52921fc532d89a58fd3c1145e591c0a96e2e5`. Source exactly archived. Browser and local finite test evidence is scoped to its inputs and runtime; no test is a formal JS/Lean refinement proof.
- Root Lean toolchain at source inspection: `leanprover/lean4:v4.34.1`; Mathlib pin `d13f23b723b8a846827a245b89c10fc7d3f11612`. No toolchain/pin change or root import promotion.
- Source publication/readback **distinct** from proof acceptance. All new Lean source proof bodies: `SOURCE_PROOF_CANDIDATE`, parsing/elaboration `NOT_RUN`, Lake compile `NOT_RUN`, fresh kernel check `NOT_RUN`, transitive axiom audit `NOT_RUN`. Complete JS/WebGL numeric refinement and uniform sampling bridge `NOT_PROVED`. Independent peer review and novelty assessment `NOT_DONE`.
- Permitted next work: run actual pinned Lean checks in separately authorized source-bound infrastructure; fix genuine errors without weakening mathematical statements; prove SPD matrix/Cholesky refinement, actual boundary tangential speed bound, Viterbi algorithm correctness, and the continuous-time sampling interpretation with explicit hypotheses. Do not claim background runner or scheduling authority from this review.

## Literature and attribution

Kurt Gödel, *An Example of a New Type of Cosmological Solutions of Einstein's Field Equations of Gravitation*, *Reviews of Modern Physics* 21 (1949), 447–450, DOI https://doi.org/10.1103/RevModPhys.21.447. Kurt Gödel, *A remark about the relationship between relativity theory and idealistic philosophy*, in *Albert Einstein: Philosopher–Scientist* (1949), 555–562, republished *Collected Works* II, 202–207, DOI https://doi.org/10.1093/oso/9780195147216.003.0015. These works are the historical geometric and philosophical comparators, not authors of the browser algorithm. Local formalization and exposition attribution: grwtsk contributors. All imported source credits and licenses remain unchanged.
