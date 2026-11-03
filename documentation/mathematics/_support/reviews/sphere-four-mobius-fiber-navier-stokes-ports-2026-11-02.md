# Source-preserving S⁴/Möbius toroidal fibers and periodic Navier–Stokes ports

Local attribution: **grwtsk contributors**. Date: 2026-11-02.
Formalization assistance: OpenAI ChatGPT. Disposition: a source-level Lean proof candidate, an independently checked algebraic calculation, and a browser visual diagnostic. **Lean compilation, expected types, fresh kernel checking, transitive axiom audit, and physical PDE comparison: NOT_RUN.** No general regularity claim.

## Existing primary sources and exact pins

- `grwtsk/math@37ccb429b9557fe2538608c34b318a9a29ea1ca3` was the inspected baseline. Existing `GRWTSK/Geometry/SphereFourThreeTorusDrape.lean`, blob `8e876ccf876f8f652dcb7a9c7c5848acbe503d5a`, specifies S⁴ as five real coordinates satisfying a unit norm, a noninjective S⁴→T³ phase sampling map, seven indexed residue colors, and a bounded ABC velocity field. Existing `GRWTSK/NumericalAnalysis/FiniteModeDrapeEnergy.lean`, blob `0b69fc8df6b5c4e11cbd5d1c9a402eecc88f7723`, specifies rotation-plus-damping finite modes and their nonincreasing energy. Historical source review #1535 records the gap to actual PDE derivatives and arbitrary fluid trajectories.
- Upstream **separate** OpenAI source: `openai/NavierStokesAndEuler@f9e8bc5b38b6e212696e8a30e3e91517af887bbd`, `NavierStokes/ComparatorSolution.lean`, Git blob `cc232068cd384dbbddce2753b1fc4a4017c0f2d7`, declarations `NavierStokes.Comparator.navier_stokes_breakdown_R3` and `NavierStokes.Comparator.navier_stokes_breakdown_periodic`. External Lean pin `leanprover/lean4:v4.34.0-rc2` (blob `b814d987e0c93cb99938be934d9b277778495ba1`). Main GRWTSK Lean pin `v4.34.1` with Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. No direct cross-project import is asserted.
- The additional `openai/math/lean/docs/376.md` describes **different** forced Navier–Stokes computation/halting-detection formalizations on flat tori. Those statements are not the breakdown comparator and are not substituted for it.

## 1. Geometric source and dimensionally correct toroidal view

Take `S⁴={(t,w₁,w₂)∈ℝ×ℂ²:t²+|w₁|²+|w₂|²=1}`. For `|t|<1`, write `ρ=√(1−t²)` and, on the regular stratum where both complex components are nonzero,

`(t,w₁,w₂)=(t,ρ cosψ e^{iα},ρ sinψ e^{iβ})`, `0<ψ<π/2`.

This preserves four independent source dimensions `(t,ψ,α,β)` and an optional additional integer provenance label. At **fixed** `t,ψ`, the source subset is a 2-torus, not all of S⁴. At `ψ=0` or `π/2`, one circle collapses; at `|t|=1`, both collapse. Do not assert one smooth global torus chart or an S⁴≅T² equivalence.

Normalize the S³ latitude and use stereographic projection from `(0,0,0,1)` in ℝ⁴:

`σ(cosψ cosα,cosψ sinα,sinψ cosβ,sinψ sinβ)`
`=(cosψ cosα,cosψ sinα,sinψ cosβ)/(1−sinψ sinβ)`.

The denominator is positive when `0<ψ<π/2`. The resulting 3D embedded torus is a revolution torus with major radius `R=secψ` and minor radius `r=tanψ`. At `ψ=π/4`, `R=√2` and `r=1`. The visible torus depends on `ψ,α,β` but does not recover `t` unless the source record explicitly retains it. This projection is **not a 4D stereographic projection directly into ℝ³**.

## 2. Genuine Möbius transport on the two source phases

For real `a∈(-1,1)` define `Mₐ(z)=(z+a)/(1+a z)` on the complex unit circle. For `z=x+iy`, `x²+y²=1`, its real and imaginary components are

`(((1+a²)x+2a)/(1+2ax+a²), ((1−a²)y)/(1+2ax+a²))`.

The denominator satisfies `1+2ax+a²≥(1−|a|)²>0`, the transformed pair lies on the unit circle and `M_{−a}∘Mₐ=id`. This is an exact bijective **circle phase** reparameterization, not a Möbius map that globally turns S⁴ into T² or a theorem of metric isometry. The new Lean candidate specializes to `a=±1/2`: `M_{1/2}` has real form `((5x+4)/(5+4x),3y/(5+4x))`; `M_{−1/2}` has `((5x−4)/(5−4x),3y/(5−4x))`. The identity used by the algebra is

