# Complete source: GRWTSK.NumberTheory.Prime.LeastPrime

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `79d54a7f0e730f0cd35f64089fdd9b29450e173a` · SHA-256 `bc890aade6e0f7b58cc6cd9e0559e6316c6c09715b5d191191e142560cd0ff61`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Uses Mathlib prime facts (Apache-2.0). OpenAI Codex formalization assistance.
The local contribution is explicit reuse, not a new discovery. -/
import GRWTSK.NumberTheory.FirstPrime

namespace GRWTSK.NumberTheory.Prime

/-- A natural prime satisfying the stated leastness condition is exactly two.
The premises are mathematical propositions; observations and receipts are not
proof premises or operational credentials. -/
theorem least_prime_eq_two {q : ℕ} (hq : Nat.Prime q)
    (hmin : ∀ p : ℕ, Nat.Prime p → q ≤ p) : q = 2 := by
  exact Nat.le_antisymm (hmin 2 Nat.prime_two)
    (GRWTSK.NumberTheory.two_is_first_prime.2 q hq)

end GRWTSK.NumberTheory.Prime
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a713ae375529d5862eade9c0a4943cc2878290b93e586d8323b360243573ba08 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Primes/LeastPrime.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
