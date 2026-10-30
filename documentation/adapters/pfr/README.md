# teorth/pfr adapters

Local attribution: grwtsk contributors.

Pinned upstream: [teorth/pfr@7e7fadf0c4d000fdb21b68505f3fd0e29a6e4a2f](https://github.com/teorth/pfr/tree/7e7fadf0c4d000fdb21b68505f3fd0e29a6e4a2f).
This provider imports exact upstream modules in isolated native-version packages.
The complete pinned source inventory contains 76 Lean files; inventory
coverage is not a claim that every source file is compiled or every statement proved.

Mathematical use: Entropy and small-doubling/additive-combinatorics consumers.
Missing bridge: Select exact finite-group hypotheses and constants; connect local entropy/group objects, avoid replacing them by analogy.

| Isolated adapter directory | Upstream project | Toolchain | Import surfaces |
| --- | --- | --- | --- |
| `adapters/pfr` | `.` | `leanprover/lean4:v4.36.0-rc2` | 2 |

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

New subject-organized source candidates: `adapters/pfr/GRWTSK/Combinatorics/SmallDoublingDifferenceCover.lean`. See
[consumer provenance](../consumer-integrations.json) and the canonical paper ledger.
Exact declarations and hypotheses remain in the source; compilation, fresh replay
and transitive axiom audit are NOT_RUN.

## Dense translated submodule slice

DenseSubmoduleSlice.lean now constructs actual B={b in H | u+b in A} from the
pinned finite PFR cover: nonempty B, |H|<=|A|<2*K^9*|B|, B-B subset H, and
|B|^2*|B|^2<=|H|*Finset.addEnergy B B. Coset overlap and infinite ambient groups
are allowed; the same B/H are used throughout. It consumes the existing Mathlib
energy API without copying root definitions. Source commit 9a913f5c7e184d75e8701096c5c5a59b144c2793.
See [references](references.md), central consumer map and the canonical ledger.
The static target is `documentation/mathematics/_verification/targets/Combinatorics/pfr-dense-submodule-slice-20261029.json` with adjacent profile/TOML. All native
compilation/replay/axiom/type checks remain NOT_RUN; root versions are unchanged.
