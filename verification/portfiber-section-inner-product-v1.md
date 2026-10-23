# Section inner product: source-bound verification specification

## Status and scope

`SOURCE_COMMITTED / NOT_RUN / NOT_KERNEL_AUDITED`.

This is a static mathematical review/replay specification, not an executable manifest,
controller, receipt, or execution authorization. Owner: grwtsk/math#230; consumers: #177
and #204. Pin the selected commit and tree externally before checking.
The isolated root is `GRWTSK.Interfaces.PortFiberSectionInnerProduct`.

The increment adds exactly two local modules and this document:

```text
GRWTSK.Analysis.Complex.HolomorphicLineSectionInnerProduct
GRWTSK.Interfaces.PortFiberSectionInnerProduct
```

The interface imports the preceding pairing interface. No earlier root imports this leaf.
No predecessor source, manifest, specification, dependency pin, README, residual plan,
arithmetic supplier, or `GRWTSK.lean` is changed. This leaf bundles algebraic and
inner-product structures on the existing quotient; it supplies no completeness instance.

## Mandatory predecessors and exact identities

Immediate prerequisite: `verification/portfiber-section-pairing-v1.md` at
`367bb67c78058ad39e627f2bf717b313aad5fa8b`, Git blob
`9a3a6dc99b42e2b49ae96b6ec9b0dd405400263e`. The pairing source is blob
`975c08d73459b86c39e12761831fcfb980676165`; its interface is blob
`6ddac384f805f5f4461e4e5adcd5a360a728b0e7`.

Retain all 54 predecessor local modules, 130 predecessor controls, complete public
signatures, source-binding errata, trust requirements and nonclaims at their original
scopes. In particular, the old pairing leaf still installs no algebraic or normed
instances by itself. The new scoped structures do not retroactively alter that claim.

The preceding linear specification/source/interface blobs remain respectively
`b62ca602e98f58a40e3b916bdd4a4789f7d5cfed`,
`660cf0f255a0a8cfa78115820358a0d5650c2107`, and
`96e6e21b30130c6a463d910708d81942f770e54c`. The repaired energy source remains
`4e0a5294e4dfa0cec63efff7560e73f766cf0b04`, with `identityTwistedFamily (D := D)`.
All earlier quotient/energy/core prerequisites and their source-binding errata remain
mandatory through the unchanged pairing specification. No prior receipt is asserted.

Required coverage is now 56 distinct local modules and 138 control specifications,
not executed coverage. Reconcile the entire transitive local import closure, historical
optional adapters, isolated roots and explicit per-module source identities. A successful
root import cannot stand in for all required module outcomes.

The toolchain remains `leanprover/lean4:v4.33.0`; mathlib remains
`db584cd6d46c92f209a44c0f1c829460d327499d`. The unchanged `lake-manifest.json` binds all
other dependencies. New direct upstream imports are
`Mathlib.Analysis.InnerProductSpace.Basic` and
`Mathlib.Analysis.Normed.Operator.LinearIsometry`.

## Existing carrier and scoped structure coherence

`quotientAddCommGroup` bundles the original `quotientZero`, `quotientAdd` and scalar -1
negation. Its laws come from the preceding individual vector-law proofs; natural and
integer repeated addition use the standard recursive constructions. `quotientModule`
bundles the original complex action and each previously proved scalar law.

`quotientInnerCore` uses the actual `quotientPairing`. Each field is supplied by a
preceding proof: conjugate symmetry, nonnegative self-pairing, left additivity,
conjugate linearity in the first slot, and definiteness at the old quotient zero.
The conjugate-symmetry field reverses the arguments of the preceding theorem to match
Mathlib's exact convention. No field is an independent assumption about a new form.

`quotientNormedAddCommGroup` is constructed through `InnerProductSpace.Core` from that
same core. `quotientInnerProductSpace` uses `InnerProductSpace.ofCore`. Check that the
additive structure, complex action, induced norm/metric and inner product are coherent
across every typeclass projection; no independently chosen norm or topology substitutes.

All four instances are scoped to
`GRWTSK.Analysis.Complex.HolomorphicLineSectionInnerProduct`. Consumers open that scope
explicitly, as the isolated interface does. No global nontriviality, completeness,
pointwise representative, or conflicting inherited norm is introduced. Exact elaboration
must verify activation, inference, projection coherence and exported theorem signatures.

`zero_eq_operation`, `add_eq_operation`, `neg_eq_operation`, `smul_eq_operation` and
`sub_eq_operations` bind the notation to the old operations. `inner_eq_pairing` and
`inner_classOf` bind the bundled inner product to the original binary quotient lift and
actual representative integral. A new setoid, carrier, chosen representative or unrelated
linear equivalence cannot replace any of these definitions.

## Norm, energy and metric

`norm_eq_sqrt_energy` identifies the induced norm with the square root of the real value
of the original quotient energy. `norm_sq_eq_energy` recovers that real value exactly.
`ofReal_norm_sq_eq_energy` recovers the extended energy and explicitly supplies the
historical `quotientEnergy_lt_top` proof before invoking `ENNReal.ofReal_toReal`.
`norm_eq_zero_iff_class` is separation at the existing a.e. quotient zero, and
`norm_classOf` retains the representative-level energy computation.

`pairing_norm_le` transfers Mathlib's Cauchy-Schwarz theorem to the bound pairing;
`pairing_norm_le_energy` expresses its right side using the original energies.
`norm_add_le_sections` gives the norm triangle inequality for the old quotient addition,
and `norm_smul_sections` gives the exact absolute-scalar norm law for the old action.
They are not claims that the quadratic energy itself is additive or a norm.

