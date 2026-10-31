# Passive corkscrew spring and drape: mathematical correspondence

Local attribution: grwtsk contributors. Date: 2026-10-31.

## Source scope and what changed

This contribution extends the seven-colored sphere–torus visualizer and its original source in
`GRWTSK/Geometry/SphereFourThreeTorusDrape.lean`,
`GRWTSK/NumericalAnalysis/FiniteModeDrapeEnergy.lean`, and
`GRWTSK/NumericalAnalysis/CorkscrewDrapeDrive.lean`.
The former `CorkscrewDrapeDrive` models a first-order angular-speed relaxation and an exact rigid gear ratio. The **new** source allows genuine elastic lag across a torsion spring, with two independent rotating inertias. It does **not** reuse the old rigid-gear equality during a spring transient. Each phase and geometric color class remains defined by the existing S^4-to-T^3 projection, the ABC source field, and stripe index modulo seven; a change to the mechanical driving law does not change their arithmetic residue definitions.

The delivered offline HTML is `sphere_torus_spring_interactive.html`. It defaults to no motion and no camera orbit. Visible object-anchored indicators identify (1) the graspable red crank, (2) the flickable canopy rim, and (3) the brake at the central bearing. Mouse, touch/pointer and keyboard action are explicit. The fixed right rail remains exactly `3em` at the browser default font size, while nonessential hints and energy readout are overlays in the simulation area.

## Exact mathematical spring model

Let `a` be the unwrapped crank angle, `b` the unwrapped rotor angle, and `u=a-g b` the torsion. Here `g` is the inverse of the 1.7:1 nominal gear ratio; retaining two angles is necessary because elastic deformation is **not** instantaneous rigid gearing. Let crank inertia `Ic>0`, rotor inertia `Ir>0`, stiffness `k>=0`, friction coefficients `cc,cr>=0` (the brake increases `cr`), external hand torque `T`, and step width `h>=0`.

The mechanical energy is

`E = 1/2*(Ic*wc^2+Ir*wr^2+k*u^2)`.

For each fully implicit step, with new values primed, the equations are

```
Ic*(wc'-wc) + h*cc*wc' + h*k*u'      = h*T
Ir*(wr'-wr) + h*cr*wr' - h*k*g*u'  = 0
a' = a+h*wc',    b' = b+h*wr',   u'=a'-g*b'
```

This is **not** a claim that arbitrary 3D Navier–Stokes solutions obey the mechanical equations. It is a finite, passive mechanical surrogate supplying deliberate phase motion to the already bounded finite cloth representation.

The exact closed-form solver, also present as `implicitSpringStep` in the Lean source and used by the HTML, is

```
A = Ic+h*cc;     B = Ir+h*cr
Pc = Ic*wc+h*T; Pr=Ir*wr
u' = (u+h*(Pc/A-g*Pr/B)) / (1+h^2*k*(1/A+g^2/B))
wc' = (Pc-h*k*u')/A
wr' = (Pr+h*k*g*u')/B
```

With positive inertias and nonnegative `h,k,cc,cr`, `A>0`, `B>0`, and the final denominator `D>=1>0`. Thus the specified real-number solver has no singular denominator. The missing Lean bridge `Step p h T old (implicitSpringStep p h T old)` remains separately identified; the closed formula and its algebraic derivation are explicit, but publication alone is not kernel acceptance.

## Exact discrete energy identity

Multiply the crank momentum equation by `wc'`, rotor equation by `wr'`, and the twist difference `u'-u=h*(wc'-g*wr')` by `k*u'`. Using

`2*x*(x-y)=x^2-y^2+(x-y)^2`,

we obtain without dropping either inertia or spring correction:

```
E' - E
+ [Ic*(wc'-wc)^2+Ir*(wr'-wr)^2+k*(u'-u)^2]/2
+ h*(cc*(wc')^2+cr*(wr')^2)
= h*T*wc'.
```

Consequently `E' <= E + h*T*wc'`, and after release (`T=0`) `E' <= E` for **each** fully implicit step. Induction gives `E_n <= E_0` at every unforced finite frame; for arbitrary externally driven traces, retain the signed work sum `Σ h*T_j*wc_(j+1)` rather than claiming unconditional decrease. Nonnegativity of `E` also bounds each angular speed in terms of its positive inertia. These conclusions are the intended `step_energy_balance`, `step_energy_le_work`, `free_trace_energy_le`, and `driven_trace_energy_le` proof candidates.

Independently, existing `FiniteModeDrapeEnergy.advance` applies `q*R(phi_i)` to each two-component drape mode with `0<=q<=1`. Its energy is never increased by arbitrary crank-derived phase feedback. This is a separate modal invariant: physical hand work into the *mechanical* spring does not silently become drape amplitude. The combined bound is `coupled_cloth_energy_le`.

