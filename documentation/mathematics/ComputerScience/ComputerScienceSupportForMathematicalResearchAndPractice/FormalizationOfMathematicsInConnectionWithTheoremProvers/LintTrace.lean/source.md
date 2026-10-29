# Lint Trace — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a6e2d4689a116e73cdf032853194569afbe116ad` · SHA-256 `97fafde26e371803c74d97592af5d118aa323cd950d7c00029dc1bb4baef25c5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Batteries.Tactic.Lint

/-!
Tests tracing in `#lint`.

Note that this does not test tracing in `runLinter` per se.
-/

-- oops, no docstring
def foo := 3

theorem bar : foo = 3 := rfl

set_option trace.Batteries.Lint true

/--
trace: [Batteries.Lint] Running linters:
      docBlame
[Batteries.Lint] - docBlame: (0/2) Starting...
[Batteries.Lint] - docBlame: (1/2) Getting...
[Batteries.Lint] - docBlame: (2/2) Failed with 1 messages.
[Batteries.Lint] Completed linting!
-/
#guard_msgs (trace, drop error) in
#lint- only docBlame

/--
trace: [Batteries.Lint] Running linters:
      unusedHavesSuffices
[Batteries.Lint] - unusedHavesSuffices: (0/2) Starting...
[Batteries.Lint] - unusedHavesSuffices: (1/2) Getting...
[Batteries.Lint] - unusedHavesSuffices: (2/2) Passed!
[Batteries.Lint] Completed linting!
-/
#guard_msgs in
#lint- only unusedHavesSuffices
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5b7b8918f392018b29643ed048f6c4ab0ced0e226913cf056aef553d5b8239a6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LintTrace/Variant97fafde26e371803c74d97592af5d118aa323cd950d7c00029dc1bb4baef25c5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