`dist_eq_sqrt_energy_sub` identifies distance with the square root of the energy of the
actual quotient difference. It does not identify distance with a difference of scalar
energies. This is the constructed norm topology on the old quotient, not a theorem
identifying it with a separate quotient topology, locally uniform holomorphic convergence,
pointwise convergence, or the topology of an ambient measurable L2 space.

## Exact gauge isometry and boundary fixtures

`gaugeLinearEquiv` retains the historical `gaugeEquiv` and its established additive/scalar
laws. `gaugeLinearIsometryEquiv` derives norm preservation from the old energy-invariance
theorem and the induced norm formula. The measure is identical on both sides, and the
target metric is precisely `transportMetric G M`.

Forward and inverse application theorems identify both maps definitionally with the
original equivalence and its exact inverse. `gaugeLinearIsometryEquiv_inner` retains the
full complex pairing, and `gaugeLinearIsometryEquiv_isometry` supplies the metric statement.
This is an equivalence of the constructed inner-product spaces, not a completeness claim
or a section-space operator adjoint. A changed measure, independent target metric or
unrelated isometry requires separate proofs and cannot be substituted by label.

`zeroMeasure_eq_zero` proves that every class for zero measure is the old zero class.
Thus the constructions do not smuggle in a nontrivial quotient or a positive-mass premise.
`Fixtures.equal_norm_distinct_classes` uses the old constant 1/-1 Dirac sections and
inherited distinct equal-energy theorem: equal norms do not identify arbitrary classes.
The inherited same-class/different-pointwise-values fixture still blocks support-free
pointwise recovery. `bundled_imaginary_pairing` gives i on the old 1/i Dirac classes;
`bundled_reversed_imaginary_pairing` gives -i when the arguments are reversed.

The interface adds eight disjoint small-index claims and four preservation declarations.
The mathematical declarations are universe-polymorphic. The prior local dispositions,
open obligations and terminal target remain unchanged. A `.proved` term is not audit status.

## Additional hostile controls

| Identifier | Required exact-source check or rejection |
| --- | --- |
| `inner-reject-carrier-or-algebra-substitution` | Inspect the original carrier/setoid, every group/module field, all preceding law proofs and five operation-binding equations; reject a replacement quotient or unrelated action. |
| `inner-reject-core-or-instance-drift` | Check all six core fields, conjugate argument order, all four scoped instances, exact projection/inference coherence, `inner_eq_pairing` and `inner_classOf`; reject an independent form, norm, topology or ambient instance. |
| `inner-reject-infinite-energy-real-conversion` | Check the square-root/square identities and explicit old finiteness proof in extended-energy recovery; retain the predecessor nonintegrable-self-pairing exclusion. |
| `inner-reject-energy-as-norm-or-distance` | Check Cauchy-Schwarz, old-operation triangle/scalar laws and energy of the actual difference; check distinct equal-norm classes and inherited nonadditive-energy controls. |
| `inner-reject-gauge-map-metric-measure-drift` | Check the constructed target metric, unchanged measure, exact old forward/inverse maps, norm preservation and full complex-inner preservation; reject unrelated isometries or changed parameters. |
| `inner-reject-support-or-nontriviality-promotion` | Check zero-measure collapse, quotient-zero norm separation and inherited off-support counterexamples; reject pointwise recovery, nontriviality or positive mass without explicit premises. |
| `inner-reject-complex-slot-loss` | Check the bundled 1/i and i/1 Dirac computations, core conjugate symmetry and first-slot scalar conjugation; reject real-part-only or complex-bilinear replacements. |
| `inner-reject-completeness-or-coverage-promotion` | Reconcile eight claim/proof branches, four preservation statements, all predecessors and scoped import boundaries; reject missing outcomes, root-only coverage, Hilbert/closedness/L2-surjectivity/adjoint/heat/arithmetic/terminal-target promotion. |

## Acceptance and remaining obligations

Require an externally pinned clean checkout, exact head/parent/tree/blob and dependency
reconciliation, all 56 local-module outcomes, all 138 controls, complete public signatures
including resolved instances, and the full transitive axiom/runtime audit. Allowed axioms
remain only `propext`, `Classical.choice`, and `Quot.sound`; reject `sorryAx`, unsafe
mathematical declarations, unreported native dependencies and uninspected effects.
Each required item needs explicit PASS/FAIL/NOT_RUN/UNAVAILABLE with source identity.
Missing evidence, static inspection or root-only success is not a pass. A source repair
requires a new exact-head reconciliation and invalidates affected prior receipts.

Under a separately authorized execution profile, the target descriptions are:

```bash
lake build GRWTSK.Interfaces.PortFiberSectionInnerProduct
lake env lean GRWTSK/Interfaces/PortFiberSectionInnerProduct.lean
```

They are not execution permission. Effectful checking, resource metering, hostile-control
execution and immutable external replay remain outside this pure mathematical source.
Source-token, symbolic or finite-atomic arithmetic diagnostics do not execute Lean proof
terms, audit public signatures, or establish transitive trust. Elaboration repairs may remain.

Remaining mathematics includes abstract completion and extension of the exact gauge
isometry, or additional hypotheses proving a closed holomorphic subspace; ambient L2
embedding/surjectivity must be distinguished. Bounded operators, section-space adjoints,
differential domains/regularity, connections, Laplacian/heat transport, source-specific
arithmetic/elliptic measures and metrics, base-change/Jacobian, Picard/theta and K/KK
identifications, Weil comparisons and residual decay remain separate obligations.
No RH/ABC proof/refutation, issue closure, merge or runtime authority is supplied.
