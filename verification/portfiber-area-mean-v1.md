# Disk area mean: static verification specification

## Status and exact scope

SOURCE_COMMITTED / NOT_RUN / NOT_KERNEL_AUDITED.
This is a mathematical checking specification, not a replay receipt or execution grant.
Owner: #230. Analytic consumer: #40. Port/operator consumers: #177 and #204.
Draft integration: #273. Isolated root: `GRWTSK.Interfaces.PortFiberAreaMean`.
Mathematical module: `GRWTSK.Analysis.Complex.HolomorphicAreaMean`.

The increment adds two Lean modules and this specification only. It does not alter
historical sources, aggregate imports, dependency pins, residual plans or terminal targets.
The interface imports the prior measure-transfer root. No older root imports this leaf.

## Mandatory predecessor and upstream identities

Mathematical parent: `f301770445284d0d670a3f9fadc98e0f1054b79e`.
Retain `verification/portfiber-measure-transfer-v1.md`, historical blob
`73dcccce8dc9c8bf307e035d1be33942dae8fc5d`, with all recursive prerequisites.
Retain the measure-transfer, circle-mixture and interface source blobs respectively:
`8e4429e6e7b9b5bc7d5c261e990f1e8204f000ba`,
`c4619e1929b37f38a1a032595ae63ed92526680e`,
`7fedec963221b45b638017c2707cec225a6e9263`.

Retain all 77 planned predecessor local-module requirements and 218 controls.
Two additional modules and eight additional controls give 79 planned local-module
requirements / 226 control specifications. These are not discovered or executed coverage.
Reconcile every actual local import and exact source identity at the selected head.
Missing modules or root-only success cannot stand in for all required module outcomes.

Lean remains `leanprover/lean4:v4.33.0`; Mathlib remains
`db584cd6d46c92f209a44c0f1c829460d327499d`.
The source directly uses pinned `Analysis.SpecialFunctions.PolarCoord`,
`Analysis.SpecialFunctions.Integrals.Basic`, `MeasureTheory.Group.Integral` and
`MeasureTheory.Integral.Prod`. Mean-value, periodic-angular and compact-integrability
APIs remain pinned upstream dependencies, not independently supplied theorem fields.

## Exact area and change of variables

Every ambient disk integral uses `volume : Measure Complex`, the standard complex
Lebesgue area. There is no new measure definition, symbol-dependent measure, weighted
Dirac measure or countable circle mixture behind this notation.

`polarPoint_eq_circleMap` identifies the polar point with the historical circle parameter.
`integral_closedBall_zero_polar` applies the actual upstream polar change-of-variables
formula to the disk indicator. It retains the radial Jacobian r, the angular interval
(-pi, pi), and the radial interval (0, R]. The indicator/intersection proof handles
membership explicitly, including the null polar cut. This theorem has no holomorphy
assumption and does not, by itself, certify Bochner integrability.

`angularIntegral_eq_circleAverage` uses periodicity and equality of endpoint variants
under one-dimensional Lebesgue measure. Its factor is exactly 2*pi, not pi or one.
`polarIntegrable` derives actual integrability on the polar rectangle from continuity
on the closed disk by enlarging the rectangle to a compact one. The subsequent Fubini
application consumes that proof. No default nonintegrable value is used as analytic evidence.

## Analytic mean and square-integral estimate

`integral_closedBall_zero` integrates the existing holomorphic circle mean over radii.
The radial integral is R^2/2. Together with the angular factor it yields pi*R^2.
`integral_closedBall_translate` uses Lebesgue translation invariance and the exact
translated disk indicator. `integral_closedBall` therefore has arbitrary center c.

The mean theorem requires R > 0 and `DifferentiableOn Complex f (closedBall c R)`.
It does not assert differentiability away from that disk or erase continuity premises
needed by the circle theorem; continuity is derived from the actual differentiability.

`square_integrable` proves integrability of BOTH the complex square f*f and the real
nonnegative function norm(f)^2. The mean theorem is applied to the COMPLEX square.
`norm_sq_le_areaIntegral` then gives

    pi * R^2 * norm(f(c))^2 <= integral_closedBall norm(f)^2.

`norm_sq_le_normalized_areaIntegral` retains strict radius positivity before multiplying
by the reciprocal area. The real norm square is not claimed holomorphic. No abstract
energy, assumed area-mean certificate or asserted evaluation functional is supplied.

`window_section_area_bound` consumes the OLD `CircleWindow`, the exact contained disk,
and the actual `HolomorphicSection`. The original ambient representative supplies its
values and differentiability there. `window_bundleSection_area_bound` uses the previous
`identitySymbol` construction on the OLD identity-cocycle section. No new frame or scalar
section is chosen. This is a local area bound, not yet an area-quotient evaluation theorem.

## Portfolio and fixtures

Six disjoint claim indices and four preservation declarations extend the previous
portfolio without changing old local dispositions, application obligations or targets.
No new instance declaration, topology selection, arbitrary pointwise quotient evaluation,
measure domination certificate, kernel audit or replay receipt is introduced.

The imaginary constant retains its full complex area mean. The coordinate COMPLEX square
has zero disk mean at zero. The value I*I differs from norm(I)^2. The normalized estimate
at radius zero fails for the unit function, rejecting removal of the positive-radius premise.
These do not assert that arbitrary measurable functions satisfy holomorphic mean value.

## Additional hostile controls

AM-01 AREA_IDENTITY: inspect resolved measures on every integral; reject circle, probability,
atomic or model-mixture substitution for complex Lebesgue area.
AM-02 POLAR_JACOBIAN: retain the radius factor and exact indicator intersection; reject a
missing Jacobian, wrong radial endpoint condition or incorrect polar-coordinate orientation.
AM-03 ANGULAR_NORMALIZATION: retain the full angular period and factor 2*pi; reject use of
an unnormalized average or forgetting the radial factor R^2/2.
AM-04 INTEGRABILITY: check the compact-continuity proof and actual Fubini hypothesis;
reject a proof that uses the Bochner default value in place of genuine integrability.
AM-05 COMPLEX_SQUARE: retain complex multiplication before applying mean value, then take
norms; reject asserting that real norm squares are holomorphic or losing imaginary parts.
AM-06 POSITIVE_RADIUS: replay the zero-radius counterexample; reject reciprocal-area or
normalized bounds without the strict positive-radius premise.
AM-07 SOURCE_BINDING: verify exact window, ambient representative and identity-section values;
reject a replaced section, changed disk, assumed global frame or outside-domain regularity.
AM-08 APPLICATION_BOUNDARY: reject promotion of this LOCAL area estimate to a global section
quotient port, dense norming family, source-specific arithmetic measure or terminal result.

## Acceptance and remaining work

Require exact-head elaboration, resolved public-signature and inherited-instance checks,
per-module outcome coverage, transitive axiom/runtime audits, hostile controls, and an
immutable external replay record. Only `propext`, `Classical.choice`, `Quot.sound` are
permitted. Reject `sorryAx`, unsafe declarations and unreported native dependencies.
Not-run, unavailable, failed, missing, source-only and root-only outcomes do not pass.
Static diagnostics and exact polynomial calculations are not Lean checking.

The next binding must identify area on the actual domain subtype, compare the local disk
integral with that SAME measure's global section energy, and derive quotient descent and
bounded evaluation. Nonzero evaluation still needs an actual finite-energy detecting
section; constant one requires finite total area. No unconditional whole-plane L2 detector,
area-to-circle full-measure domination, global norming result, section-space closedness,
star closure, differential/heat transport, arithmetic comparison, RH/ABC conclusion,
worker qualification or F06 release is supplied by this leaf.
