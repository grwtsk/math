# Complete source: GRWTSK.Algebra.ToInt.Variant9fa2ab96f23d47792eea8105f1dd7fd266b0e3b6797694fe23118b33ad48b55d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f55b48d35ecb93b77c62dd3de47f690e6f0e360b` · SHA-256 `9fa2ab96f23d47792eea8105f1dd7fd266b0e3b6797694fe23118b33ad48b55d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Lean FRO, LLC. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
module

prelude
public import Init.Grind.Ring.Basic
import Init.Conv
import Init.Data.Int.Pow

public section

namespace Lean.Grind

set_option linter.defProp false in
/-- A `ToInt` instance on a semiring preserves powers if it preserves numerals and multiplication. -/
@[instance_reducible]
def ToInt.pow_of_semiring [Semiring α] [ToInt α I] [ToInt.OfNat α I] [ToInt.Mul α I]
    (h₁ : I.isFinite) : ToInt.Pow α I where
  toInt_pow x n := by
    induction n with
    | zero =>
      rw [Semiring.pow_zero, ToInt.OfNat.toInt_ofNat, Int.pow_zero]
      rfl
    | succ n ih =>
      rw [Semiring.pow_succ, ToInt.Mul.toInt_mul]
      conv => lhs; rw [← ToInt.wrap_toInt I x]
      rw [ih, ← I.wrap_mul h₁, Int.pow_succ]

end Lean.Grind
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e85c4007fd9b7156efee8b90b2a78e297b79ae20d6e27d16d5c86094fe4b5c6f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/ToInt/Variant9fa2ab96f23d47792eea8105f1dd7fd266b0e3b6797694fe23118b33ad48b55d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
