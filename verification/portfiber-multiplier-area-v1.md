# Actual-area quotient evaluation: static verification specification

## Status and exact scope

SOURCE_COMMITTED / NOT_RUN / NOT_KERNEL_AUDITED.
This is a mathematical checking specification, not an execution receipt, manifest schema,
runner, controller, schedule, worker qualification, or authority record. Pin the selected
commit and tree externally. Owner: #230; consumers: #40, #177 and #204; draft PR: #273.

Isolated root: `GRWTSK.Interfaces.PortFiberMultiplierArea`.
Mathematical module: `GRWTSK.Analysis.Operator.HolomorphicMultiplierArea`.
The root imports the preceding area-mean interface. No older root imports this leaf.
The increment adds exactly these two Lean modules and this specification. No predecessor
source, aggregate root, dependency, historical specification, residual plan, arithmetic
supplier, or terminal disposition is modified.

## Mandatory predecessor and pinned APIs

Parent: `9f40f8173887fecaef3cc694c522fd33243a668d`.
Retain `verification/portfiber-area-mean-v1.md`, blob
`453a5544d2204739a5757099d230d77e8d257824`, and all its recursive prerequisites.
The area-mean source/interface blobs remain
`f6db10c5e3ed380aec8646252e3d6c855f420b61` and
`d05421754eb13396ae2cb363b80bd070dd9a0c86`.

Retain all 79 planned predecessor module requirements and 226 control specifications.
The two added modules and eight added controls give 81 planned local modules and
234 control specifications, NOT discovered or executed coverage. Reconcile the actual
transitive import closure, optional historical requirements, exact source identities,
resolved signatures, and individual module outcomes at the selected head.

Lean remains `leanprover/lean4:v4.33.0`; Mathlib remains
`db584cd6d46c92f209a44c0f1c829460d327499d`. Relevant upstream source blobs inspected:

- `Mathlib/MeasureTheory/Measure/Restrict.lean`:
  `1c0d3412b2148bc91c4f4c0b2de56abcc502f975`.
- `Mathlib/MeasureTheory/Integral/Lebesgue/Map.lean`:
  `251ec24fe6e155849e0627ed86e23cee2babcece`.
- `Mathlib/MeasureTheory/Integral/Bochner/Basic.lean`:
  `5aab70490dd61ebcfaf9c50ef26dcb612c25091b`.

The public documentation is only an API locator. The selected pinned sources, exact
hypotheses, and eventual elaborated signatures govern verification.

## Area measure and intrinsic energy binding

`areaMeasure X` is the comap of `volume : Measure Complex` under the actual subtype
inclusion. No normalization or MeasureSpace instance is added. Every application of
comap integration or mass identities retains measurable-domain evidence; open-cover
inclusions, coverage and openness supply it for the section constructions.

`areaMeasure_map` pushes that same measure to ambient restriction. `areaMeasure_univ`
retains the actual total ambient area, not the number one or two. `areaMeasure_singleton`
establishes null singletons. `lintegral_areaMeasure` uses the actual measurable-embedding
identity, not a separately supplied integral comparison.

`energy_area_eq` identifies the ORIGINAL identity-cocycle/unit-metric section energy
with the area lower integral of the SAME ambient representative's norm square on X.
`window_integral_le_energy` proves genuine local integrability, converts the local
nonnegative Bochner integral to a lower integral, then applies restriction monotonicity.
No circle measure is dominated by area or renamed as area in this argument.

`window_energy_bound` retains the exact positive-radius window and coefficient pi*R^2.
It allows infinite global energy and infinite total area. `value_sq_bound` uses ORIGINAL
finite-energy membership before converting that global energy to real values.

## Quotient descent and bounded functionals

`value_zero_of_energy_zero` obtains vanishing at the center from positive disk area.
`ae_value_eq` applies that result to the historical scalar realization of the difference
of two actual holomorphic sections. `aeEqual_area_iff` constructs a window at each point
from openness and proves that area-a.e. equality of these sections is pointwise equality.
This statement is specific to holomorphic identity-bundle sections and actual area.
It is not a theorem for arbitrary measurable functions or arbitrary measures.

