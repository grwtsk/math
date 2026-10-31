# Four-sphere / three-torus / ABC-flow drape: source and proof disposition

Local attribution: grwtsk contributors. Date: 2026-10-31.

## Exact scope, model and consumer

The source map is S^4 = {x in R^5: sum x_i^2=1} to T^3=(S^1)^3:
P(x)_j=(cos(2*pi*x_j), sin(2*pi*x_j)), j=0,1,2.
This is a well-defined smooth torus-valued **projection**, not a claim that the
3-torus embeds in three-dimensional Euclidean space or that S^4 and T^3 are
homeomorphic. The visualizer subsequently projects the torus into R^3 with
overlap allowed. Neither projection is inverted in the proof. The source
coordinates remain on their 4-sphere by construction.

For phase (X,Y,Z) on T^3 (period 2*pi), take the fixed analytic ABC field

 U(t,X,Y,Z) = exp(-nu*t) *
    (sin Z + cos Y, sin X + cos Z, sin Y + cos X),

with nu>=0 and t>=0. For this **specific** smooth periodic flow:
div U=0; curl U=U; Delta U=-U.
The vector-calculus identity
 (U dot grad)U = grad(|U|^2/2)-U cross curl U
therefore gives (U dot grad)U=grad(|U|^2/2).
Taking p=-|U|^2/2 yields
 partial_t U+(U dot grad)U = -grad p+nu Delta U.
This verifies the classical incompressible Navier--Stokes equation for this
explicit field, as an analytical calculation. Full derivative/PDE identities
are **NOT YET LEAN-FORMALIZED** and must not be represented as kernel checked.

Each coordinate of U has absolute value at most 2*exp(-nu*t)<=2, hence
|U|^2<=12. The graphics source samples U only after applying P. Any
geometry displacement multiplied by a fixed bounded coefficient eta is at
most eta*sqrt(12) in Euclidean norm. This supplies a global analytic
nonblowup bound for the **sampled source velocity**, not a general NS result.

The finite drape-mode update is independent of any unproved PDE solution
operator. For mode z_i in R^2 and a nonlinear angle Phi_i(z), set
 q = 1/(1+nu*h), 0<=q<=1, h>=0, and
 z_i' = q R(Phi_i(z)) z_i
with R the exact planar rotation matrix. This is a conservative transport
surrogate plus implicit scalar viscous damping; it is NOT asserted to be a
Galerkin discretization of the full quadratic Navier--Stokes nonlinearity.
For every i, |z_i'|^2=q^2|z_i|^2<=|z_i|^2, so
 E(z')<=E(z), E(z)=sum_i |z_i|^2.
Induction gives E(z_n)<=E(z_0) for every n, independently of nonlinear
phase feedback. This is the precise finite-dimensional nonblowup consumer.

The seven cloth colors are assigned to the integer stripe index modulo 7.
The division identity 7*(n/7)+(n%7)=n and period n+7 give the residue
accounting. No unproved claim of equidistribution is needed.

## Comparison, hostile boundaries and remaining bridges

* At nu=0, q=1: exact modal energy preservation. At h=0, q=1.
* At zero initial amplitude, all subsequent mode amplitudes remain zero.
* At nonnegative nu,h, 1+nu*h>=1, so a damping denominator never vanishes.
* If nu<0 or h<0 the contraction proof does not apply; do not extrapolate.
* High/high mode interactions are **not** certified to match Galerkin
  Navier--Stokes; the state-dependent rotation is only an energy-stable
  surrogate for visible fabric motion.
* Seven colors are exact integer classes, not random color distributions.
* Projection P may identify distinct S^4 points. It is not an injection
  or an isometry. A separate, unnecessary surjectivity proof is not supplied.
* An R^3 toroidal scene is a visualization of the phase product, not an
  embedding of T^3.
* The exact-real bounds are separate from finite-precision WebGL behavior.
  For a robust implementation, use bounded time phase, explicit clamps and
  finite-number resets. A formal JS/WebGL refinement proof is still absent.
* A second independent analytic check uses the real-rotation identity
  cos^2+sin^2=1, versus bounding the modal update by the operator norm
  ||qR||=q. Both share the same orthogonality premise; neither constitutes
  an independent theorem for arbitrary NS solutions.
* No meaningful relation between 'Putnum counting' and a published theorem
  was established. Here the actual required counting is division-with-remainder
  for seven stripe classes, with no named theorem silently imported.

## Lean declarations and verification status

- GRWTSK/Geometry/SphereFourThreeTorusDrape.lean:
  project_circle, residue_periodic, residue_decomposition,
  abc_component_square_le_four, abc_energy_le_twelve,
  projected_abc_energy_le_twelve.
- GRWTSK/NumericalAnalysis/FiniteModeDrapeEnergy.lean:
  rotate_energy, step_energy_le, damping_unit, advance_energy_le,
  evolve_energy_le.

At publication: Lean compilation NOT_RUN; fresh kernel check NOT_RUN;
transitive axiom audit NOT_RUN; browser simulation refinement NOT_RUN.
Root imports and toolchain/dependency pins were not modified.
Pinned toolchain observed on main: leanprover/lean4:v4.34.1;
Mathlib revision in lake-manifest: d13f23b723b8a846827a245b89c10fc7d3f11612.

Source publication is a candidate proof contribution, not an acceptance receipt.
To accept, compile each file at its published commit, print transitive axioms
for the cited theorems, verify the exact JS algorithm and shader against this
source-bound model (including rounding), and formalize the PDE derivative
bridge if the stronger NS-identification claim is to be accepted in Lean.

No external literature-derived proof is imported; these are elementary
trigonometric, vector calculus and finite-dimensional energy arguments.
Novelty and independent formal review have not been assessed.
