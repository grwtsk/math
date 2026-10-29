# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FailIfNoProgress.Varianta39b237cfc228bbb9e3b0af3952db2671d121323d779bb2ebe51c3764ac4098d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f5081e6a190a22a91d90bf19f9867926e8dd838c` · SHA-256 `a39b237cfc228bbb9e3b0af3952db2671d121323d779bb2ebe51c3764ac4098d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Tactic.FailIfNoProgress

section success

example : 1 = 1 := by fail_if_no_progress rfl
example (h : 1 = 1) : True := by
  fail_if_no_progress simp at h
  trivial

end success

section failure

example (x : Bool) (h : x = true) : x = true := by
  fail_if_success
    fail_if_no_progress simp
  exact h


example (x : Bool) (h : x = true) : True := by
  fail_if_success
    fail_if_no_progress simp at h
  trivial

end failure
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5c46ab39059aced37984059afa96e6e3e88c8d51154b902aa6cfc7a8d6f6589c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FailIfNoProgress/Varianta39b237cfc228bbb9e3b0af3952db2671d121323d779bb2ebe51c3764ac4098d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
