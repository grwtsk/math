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
- [`graph-hodge-port-core-v1.0.toml`](graph-hodge-port-core-v1.0.toml) is the current isolated graph-port, finite Hodge/heat/resolvent, rational K/Hodge comparison, PTS, KK, optional-adapter-plan, and bounded/unbounded operator target tracked by issues #1, #36, #39, #40, #120, #159, #176, and #177. Earlier `v0.6`, `v0.8`, and `v0.9` files remain historical source snapshots and are not aliases for `v1.0`.
- [`openai-pts-weak-to-strong-v1.toml`](openai-pts-weak-to-strong-v1.toml) specifies an external clean replay and exact local-alignment review for `OAI.PureTypeSystem.weak_implies_strong`, including the Lean 4.34.1 versus local Lean 4.33.0 boundary.
- [`openai-cm-rational-hodge-v1.toml`](openai-cm-rational-hodge-v1.toml) specifies source, statement, dependency, citation, and local-interface review for the October 2026 CM rational-Hodge manuscript without treating manuscript status as a local formal proof.

The target manifests are intentionally non-self-referential. A Noeaaeue or local-review binding supplies the pinned repository commit, tree, and blob identities when it executes a target.
