# Supremum-norm multiplier representation: static verification specification

## Status and selected scope

SOURCE_COMMITTED / NOT_RUN / NOT_KERNEL_AUDITED.
This document specifies mathematical checks; it is not an executable manifest, receipt,
controller, schedule, or worker authorization. Pin the eventual selected commit/tree
externally. Owner: #230; consumers: #177 and #204.

Isolated root: `GRWTSK.Interfaces.PortFiberMultiplierNorm`.
New mathematical module: `GRWTSK.Analysis.Operator.HolomorphicMultiplierNorm`.
The root imports the preceding representation interface. No older root imports this leaf.
No previous source, root, dependency, manifest, specification, residual plan, arithmetic
supplier, or terminal disposition is modified by this increment.

## Mandatory predecessor

Mathematical parent: `9e6669fb65a4d0dae8c17201c0f56e83673378a8`.
Retain `verification/portfiber-multiplier-representation-v1.md`, blob
`5d67788fb8c0053151f3b1c37e9758540b34d842`, and its complete recursive prerequisites.
The source and interface blobs are respectively
`f4b6ffe568daa82ba3e0257c8f81e7881ca8f802` and
`86376220002dcdf501aae27a3ebd1fd8245a85fb`.

Retain all 64 predecessor local-module requirements and 170 control specifications.
The two new modules and eight additional controls give 66 planned local-module
requirements / 178 control specifications. This is NOT executed coverage. Reconcile
all actual transitive local imports and source identities at the selected head; historical
optional adapters and isolated prerequisites remain mandatory. A root-only result does
not replace every required module outcome.

The dependency pins remain Lean `leanprover/lean4:v4.33.0` and mathlib
`db584cd6d46c92f209a44c0f1c829460d327499d`; all other pins remain manifest-bound.
New direct upstream import: `Mathlib.Topology.ContinuousMap.Bounded.Normed`.
The induced normed-ring and bounded-continuous-function APIs must be checked at that pin.

## Exact function, carrier and algebra binding

`boundedFunction` constructs the bounded continuous function from the OLD symbol value,
the OLD holomorphic-section continuity theorem, and a selected bound witness. It selects
no replacement symbol. `boundedFunction_apply` is the exact value equation.
`boundedFunctionHom` preserves zero, one, addition and multiplication pointwise.
`boundedFunctionHom_injective` recovers equality through the historical symbol extensionality.
`boundedFunction_smul` uses the historical complex action from constant sections.

`symbolNormedCommRing` is induced through this injective ring homomorphism. It neither
redefines `BoundedSymbol`, takes an a.e. quotient of symbols, nor identifies bound witnesses.
`symbolNormedAlgebra` retains the original complex algebra map and derives the scalar-norm
inequality from the same bounded continuous function.

## Explicit topology and instance-coherence gate

Four scoped instances are added in
`GRWTSK.Analysis.Operator.HolomorphicMultiplierNorm`:
`symbolNormedCommRing`, `symbolUniformSpace`, `symbolTopologicalSpace`, and
`symbolNormedAlgebra`. The uniformity and topology explicitly project from the normed ring,
with scoped priority sufficient to avoid accidental selection of the inherited pointwise
nested-subtype structures. The interface explicitly opens this scope.

Audit all inherited metric, distance, norm, uniformity, topology, bornology, additive,
scalar-action and algebra projections at the exact head. `symbolTopology_coherent` is an
explicit definitional coherence check, NOT an identification with the historical pointwise
topology. Check the resolved public signatures of continuity and `Tendsto`, not just
printed theorem names. No global replacement topology or equality of convergence notions
is asserted. Consumers must select the new scope deliberately.

`valueMap_continuous` maps the normed symbols into the full function ring with its original
pointwise topology. `forgetHolomorphic_continuous` factors through the original holomorphic
subring with its function-subtype topology. These prove only this direction of continuity.

## Canonical supremum norm

`norm_eq_boundedFunction` binds the norm exactly. `norm_eq_infimum` uses the infimum of
NONNEGATIVE uniform upper bounds, so an empty domain has zero norm. `norm_le_iff` and
`norm_sub_le_iff` retain the nonnegative-bound premise. `norm_value_le` controls each actual
point value. The distance geometry comes from differences of functions, not differences
of arbitrary supplied bound certificates.

