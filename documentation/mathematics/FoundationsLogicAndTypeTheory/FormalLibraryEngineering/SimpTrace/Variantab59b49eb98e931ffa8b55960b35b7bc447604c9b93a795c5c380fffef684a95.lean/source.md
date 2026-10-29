# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SimpTrace.Variantab59b49eb98e931ffa8b55960b35b7bc447604c9b93a795c5c380fffef684a95

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6aac9751e0b3b2feb83b504b1f29283dc157a16d` · SHA-256 `ab59b49eb98e931ffa8b55960b35b7bc447604c9b93a795c5c380fffef684a95`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Std.Tactic.SqueezeScope

set_option linter.missingDocs false

example : x + 1 = 1 + x := by simp? [Nat.add_comm, Nat.mul_comm]
example : 1 + 1 = 2 := by dsimp?

@[simp] def bar (z : Nat) := 1 + z
@[simp] def baz (z : Nat) := 1 + z

@[simp] def foo : Nat → Nat → Nat
  | 0, z => bar z
  | _+1, z => baz z

example : foo x y = 1 + y := by
  cases x <;> simp? -- two printouts:
  -- "Try this: simp only [foo, bar]"
  -- "Try this: simp only [foo, baz]"

example : foo x y = 1 + y := by
  squeeze_scope
    cases x <;> simp -- only one printout: "Try this: simp only [foo, baz, bar]"
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=53fe0003ed91d96cce4f9421788f62f1a47805827f59ee5468d8964699cdba14 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpTrace/Variantab59b49eb98e931ffa8b55960b35b7bc447604c9b93a795c5c380fffef684a95.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
