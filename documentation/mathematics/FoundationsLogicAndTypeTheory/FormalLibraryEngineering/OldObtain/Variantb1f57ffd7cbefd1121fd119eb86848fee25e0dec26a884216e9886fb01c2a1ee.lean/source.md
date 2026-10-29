# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OldObtain.Variantb1f57ffd7cbefd1121fd119eb86848fee25e0dec26a884216e9886fb01c2a1ee

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `46c0e3f7f44f86a00faa727bc1c75f1b1803ce9a` · SHA-256 `b1f57ffd7cbefd1121fd119eb86848fee25e0dec26a884216e9886fb01c2a1ee`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Michael Rothgang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Michael Rothgang
-/
import Mathlib.Tactic.Linter.OldObtain

/-! Tests for the `oldObtain` linter. -/

set_option linter.oldObtain true

-- These cases are fine.
theorem foo : True := by
  obtain := trivial
  obtain _h := trivial
  obtain : True := trivial
  obtain _h : True := trivial
  trivial

-- These cases are linted against.

/--
warning: Please remove stream-of-consciousness `obtain` syntax
note: this linter can be disabled with `set_option linter.oldObtain false`
-/
#guard_msgs in
theorem foo' : True := by
  obtain : True
  · trivial
  trivial

/--
warning: Please remove stream-of-consciousness `obtain` syntax
note: this linter can be disabled with `set_option linter.oldObtain false`
-/
#guard_msgs in
theorem foo'' : True := by
  obtain h : True
  · trivial
  trivial
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0e3cb414f1df8f7adc3cfa729aa7df892af9e79dfe9329d38b332c5cce955438 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OldObtain/Variantb1f57ffd7cbefd1121fd119eb86848fee25e0dec26a884216e9886fb01c2a1ee.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
