# leanprover-community/lean-liquid adapters

Local attribution: grwtsk contributors.

Pinned upstream: [leanprover-community/lean-liquid@ee4795874a99ea5f9d85bd0b364425f07b932377](https://github.com/leanprover-community/lean-liquid/tree/ee4795874a99ea5f9d85bd0b364425f07b932377).
This provider imports exact upstream modules in isolated native-version packages.
The complete pinned source inventory contains 412 Lean files; inventory
coverage is not a claim that every source file is compiled or every statement proved.

Mathematical use: Condensed/liquid mathematics reference.
Missing bridge: Lean3 project: use as a port/reference source, not a direct Lean4 Lake dependency.

Native Lean3 package: `leanpkg build` in this folder requests the `liquid` import surface. This is not a Lean4 port. Compilation/replay/axiom audit remain NOT_RUN. No root environment is changed.

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
