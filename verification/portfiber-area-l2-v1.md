# PortFiberAreaL2/1 — static acceptance specification

Status at preparation: SOURCE_PREPARED / NOT_RUN / NOT_KERNEL_AUDITED.
This is a mathematical checking specification, not a runner, execution request, receipt,
worker qualification, authority record, or evidence that a check ran.

## Exact predecessor and isolated leaf

Repository: `grwtsk/math`.
Predecessor: `bed7f0dd260cb9b2eecf7b32655a42f93abc2d21`.
Predecessor tree: `403426865cf5c0e5a6f0ac8e56c73ac8adecf789`.
Retain `verification/portfiber-area-reproducing-v1.md` and every recursively required prior
specification, packet, objection, counterexample and statement-preserving erratum.
Its mathematical source, interface and specification blobs are respectively:

```text
5995c524690bdc3f97da887d9759f6990cde08de
f5c17e78682f6043d9c06f46eb54b892ee220a60
e88ff89e2fb1402bfb1b4f5dcbe86b6734daf215
```

New files only:

```text
GRWTSK/Analysis/Complex/HolomorphicAreaL2.lean
GRWTSK/Interfaces/PortFiberAreaL2.lean
verification/portfiber-area-l2-v1.md
```

Isolated root: `GRWTSK.Interfaces.PortFiberAreaL2`.
No prior root or `GRWTSK.lean` imports this leaf. No earlier source, measure, metric,
carrier, dependency pin, residual plan, arithmetic supplier or terminal disposition changes.

## Mathematical obligations and exact identities

The source is the historical `AreaCompletion`: identity cocycle, unit metric and actual
unnormalized complex Lebesgue area on the exact open-domain subtype. The codomain is
Mathlib's ordinary `Lp Complex 2 (areaMeasure D.X)`, NOT an invented L2-like carrier, a
whole-plane extension, a probability normalization, or a changed measure. The new source
introduces no instance declaration and does not replace inherited scalar or norm structures.

`realizedFinite` uses the prior completed-realization energy theorem. The old finite-section
square and pairing integrability theorems supply `realized_square_integrable` and
`realized_pair_integrable`. Check these are the same actual scalar values, with identity
metric weight ONE. `completed_inner_integral` binds the FULL complex inner product to the
area integral of `star(R(v)(x)) * R(w)(x)`, not merely its real part.

`realized_memLp` derives measurability from actual holomorphy/continuity and uses the pinned
square-integrability characterization at exponent TWO. `toL2` calls Mathlib's `MemLp.toLp`.
The computation theorem `toL2_ae` is deliberately ALMOST EVERYWHERE. No pointwise equality
of a chosen Lp coercion with the realized holomorphic function is asserted.

`toL2_add` and `toL2_smul` descend through the ordinary Lp a.e. relation using the old
completed evaluations' linearity. `toL2_inner` uses Mathlib's genuine L2 inner product and
`RCLike.inner_apply'`, with conjugation in the FIRST slot. Norm equality is derived from
self-pairing, not assumed as an independent bound or inferred from injectivity.
`l2Embedding` packages exactly `toL2` as a complex-linear isometry.

`originalL2Embedding` is the exact composition with the historical canonical completion
embedding. Its range equals the completed map's range using the previously PROVED area
surjectivity, not density alone. `holomorphicSubspace` is the actual range submodule in
ordinary L2, and its closedness follows from completeness of the source and isometry.
This closed image is not the previously studied multiplier-operator image.

`mem_holomorphicSubspace_iff` states existence of a holomorphic function with the OLD finite
scalar energy and equality to the L2 class almost everywhere. Forward membership uses the
existing completed realization; backward membership constructs the old scalar section,
finite-energy class and canonical completed vector. No arbitrary L2 representative choice
or assertion that EVERY representative is holomorphic is permitted.

`l2Embedding_multiplier_ae` retains the OLD completed algebra representation, the same
bounded symbol, area measure and realized vector. The conclusion is a.e. multiplication
of the existing Lp class, not an assumed new ambient bounded multiplication operator.