`(5x+4)²+(3y)²−(5+4x)²=9(x²+y²−1)`.

The browser supports continuously variable `a,b` in `[-0.85,0.85]`; this parameter generalization is verified numerically there, not yet proved at full Lean generality. The fixed maps applied to the first two factors of the existing `ThreeTorus` are invertible with exact third factor. A `LiftedPort` retains `source : SphereFour`, original `sourceIndex`, `stripe`, `time` and `modes` along with the transformed toroidal view; `lowerPort(liftPort(p))=p` is exact because the original source is kept, not reconstructed from a many-to-one projection.

## 3. Seven color channels, harmonic modes and the true fluid domain

The color is the exact integer class `n mod 7`. This is source indexing, not a probabilistic color field. The browser draws the class boundaries on the transformed toroidal fabric and a separately periodic 3D cube illustrating `T³=(ℝ/2πℤ)³`. This cube is a convenient fundamental domain with opposite faces identified. It is **not** embedded by the displayed T² surface.

The preexisting bounded analytic ABC example is

`u(t,X,Y,Z)=exp(−νt)(sin Z+cos Y, sin X+cos Z, sin Y+cos X)`
with `ν≥0`, `t≥0`, `∇·u=0`, `curl u=u`, `Δu=−u`, and `p=−|u|²/2`. The source review verifies the associated Navier–Stokes identity analytically, while the existing Lean module proves the pointwise energy bound `|u|²≤12`; it does not formalize the PDE derivative identity. A separate finite-mode step `z'ᵢ=q R(φᵢ(z))zᵢ`, `q=(1+νh)⁻¹`, `ν,h≥0`, preserves source ports and satisfies `Σ|z'ᵢ|²≤Σ|zᵢ|²`. These finite-dimensional inequalities do not imply no blowup for arbitrary NS fields or even convergence of a Galerkin method.

The WebGL/2D rendering and the periodic particle display are numerical visualization. Animation uses finite sampled steps and has no verified full PDE numerical refinement, incompressibility-conserving scheme, or OpenAI blowup-solution trajectory.

## 4. The separate OpenAI proof gate

The upstream comparator's periodic theorem is literally of the form:

`∀ν>0, ∃u₀ f, InitialVelocityConditionPeriodic u₀ ∧ ForceConditionPeriodic f ∧ ¬∃v p, NavierStokesExistenceAndSmoothnessPeriodic ν u₀ f v p`.

The R³ theorem has its own decay conditions and separate existence/smoothness predicate. These are *forced* finite-time breakdown results; they are existential, not a universal statement that every field blows up. To apply the upstream result to a new local S⁴-fiber carrier, one must prove a mathematically source-exact transfer of (i) spatial domain and periodic identifications, (ii) force and initial conditions, (iii) velocity and pressure regularity classes, (iv) time dependence, (v) covariant derivatives/Jacobians under any chart/gauge changes, and (vi) the exact nonexistence conclusion, preserving quantifier order. A lossless toroidal visualization does not provide these bridges.

The known obstruction is explicit: the local ABC flow is a smooth bounded example, whereas the upstream theorem is an **existence** of specially forced breakdown data. A finite-energy model cannot rule out a concentration singularity in the full infinite-dimensional PDE; nor can a forced-breakdown theorem be transferred to an unforced flow merely by reparameterizing circles.

## 5. Noe processing channels and acceptance

The source-to-view transform uses four distinct roles: `source` (immutable sphere point/index), `fiber` (regular t,ψ and toroidal circle phases), `waveform` (visual color and finite-mode observables), and `proof` (the literal imported or referenced theorem plus complete premises). The first three permit a source-preserving render. The final layer stays an external **conditional interface** unless an actual compatibility theorem is proved with matching environment pins.

Verification facets for the new `SphereFourMobiusTorusPorts.lean`: algebraic rational cross-multiplication independently checked with SymPy; browser script checked syntactically with Node; interactive browser loaded with no JavaScript exceptions, range controls exercised, sampled Möbius inverse residual at float precision below `1e−13`; **Lean compilation NOT_RUN, expected types NOT_RUN, fresh kernel NOT_RUN, transitive axiom audit NOT_RUN, true Navier–Stokes PDE bridge NOT_WRITTEN, external upstream theorem recheck NOT_RUN**. No native verifier dispatched.

Required next mathematical formalization: the full two-parameter Möbius phase diffeomorphism with chart-overlap guards; a source-to-`T³` compatibility proof at the PDE function-space level (including actual pressure/force pullback and regularity); and an isolated, independently replayed OpenAI comparator adapter with pinned v4.34.0-rc2 environment. None is supplied by a finite-mode energy argument, a colored mesh or a source-indexing equivalence.
