# Liouville Public — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `72f70aaee6aade95868b72e6d4b2408f6bcad694` · SHA-256 `152a814252ae33579928994cfd38f6af98df89b3dd334c2304b78bf4f173734c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 Thomas Browning. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Thomas Browning
-/
module

public import Mathlib.NumberTheory.ArithmeticFunction.Misc

/-!
# The Liouville Function

This file defines the Liouville function `λ(n)`.

## Main Definitions

* `ArithmeticFunction.liouville` is the Liouville function `λ(n)` defined to be `1` if `n` has an
  even number of prime factors (counting multiplicity) and `-1` otherwise.
-/

@[expose] public section

namespace ArithmeticFunction

/-- The Liouville function `λ(n)` defined to be `1` if `n` has an even number of prime factors
(counting multiplicity) and `-1` otherwise. -/
def liouville : ArithmeticFunction ℤ where
  toFun n := if n = 0 then 0 else (-1) ^ cardFactors n
  map_zero' := by simp

theorem liouville_apply {n : ℕ} (h : n ≠ 0) : liouville n = (-1) ^ cardFactors n :=
  ite_eq_right h

theorem liouville_ne_zero {n : ℕ} (h : n ≠ 0) : liouville n ≠ 0 := by
  simp [liouville_apply h]

theorem liouville_apply_one : liouville 1 = 1 := by
  simp [liouville_apply]

theorem liouville_apply_mul (m n : ℕ) : liouville (m * n) = liouville m * liouville n := by
  by_cases hm : m = 0
  · simp [hm]
  by_cases hn : n = 0
  · simp [hn]
  simp [liouville_apply, cardFactors_mul, hm, hn, pow_add]

theorem isMultiplicative_liouville : IsMultiplicative liouville :=
  ⟨liouville_apply_one, fun {m n} _ ↦ liouville_apply_mul m n⟩

end ArithmeticFunction
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=65af7c3679ab9667f8ef3b0a7e9892ff7a3224653d627cc4e878685e9415c4ff -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Liouville/Variant152a814252ae33579928994cfd38f6af98df89b3dd334c2304b78bf4f173734c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
