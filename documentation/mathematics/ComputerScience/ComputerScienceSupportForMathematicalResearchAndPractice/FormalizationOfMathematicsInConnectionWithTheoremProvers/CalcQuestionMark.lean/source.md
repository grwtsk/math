# Calc Question Mark — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8c21093cd4fd95a573deaac2f280930d08cc47b3` · SHA-256 `f295dde2eb427005be4946689bd52f39aed82f8375758249714b85753077b0e0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Tactic.Widget.Calc

/-!
Note that while the suggestions look incorrectly indented here,
this is an artifact of the rendering to a string for `guard_msgs` (leanprover/lean4#7191).

When used from the widget that appears in VSCode, they insert correctly-indented code.
-/

/--
info: Create calc tactic:
• calc
    1 = 1 := by sorry
---
warning: declaration uses 'sorry'
-/
#guard_msgs in
example : 1 = 1 := by
  have := 0
  calc?


/--
info: Create calc tactic:
• calc
    a ≤ a := by sorry
---
warning: declaration uses 'sorry'
-/
#guard_msgs in
example (a : Nat) : a ≤ a := by
  calc?

-- an indented `calc?`

/--
info: Create calc tactic:
• calc
    a ≤ a := by sorry
---
warning: declaration uses 'sorry'
-/
#guard_msgs in
example (a : Nat) : a ≤ a := by
  all_goals
    calc?

-- a deliberately long line
/--
info: Create calc tactic:
• calc
    1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 +
              1 +
            1 +
          1 =
        8 + 8 + 8 + 8 :=
      by sorry
---
warning: declaration uses 'sorry'
-/
#guard_msgs in
example :
    1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 +
    1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 +
    1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 +
    1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 = 8 + 8 + 8 + 8 := by
  calc?
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=dd0bececa5d0f5082934f3cb6315e5205127c4131da69f5e02bfc0e2a5220086 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CalcQuestionMark/Variantf295dde2eb427005be4946689bd52f39aed82f8375758249714b85753077b0e0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
