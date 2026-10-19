# Bounded section operators: source-bound verification specification

## Status, scope and predecessors

`SOURCE_COMMITTED / NOT_RUN / NOT_KERNEL_AUDITED`.

This is a static mathematical specification, not an executable manifest, worker request,
authorization, audit result or operational receipt. Owner: grwtsk/math#230; consumers:
#177 and #204. Pin the published commit and tree externally before verification.
The new isolated root is `GRWTSK.Interfaces.PortFiberSectionBounded`.

Exactly two new Lean modules and this specification are added:

```text
GRWTSK.Analysis.Operator.HolomorphicLineSectionBounded
GRWTSK.Interfaces.PortFiberSectionBounded
```

Immediate prerequisite at `feff48d705a216e90d11844b2859947313aa8529`:

```text
completion source        3b22d151f6675760bc998da2c259830144f0b7ea
completion interface     bfafe3828711d94b9fa04bd99ab3e98ab3f2dec0
completion specification 6bcbb94a4cec0016b46be38c750dde7f741e62f6
```

Retain `verification/portfiber-section-completion-v1.md`, all 58 predecessor module
requirements and all 146 control specifications, exact signatures, source-binding errata,
scoped-instance policies, optional historical roots and application nonclaims. The two
new modules and eight controls bring declared required coverage to 60 local modules and
154 controls, not executed coverage. Reconcile the actual full transitive import closure
and source identities at the selected head; a root success alone is insufficient.

The inherited inner-product source/interface/specification blobs remain `af29b543f7985cd7948ee77c96a4b814819f7c3f`,
`00a1bcfe7c94a7c286da4899eb8b5d4207157634`, and `f532244350f22b8292411a1cda4346495bfe90bd`.
The constructor-binding repair `identityTwistedFamily (D := D)` and every earlier
energy/quotient/linear/pairing specification remain mandatory through the predecessor.

No predecessor source, root, specification/manifest, dependency pin, README, residual
plan, arithmetic supplier or `GRWTSK.lean` is modified. The new root imports the previous
completion interface; no earlier root imports this leaf. No new instance is declared.
The existing quotient structures are activated only through their established scope.
Lean remains `leanprover/lean4:v4.33.0`; Mathlib remains
`db584cd6d46c92f209a44c0f1c829460d327499d`. The new direct upstream import is
`Mathlib.Analysis.InnerProductSpace.Adjoint`, inspected at blob
`7fb5103bd57a79d9880b97d367dd7eef730a1d32`. All other dependencies remain manifest-bound.

## Exact bounded extension and norm

`completeMap` takes an actual continuous complex-linear map from the original quotient
at metric M to the original quotient at metric N. It first embeds the output into its
actual completion, then uses the old `extendLinear` on the input. Both endpoints retain
the same selected base measure. No pointwise map is silently promoted to a bounded map.

`completeMap_toCompletion` identifies the extension with the original map on every
embedded class. `completedMap_ext` uses continuity and the actual dense embedding.
`completeMap_injective` uses the target embedding's injectivity; equal norms or agreement
on selected samples cannot identify maps. No completeness instance on the old quotient
is needed or introduced.

Zero, addition, subtraction, scalar multiplication, identity and ordered composition
are preserved as equations of continuous linear maps. `completeMap_comp` retains the
exact intermediate metric and space. Reversing composition is not a valid replacement.

`completeMap_bound` extends the original operator-norm bound by closed-property induction
from the dense original quotient to all completed vectors. `completeMap_norm` proves the
reverse inequality by restriction along the canonical isometric embedding. Together they
establish equality of operator norms, without a nontriviality assumption. An independently
chosen extension or an always-zero function does not supply these equations.

## Gauge defects cannot disappear

`quotientGaugeMap` and `completionGaugeMap` are bundled versions of the existing gauge
isometries. `completeMap_gauge` identifies their exact relationship. The target metric is
`transportMetric G M`; no independently selected metric or changed measure substitutes.

`gaugeDefect` is U A - B U on the original quotient. `completedGaugeDefect` is the same
expression using the historical completed gauge and the constructed completions of A/B.
`completeMap_gaugeDefect` derives equality with the extension of the original residual
from linearity and ordered composition. Its norm is exactly the original operator norm,
and its vanishing is equivalent to vanishing of the original defect. Completion cannot
turn a failed bounded intertwiner into an exact one or improve its residual norm.

These are mathematical residuals, not writes to the optional-adapter ledger. No numeric
ledger entry, absent value, acceptance status or terminal disposition is changed.

## Actual Hilbert adjoints, with exact hypotheses

