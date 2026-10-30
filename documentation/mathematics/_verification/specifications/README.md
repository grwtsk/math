# Verification specifications

Static verification specifications are now colocated with the documentation
namespace and mirror `GRWTSK` source paths. For example:

```text
GRWTSK/Analysis/Example.lean
docs/verification/Analysis/Example/
```

The [shared taxonomy path contract](_unscoped/taxonomy-path-sync-v1.toml)
binds the same exact relative subject paths and capitalization under `GRWTSK/`,
`docs/mathematics/`, `docs/verification/`, and `docs/taxonomy/subjects/`.
It records retired folder and namespace aliases, source relocations, preserved
proof variants, and passive verification tasks. Empty peer folders contain
only a placeholder; they introduce no mathematical definition or acceptance.
Noe checks this contract with Python 3.11 or newer, from its own checkout:

```sh
python3.11 bindings/mathematics/organization/python/math_taxonomy_path_sync.py check --math-root /path/to/math
```

Historical source and verification records keep their original pins and hashes.
Resolve later placement through the shared contract's relocation rows; a new
folder or declaration name does not inherit an earlier replay receipt.
Relocation digests describe the recorded transformation stage. Later authored
documentation or regenerated navigation has its own bytes; it does not rewrite
the earlier source pins or turn those digests into current proof evidence.

The [SourceCorpus subject migration](_unscoped/sourcecorpus-taxonomy-v1.toml)
retires the provenance-based Lean root. Its subject-local TOML manifests bind
every moved source occurrence, original Git blob, current pre-move digest,
destination digest and explicit namespace substitution. Its verification tasks
separate byte preservation, coverage, subject review, import closure, module
elaboration, declaration/trust checks and the public-library build. They are
passive specifications, not execution receipts. Historical catalogues remain
bound to their original revisions; relocated candidates and negative controls
retain their original mathematical and verification limits.

The migration index is [`migration-index.json`](migration-index.json). It
records every relocated target, support file and historical evidence occurrence,
its former path, destination repository/path, preserved manifest identity/version,
and separate original and observed transfer digests. `_library-root/` and `_unscoped/`
are explicit metadata boundaries; they do not imply a source-module binding.

Historical paths that appeared in older documentation are resolved through the
[legacy artifact registry](../../_support/reference/legacy-artifacts.md). Canonical docs use
stable external artifact IDs; the registry records the historical Git blob,
exact target digest, optional immutable readback URL, and explicit unresolved
status when no blob was found.

Static fixtures, validation-only provider adapters and audit specifications are
colocated under [`_support/`](_support). The complete former README and its
versioned mathematical scope notes are preserved under
[`_support/legacy-verification/`](_support/legacy-verification/README.md).
Multi-module bundles preserve every listed source; a first-listed navigation
root does not assert exclusive mathematical ownership or theorem dependency.

Historical generated attribution, source-variant context/catalogues and relocation
exports are retained byte-for-byte in `grwtsk/noeaaeue`, under
`verification/math/retained-math-verification-v1/verification/`. Their embedded
paths and historical hash claims remain unchanged. The migration catalogue gives
current storage locators; fresh transfer digests are not new proof receipts.
The former [`verification/`](../targets/README.md) root now contains only
a compatibility navigation README. New non-stub files fail Noe's layout check.

Noeaaeue owns the generated files. The compact template currently emits:

- `source.json`: exact UTF-8 Lean command slices, declaration ownership,
  source hashes, imports, and native-notation references when available;
- `dependency-graph.json`: typed import, declaration, and reference edges;
- `similarity.json`: deterministic, explainable similarity observations.

The surface notation is copied from the pinned Lean bytes. Elaborated notation
is not guessed by a renderer and remains unavailable until a native Lean
observer supplies a bound representation. Dependency closure, semantic
equivalence, kernel admission, replay, and mathematical acceptance are not
implied by these generated data files.

Noeaaeue owns the generated files. It renders them under the same mirrored
paths without rewriting these source-authored specifications or treating
generated output as canonical mathematical content.

## Analytical comparison is not a compiler receipt

The [repository-wide proof-comparison disposition](../../_support/reference/proof-comparison-disposition.md) requires a mathematical argument and a source-exact comparison of objects, independent analytic routes or hostile checks where useful, and an explicit downstream consumer and unresolved premises. **Typechecking and mathematical qualification are separate assessments.** A formal receipt does not establish the analytic transfer between different representations or the independence of alleged alternate proofs. Conversely, an analytically complete theorem may have `NOT_RUN` formalization status.

The static specifications described here remain verification targets, not proof-comparison audits. Do not change historical `KERNEL_VERIFIED`, `SCOPED_EVIDENCE`, `NOT_RUN`, or other receipts merely because this disposition was adopted. Analytical review coverage must be reported as reviewed, unreviewed or blocked against inspected claims; no corpus-wide analytic acceptance is implied by this text.

Static specifications do not assert Lean elaboration, replay, trust audit,
hostile-control execution, mathematical admission, or proof status. Those
receipts and proof capsules remain external Noeaaeue artifacts.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d930fcda9e16b1d65c4a5c189a1c1523cc5467ffafba0c1c4b51fbf2cf631aef -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/Example.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