`norm_constants` requires nonempty domain. Empty-domain collapse is established separately;
there is no unconditional NormOneClass or Nontrivial assumption. `functionLinearIsometry`
embeds this normed algebra into the actual bounded-continuous-function space. No claim
that the holomorphic image is closed or complete is supplied.

## Operator-norm continuity of the old representations

`completedRepresentation_norm_le` applies the OLD arbitrary-bound theorem to the canonical
symbol norm. `quotientRepresentation_norm_le` uses exact completion norm preservation to
recover the same estimate on the original quotient. Neither estimate assumes finite mass,
positive open sets, a nonvanishing detector, or faithfulness.

`quotientRepresentationCLM` and `completedRepresentationCLM` wrap the OLD algebra
homomorphisms' linear maps with continuity proofs. Their application and `toLinearMap`
equalities must retain the old maps definitionally. No new action, identity, scalar
representation or multiplication order substitutes. The operator norms of both continuous
linear representations are at most one, including degenerate spaces.

`completedRepresentation_sub_norm_le` bounds the operator norm of the represented difference
by the supremum norm of the symbol difference. `completedRepresentation_tendsto` uses the
new symbol norm topology and the bounded-endomorphism OPERATOR-NORM topology. Pointwise
convergence of symbols is not its premise; strong-operator convergence is not its conclusion.
`completedRepresentationCLM_gauge` keeps the historical gauge and exact inverse, the same
symbol/measure, and exactly `transportMetric`. No residual or target update is admitted.

## Additional controls (retain all earlier controls)

MPN-01 SAME_FUNCTION: accept exact evaluation/injectivity; reject substituting a new bounded
function or using equality of numerical bound certificates as symbol identity.
MPN-02 TOPOLOGY: verify every scoped projection and continuity signature; reject accidental
pointwise-domain topology or a claimed equality of pointwise and norm convergence.
MPN-03 EMPTY_DOMAIN: accept empty-symbol collapse and zero norm; reject norm-one or constant
norm equality without the required nonempty-domain hypothesis.
MPN-04 SUPREMUM: check the infimum/nonnegative-upper-bound characterization and pointwise
norm domination; reject defining the norm by an arbitrary chosen admissible bound.
MPN-05 SAME_REPRESENTATION: check both application and linear-map equations, inherited algebra
laws and both contractive bounds; reject an always-zero or unrelated continuous wrapper.
MPN-06 OPERATOR_LIMIT: verify operator-norm difference control and arbitrary-filter `Tendsto`;
reject pointwise-only symbol convergence as sufficient for that theorem.
MPN-07 SUPPORT_FAILURE: replay the nonzero disk symbol with zero Dirac-center representation
and strictly positive symbol norm; reject contractivity promoted to isometry or faithfulness.
MPN-08 GAUGE_SCOPE: retain exact old gauge conjugacy, measure, symbol, target metric and inverse;
reject new measures, independent metrics, star closure, or erased residuals/target obligations.

## Required verification and remaining mathematics

Require exact-head Lean elaboration, public-signature/instance checks, per-module outcomes,
transitive axiom and runtime audits, hostile-control execution, and immutable external replay.
Allowed axioms are only `propext`, `Classical.choice`, and `Quot.sound`; reject `sorryAx`,
unsafe mathematical declarations, and unreported native dependencies. Failed, not-run,
unavailable, missing and source-only results do not pass. A stored `.proved` term is not
an acceptance receipt. Static lexical or finite algebraic diagnostics do not check Lean.

Retain every predecessor scope: no original-section-quotient completeness, pointwise
representative selection, automatic holomorphic closedness, adjoint-invariant subspace,
optimal represented norm, or unconditional full-support/detection theorem. This increment
adds no symbol completeness, star or C-star structure, differential/heat operator,
arithmetic measure/metric, Picard/theta or K/KK identification, Weil comparison, residual
decay, RH/ABC conclusion, F06 release or worker authority.
