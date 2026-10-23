# Original-area completeness: static verification specification

## Status and exact scope

SOURCE_COMMITTED / NOT_RUN / NOT_KERNEL_AUDITED.
This is a static mathematical acceptance specification, not a run receipt, executable
manifest, worker instruction, schedule or authority record. Bind eventual checking to
an exact commit and tree externally. Owner: #230; consumers: #40, #177 and #204.
Draft integration: #273.

Isolated root: `GRWTSK.Interfaces.PortFiberAreaComplete`.
Mathematical source: `GRWTSK.Analysis.Complex.HolomorphicAreaComplete`.
The root imports the preceding local-uniform interface. No old root imports this leaf.
No predecessor source, measure, metric, topology, dependency, arithmetic supplier,
residual plan or terminal disposition changes. No instance declaration is introduced.

## Mandatory predecessor and acceptance coverage

Mathematical parent: `56d4f8a78dfa0a1e7bb7bcaac6116317fb623509`.
Retain `verification/portfiber-area-local-uniform-v1.md`, blob
`a7f1ff2d45602ff790e8ce3cab3cb179f74dcd5d`, and every recursive prerequisite.
Its mathematical source remains blob `8dd87866f5a16c3297c3a744e4d34cc2b65417d1`;
its interface remains blob `96fd6f7d2c6670492fe9006722bc7994f606f4a7`.
Retain the exact area-subtype/energy binding, disk-area supplier, measure-transfer and
norming criteria, completion repairs and `identityTwistedFamily` erratum.
Historical no-completeness statements retain their isolated-leaf scope: this leaf
provides the additional global argument; their old specifications are not rewritten.

Retain 83 planned predecessor local-module requirements and 242 controls. Two new
modules and eight additional controls give 85 planned local-module requirements and
250 control specifications, NOT discovered or executed coverage. Reconcile actual
transitive imports, optional requirements and per-module source identities. Root-only
success cannot replace all required exact-identity terminal outcomes. Missing, failed,
unavailable, source-only and unreported outcomes are not passes.

Pins remain Lean `leanprover/lean4:v4.33.0` and Mathlib
`db584cd6d46c92f209a44c0f1c829460d327499d`. Direct imports add the pinned lower-integral
Fatou and countable-integral APIs. Audit the actual `lintegral_liminf_le` signature,
nontrivial atTop limit laws, normed-quotient projections and completion-isometry APIs.
No completeness assumption on the original quotient is available before its proof.

## Exact energy and one-sided lower semicontinuity

`scalarEnergy` is the OLD energy of the OLD scalar-section realization, with identity
cocycle, unit metric and unnormalized actual area on the exact domain subtype.
`scalarEnergy_realization` binds it to the original quotient energy. The norm equation
uses the quotient's existing finiteness proof, not the real conversion of infinity.
`realization_sub` binds the holomorphic difference to the actual quotient difference.

`scalarEnergy_le_liminf` applies Fatou to the measurable NONNEGATIVE squared densities.
Pointwise complex convergence implies convergence of those exact ENNReal densities.
The theorem retains the SAME area measure on both sides and concludes only

    energy(f) <= liminf_n energy(F(n)).

It assumes no uniform bound, integrable majorant, finite total area, detector, monotonicity
or energy convergence. `scalarEnergy_le_of_eventually_le` separately uses a supplied
TAIL bound. The proof of its liminf bound explicitly chooses max(n,N), retaining tail
quantifier order and requiring no bound on the finite discarded prefix.

## Finite-energy limit and convergence in the old norm

`realization_tendsto` uses the previous `holomorphicLimit` and its exact pointwise values.
`cauchy_norm_bounded` derives a finite norm bound in the original quotient using its
Cauchy property and metric triangle inequality, without any completeness instance.
`holomorphicLimit_finite` combines this bound with Fatou. `finiteLimit` admits the SAME
holomorphic limit into the original finite-energy subtype. `limitClass` uses the old
class map; `realization_limitClass` recovers the preceding holomorphic limit exactly.

`distance_limit_le` applies Fatou a SECOND time, to the genuine functions
realization(F(n)) - realization(F(m)), with n fixed while m tends to infinity.
It retains any eventual nonnegative tail bound epsilon and derives

    dist(F(n), limitClass(F)) <= epsilon.

