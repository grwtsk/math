# Source-bound verification specifications

This directory contains **static mathematical verification targets**. It does not contain an execution engine or operational evidence store.

A target in this directory may identify:

- the public root, modules, declarations, and certificate relations to inspect;
- the committed Lean toolchain and dependency manifest;
- the mathematical trust and axiom policy;
- required positive and hostile controls;
- the acceptance predicate and explicit nonclaims;
- the source changes that invalidate a prior result.

It must not claim that a replay occurred merely because the target exists.

## Effect boundary

`grwtsk/noeaaeue` is responsible for effectful realization of these targets:

```text
resolve a pinned math commit and tree
→ materialize a clean checkout
→ acquire the pinned toolchain and dependencies
→ invoke the requested builds and inspectors
→ meter resources and retain logs
→ verify target coverage and hostile controls
→ issue execution, verification, proof, and Git receipts
→ bind those receipts back to the exact math target
```

Operational scripts, caches, attempt directories, controller state, schedules, actor authority, and receipt ledgers are not canonical content of this repository.

## Current targets

- [`spectral-descent-v1.toml`](spectral-descent-v1.toml) describes the source-bound target corresponding to the spectral-descent baseline tracked by GitHub issue #100.
- [`graph-hodge-port-core-v1.5.toml`](graph-hodge-port-core-v1.5.toml) is the current isolated graph-port, finite Hodge/heat/resolvent, exact rational-Hodge and H⁰ transport, context-indexed PTS admission, formal KK, bounded compact-defect cycles, unbounded domain/commutator/compact-resolvent cycles, optional-adapter plans, and operator-port target tracked by issues #1, #36, #39, #40, #120, #159, #176, and #177. Earlier versions remain historical source snapshots and are not aliases for `v1.5`.
- [`portfiber-holomorphy-core-v0.13.toml`](portfiber-holomorphy-core-v0.13.toml) is the current isolated dependent port-fiber target. It retains all v0.12 modules and adds holomorphic-section and same-source coordinate-ring descent for arbitrary indexed ambient-open covers, section invariance under surjective cover reindexing, exact source-ring precomposition, and polynomial-model recovery. Six new small-index portfolio claims form a disjoint extension; the source theorems are universe-polymorphic. The target lists 34 modules and 66 hostile-control specifications; specifications alone do not report execution. `v0.1` through `v0.12` remain historical source snapshots.
- [`openai-pts-weak-to-strong-v1.toml`](openai-pts-weak-to-strong-v1.toml) specifies an external clean replay and exact local-alignment review for `OAI.PureTypeSystem.weak_implies_strong`, including the Lean 4.34.1 versus local Lean 4.33.0 boundary.
- [`openai-cm-rational-hodge-v1.toml`](openai-cm-rational-hodge-v1.toml) specifies source, statement, dependency, citation, and local-interface review for the October 2026 CM rational-Hodge manuscript without treating manuscript status as a local formal proof.

The target manifests are intentionally non-self-referential. A Noeaaeue or local-review binding supplies the pinned repository commit, tree, and blob identities when it executes a target.

## v0.11 compatibility notes

`RingCertificate` and `TopologicalRingCertificate` now inhabit `Prop`, as required by the composable-law interface. The exact port function and ring laws are unchanged. `.hom` reconstructs the bundled homomorphism; `.map_eq` remains available. Producers using record fields `hom` and `map_eq` migrate to `RingCertificate.ofHom P f hf`; `hom_ofHom` proves recovery of the supplied homomorphism. Optional proof/refutation accessors now return `Option (PLift P)` / `Option (PLift (¬ P))`, with the evidence in `.down` when present.

The old v0.10 nonclaim about evaluation-map continuity is discharged by new mathematical source, not by changing a status label. Continuity and point separation are not a homeomorphism, a scheme/analytic-space comparison, an arithmetic-to-elliptic supplier, global holomorphic gluing, or an RH proof. The generic bridge is not necessarily injective; the constant-bridge theorem is an explicit negative control. Source presence is not kernel-checking or external replay evidence.

## v0.12 open-cover descent scope

`HolomorphicOpenCoverGluing` proves locality of the existing holomorphic-extension predicate when both members of an exact `BinaryDomainCover` are open in the ambient complex plane. It constructs the historical `HolomorphicGlueCertificate` rather than requiring its global conclusion as an input. Forgetting the holomorphic glue yields exactly the historical ordinary function glue. Coverage, overlap matching, and openness remain separate requirements. The positive cover is `C minus {0}` together with `C minus {1}`; negative theorem fixtures reject mismatching constant sections and missing coverage.

`AnalyticAffineGluing` constructs a unique global ring homomorphism from compatible local `Bridge` maps with the same source ring. Compatibility is equality of ring homomorphisms on the overlap, not just equality of spectrum point maps. Local ring laws and separatedness prove all global ring laws. The global spectrum map inherits continuity and agrees with each local point map. Descent of local polynomial coordinate maps recovers the previously constructed global polynomial model.

`PortFiberOpenCoverDescent` adds four quantified claims through `Architecture.combineLocal`. Historical indices, local dispositions, arithmetic obligations, the terminal RH disposition, and residual plans are not rewritten. This increment does not establish arbitrary indexed-cover descent, nontrivial line-bundle cocycle descent, a source-specific elliptic/arithmetic map, or any Weil/RH/ABC conclusion. All source remains pending direct Lean checking and exact-head audits.

## v0.13 indexed-cover descent scope

`HolomorphicIndexedCoverGluing` introduces `IndexedDomainCover` without replacing the historical binary API. The index type need not be finite or inhabited. Coverage supplies a local member for each point of the selected domain; `Matching` requires exact equality on every pairwise intersection. `glueSection_apply` removes pointwise dependence on the member selected by classical choice. The pinned `DifferentiableOn.iUnion_of_isOpen` theorem derives global holomorphy from local witnesses. `existsUnique_glue` constructs the unique holomorphic section, `glue_restrictions` recovers a supplied global section, and `glue_reindex` proves invariance under surjective relabelling or duplication of covering members.

`AnalyticAffineIndexedGluing` descends a compatible indexed family of actual coordinate-ring homomorphisms from one exact source ring. Its ring laws follow from local ring laws and indexed separatedness. The descended spectrum-point map is continuous and agrees with every local point map. `glue_precomp` proves exact source-ring naturality; `glue_polynomial_model` recovers the existing polynomial bridge. The all-punctures fixture uses the infinite cover `U_a = C minus {a}` indexed by `a : C`. Further fixtures reject mismatched constants and an empty index over a nonempty domain, while allowing a genuinely empty-domain cover.

`PortFiberIndexedCoverDescent` adds six quantified claims using `Architecture.combineLocal`; earlier claims and the terminal RH disposition remain definitionally unchanged. Its small-index/small-source-ring portfolio is not a claim that the universe-polymorphic source theorems were replayed. No old source module or historical manifest is rewritten by this increment, except the isolated root's imports and version.

The new result concerns scalar holomorphic sections and compatible maps into their section rings. It is not nontrivial line-bundle/cocycle descent, a general dependent-fiber sheaf theorem, an algebraic-to-analytic structure-sheaf comparison, a source-specific elliptic/arithmetic supplier, B_n, a Weil comparison, or RH/ABC. `SOURCE_COMMITTED / NOT_RUN / NOT_KERNEL_AUDITED` remains the verification boundary. No Lean/Lake invocation, native evaluation, trust audit, hostile-control execution, or external replay is asserted.