The old kernel convention is `K(z,w) = R(k_w)(z)`. Hermitian symmetry gives the exact identity
`K(x,z) = star(R(k_x)(z))`. `kernel_integrable` proves genuine cross-integrability BEFORE
`integral_reproduces` identifies the integral with `R(v)(x)`. The integrated variable is z;
the evaluation point x is the FIRST kernel argument. A nonintegrable Bochner default,
transposed kernel, omitted conjugation or new reproducing kernel must not substitute.
`integral_reproduces_holomorphic` specializes this to any supplied holomorphic function
with actual finite scalar energy, via the historical scalar class and embedding.

No finite-total-area or nonempty-domain assumption is required by the general new results.
No claim of nonzero evaluation, strict kernel positivity or surjectivity onto all L2 follows.

## Required new controls

Every control requires the applicable exact-source signature review and positive/negative
Lean check. A listed requirement or uncompiled theorem term is not a completed control.

- AL201 — Measure and membership: preserve the exact domain subtype, unnormalized area,
  exponent two, measurability and finite-energy supplier. Reject arbitrary measure replacement,
  infinite-energy real conversion, and a field that assumes the desired L2 membership.
- AL202 — Pairing: require genuine integrability and the FULL complex integral binding.
  Reject a real-only pairing, wrong complex conjugation slot, or nonintegrable default.
- AL203 — Map identity: require `toL2_ae`, linear laws, exact inner/norm equality and
  `l2Embedding_apply`; never replace a.e. computation with equality at every point.
- AL204 — Image characterization: require both directions of `mem_holomorphicSubspace_iff`
  and the canonical scalar-class computation. Reject interpreting an EXISTING holomorphic
  representative as holomorphy of every measurable representative or as all-L2 surjectivity.
- AL205 — Closedness and original source: require the actual Lp submodule's closedness and
  `originalL2Embedding_range`. Do not substitute closed operator image or density alone.
- AL206 — Kernel integral: require `kernel_integrand_eq`, `kernel_integrable`,
  `integral_reproduces` and the finite-holomorphic specialization with evaluation point first.
  Reject a transposed kernel, lost conjugation, missing finite energy or assumed reproduction.
- AL207 — Operator binding: require the old representation and symbol in
  `l2Embedding_multiplier_ae`. Do not replace this with an unrelated ambient operator,
  a changed metric or measure, or a new assertion about the adjoint or differential domain.
- AL208 — Null-point control: check `spike_memLp`, `spikeClass_zero`, `spikeClass_mem`, and
  `no_allL2_point_recovery`. The old center spike is not holomorphic, yet its L2 class belongs
  through the zero holomorphic representative. No function on all L2 classes can recover
  every representative's center value; this does not contradict analytic point evaluation.

The eight disjoint portfolio claims record the small-cover-index instances of the
universe-polymorphic source. All four preservation declarations must retain their exact
old local branch and terminal target. A portfolio `.proved` field stores a source proof
term, not a verification receipt or an application-target promotion.

## Cumulative acceptance and trust

Retain 87 planned predecessor local-module requirements and 258 predecessor controls.
Two additional Lean modules and eight controls give 89 planned local-module requirements
and 266 control specifications. These are PLANNING counts, not discovered or executed
coverage. Discover the actual transitive imports and reconcile each exact module identity.

Pins remain Lean `leanprover/lean4:v4.33.0` and Mathlib
`db584cd6d46c92f209a44c0f1c829460d327499d`.
The pinned Lp/MemLp, L2 inner-product, RCLike scalar-inner and inherited section APIs must
elaborate with the intended public signatures and scalar/norm/metric/topology/uniformity/
completeness projections. Permit only `propext`, `Classical.choice`, `Quot.sound`;
reject `sorryAx`, unsafe mathematical declarations and unreported native dependencies.
Record outcomes externally, by module and source identity. Missing, failed, unavailable,
source-only and root-only results do not pass. Keep effectful checking in `grwtsk/noeaaeue`.

## Separate remaining claims

No orthogonal/Bergman projection, explicit disk Bergman kernel, kernel-span density,
anti-holomorphic parameter differentiability, general gauge-compatible L2/kernel transport,
nontrivial-bundle detecting section, new metric completeness, bounded differentiation,
differential/unbounded domain, heat calculus, source-specific arithmetic measure identity,
Picard/theta/K/KK comparison, Weil/residual supplier, RH/ABC conclusion or execution authority
is introduced. Historical nonclaims keep their old isolated-leaf scope; this leaf adds the
specific L2 image and integral theorem without rewriting any earlier record.
