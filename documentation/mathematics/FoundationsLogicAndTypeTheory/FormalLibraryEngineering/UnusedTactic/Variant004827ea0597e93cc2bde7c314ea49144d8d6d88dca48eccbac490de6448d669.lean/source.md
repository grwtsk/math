# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.UnusedTactic.Variant004827ea0597e93cc2bde7c314ea49144d8d6d88dca48eccbac490de6448d669

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e41d363cde1e1e6a60eb42ebdad8a16b8df909f8` · SHA-256 `004827ea0597e93cc2bde7c314ea49144d8d6d88dca48eccbac490de6448d669`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Tactic.Linter.UnusedTactic
import Mathlib.Tactic.AdaptationNote

example (h : 0 + 1 = 0) : False := by
  change 1 = 0 at h
  simp at h

example : 0 + 1 = 1 := by
  change 1 = 1
  rfl

/--
warning: 'change 1 = 1' tactic does nothing
note: this linter can be disabled with `set_option linter.unusedTactic false`
-/
#guard_msgs in
example : 1 = 1 := by
  change 1 = 1
  rfl

def why2 : True → True := (by refine ·)

example : True := by
  #adaptation_note /-- hi -/
  exact .intro

-- both `;` and `<;>` are unseen by the linter
example : True ∧ True := by
  constructor <;> trivial;

set_option linter.unusedTactic true
/--
warning: 'congr' tactic does nothing
note: this linter can be disabled with `set_option linter.unusedTactic false`
---
warning: 'done' tactic does nothing
note: this linter can be disabled with `set_option linter.unusedTactic false`
-/
#guard_msgs in
-- the linter notices that `congr` is unused
example : True := by
  congr
  constructor
  done

section allowing_more_unused_tactics

/-- info: The `SyntaxNodeKind` is 'Lean.Parser.Tactic.refine'. -/
#guard_msgs in
#show_kind refine _

/-- info: The `SyntaxNodeKind` is 'Lean.Parser.Tactic.skip'. -/
#guard_msgs in
#show_kind skip

/--
error: unknown constant 'skip'
The command `#show_kind skip` may help to find the correct `SyntaxNodeKind`.
-/
#guard_msgs in
#allow_unused_tactic rfl skip

--  test that allowing more unused tactics has the desired effect of silencing the linter
#allow_unused_tactic Lean.Parser.Tactic.done Lean.Parser.Tactic.skip

#guard_msgs in
example : True := by
  skip
  constructor
  done

end allowing_more_unused_tactics
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=31fa65d2f802b85417fe3539a9384221f94bb916ffbb4de10c57210f28346c25 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnusedTactic/Variant004827ea0597e93cc2bde7c314ea49144d8d6d88dca48eccbac490de6448d669.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
