# Nonatomic circle evaluation: static verification specification

## Scope and status

SOURCE_COMMITTED / NOT_RUN / NOT_KERNEL_AUDITED.
This is a mathematical acceptance specification, not an execution receipt, runner,
worker authorization, controller or mutable result. Bind replay externally to an exact
commit and tree. Owner: #230; consumers: #177 and #204; draft integration: #273.

Isolated root: `GRWTSK.Interfaces.PortFiberMultiplierCircle`.
Source: `GRWTSK.Analysis.Operator.HolomorphicMultiplierCircle`.
The new root imports the previous atomic interface. No older root imports this leaf.
Exactly these two Lean modules and this specification are added. Previous carriers,
relations, operations, metrics, measures, roots, dependency pins and targets are unchanged.

## Exact parent and inherited requirements

Parent: `a62a2a87f4d2ed0bc8fc9b52d81134673fff31ed`.
Preserve `verification/portfiber-multiplier-atomic-v1.md`, blob
`7656128f87bfa90cef2e7c49f36eba2e83c25f7a`, with all recursive requirements.
Predecessor source/interface blobs:
`ceb1d90b259a9da68acafca162e1ad41946ba588` and
`1272519865ad25c7e0c8129ee31fcb4f7c339245`.
Retain the earlier statement-preserving completion repairs at `089340b`, the exact
`identityTwistedFamily (D := D)` binding, and every earlier verification obligation.

The parent records 72 planned local modules / 202 controls. Two new modules and eight
new controls give 74 planned local-module requirements / 210 control specifications.
These are neither discovered transitive coverage nor executed outcomes. Discover the
actual complete import closure at replay time and reconcile every exact source identity.
Root-only success cannot stand in for every required module outcome.

Lean: `leanprover/lean4:v4.33.0`.
Mathlib: `db584cd6d46c92f209a44c0f1c829460d327499d`.
New direct analytic import: `Mathlib.Analysis.Complex.MeanValue`.
Use the pinned circle-map, angular-average, Bochner map/scaling and finite-integral APIs.

## Constructed measure and analytic recovery

`CircleWindow` requires a strictly positive radius and containment of the entire closed
disk in the exact domain. It requests no measure, functional, evaluation estimate or
mean-value conclusion. Its parameter map lands in that domain for every real angle.

`measure` is normalized angular Lebesgue measure on `(0, 2*pi]`, pushed through the
actual circle parameter and scaled by `ofReal ((2*pi)^(-1))`. `measure_univ` derives mass
one. `measure_singleton` uses countability of each circle-map fiber and Lebesgue-nullness
of countable sets. Radius zero is excluded: that case would collapse to a Dirac measure.
`measure_probability` supplies a theorem, not an exported instance.

`integral_eq_circleAverage` binds the exact normalized pushforward integral to Mathlib's
circle average, with measurability explicit. `integral_holomorphic` uses the actual
ambient representative, its differentiability on the contained disk, and the upstream
mean-value theorem. No differentiability away from the selected domain is asserted.
The measure is fixed before any section or multiplier is selected.

`identitySymbol` derives global holomorphy of the OLD identity-bundle fiber-value function
using the existing exact indexed cover and identity transitions. It does not install a
global frame for an arbitrary cocycle. Value and scalar-section identity remain exact.
`section_mean` and `section_square_mean` recover the center value and its COMPLEX square.
The latter uses holomorphy of the square; it never calls the real norm square holomorphic.

## The original quotient, bound, and port

`value` is a lift of center evaluation through the historical finite-energy setoid.
Equality of integrals of a.e.-equal holomorphic sections establishes well-definedness.
There is no selection of representatives and no transfer of arbitrary a.e. predicates
to the center. That center has measure zero.

`square_norm_eq_realSquare` identifies the norm of the complex square with the OLD
identity-metric squared length. `section_square_integrable` derives genuine integrability
from the original finite-energy proof. `value_sq_bound` uses integral domination and
only then finite-energy real conversion. It establishes `|e(q)|^2 <= ||q||^2`.
`functional` derives bounded complex linearity on the existing quotient. The old finite
unit section and the derived mass-one equation prove `functional_norm = 1`.

`pointPort` contains precisely this functional, its on-class equation and derived
nonzeroness. The previous eigenfunctional/lower-bound consumer applies unchanged to the
same symbol, quotient/completion, identity cocycle, unit metric and circle measure.
No dense evaluation family, global multiplier norm equality or closed operator image
is inferred from this SINGLE center port. Distinct windows generally give distinct
measures; their ports cannot be collected as ports for one measure without a new theorem.

## Additional controls

MPC-01 GEOMETRY: retain strict radius positivity and full closed-disk containment.
Reject zero radius treated as nonatomic, or a circle map with values outside the domain.
MPC-02 MEASURE: verify exact angular pushforward, normalization and singleton-nullness.
Reject substitution of a Dirac measure, area measure or the earlier dense atomic measure.
MPC-03 MEAN_VALUE: replay actual holomorphic recovery and the complex-square identity.
Reject assuming recovery as a field or promoting real norm squares to holomorphic functions.
MPC-04 QUOTIENT: check the old setoid, lift compatibility and every representative equation.
Reject evaluation recovered from an arbitrary chosen representative at a null point.
MPC-05 ENERGY: verify square integrability, finite-energy conversion and the norm bound.
Reject a nonintegrable Bochner-zero default used as an energy/evaluation certificate.
MPC-06 NONZERO: replay the actual unit-class witness and exact functional norm one.
Reject an always-zero functional, missing normalization or an independent point port.
MPC-07 ATOM_BOUNDARY: replay `no_positiveAtom` and the concrete disk evaluation fixture.
Reject identifying this analytic producer with positive-atom recovery, or requiring atoms
as a necessary condition for holomorphic evaluation on a section quotient.
MPC-08 HOLOMORPHY_BOUNDARY: the center spike is a.e. zero but has value one there and is
not holomorphically extendable. Reject extending this evaluation law to all measurable
functions, manufacturing a dense family for the fixed measure, or promoting local
bounds to area-measure, differential, heat, arithmetic or terminal-target results.

## Acceptance and remaining scope

Eight disjoint portfolio claims and four preservation equations retain all old local
and terminal dispositions. A stored `.proved` term is source, not a kernel receipt.
Require exact-head Lean elaboration, resolved public signatures, all inherited scope,
metric/topology/uniformity/bornology/scalar projections, full per-module outcomes,
transitive axiom/runtime audits, hostile Lean controls and immutable external replay.
Only `propext`, `Classical.choice`, `Quot.sound` are allowed. Reject `sorryAx`, unsafe
mathematical declarations and unreported native dependencies. Missing, failed,
unavailable, source-only and root-only results are not complete acceptance.

No Lean/Lake invocation, kernel audit or external replay is reported here. Text checks
and finite Fourier/polynomial diagnostics do not establish measure pushforwards,
nonatomicity, arbitrary holomorphic mean value or elaboration correctness.
Prescribed area/L2 evaluation estimates, dense ports for one prescribed nonatomic measure,
nontrivial-bundle detectors, section-space closedness, differential/adjoint domains,
heat transport, Picard/theta/K/KK identification and arithmetic suppliers remain separate.
No RH/ABC conclusion, residual-ledger mutation, F06 release or worker authority is supplied.