Finiteness of the upper ENNReal bound is supplied before toReal monotonicity.
The square inequality retains nonnegativity before recovering the norm inequality.
`limitClass_tendsto` uses epsilon/2 and the original Cauchy threshold; its conclusion is
convergence in the ORIGINAL area norm and topology, not merely locally uniform convergence.
`existsUnique_area_limit` uses Hausdorff uniqueness along nontrivial atTop.

`areaQuotient_complete` then invokes the metric sequential completeness criterion with
that constructed limit for EVERY Cauchy sequence. It is a theorem, not an exported
instance. Finite total area and nonempty-domain hypotheses are absent. Empty or trivial
area spaces are permitted. Nothing is asserted for arbitrary measures or bundle metrics.

## Exact identification with the historical completion

Only AFTER the preceding completeness proof, `toCompletion_surjective` installs it
locally. The exact historical linear isometry has closed range, and its previously
proved density then makes that range the whole historical completion. Density alone
was insufficient; do not bypass the source-completeness dependency.

`areaCompletionEquiv` uses `LinearIsometryEquiv.ofSurjective` on that SAME canonical
embedding. Its forward application is definitionally `toCompletion`. Both original
embedding/inverse identities are recorded on all source and completed vectors.
`completedRealization` composes the exact inverse with the earlier lawful realization.
It recovers the original realized function on every embedded class, is injective,
and has finite scalar energy on every completed vector. `completedRealization_energy`
identifies this energy with the historical `completionEnergy`, not a new norm.

This is an area-specific holomorphic realization with finite energy, not surjectivity
onto every holomorphic function or ambient L2. No ambient L2 embedding/closed-subspace
identification, new gauge law, source-specific arithmetic identification, bounded
differentiation, differential-domain or heat theorem is inferred.

## Eight additional hostile controls

AFC-01 ENERGY_IDENTITY: replay original scalar realization, energy and norm bindings;
reject replacement measures, energies, quotient relations or scalar-energy differences.
AFC-02 FATOU_DIRECTION: check density measurability, limit identity and liminf direction;
reject reversed Fatou or an assumed global energy-convergence premise.
AFC-03 FINITE_LIMIT: derive the finite bound from the original Cauchy sequence and admit
the SAME old holomorphic limit; reject prior source completeness or detector assumptions.
AFC-04 TAIL_ORDER: hold n fixed and retain eventual m control and epsilon nonnegativity;
reject a per-point bound, interchanged quantifiers, or premature infinity conversion.
AFC-05 NORM_CONVERGENCE: check the epsilon/2 Cauchy threshold and original norm topology;
reject merely local or pointwise convergence as the completeness conclusion.
AFC-06 COMPLETION_BINDING: require proved source completeness before closed+dense range;
replay canonical forward map, both inverse laws and realized energy on ALL vectors.
AFC-07 STRICT_FATOU: replay escaping pulses on counting measure, with pointwise zero
limit, integrals equal to one and strict Fatou inequality. This is a measure-theoretic
control, NOT a claimed holomorphic-area counterexample. Bounded energies alone do not
justify energy convergence. Replay exact constant-sequence class recovery as positive control.
AFC-08 SCOPE_AND_TRUST: reject promotion to arbitrary measures/metrics, ambient L2
surjectivity, section-space differential/heat domains, changed residuals or terminal targets;
reject stored source proofs or compile-only/root-only output as a complete acceptance receipt.

## Final acceptance and remaining work

Eight disjoint claims and four preservation equations extend the previous portfolio.
A stored `.proved` term is source, not a run result. Require exact-head elaboration,
resolved-signature and instance-coherence checks, complete per-module outcomes, transitive
axiom/runtime audits, hostile-control execution and immutable external replay.
Permit only `propext`, `Classical.choice`, `Quot.sound`; reject `sorryAx`, unsafe mathematical
declarations and unreported native dependencies. Static syntax, hashes and finite
arithmetic cannot verify Fatou, holomorphic completeness or Lean elaboration.

Next obligations include binding operators and completed evaluations to this realization,
ambient L2 closed-subspace identification, reproducing kernels, general compatible metrics
and nontrivial-bundle detectors. Differential/adjoint-invariant/unbounded domains, heat,
Picard/theta/K/KK, arithmetic comparisons, Weil/residual suppliers and RH/ABC remain separate.
No F06 release, worker qualification, build execution, issue closure or merge authority is conferred.
