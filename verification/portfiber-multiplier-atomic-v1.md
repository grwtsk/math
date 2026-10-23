# Atomic evaluation producers: static verification specification

## Status and scope

SOURCE_COMMITTED / NOT_RUN / NOT_KERNEL_AUDITED.
This specifies mathematical acceptance, not a receipt, execution request, controller,
worker qualification, or runtime grant. Owner: #230. Consumers: #177 and #204.
Draft integration: #273. Pin the eventual exact commit/tree and replay externally.

Isolated root: `GRWTSK.Interfaces.PortFiberMultiplierAtomic`.
Mathematical module: `GRWTSK.Analysis.Operator.HolomorphicMultiplierAtomic`.
The root imports the preceding norming interface. No older root imports this leaf.
This increment adds two Lean modules and this specification, with no predecessor edits.

## Required predecessor and trust

Parent: `089340bbcab6e5f333716d968b98ca36ab37ed8b`.
Retain `verification/portfiber-multiplier-norming-v1.md`, blob
`93dfe652dd518ed27a4e4056d9911a340f0ceb87`, and its entire recursive specification chain.
Predecessor source/interface blobs are `aac63e791fc42f87e7ec9873699d57cd343389f6`
and `d706a44da23cb048713a4942e17cdea5e3bddbf3`.
Preserve its statement-preserving repairs of `HolomorphicMultiplierComplete.lean`
at blob `57cbc2ce4d0b99c779dabd5168c5f715095dba39` and every historical erratum.

Retain 70 planned module requirements / 194 controls. The two new modules and eight
additional controls yield 72 planned local modules / 202 control specifications.
This is neither discovered nor executed coverage. Discover the actual transitive imports,
reconcile every historical requirement and exact module identity, and check each outcome.
A root-only, missing, failed, unavailable, or source-only result cannot establish acceptance.

Lean stays `leanprover/lean4:v4.33.0`; mathlib stays
`db584cd6d46c92f209a44c0f1c829460d327499d`; all other dependency pins are unchanged.
Direct upstream additions are `Mathlib.Analysis.SpecificLimits.Basic` and
`Mathlib.Topology.Bases`. The measure-order, a.e.-scaling, lower-integral, and dense-sequence
APIs are inspected at that same pin, not at upstream default-branch search results.
Only `propext`, `Classical.choice`, and `Quot.sound` are allowed axioms. Reject `sorryAx`,
unsafe mathematical declarations and unreported native dependencies. No new instance,
replacement topology, process code, generated receipt or arithmetic supplier is added.

## Positive atom to the exact quotient evaluation

`PositiveAtom mu x` contains a finite nonnegative mass, its STRICT positivity proof,
and the measure inequality `mass • dirac x <= mu`. It contains no functional,
eigenfunctional law, operator-norm bound, nonzeroness or represented-norm equality.
The atom coefficient is a lower bound, not necessarily the full singleton mass.

`PositiveAtom.ae_at` transfers a.e. propositions through the actual measure inequality
and cancels only a nonzero mass. It derives evaluation well-definedness on the OLD
finite-energy setoid, without selecting representatives or changing the measure.
`density_le` derives `mass * density(s,x) <= energy(s)` by lower-integral monotonicity.

`value_sq_bound` uses original finite-energy membership before real conversion.
`value_norm_bound` derives the bound `1 / sqrt(mass)` on evaluation in the IDENTITY
cocycle and unit metric. Strict positivity justifies the inverse and square-root steps.
The functional's linearity uses the original quotient operations. Its representative
formula is exact for every original finite-energy section, not a finite sample.

`pointPort` additionally requires an actual finite-energy section nonzero at the atom;
positive mass by itself is not an assertion that the quotient or functional is nonzero.
`finiteMassPointPort` constructs that section from the historical `finiteUnit` and an
explicit finite-total-mass proof. Finiteness is not assumed in the density or bounded
functional construction. No assertion about an arbitrary nonidentity bundle is added.

## Dense atomic measure and exact multiplier norms

