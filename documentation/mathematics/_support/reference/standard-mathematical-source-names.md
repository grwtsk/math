# Mathematical source filenames

Local attribution: grwtsk contributors.

Mathematical sources use readable PascalCase Lean module filenames. Public
upstream module names, existing mathematical filenames, source titles and
mathematical subjects supply the names. A content hash belongs in provenance
metadata rather than in the filename. Hash-only grouping components and encoded
source-path components are removed from current source paths.

The [static source map](../../_verification/specifications/_unscoped/standard-mathematical-source-names-v1.json)
records 68,824 historical source paths and their current destinations, with
SHA-256 bindings for the inputs and current targets. Of these, 68,710 sources receive readable paths;
114 redundant files are consolidated with byte-identical sources. The map retains
all historical path identities. Equal titles, similar statements, shared original
sources and directory co-location are not criteria for deduplication.

A source with a mechanically isolated local declaration scope can carry the
`Namespaced` qualifier. `Public` identifies an upstream source using the explicit
module/public-section syntax; `Aligned` identifies a source retaining historical
alignment commands. Where sources still differ, readable `Edition` or
`Alternative` qualifiers distinguish their source bodies. These qualifiers do not
assert chronological order, mathematical equivalence or preferred acceptance.
Existing stub, attempt and candidate qualifications retain their scopes.

Imports of renamed modules resolve to their current mathematical filenames.
Declaration namespaces, hypotheses, proof bodies, upstream attribution and
unresolved premises retain their original meanings. In particular, renaming an
isolated namespace's file does not identify its declarations with an upstream
namespace. Original source hashes bind the old bytes, including old import lines;
new source hashes must be used when import references change.

Historical generated documentation and verification manifests retain their pinned
source identities and evidence roles. The current publication-path resolver uses
the static map to locate renamed sources. Existing historical displays do not
constitute regenerated current documentation or fresh proof receipts.

Filename and exact-byte checks do not establish Lean compilation, fresh kernel
acceptance or a transitive axiom audit. Those candidate-wide phases remain
`NOT_RUN`; no source is promoted into the default library by this cleanup.
Effectful materialization, integrity checks and execution records belong to
`grwtsk/noeaaeue`, outside this mathematical source repository.
