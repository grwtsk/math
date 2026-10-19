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
- [`portfiber-holomorphy-core-v0.11.toml`](portfiber-holomorphy-core-v0.11.toml) is the current isolated dependent port-fiber target. It retains the v0.10 restriction, gluing, affine-Spec, structure-sheaf, stalk, and portfolio scope, repairs the ring-certificate and optional-proof sort boundaries, and adds derived continuity and injectivity of analytic evaluation, continuous analytic-affine point maps, a constructed complex polynomial coordinate-ring bridge, exact polynomial evaluation/restriction laws, and a noninjective constant-bridge negative fixture. New claims extend the historical portfolio by a disjoint sum, without changing its application obligations or terminal target. `v0.1` through `v0.10` remain historical source snapshots.
- [`openai-pts-weak-to-strong-v1.toml`](openai-pts-weak-to-strong-v1.toml) specifies an external clean replay and exact local-alignment review for `OAI.PureTypeSystem.weak_implies_strong`, including the Lean 4.34.1 versus local Lean 4.33.0 boundary.
- [`openai-cm-rational-hodge-v1.toml`](openai-cm-rational-hodge-v1.toml) specifies source, statement, dependency, citation, and local-interface review for the October 2026 CM rational-Hodge manuscript without treating manuscript status as a local formal proof.

The target manifests are intentionally non-self-referential. A Noeaaeue or local-review binding supplies the pinned repository commit, tree, and blob identities when it executes a target.

## v0.11 compatibility notes

`RingCertificate` and `TopologicalRingCertificate` now inhabit `Prop`, as required by the composable-law interface. The exact port function and ring laws are unchanged. `.hom` reconstructs the bundled homomorphism; `.map_eq` remains available. Producers using record fields `hom` and `map_eq` migrate to `RingCertificate.ofHom P f hf`; `hom_ofHom` proves recovery of the supplied homomorphism. Optional proof/refutation accessors now return `Option (PLift P)` / `Option (PLift (¬ P))`, with the evidence in `.down` when present.

The old v0.10 nonclaim about evaluation-map continuity is discharged by new mathematical source, not by changing a status label. Continuity and point separation are not a homeomorphism, a scheme/analytic-space comparison, an arithmetic-to-elliptic supplier, global holomorphic gluing, or an RH proof. The generic bridge is not necessarily injective; the constant-bridge theorem is an explicit negative control. Source presence is not kernel-checking or external replay evidence.
