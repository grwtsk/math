# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DeprecatedSyntaxLinter.Variantc855d427b1713dd87e381e7db7b39e50ab1f20bfc57914f8fe5f14444523259d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ef19112cce015b80471b7d14a58c3b343b26ae49` · SHA-256 `c855d427b1713dd87e381e7db7b39e50ab1f20bfc57914f8fe5f14444523259d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Tactic.Cases
import Mathlib.Tactic.Linter.DeprecatedSyntaxLinter

set_option linter.style.refine true
/--
warning:
The `refine'` tactic is discouraged: please strongly consider using `refine` or `apply` instead.
note: this linter can be disabled with `set_option linter.style.refine false`
---
warning:
The `refine'` tactic is discouraged: please strongly consider using `refine` or `apply` instead.
note: this linter can be disabled with `set_option linter.style.refine false`
-/
#guard_msgs in
example : True := by
  refine' (by refine' .intro)

set_option linter.style.refine false
-- This is quiet because `linter.style.refine` is now false
example : True := by
  refine' (by refine' .intro)

set_option linter.style.refine false in
-- This is quiet because `linter.style.refine` is now false, even using `in`.
example : True := by
  refine' (by refine' .intro)

set_option linter.style.cases true
/--
warning: The `cases'` tactic is discouraged: please strongly consider using `obtain`, `rcases` or `cases` instead.
note: this linter can be disabled with `set_option linter.style.cases false`
---
warning: The `cases'` tactic is discouraged: please strongly consider using `obtain`, `rcases` or `cases` instead.
note: this linter can be disabled with `set_option linter.style.cases false`
-/
#guard_msgs in
example (a : (True ∨ True) ∨ (True ∨ True)): True := by
  cases' a with b b <;> cases' b <;> trivial

set_option linter.style.cases false
-- This is quiet because `linter.style.cases` is now false
example (a : (True ∨ True) ∨ (True ∨ True)): True := by
  cases' a with b b <;> cases' b <;> trivial

set_option linter.style.admit true
/--
warning: declaration uses 'sorry'
---
warning: The `admit` tactic is discouraged: please strongly consider using the synonymous `sorry` instead.
note: this linter can be disabled with `set_option linter.style.admit false`
-/
#guard_msgs in
example : False := by admit

/--
warning: declaration uses 'sorry'
---
warning: The `admit` tactic is discouraged: please strongly consider using the synonymous `sorry` instead.
note: this linter can be disabled with `set_option linter.style.admit false`
---
warning: The `admit` tactic is discouraged: please strongly consider using the synonymous `sorry` instead.
note: this linter can be disabled with `set_option linter.style.admit false`
---
warning: The `admit` tactic is discouraged: please strongly consider using the synonymous `sorry` instead.
note: this linter can be disabled with `set_option linter.style.admit false`
---
warning: The `admit` tactic is discouraged: please strongly consider using the synonymous `sorry` instead.
note: this linter can be disabled with `set_option linter.style.admit false`
-/
#guard_msgs in
example : True ∧ True := by
  have : True := by
    · admit
  let foo : Nat := by admit
  refine ⟨?_, ?_⟩
  · admit
  · admit

set_option linter.style.admit false
/--
warning: declaration uses 'sorry'
-/
#guard_msgs in
example : False := by admit

set_option linter.style.maxHeartbeats true
/--
warning: Please, add a comment explaining the need for modifying the maxHeartbeat limit, as in
set_option maxHeartbeats 10 in
-- reason for change
...
 note: this linter can be disabled with `set_option linter.style.maxHeartbeats false`
-/
#guard_msgs in
set_option maxHeartbeats 10 in
section

/--
warning: Please, add a comment explaining the need for modifying the maxHeartbeat limit, as in
set_option maxHeartbeats 10 in
-- reason for change
...
 note: this linter can be disabled with `set_option linter.style.maxHeartbeats false`
-/
#guard_msgs in
set_option maxHeartbeats 10 in
set_option maxHeartbeats 10 in
section

/--
warning: Please, add a comment explaining the need for modifying the maxHeartbeat limit, as in
set_option synthInstance.maxHeartbeats 10 in
-- reason for change
...
 note: this linter can be disabled with `set_option linter.style.maxHeartbeats false`
-/
#guard_msgs in
set_option synthInstance.maxHeartbeats 10 in
section

/--
warning: Please, add a comment explaining the need for modifying the maxHeartbeat limit, as in
set_option maxHeartbeats 10 in
-- reason for change
...
 note: this linter can be disabled with `set_option linter.style.maxHeartbeats false`
-/
#guard_msgs in
set_option maxHeartbeats 10 in
set_option synthInstance.maxHeartbeats 10 in
/- The comment here is not enough to silence the linter:
the *first* `maxHeartbeats` option should have a comment. -/
section

#guard_msgs in
set_option maxHeartbeats 10 in
/- The comment here is enough to silence the linter:
the *first* `maxHeartbeats` has a comment, to remaining ones are free to be commentless. -/
set_option synthInstance.maxHeartbeats 10 in
section

#guard_msgs in
set_option maxHeartbeats 10 in
-- no reason, but has a comment
section

/--
warning: Please, add a comment explaining the need for modifying the maxHeartbeat limit, as in
set_option maxHeartbeats 10 in
-- reason for change
...
 note: this linter can be disabled with `set_option linter.style.maxHeartbeats false`
-/
#guard_msgs in
set_option maxHeartbeats 10 in
/-- Doc-strings for the following command do not silence the linter. -/
example : True := trivial
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c6f6225cf3cb8591ce716fee5e36b1aad2d05cb630277d5c366f75c44072f51f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeprecatedSyntaxLinter/Variantc855d427b1713dd87e381e7db7b39e50ab1f20bfc57914f8fe5f14444523259d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