`value` descends via the ORIGINAL finite-energy setoid without representative selection.
`functional` derives bounded complex linearity from the historical quotient operations.
Its exact class equation and bound are

    e_W([s]) = s(W.centerPoint)
    norm(e_W) <= 1 / sqrt(pi * W.radius^2).

The bound is not asserted optimal. `functional_congr` identifies windows with the same
center as the same bounded functional, even when their radius estimates differ.
No uniform lower radius, common evaluation bound, or compact-domain hypothesis appears.

## Detector and represented operator image

`pointPort` needs an actual finite-energy section nonzero at the center. Its nonzero
functional is derived by applying to that same section class. On infinite-area domains,
nonzero detectors are not supplied merely by the bounded-evaluation theorem.

`finiteAreaPointPort` constructs the detector from the old constant-one section when
ambient area is finite. `finiteAreaPointPortAt` derives a window at each exact point;
the source measure stays `areaMeasure D.X` at EVERY point.

`area_representation_norm` applies the old norming criterion to the complete point family.
`areaRepresentation` packages the SAME completed algebra homomorphism's linear map as
an isometry. `area_representation_closed` consumes prior open-domain symbol completeness
to derive closed OPERATOR image. It does not assert closedness/completeness of the
original holomorphic section space, evaluation of completed vectors as representatives,
or identification with every ambient L2 function. Empty domains remain permitted.

## Additional controls

MAR-01 AREA_IDENTITY: check exact inclusion, comap, pushforward, total mass and integration
identities; reject normalization, a circle-mixture replacement, or missing measurability.
MAR-02 ENERGY_COMPARISON: check local integrability, restriction direction, unchanged metric
and ambient representative, positive radius, and pi*R^2; reject assumed global estimates.
MAR-03 FINITE_CONVERSION: accept infinite extended-energy inputs to the local bound but
require actual finite-energy membership for real conversion; replay infinite-area unit rejection.
MAR-04 QUOTIENT_DESCENT: replay the difference-section proof and original-setoid lift; reject
representative selection or unconditional point recovery for arbitrary measurable functions.
MAR-05 SAME_FUNCTIONAL: check complex linearity, class equations and radius independence;
reject treating a different radius/bound certificate as a different evaluation map.
MAR-06 DETECTOR: verify the supplied nonzero section and finite-area unit specialization;
reject nonzeroness inferred just from openness or bounded evaluation on a zero space.
MAR-07 OPERATOR_IMAGE: verify norm equality and closed image for the SAME area representation,
including the actual unit-disk fixture; reject section-space closedness or surjectivity promotion.
MAR-08 NULL_POINT_BOUNDARY: replay null singletons, no-positive-atom theorem, and the a.e.-zero
center spike that is not holomorphic; retain earlier fixed-measure and complex-adjoint controls.

## Acceptance and remaining obligations

Require exact-head Lean elaboration, resolved public signatures and all inherited scope,
metric, norm, uniformity, topology, bornology and scalar/algebra projections. No new instance
is declared. Replay the preceding area-mean proof and the entire affected dependency closure.
Require transitive axiom/runtime audits, hostile-control execution, and immutable external
replay. Permit only `propext`, `Classical.choice`, `Quot.sound`; reject `sorryAx`, unsafe
mathematical declarations and unreported native dependencies. Missing, failed, unavailable,
source-only and root-only results do not pass. A stored `.proved` term is not a receipt.

This leaf preserves all earlier packets, objections, target dispositions and residual plans.
It does not claim arbitrary-bundle metrics/detectors, infinite-area nonzero detectors,
section-space completeness, derivative-domain preservation, adjoint-invariant subspaces,
heat transport, Picard/theta/K/KK comparison, arithmetic measure identification, Weil
comparison, residual decay, RH/ABC, F06 release, or execution authority.
