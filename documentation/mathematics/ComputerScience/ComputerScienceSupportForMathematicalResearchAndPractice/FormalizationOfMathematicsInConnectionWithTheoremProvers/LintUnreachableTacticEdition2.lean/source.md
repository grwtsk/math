# Lint Unreachable Tactic Edition2 — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `40c2c0919f9d61e49f72f40752cc7b2fc81a9b5e` · SHA-256 `d72ef4afd518066bf26444b83d36ef37355c1307446bb82c9b5fdf591645a5d9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Std.Linter.UnreachableTactic
import Std.Tactic.GuardMsgs

/-- warning: this tactic is never executed [linter.unreachableTactic] -/
#guard_msgs in
example : 1 = 1 := by
  rfl <;> simp

/--
warning: declaration uses 'sorry'
-/
#guard_msgs in
example : 1 = 1 := by
  stop
  rfl

def t : Nat → Nat := sorry
@[simp]
theorem a : aa = 0 → t aa = 0 := sorry

#guard_msgs in
example (ha : aa = 0) : t aa = 0 := by
  simp (disch := assumption)
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5e1efe275bcf7b934f4a9fb3c45c00e6a536c120573faeeb79bc43ebf7239c94 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LintUnreachableTactic/Variantd72ef4afd518066bf26444b83d36ef37355c1307446bb82c9b5fdf591645a5d9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
