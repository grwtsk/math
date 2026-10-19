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
- [`portfiber-holomorphy-core-v0.15.toml`](portfiber-holomorphy-core-v0.15.toml) is the current isolated dependent port-fiber target. It retains all 38 v0.14 modules and adds holomorphic-unit gauges, constructed changes of cocycle, actual total-space homeomorphisms over the unchanged base, gauge-covariant operator conjugation, and exact section-action naturality. Seven new claims form a disjoint portfolio extension. The target enumerates 42 modules and 86 hostile-control specifications; all 78 previous control records are preserved. `v0.1` through `v0.14` remain historical source snapshots. Source and control specifications are not execution results.
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

## v0.14 realized line bundles and operator descent

`HolomorphicLineCocycle` uses actual holomorphic sections on each indexed overlap, with diagonal and triple-overlap equations. Those equations derive pointwise inverses and nonvanishing. Holomorphy supplies the continuity needed to construct Mathlib's `VectorBundleCore` at the pinned dependency. The resulting total-space topology, continuous/open projection, continuous-linear local frames, and exact chart transition formula are not separately assumed global bundle data. Off-overlap zero extension has no geometric authority.

`HolomorphicLineSections` constructs a section of that bundle from every twisted matching family and recovers all local coordinates. `sectionEquiv` identifies the two representations. `continuous_totalSection` derives continuity into the actual total-space topology from local holomorphy. Identity transitions recover the preceding indexed scalar glue exactly. No global nonzero section or frame is inferred for an arbitrary cocycle.

`HolomorphicLinePort` constructs the unique pointwise fiber operator agreeing with each local continuous-linear map when the exact overlap intertwining law holds. Composition commutes with descent. `PreservesHolomorphy` is a separate analytic condition for lifting the operator to holomorphic bundle sections; multiplication by a supplied global holomorphic section discharges it using the existing section-ring product closure. Uniform operator bounds, metric/adjoint compatibility, differential/heat transport, and unbounded-domain properties are not supplied.

Fixtures distinguish a nonidentity constant-frame coboundary from a nontrivial bundle class, prove that pairwise inverse signs can violate the triple law, and reject zero and identity operators in different charts as one compatible family. Mathlib's model-fiber definitional equality is not an endpoint/source or global-trivialization proof.

`PortFiberLineBundle` adds six disjoint quantified claims without changing the older portfolios, residual plans, or RH disposition. Topological/Picard/K-theory classification, cocycle gauge equivalences, source-specific elliptic line bundles, and arithmetic application maps remain separate. The static target requires direct elaboration, exact-head trust/runtime audits, hostile controls, and external replay. No such execution or audit is asserted by these source files.

## v0.15 gauge-equivalent cocycle transport

`HolomorphicLineGauge` requires units in the actual local holomorphic-section rings and the oriented overlap law `h_j*g_ij = gprime_ij*h_i`. It implements identity, inverse, composition, and associativity. `Construction.changeFrames` constructs the cocycle `h_j*g_ij*h_i_inverse`, including its diagonal and triple-overlap laws; `changeFramesGauge` binds it to the original cocycle. `familyEquiv` and `bundleSectionEquiv` transport twisted data and the previously realized sections without identifying the source and target cocycles.

`HolomorphicLineGaugeTopology` derives forward and inverse continuity in the actual two bundle topologies. `totalHomeomorph` is over the identity base map; `totalMap_coordinate` identifies every chart multiplier, and `bundleSectionEquiv_value` proves the section map uses the same underlying fiber map. Its fiber maps are continuous-linear equivalences. No metric or global trivialization is assumed. The constant factor-two gauge is a valid positive producer and `doubling_not_modelNormPreserving` rejects norm preservation even in the standard model fibers. `unitValue_ne_zero` rejects a zero local frame value.

`HolomorphicLineGaugePort.transport` constructs conjugated local operators and proves target-chart compatibility. `descend_conjugacy`, `transport_comp_descend`, and `mapSection_naturality` retain the exact gauge, operator, composition order, and section action. `transport_preservesHolomorphy` uses inverse holomorphic multiplication, the original `PreservesHolomorphy` proof, and forward multiplication. Fiber linearity does not supply that analytic proof.

`PortFiberGaugeTransport` adds seven small-index claims via a disjoint sum; old dispositions, application obligations, residual plans, and the terminal RH disposition remain unchanged. No earlier theorem module or historical manifest is edited. Gauge transport on the same cover is not a metric/adjoint/heat theorem, a theorem for arbitrary cover refinements, a Picard or K/KK classification, an elliptic translation/Poncelet identification, or an arithmetic supplier. Exact-head Lean elaboration, trust/runtime audits, hostile-control execution, and external replay remain pending; the source state remains `SOURCE_COMMITTED / NOT_RUN / NOT_KERNEL_AUDITED`.
