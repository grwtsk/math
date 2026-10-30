# plby/lean-proofs adapters

Local attribution: grwtsk contributors.

Pinned upstream: [plby/lean-proofs@8822f7ddef30fadbd92e1c6ab4ed897af356af5e](https://github.com/plby/lean-proofs/tree/8822f7ddef30fadbd92e1c6ab4ed897af356af5e).
This provider imports exact upstream modules in isolated native-version packages.
The complete pinned source inventory contains 43587 Lean files; inventory
coverage is not a claim that every source file is compiled or every statement proved.

Mathematical use: Broader solved Erdős corpus linked from the community database.
Missing bridge: Multiple versioned source projects; no root toolchain. Pin each selected project, source authors and hypotheses separately, audit axioms and avoid a blanket acceptance claim.

| Isolated adapter directory | Upstream project | Toolchain | Import surfaces |
| --- | --- | --- | --- |
| `adapters/lean-proofs/d62eab0` | `src/d62eab0` | `leanprover/lean4:v4.20.0-rc5` | 2 |
| `adapters/lean-proofs/latest/ComparatorChallenges` | `src/latest/ComparatorChallenges` | `leanprover/lean4:v4.33.0` | 7 |
| `adapters/lean-proofs/latest` | `src/latest` | `leanprover/lean4:v4.33.0` | 11 |
| `adapters/lean-proofs/v4.24.0` | `src/v4.24.0` | `leanprover/lean4:v4.24.0` | 4 |
| `adapters/lean-proofs/v4.28.0` | `src/v4.28.0` | `leanprover/lean4:v4.28.0` | 2 |
| `adapters/lean-proofs/v4.29.0` | `src/v4.29.0` | `leanprover/lean4:v4.29.0-rc8` | 2 |
| `adapters/lean-proofs/v4.29.1` | `src/v4.29.1` | `leanprover/lean4:v4.29.1` | 7 |
| `adapters/lean-proofs/v4.30.0` | `src/v4.30.0` | `leanprover/lean4:v4.30.0` | 7 |
| `adapters/lean-proofs/v4.32.0/ComparatorChallenges` | `src/v4.32.0/ComparatorChallenges` | `leanprover/lean4:v4.32.0` | 5 |
| `adapters/lean-proofs/v4.32.0` | `src/v4.32.0` | `leanprover/lean4:v4.32.0` | 10 |

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

<a id="plby-subset-collision-20261030"></a>
### Disjoint subset-sum supports from reciprocal mass

Local attribution: grwtsk contributors. [New source](https://github.com/grwtsk/math/blob/d38bc7c2e8b8cc45dad12180ff5bdbe5808deb66/adapters/lean-proofs/v4.29.1/GRWTSK/NumberTheory/AdditiveNumberTheory/ReciprocalSubsetSumCollision.lean), math `d38bc7c2e8b8cc45dad12180ff5bdbe5808deb66` / blob `fb19960a95c6405f8cff395cbff9791111f8a37c`, consumes exact `Erdos350.erdos_350` at plby `8822f7ddef30fadbd92e1c6ab4ed897af356af5e` / selected v4.29.1 leaf `4bd7afe5e89ab92209eee9453031c5e80f6fe314`. Source informal bylines Charles Albert Ryavec/ChatGPT and formal bylines Aristotle/Boris Alexeev are retained. Paper endpoint: Benkoski/Erdős1974, Theorem1, finite distinct-subset-sum reciprocal bound, proof credited to C. Ryavec; no stronger theorem is imported. The version LICENSE notice only covers some external files; a selected-leaf grant remains UNRESOLVED. The upstream proof is not copied into math or assigned a new license.

The two roots `GRWTSK.NumberTheory.AdditiveNumberTheory.ReciprocalSubsetSumCollision.disjoint_positive_supports_of_collision` and `.disjoint_positive_supports_of_reciprocal_mass` cancel overlapping collisions and apply the actual strict reciprocal bound contrapositively. Main input is arbitrary `A:Finset Nat` with REAL reciprocal mass≥2, including possible zero. Both returned supports lie in the SAME `A.erase0`, are disjoint/nonempty, and have equal POSITIVE NAT sums. Zero erasure preserves reciprocal mass, not full injectivity; no extra input positivity is imposed. This supplies actual balanced supports for the existing root distinct-subset-sum consumer; root4.34.1 integration is UNSUPPLIED.

Native Lean4.29.1/Mathlib `5e932f97dd25535344f80f9dd8da3aab83df0fe6` stays isolated. All compiler/Comparator/interface/discovery/replay/full-axiom facets NOT_RUN, independent checker UNSUPPLIED. Exact source/API/type review is not acceptance. No minimum-support algorithm/runtime, infinite-series theorem or Erdős Problem1 exponential bound is supplied. Exact pins/types/configuration/limited-license notice and remaining bridges: [target](../../mathematics/_verification/targets/NumberTheory/AdditiveNumberTheory/plby-subset-collision-20261030.json) and [canonical ledger](../../mathematics/_support/reference/literature/reading-background/paper-to-formalization-references.md#plby-subset-collision-20261030).
