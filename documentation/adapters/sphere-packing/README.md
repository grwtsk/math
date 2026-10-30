# thefundamentaltheor3m/Sphere-Packing-Lean adapters

Local attribution: grwtsk contributors.

Pinned upstream: [thefundamentaltheor3m/Sphere-Packing-Lean@77cf0a0c104f2e31501eab04d88bbc068d61c169](https://github.com/thefundamentaltheor3m/Sphere-Packing-Lean/tree/77cf0a0c104f2e31501eab04d88bbc068d61c169).
This provider imports exact upstream modules in isolated native-version packages.
The complete pinned source inventory contains 78 Lean files; inventory
coverage is not a claim that every source file is compiled or every statement proved.

Mathematical use: Fourier/geometric packing and density consumers.
Missing bridge: Select exact dimension and normalization; audit real proof endpoints and unresolved source obligations.

| Isolated adapter directory | Upstream project | Toolchain | Import surfaces |
| --- | --- | --- | --- |
| `adapters/sphere-packing` | `.` | `leanprover/lean4:v4.35.0-rc4` | 1 |

Run `lake build` only inside the selected adapter directory using its exact toolchain. This is a requested check, not a successful receipt. Path dependencies in the copied lock are explicitly rebound to the same immutable repository subdirectory; originals and conversions are retained in catalogue.json. Upstream Lake configuration remains the pinned dependency configuration.

All compilation, fresh kernel replay, transitive axiom audits and statement-fidelity
checks are **NOT_RUN**. These are import surfaces, not newly proved GRWTSK bridges.
Conjectures, challenge stubs, unproved source premises and finite evidence retain
their original scope. Imports may expose `sorryAx` or other unapproved dependencies;
no proof acceptance is asserted. Select actual consumer declarations and reject
unapproved axiom closures before making a mathematical acceptance claim.

No process runners or upstream post-update hooks are copied into math. Some
upstream configurations have effectful hooks: `catalogue.json` records their
presence; none was executed. Source replay must reproduce or explicitly qualify
that boundary through supported Noe tooling, not silently assume an unmodified
Git checkout equals a locally patched dependency.

Original authorship remains in upstream sources; repository license/notice files
are retained when present. This package is outside root default imports/builds.
See catalogue.json for every library, source module/blob, config and dependency
pin, and the canonical paper ledger for evidence scope and unresolved bridges.

## Consumer wave 2026-10-29

New subject-organized source candidates: `adapters/sphere-packing/GRWTSK/ConvexAndDiscreteGeometry/GeneralConvexity/E8SeparationConsumers.lean`. See
[consumer provenance](../consumer-integrations.json) and the canonical paper ledger.
Exact declarations and hypotheses remain in the source; compilation, fresh replay
and transitive axiom audit are NOT_RUN.

## Exact finite-sample covering cost

E8FiniteCoveringConsumers adds three source candidates: strict separation at twice
the cover radius, exact external covering number equal to S.card, and a lower
bound for any cover-center set. Requires 2*epsilon<sqrt2; empty S/radius 0 included.
This is an exact finite Euclidean observation, not optimal density or arithmetic
mass packing. See [references](references.md) and `documentation/mathematics/_verification/targets/ConvexAndDiscreteGeometry/GeneralConvexity/e8-finite-covering-20261029.json`; all native checks
remain NOT_RUN and original E8SeparationConsumers is unchanged.

<a id="e8-cover-matching-20261029"></a>
### Radius-close E8 cover matching source candidates

Local attribution: grwtsk contributors. New source `6336a394397cca8587c4b0ba713b36e0ba4b5bee` / blob `719bf5797ad0d64246a718661340278b5b15a49f` exposes an actual injection from each finite E8 sample to any closed-ball cover center set when STRICT `2*epsilon<sqrt2`, with pointwise Euclidean `dist≤epsilon`. Finite equal-cardinality covers give an equivalence with the same forward map. Empty samples, zero radius and arbitrary nonlattice/infinite centers are retained in the injection theorem. The two exact roots are `GRWTSK.ConvexAndDiscreteGeometry.GeneralConvexity.E8CoverMatching.exists_close_embedding_of_isCover` and `GRWTSK.ConvexAndDiscreteGeometry.GeneralConvexity.E8CoverMatching.exists_close_equiv_of_isCover_and_card_eq`.

The Basic.E8 bound by Bhavik Mehta/Gareth Ma and the public Mathlib covering/finite-cardinality APIs retain Apache-2.0 attribution. Sphere `77cf0a0c104f2e31501eab04d88bbc068d61c169`, Basic.E8 `c369209e9ae2a7e358e2b312cd251bf9caf20cd2`; exact native Lean4.35.0-rc4/Mathlib `1f414401f69059aa7eead47b53ee40bd38455eeb` stays isolated. The actual covering-number consumer gains point-center witnesses behind the previous cardinal obstruction; no root-version port, nearest-center algorithm, arithmetic mass map or optimal-density theorem is supplied. MainTheorem remains excluded. All compilation/Comparator/interface/discovery/fresh replay/full axiom facets are NOT_RUN; independent checker UNSUPPLIED. Source/API/import/type review is not acceptance. Historical scopes remain unchanged.

[Canonical ledger](../../mathematics/_support/reference/literature/reading-background/paper-to-formalization-references.md#e8-cover-matching-20261029) and [exact source-bound target](../../mathematics/_verification/targets/ConvexAndDiscreteGeometry/GeneralConvexity/e8-cover-matching-20261029.json) retain both literal expected types, source identities and remaining obligations.
