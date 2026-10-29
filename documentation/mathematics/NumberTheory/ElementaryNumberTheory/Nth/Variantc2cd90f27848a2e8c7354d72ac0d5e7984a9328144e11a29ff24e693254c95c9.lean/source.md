# Complete source: GRWTSK.NumberTheory.ElementaryNumberTheory.Nth.Variantc2cd90f27848a2e8c7354d72ac0d5e7984a9328144e11a29ff24e693254c95c9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f9d09d963c17e3cc1b715b3e39e9137b75d1007a` · SHA-256 `c2cd90f27848a2e8c7354d72ac0d5e7984a9328144e11a29ff24e693254c95c9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Ralf Stephan. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Ralf Stephan
-/
import Mathlib.Data.Nat.Prime.Defs
import Mathlib.Data.Nat.Nth

/-!
# The Nth primes
-/

namespace Nat

@[simp]
theorem nth_prime_zero_eq_two : nth Prime 0 = 2 := nth_count prime_two

@[simp]
theorem nth_prime_one_eq_three : nth Nat.Prime 1 = 3 := nth_count prime_three

@[simp]
theorem nth_prime_two_eq_five : nth Nat.Prime 2 = 5 := nth_count prime_five

@[simp]
theorem nth_prime_three_eq_seven : nth Nat.Prime 3 = 7 := nth_count prime_seven

@[simp]
theorem nth_prime_four_eq_eleven : nth Nat.Prime 4 = 11 := nth_count prime_eleven

end Nat
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7aa3a27a9e1eb2b70ece592706b9023617f1077554b9c7cad9a251c5265dc7c8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/ElementaryNumberTheory/Nth/Variantc2cd90f27848a2e8c7354d72ac0d5e7984a9328144e11a29ff24e693254c95c9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
