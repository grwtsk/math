# Measure transfer and fixed nonatomic norming: static verification specification

## Scope and verification state

SOURCE_COMMITTED / NOT_RUN / NOT_KERNEL_AUDITED.
This is a mathematical acceptance specification, not an executed test, runtime receipt,
runner, schedule, worker qualification, or authorization. Bind eventual verification to
an exact commit and complete source tree outside this pure mathematical repository.
Owner: #230; consumers: #177/#204; draft integration: #273.

Isolated root: `GRWTSK.Interfaces.PortFiberMeasureTransfer`.
Mathematical modules:
`GRWTSK.Analysis.Operator.HolomorphicSectionMeasureTransfer` and
`GRWTSK.Analysis.Operator.HolomorphicMultiplierCircleMixture`.
The new root imports the historical circle interface; no older root imports this leaf.
No predecessor source, aggregate root, dependency pin, historical specification, residual
ledger, arithmetic supplier, or terminal disposition is modified.

## Mandatory parent

Parent: `16ebfcfb7a858b569794224f989e719d9c70e917`.
Retain `verification/portfiber-multiplier-circle-v1.md` at blob
`ced43eaa6fa82ddc6fc7c730990b425cd137e3d3` and all recursive prerequisites.
The circle source/interface blobs remain
`ffd510a1dcaaf44453e63ea2cee7fff47a77de08` and
`58bcd002b9e0e35e3fbd00e417cfd15b9ec7e7b9`.
Retain the prior atomic measure, norming criterion, completion proof repairs, exact
supremum topology, representation, section and geometric packets at their original scopes.

Retain 74 planned predecessor module requirements and 210 control specifications.
Three new Lean modules and eight new controls give 77 planned local-module requirements
and 218 control specifications. These are NOT discovered or executed coverage. Reconcile
actual transitive imports, source identities and every mandatory optional prerequisite.
A root-only pass cannot replace individual required module outcomes.

Lean remains `leanprover/lean4:v4.33.0`; mathlib remains
`db584cd6d46c92f209a44c0f1c829460d327499d`. No dependency or global instance is added.
All scoped norm/topology/uniformity/metric/bornology/algebra projections from earlier
leaves remain explicit signature and elaboration obligations.

## Exact domination and map direction

`MeasureDomination mu nu` contains a finite nonnegative coefficient K and
`nu <= K • mu`. It assumes no operator, energy estimate, continuity or injectivity.
Its direction is `Q(mu) -> Q(nu)`, with the same metric, cocycle, base and section values.
`ae_transfer` derives null-set transfer. `energy_le` derives the extended-valued energy
bound by lower-integral monotonicity. `finiteRestrict` proves target membership using the
old finite-energy evidence; no conversion of infinity to a real number supplies a bound.

`restrictionCLM` descends through the two OLD a.e. setoids and derives linearity and
norm at most sqrt K. Its representative equation retains the original section.
`restrictionCLM_congr` removes dependence on a bound witness. Identity and ordered
composition use exactly the intermediate measure, with composite coefficient K2*K1.
The multiplier square commutes with the old symbol actions at both measures.
These maps are not asserted injective, invertible, isometric or measure-preserving.
The old same-measure completion helper is NOT used with different measures.

`ofPositiveWeight` derives `nu <= w^(-1) • mu` from `0 < w` and `w • nu <= mu`.
Strict positivity is essential; zero coefficients cannot supply this result.
`pullPointPort` composes the OLD evaluation with this exact restriction and retains
its equation on every original finite-energy section. Nonzeroness uses an actual source
section nonzero at the point; it is not inherited blindly through composition.

## Prescribed measure and analytic circle ports

