# Weil core: proof elaboration repair scope v1

This is a static mathematical source and acceptance specification. It records
source identities and required predicates, not execution outcomes, process state,
logs, receipts, scheduling or mathematical admission.

The selected predecessor is PR #271 source commit
`66b5a85d92c8c74709da208773fbf497def37d99`. The containing repaired commit/tree,
not that predecessor or a moving branch, must bind any later replay result.

## Proof-only source delta

`PolarizedPositiveGramLimit.toDiagonal` unfolds function composition explicitly
and restricts simplification to the stated definitions. This keeps a composed
real-part function aligned with the pointwise diagonal function.
`PositiveGramFamily.gram_polarization` explicitly identifies the generic RCLike
real projection and real-to-complex map with their complex counterparts.

These edits change proof scripts only. They preserve every declaration name,
statement, hypothesis, quantifier, source-binding field and criterion direction.
Paths below are relative to `GRWTSK/NumberTheory/Zeta/Riemann/`.

| File | Predecessor Git blob | Repaired Git blob | Repaired lines |
|---|---|---|---:|
| `WeilPositiveLimit.lean` | `7378bab85bd9dbe7b4e2babcc1dae67ef06e8300` | `cbb80e2e4568a1783e5d137016f9f79927c3ca9c` | 282 |
| `WeilPolarization.lean` | `c6d89e8f916e691a8e150770b2edb7ebcc551b11` | `26957af4c84db70c4fb61f8b919fa60682940ce1` | 268 |

## Preserved historical scope and dependencies

Retain `verification/rh-weil-core-source-inventory-v1.md` byte-for-byte at blob
`f1c4b5421a7624d045565185a80dc77b8109b496`. Its seven-file counts, ranges and
identities remain historical descriptions of its listed blobs; in particular,
its 267-line polarization ranges do not describe the repaired 268-line file.
Retain `verification/rh-weil-core-admission-controls-v1.md` byte-for-byte at blob
`2b6cf63d51af3cf1e49d0c8ed0d9758dd64f75f3`, including its inherited requirements.
Neither historical specification is silently reinterpreted as a repaired result.

The repaired target remains
`GRWTSK.NumberTheory.Zeta.Riemann.Checks.Positive.WeilCoreControls`.
Its source is unchanged at Git blob `a668f873c8def0f2fc891d2df8266a09f0e39bae`.
The local header scope remains eight modules: the five other unchanged predecessor
modules, both repaired files above, and the unchanged controls. Reconcile the five
unchanged blobs against the preserved inventory and the two replacements against
this table; the header graph is not a generated-environment or transitive trust audit.

Retain `lean-toolchain` blob `025e59548e48cf71f2744154e2890beefe30a258`
(`leanprover/lean4:v4.33.0`) and `lake-manifest.json` blob
`1f2e3e2d66253933a410e981eb359a9b454aae0b`, with all nine package entries and
Mathlib revision `db584cd6d46c92f209a44c0f1c829460d327499d`.

## Conjunctive acceptance predicates

Require clean source elaboration of the repaired eight-module scope at these exact
identities, all twelve rejection trials, all twelve positive companions and the
nested-guard self-check. Separately require the intended typed rejection causes;
parser, identifier, import, resource and tool failures cannot satisfy them.
For each C01-C12 require the specified isolated success injection to fail solely
because the targeted `fail_if_success` guard rejects a successful companion.
A failed pristine source, successful mutant, missing case or unrelated diagnostic
fails acceptance. Stored True proof terms and cached objects cannot establish that
these elaboration trials ran.

Preserve I01-I08, A01-A08 and every inherited broader target and trust requirement,
with the explicit two-blob repair delta above. Exact kernel types, complete public
and generated declarations, transitive axiom/runtime coverage, broader atlas/Mellin/
finite-power targets and immutable commit-bound external replay remain independent
requirements. No smaller-root result discharges them. This source delta supplies
no zeta criterion, arithmetic Gram family, actual comparison-error decay, all-height
cover, RH/ABC result or authority to change any operational hold.
