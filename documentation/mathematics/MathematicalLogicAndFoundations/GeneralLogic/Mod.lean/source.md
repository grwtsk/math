# Mod — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a093450955c4b48c7226d4e13d77a005f814468d` · SHA-256 `25ba4586721080825adde9cb554cd213f04608f5e37ebe673ad876d53d4397aa`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Heather Macbeth. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Heather Macbeth
-/
import Mathlib.Data.Int.ModEq

/-! # Modular arithmetic tests for the `gcongr` tactic -/
set_option autoImplicit true

example (ha : a ≡ 2 [ZMOD 4]) : a * b ^ 2 + a ^ 2 * b + 3 ≡ 2 * b ^ 2 + 2 ^ 2 * b + 3 [ZMOD 4] := by
  gcongr

example (ha : a ≡ 4 [ZMOD 5]) (hb : b ≡ 3 [ZMOD 5]) :
    a * b + b ^ 3 + 3 ≡ 4 * 3 + 3 ^ 3 + 3 [ZMOD 5] := by
  gcongr

example (hb : 3 ≡ b [ZMOD 5]) : b ^ 2 ≡ 3 ^ 2 [ZMOD 5] := by gcongr
example (hb : 3 ≡ b [ZMOD 5]) : b ^ 2 ≡ 3 ^ 2 [ZMOD 5] := by rel [hb]

example (hx : x ≡ 0 [ZMOD 3]) : x ^ 3 ≡ 0 ^ 3 [ZMOD 3] := by gcongr

example (hx : x ≡ 2 [ZMOD 3]) : x ^ 3 ≡ 2 ^ 3 [ZMOD 3] := by gcongr

example (hn : n ≡ 1 [ZMOD 3]) : n ^ 3 + 7 * n ≡ 1 ^ 3 + 7 * 1 [ZMOD 3] := by gcongr
example (hn : n ≡ 1 [ZMOD 3]) : n ^ 3 + 7 * n ≡ 1 ^ 3 + 7 * 1 [ZMOD 3] := by rel [hn]

example (hn : n ≡ 1 [ZMOD 2]) : 5 * n ^ 2 + 3 * n + 7 ≡ 5 * 1 ^ 2 + 3 * 1 + 7 [ZMOD 2] := by
  gcongr

example (hx : x ≡ 3 [ZMOD 5]) : x ^ 5 ≡ 3 ^ 5 [ZMOD 5] := by gcongr
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=58e8aaa64c9920f9be22be2b18332fe1cc7fda88cb59152a4e2397fbc9a09dd5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/Mod/Variant25ba4586721080825adde9cb554cd213f04608f5e37ebe673ad876d53d4397aa.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