For a fixed mu and actual domination of a circle-window measure by K*mu,
`circlePointPort` constructs a center port ON mu. Finite total mass and the identity
cocycle/unit metric supply the old finite unit-section detector. The functional bound
is at most sqrt K. Mean value and the original circle measure are inherited unchanged.
This theorem applies to prescribed mu only after that measure inequality is proved.
It does not create a circle domination inequality for area or an arithmetic measure.
`no_circle_from_zero` rejects domination of a probability circle by zero measure.

## One fixed circle mixture

`circleMixture W w` is the actual countable sum of w(n)*W(n).measure. Its total mass is
sum w(n), and every singleton is null, even for overlapping/repeated circles. Each
positive summand gives domination of its circle by the SAME mixture. The source
measure does not vary between center-evaluation ports. Finite total weight constructs
all unit-section detectors. The bound for the n-th port is sqrt(1/w(n)); no uniform
bound on all port norms or uniform lower bound on the weights is assumed.

Dense CENTERS plus these constructed ports give the exact historical completed
representation as a linear isometry. The old open-domain symbol completeness supplies
closed OPERATOR image. Density of centers alone is not a measure support or port
certificate, and no full-support-measure instance is introduced.

`exists_centeredWindow` derives contained positive-radius closed disks from openness.
`selectedWindows` uses the old dense-sequence choice and independently chosen radii.
`selectedMeasure` uses the symbol-independent geometric weights 2^(-n), giving total
mass TWO, not one. Its null-singleton, optimal-norm and closed-image statements refer
to exactly this single measure. `exists_nonatomic_norming_measure` is a constructed
existence model, not a canonical measure or an identification with an application.
The old dense ATOMIC measure is not replaced or reinterpreted. `no_positiveAtom`
rejects every old positive-atom certificate on the circle mixture.

## New controls, in addition to all inherited controls

MTR-01 ORIENTATION: verify nu<=K*mu gives Q(mu)->Q(nu), actual null-set transfer and
extended-energy control. Reject a reversed map or finite-energy premise omission.
MTR-02 SAME_MAP: verify representative, witness-independence and multiplier equations.
Reject a chosen-representative map, hidden metric change, or unconditional injectivity.
MTR-03 COMPOSITION: verify identity and ordered composition through the same middle
measure; reject mismatched middle measures or reuse of same-measure completion APIs.
MTR-04 NONZERO: check the source detecting section and finite unit-section producer.
Reject zero-weight inversion, zero-measure circle domination and automatic nonzeroness.
MTR-05 ONE_MEASURE: check actual sum, mass formula, null singletons and domination by
that same sum. Reject a family whose port source measure changes with the center.
MTR-06 NORMING: replay constructed dense center ports, exact represented norm and closed
operator image. Reject density alone, unproved inverse bounds or pointwise limit upgrades.
MTR-07 CONSTRUCTION: inspect positive contained radii, dense-sequence choice, fixed weights
and mass two. Reject silently normalized mass, symbol-dependent measures or canonicality.
MTR-08 ATOMIC_BOUNDARY: replay no_positiveAtom and all old nonatomic spike/off-support
controls. Reject promotion to arbitrary measurable point evaluation or area identification.

## Acceptance and remaining obligations

Require exact-head Lean elaboration, public-signature and instance checks, full module
outcomes, transitive axiom/runtime audits, hostile Lean-control execution and immutable
external replay. Allow only `propext`, `Classical.choice`, `Quot.sound`; reject sorryAx,
unsafe mathematical declarations and unreported native dependencies. Failed, missing,
unavailable, source-only and root-only outcomes are not passes. Source `.proved` terms
and finite arithmetic checks are not kernel receipts.

The interface is a disjoint extension with eight claims and four preservation equations.
All historical local dispositions, residual plans and terminal targets retain their
scope. No original section-space completeness, representative selection, L2/area
identification, star/C-star closure, nontrivial-bundle detector, differential/heat theorem,
Picard/theta/K/KK identification, Weil comparison, residual decay or RH/ABC conclusion
is supplied. No worker qualification, F06 release or runtime authority is conferred.
