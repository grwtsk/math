# Driven corkscrew and bounded torus drape — source-bound review

Local attribution: grwtsk contributors. 2026-10-31.

## Baseline and exact preservation

This increment extends the four-sphere to three-torus ABC drape published at
`77a6b765af2a2cf36bd8be66be22720e8a36c5ad` and discussed in
`documentation/mathematics/_support/reviews/sphere-four-three-torus-abc-drape-energy-2026-10-31.md`.
The existing `SphereFourThreeTorusDrape.project`, `abc`, `residueColor` and
`FiniteModeDrapeEnergy.advance` are retained with unchanged source objects.
The crank is a new finite-dimensional external control; no equivalence to a
general Navier–Stokes solution is asserted.

## Mechanics, mathematical connections and principal argument

For damping gain kappa>=0, time step h>=0, speed limit Omega>=0, and any raw
motor, keyboard or pointer command r, define

    u = max(-Omega,min(Omega,r)),
    omega' = (omega+kappa*h*u)/(1+kappa*h),
    theta' = theta+h*omega',
    psi' = psi+gear*h*omega'.

The denominator is >=1 and never zero. Both omega and u in [-Omega,Omega]
imply omega' in the same interval: multiplying through by the positive
denominator reduces the upper inequality to

    (Omega-omega)+kappa*h*(Omega-u)>=0,

and the lower inequality to

    (omega+Omega)+kappa*h*(u+Omega)>=0.

Thus every step has |theta'-theta|<=h*Omega. The top gear ratio is exact:
psi'-psi=gear*(theta'-theta). The state model intentionally keeps theta and
psi *unwrapped* in R to make the proof algebraic. The browser applies a
2*pi wrapping map to both angles after each step to avoid loss of precision;
periodic trig rendering preserves the appearance, but a complete floating-
point/source refinement proof is still absent.

Five-turn screw cross sections are

    S(s,theta)=(r*cos(theta+10*pi*s),r*sin(theta+10*pi*s)), 0<=s<=1.

The radius identity |S|^2=r^2 is exact and independent of manual input. The
screw is swept around a straight offset arm in the graphics geometry. Its
local orthonormal transverse frame is constructed from a centerline direction
and cross products; formal *frame-construction correctness* is not claimed.

The source S^4->T^3 projection is shifted by the crank circle action:

    drivenProjection(x,theta)_j = R(((j+1)/7)*theta) project(x)_j

for j=0,1,2 and the planar rotation R. This retains each unit-circle
constraint. Its WebGL phase sampling uses the same weighted additions
`(theta/7)*(1,2,3)` applied to the first three S^4 coordinate phases;
rendering additionally samples a time-varying S^4 chart. Color assignment is
still the exact integer stripe residue `stripe % 7`, not a stochastic claim.

The seven mode-pairs z_i follow

    q=1/(1+nu*h),
    z'_i=q*R(h*(feedback_i(z)+(13/20)*omega'))*z_i,   nu>=0.

All nonlinear adjacent-mode terms, including the crank contribution, are
inside the *rotation phase*. For every i:

    |z'_i|^2 = q^2*|z_i|^2 <= |z_i|^2.

Therefore E(z_n)<=E(z_0) for every natural frame n and all raw input traces.
There is no hidden input-work correction: this mathematical surrogate couples
crank torque to mode *phase*, not to mode *amplitude*. The externally driven
crank has a separately bounded angular speed; its kinetic energy need not be
nonincreasing. Combined magnitude E(z_n)+omega_n^2 <= E(z_0)+Omega^2
follows immediately from the two independent bounds. This is not an energy
conservation theorem for forced Navier–Stokes.

## Hostile boundaries, comparison and implementation tests

- With kappa=0, omega'=omega and commands cannot accelerate the crank.
- With nu=0, q=1 and total modal energy is conserved in exact real arithmetic.
- With h=0, neither rotor advances and the mode rotation is the identity.
- Raw commands outside the interval are explicitly clamped rather than assumed
  admissible. Negative nu, h, kappa or Omega are outside the safety theorem.
- A stopped motor may have nonzero angular speed, but stopping the animation
  pauses the discrete update; hand input resumes it without silently turning
  on the motor. Manual input can reverse direction.
- A large winding count does not change the helix radius; only local winding
  phase moves. Floating-point wraps are not equivalent to unbounded real angles
  at bit-level precision, and separately require a numerical refinement proof.
- The ABC field remains the earlier known special smooth periodic example,
  bounded on all projected phases. No new PDE derivative proof was added.
- The finite-mode orthogonal update is not the quadratic Galerkin NS flow.
  Its exact invariant remains useful for safe interactive visualization.
- Alternative argument: `R^T R=I` directly gives contraction, independent of
  the trigonometric expansion; both depend on the same orthogonality premise.
- No prior-art novelty conclusion is made. The new mathematical producer is
  the source-specific crank-to-mode bounded input and drive transport.

Browser diagnostics of the standalone HTML, using Chromium via local Playwright:
1. JavaScript syntax check (`node --check`): PASSED.
2. Browser page-error count: ZERO in tested paths.
3. With motor on, crank angle and top angle changed in the defined ratio;
   with pause, the crank angle stayed constant.
4. With pause and the rail winding control held, positive crank motion resumed.
5. Keyboard ArrowLeft gave negative crank velocity; dragging the depicted red
   knob also turned it in reverse, using pointer hit testing.
6. The measured seven-mode energy stayed <= its initial energy in these runs.
7. The right rail was 48px at the 16px browser default, exactly 3em.
8. Software/browser environment could not establish a WebGL context; the 2D
   fallback path was exercised. WebGL shader execution: NOT_RUN.

## Exact source and verification

New file: `GRWTSK/NumericalAnalysis/CorkscrewDrapeDrive.lean`. Source imports
`GRWTSK/Geometry/SphereFourThreeTorusDrape.lean` and
`GRWTSK/NumericalAnalysis/FiniteModeDrapeEnergy.lean`.
Theorems: `command_bounds`, `speed_denom_positive`, `nextSpeed_bounds`,
`next_angle_increment_bound`, `screwSection_radius_sq`,
`drivenProjection_on_circle`, `coupledModes_energy_le`,
`tick_gear_relation`, `tick_safety`, `orbit_safety`.

Toolchain observed: Lean v4.34.1 and Mathlib
`d13f23b723b8a846827a245b89c10fc7d3f11612` on main; do not replace
concurrent upstream pins. At source publication, Lean elaboration/build,
fresh kernel replay and transitive axiom audit: NOT_RUN. Source-to-JavaScript
verification: partial local browser diagnostics only, NOT formally certified.
Run 

    lake build GRWTSK.NumericalAnalysis.CorkscrewDrapeDrive

from the exact published commit, and fresh `lake env lean` with `#print axioms`
for `orbit_safety`, `tick_safety`, `drivenProjection_on_circle` and imported
`FiniteModeDrapeEnergy.rotate_energy`. Reject `sorryAx` and undocumented new
axioms. Scope the verification receipt to that new commit and its dependency
blobs. Only proven bridges should be promoted; no execution authority or
external publication is inferred from this source increment.