## Interaction boundary and hostile checks

1. **Manual winding and flicking** are kinematic position constraints. They can inject energy; the free-step inequality must not be misapplied during pointer dragging. The HTML bounds interactive angular jumps and velocities, and then integrates the passive spring after release. A separate precise model of hand constraint work, including possible impulse work, remains open.
2. **Rail and arrow-key winding** apply a bounded external torque, with the signed work term retained. Holding the brake increases nonnegative rotor damping and the modeled rate decreases. Neither brake nor torque implies an arbitrary speed jump in the passive step.
3. At `T=0`, damped free motion dissipates energy. At `h=0`, the source equations reduce to zero angular change. At `k=0`, the inertias decouple; the spring stores no energy. At zero friction, backward Euler still introduces nonnegative *numerical* dissipation, so exact physical energy conservation is **not** claimed for the discretization.
4. The `1.7` gear factor defines spring geometry, not equality of crank and rotor angular increments; elastic lag is essential. The five-turn visible corkscrew remains a geometric helix, not five independent physical springs.
5. The sampled analytic ABC/Beltrami field and `S^4 -> T^3` map have their own source bounds. Neither a mechanical energy bound nor a torus projection proves global regularity for all 3D incompressible Navier–Stokes fields.
6. Finite precision is not real arithmetic: float overflow/fault handling, canvas pointer hit detection and WebGL vertex shaders require independent implementation/refinement audit. The browser rendering is a visualization of the source model, not a proof by screenshot.

## Local reproducible numerical and UI diagnostics

On a local Chromium 2D fallback context, with viewport 1024×760, scripted checks of the delivered HTML showed:

- Initial: `playing=false`, `orbit=false`, zero mechanical and spring energies, unchanged rotor/crank angles over a 480 ms idle observation.
- After 800 ms winding-button hold: physical energy ~`0.877`, crank speed ~`0.867`, rotor speed ~`1.320`, numerical `energyViolations=0`.
- After 1.25 s additional unforced release: energy ~`0.382`, rotor speed ~`0.919`, no `energyViolations`; finite cloth energy stayed below initial.
- Dragged crank marker: positive physical energy and continued motion after release. Rim marker click imparted rotor velocity. Bearing/rail brake reduced rotor speed to ~`0.095` in the tested trace. Pause froze state, reset returned to zero mechanical energy and paused mode.
- Three visible markers remained inside the scene viewport. The right rail measured 48px (3em with 16px default font). JavaScript syntax checked via `node --check` with no errors; the browser recorded zero script exceptions.

An independent seeded numerical test across 10,000 random nonnegative-parameter and state cases confirmed the exact implicit energy balance to relative residual at most `6.86e-16`; no residual exceeded `1e-9` relative tolerance. This is **finite floating-point evidence**, not an all-state formal acceptance certificate.

The local environment did not provide a functional WebGL context, so shader validation was **NOT_RUN**; the actual successful browser checks exercised the deliberate 2D fallback. In particular, no claim of completed GPU/WebGL correctness is made.

## Repository identities and acceptance status

Current toolchain observed on main: `leanprover/lean4:v4.34.1`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. New subject source: `GRWTSK/NumericalAnalysis/CorkscrewSpringEnergy.lean` with the related abstract `Step`, exact `implicitSpringStep`, solver denominator theorem, work-balance and finite-trace energy candidates. Root imports and version pins are unchanged. Prior sources are left intact.

At source publication: **Lean compilation NOT_RUN**, **fresh kernel replay NOT_RUN**, **transitive axiom audit NOT_RUN**, **source-to-browser refinement NOT_RUN**, **GPU execution NOT_RUN**. Proving and compiling the explicit solver-to-`Step` bridge remains a named priority. There is no imported or claimed general Navier–Stokes regularity result, no hidden premise discharge, no novelty claim, and no authorized remote execution dispatch.

Verification commands in an isolated checkout of the exact published commit:

```sh
lake build GRWTSK.NumericalAnalysis.CorkscrewSpringEnergy
printf 'import GRWTSK.NumericalAnalysis.CorkscrewSpringEnergy\n#print axioms GRWTSK.NumericalAnalysis.CorkscrewSpringEnergy.step_energy_balance\n#print axioms GRWTSK.NumericalAnalysis.CorkscrewSpringEnergy.free_trace_energy_le\n#print axioms GRWTSK.NumericalAnalysis.CorkscrewSpringEnergy.coupled_cloth_energy_le\n' > /tmp/corkscrew_spring_axioms.lean
lake env lean /tmp/corkscrew_spring_axioms.lean
```

Do not infer formal acceptance from source publication or numerical tests. Preserve failed or unresolved facets at the exact source commit and dependency hashes.