`ContinuousLinearMap.adjoint` is used only between the actual complete inner-product
carriers. `completeMap_adjoint_of_pairing` starts with bounded maps A and S on the old
quotients and the explicit law <S y,x> = <y,A x>. Two-variable completion induction extends
that law; the Hilbert adjoint uniqueness theorem identifies the completion of S with the
actual adjoint of the completion of A. This does not assert existence of such S on the
original holomorphic quotient, or preservation of that dense subspace by every adjoint.

`gaugeConjugate` is Uhat A Uhat.inverse on the actual completed spaces. The application
formula exposes the exact inverse. `gaugeConjugate_adjoint` proves adjoint covariance
using the original complex-inner preservation and inverse laws, not just invertibility.
For bounded source A/B, `completed_conjugacy_of_defect_zero` binds the completed B to this
conjugate only when the exact source residual vanishes. `completed_adjoint_of_defect_zero`
then connects their actual completed adjoints. No nonzero defect is dropped in this chain.

## Concrete positive and negative fixtures

The existing Dirac vector of constant one is nonzero, as witnessed by its old nonzero
complex pairing. `completedIdentity_ne_zero` excludes an always-zero identity on that
actual space. `phase_is_completed_scalar` identifies constant phase multiplication on
the completion with completion of the old quotient's complex scalar action.

`phase_adjoint` gives the negative phase -i as the actual adjoint of phase i;
`phase_not_self_adjoint` rejects their identification on the nonzero Dirac space. A
holomorphic constant multiplier need not be self-adjoint. Existing zero-measure, off-support,
equal-norm/distinct-class, i/-i pairing, infinite-energy and independent-metric controls
remain mandatory. These fixtures do not assert universal nontriviality for all measures.

## Additional hostile controls

| Identifier | Required exact-source check or rejection |
| --- | --- |
| `bounded-reject-unbounded-or-map-substitution` | Check `completeMap`, original continuous-linear type, old embeddings, computation, extensionality and injectivity; reject pointwise/discontinuous maps, finite-sample agreement or unrelated extensions. |
| `bounded-reject-order-or-middle-object-loss` | Check zero/add/sub/scalar/identity and `completeMap_comp`; retain exact middle metric, source/target types and composition order. |
| `bounded-reject-norm-drop` | Check both directions of `completeMap_norm` and the density-based bound, including zero spaces; scalar energies or finite matrix diagnostics cannot replace this theorem. |
| `bounded-reject-gauge-residual-erasure` | Check original gauge bindings, `completeMap_gaugeDefect`, norm equality and zero iff; reject changed measure, independent metric, reversed defect or erasing a nonzero residual. |
| `bounded-reject-assumed-dense-subspace-adjoint` | Check two bounded candidate maps, the explicit complex pairing equation, two-variable continuity/density and actual adjoint uniqueness; do not infer that every adjoint preserves holomorphic classes. |
| `bounded-reject-invertible-as-unitary` | Check exact completed gauge inverse, inner-product law, adjoint covariance, zero-defect conjugacy and final adjoint identification; invertibility or nonzero residual is insufficient. |
| `bounded-reject-zero-extension-or-phase-symmetry` | Check nonzero Dirac vector, nonzero identity, completion of scalar phase, its -i adjoint and non-self-adjoint fixture; do not assume all measures give nonzero spaces. |
| `bounded-reject-domain-heat-or-target-promotion` | Check all eight claims/four preservation equations, unchanged prior roots/pins and inherited controls; reject differential domains, heat, arithmetic suppliers, ledger effects or terminal-target promotion. |

## Acceptance and remaining mathematics

Require a clean checkout of the pinned published head, exact parent/tree/source/pin
reconciliation, all required per-module outcomes and controls, complete resolved public
signatures and scoped-instance/coercion projections, and transitive axiom/runtime audits.
Allowed axioms remain only `propext`, `Classical.choice`, `Quot.sound`; reject `sorryAx`,
unsafe mathematical declarations, unreported native dependencies and uninspected effects.
Missing, failed, unavailable, root-only or source-only outcomes do not become passes.
A source repair invalidates affected old checking evidence and requires a new exact head.

Under a separately authorized execution profile, the isolated target descriptions are:

```bash
lake build GRWTSK.Interfaces.PortFiberSectionBounded
lake env lean GRWTSK/Interfaces/PortFiberSectionBounded.lean
```

These commands are not records of execution. Source-level proof scripts, lexical checks
and exact finite matrix calculations are not Lean elaboration, kernel audit or external
replay. The new implementation may require elaboration repairs.

Remaining producers include global norm bounds for nonconstant section operators, actual
source-bound L2 realization and holomorphic closedness, adjoint preservation of the old
holomorphic subspace, differential domains/regularity, connections, Laplacians and heat.
No unbounded extension, arithmetic measure, Picard/theta or K/KK identification, Weil
comparison, residual decay, RH/ABC proof/refutation or runtime/worker authority is supplied.
