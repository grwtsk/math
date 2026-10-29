# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NativeLinter.Variant791c07ef926c745a642d56b4500861cfd965477081a1e20a916208037178e1ba

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `82ca81f0b920addc8e94ed5669dea5c70f0b2e8c` · SHA-256 `791c07ef926c745a642d56b4500861cfd965477081a1e20a916208037178e1ba`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 David Ledvinka. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: David Ledvinka
-/
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Tactic

open Inclusion

set_option linter.style.native true

/--
warning: Using `+native` is not allowed in mathlib: because it trusts the entire Lean compiler (not
just the Lean kernel), it could quite possibly be used to prove `False`.

Note: This linter can be disabled with `set_option linter.style.native false`
-/
#guard_msgs in
example : (0 : ℝ) ≤ 1 := by inclusion +native [core, interval_dyadic_real]

/--
warning: Using `+native` is not allowed in mathlib: because it trusts the entire Lean compiler (not
just the Lean kernel), it could quite possibly be used to prove `False`.

Note: This linter can be disabled with `set_option linter.style.native false`
-/
#guard_msgs in
example : (0 : ℝ) ≤ 1 := by inclusion (native := true) [core, interval_dyadic_real]

/--
warning: Using `+native` is not allowed in mathlib: because it trusts the entire Lean compiler (not
just the Lean kernel), it could quite possibly be used to prove `False`.

Note: This linter can be disabled with `set_option linter.style.native false`
-/
#guard_msgs in
example : (0 : ℝ) ≤ 1 := by dyadic_interval +native

/--
warning: Using `+native` is not allowed in mathlib: because it trusts the entire Lean compiler (not
just the Lean kernel), it could quite possibly be used to prove `False`.

Note: This linter can be disabled with `set_option linter.style.native false`
-/
#guard_msgs in
example : (0 : ℝ) ≤ 1 := by dyadic_interval (native := true)
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ed37bc9294a2377fb5a9de71b5d2d2662f61968083f043bf5606eb780f61fb84 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NativeLinter/Variant791c07ef926c745a642d56b4500861cfd965477081a1e20a916208037178e1ba.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