`atomicPorts` constructs all old `PointEvaluationPort` fields at every selected atom.
`norm_eq_of_dense_atoms` and `closed_range_of_dense_atoms` consume those actual ports
in the predecessor's lower-bound and closed-image theorems. The symbol, cocycle, unit
metric, measure, quotient, completion and completed representation remain exact.
There is no uniform lower bound on the separate atom masses or uniform upper bound
on all evaluation norms. Each positive evaluation norm is cancelled separately upstream.

`atomicMeasure D p w` is the actual countable sum `sum (w n • dirac (p n))`.
`atomicMeasure_univ` computes its total mass. `summandAtom` uses `Measure.le_sum`,
not a supplied domination witness. Repeated support points are explicitly permitted;
no injective enumeration or disjoint-support hypothesis is hidden.

`atomicMeasure_norm_eq` retains positivity of every weight, finiteness of their ENNReal
sum and density of the support sequence. It does not discard any of those hypotheses.
`geometricWeight n = (1/2)^n` has strictly positive terms and sum exactly TWO.
No probability normalization is silently performed.

`denseAtomicMeasure` uses `TopologicalSpace.denseSeq` on the actual nonempty base
subtype of the complex plane. The inherited separability proof and chosen dense sequence
remain elaboration obligations. The sequence and weights do not depend on a symbol or
terminal target. The measure is noncomputably selected using allowed choice, not
claimed canonical under changes of domain presentation or enumeration.

`denseAtomicRepresentation` is the SAME completed algebra homomorphism's linear map,
with norm preservation derived from the construction. Its application equation is exact.
`denseAtomicRepresentation_closed` uses the existing open cover to prove symbol
completeness and closedness of the represented OPERATOR image. It does not infer
closedness or an L2 realization of the original holomorphic section quotient.
`exists_finite_norming_measure` constructs this measure and its whole representation.
It is an EXISTENCE theorem for a selected measure, not a theorem about every given measure.

## Additional hostile controls

MPA-01 ATOM_SCOPE: verify mass positivity and exact weighted-Dirac domination. Reject
zero-weight domination promoted to a positive atom or evaluation certificate.
MPA-02 QUOTIENT_VALUE: check a.e. transfer and both exact representative equations.
Reject point evaluation supplied by arbitrary representative selection or off-support values.
MPA-03 ENERGY_BOUND: retain the original finite-energy proof before toReal; check
square-root positivity and inverse scaling. Reject omission of mass or infinite-toReal use.
MPA-04 NONZERO_SECTION: check actual detector use and its finite-mass unit specialization.
Reject positive mass alone promoted to nonzero evaluation on every section space.
MPA-05 COUNTABLE_SUM: verify Measure.sum, summand domination and total mass, including
duplicate points and arbitrarily small positive weights. Reject hidden uniform mass bounds.
MPA-06 DENSE_SELECTION: verify separability, nonempty base, dense sequence, positive weights,
and mass two. Reject a finite sample or nondense sequence substituted for dense support.
MPA-07 EXACT_REPRESENTATION: check norm preservation, the unchanged algebra-map projection,
and closed OPERATOR image. Reject faithfulness alone, pointwise operator limits or a new map.
MPA-08 APPLICATION_BOUNDARY: replay no_half_atom_at_center and the disk norming-measure
existence fixture. Reject identifying the constructed measure with Dirac-center, area,
arithmetic or any other application measure without a separate proved comparison.

## Isolated claims and remaining acceptance

Eight disjoint portfolio claims and four preservation equations retain all historical
local dispositions, residual obligations and terminal targets. Stored `.proved` terms are
source proof implementations, not operational or kernel receipts.

Require exact-head isolated elaboration, full transitive module and declaration reconciliation,
resolved public-signature/coercion checks, all inherited norm/topology/uniformity/bornology
and algebra projections, axiom/runtime audits, hostile controls and immutable external replay.
No Lean/Lake execution or analytic validation is represented by static text diagnostics.

Remaining producers include source-specific non-atomic evaluation estimates and geometric
or arithmetic measure identification; general nontrivial-bundle detectors; L2 realization and
section-space closedness; adjoint-invariant/differential/unbounded domains; heat transport,
Picard/theta/K/KK identifications, Weil comparison and residual decay. No RH/ABC theorem,
F06 release, worker execution, merge or issue closure follows from this source increment.
