# Complete source: GRWTSK.Algebra.Attribute.Variant72c3563c5388c417d0d97155dac7a5a40b01073bb2790fd62539f28e4b9dcfd3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `355bf8df9af7b9a15b1c16d02e68d48518cd67c7` · SHA-256 `72c3563c5388c417d0d97155dac7a5a40b01073bb2790fd62539f28e4b9dcfd3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Geoffrey Irving. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Geoffrey Irving
-/

import Mathlib.Algebra.Order.Field.Basic
import Mathlib.Tactic.Bound

/-!
# Tests for the `@bound` attribute

Verify that our heuristic for the priority of a declaration produces the expected values.
-/

open Mathlib.Tactic.Bound (declPriority)

/-- info: 0 -/
#guard_msgs in
#eval declPriority `le_refl

/-- info: 0 -/
#guard_msgs in
#eval declPriority `sq_nonneg

/-- info: 11 -/
#guard_msgs in
#eval declPriority `Bound.one_lt_div_of_pos_of_lt

/-- info: 141 -/
#guard_msgs in
#eval declPriority `Bound.pow_le_pow_right_of_le_one_or_one_le
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a1ab98a3d234a6f0de5dd92f65e2615f25cf61402eeba0b38a178909cdc9be90 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN (source snapshot `a63dee15727d`). Mathematical admission is not claimed. [Coverage](https://github.com/grwtsk/math/issues/1429).

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","snapshot":"a63dee15727d965b263e7b32a3a79b735297ca73b6d88c7d82b91be5ac3da782","source_paths":["GRWTSK/Algebra/Attribute/Variant72c3563c5388c417d0d97155dac7a5a40b01073bb2790fd62539f28e4b9dcfd3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
