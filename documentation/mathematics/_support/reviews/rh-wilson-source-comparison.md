# Comparing the signed RH source with the actual Wilson source

Local attribution: grwtsk contributors.

## The mathematical question

Can the maintained signed arithmetic operator be identified with the actual
positive Wilson transfer operator, so that RH information supplies a physical
Yang--Mills estimate? The first comparison already has an obstruction.

For two real coefficients a0,a1, the maintained signedOffDiagonal operator is
K=[[0,a0*a1],[a0*a1,0]]. Its quadratic value at x=(a1,-a0) is
-2*(a0*a1)^2. If both coefficients are nonzero this is strictly negative.
The actual invariant Wilson operator has nonnegative quadratic form for beta>=0.
Consequently no map F, even nonlinear, preserves every such quadratic value.
In particular a unitary identification preserving these forms cannot exist.

The Lean source ArithmeticWilsonPositivityComparison supplies the finite
identity, negative direction and actual Wilson comparison. Its markedPair
specialization uses originalRealMark at j=1, not a new zero-side operator or an
assumed map from 2-adic numbers to reals. Both nonzero-response hypotheses remain
explicit. The result does not assert they hold for every response time.
This two-coordinate specialization tests that exact proposed identification;
it does not rule out all compressions, observable comparisons, shifts,
positive constructions or arithmetic/physical bridges.

## What a useful positive connection still needs

The RH arithmetic source retains signed Mobius coefficients and causal response
weights; the Wilson source is a positive integral kernel on gauge-invariant
L2 of probability slice Haar. A similarity of spectral terminology does not
identify these spaces, operators, observations, times or limiting procedures.

The next constructive target is an actual marked-observable comparison:
choose a defined gauge-invariant Wilson observable, a specific arithmetic
observable retaining its signs, and a map with an exact normalization and
controlled residual. Prove which arithmetic estimate controls the actual Wilson
connected correlation or normalized excited spectral ratio, with constants
uniform in the intended coupling, volume and spacing limits. No such map or
estimate is supplied here. A Gram construction A*A can restore positivity but
cannot be used to recover lost sign observations without a separate comparison.

The inspected PickupDyadicEndpoint theorem points FROM DyadicBirthBound TO RH.
It cannot be used backwards to derive the required arithmetic bound FROM RH.
An RH-conditional Wilson theorem therefore still needs that direction proved,
in addition to the actual observable comparison and uniform estimates. Assuming
all these missing conclusions as fields would only create a conditional wrapper.

Even an actual regulator-uniform Wilson gap is separate from continuum existence,
nontrivial limiting observables, applicable reflection positivity/reconstruction
and transport of the gap to the reconstructed physical Hamiltonian.

## Exact source and evidence boundary

Baseline math commit: 85f2dce95a1e287e5a06f29316adb61e3849c054.
Maintained references: DyadicMarkedSignGauge.signedOperator and originalRealMark;
WilsonSliceInvariantOperatorPositive.invariantOperator_inner_nonnegative;
PickupDyadicEndpoint.riemannHypothesis_of_dyadicBirthBound.
New source: GRWTSK/QuantumTheory/QuantumFieldTheoryRelatedClassicalFieldTheories/
QuantumFieldTheoryOnLattices/ArithmeticWilsonPositivityComparison.lean.
The static verification target pins the source blob and declarations.

All new declarations are SOURCE_PROOF_CANDIDATE. Compilation, fresh kernel
replay, transitive axiom auditing and expected-interface checks are NOT_RUN.
No external paper theorem is imported or newly formalized in this increment.
No RH implication or physical Yang--Mills mass gap is claimed. The existing
research timer remains paused; this is a direct user-authorized source comparison.
