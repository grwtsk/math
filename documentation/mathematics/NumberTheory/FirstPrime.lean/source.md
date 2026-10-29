# Complete source: GRWTSK.NumberTheory.FirstPrime

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `eb8fb85c1d6a7d74aded94f1127cd5af8420dce5` · SHA-256 `436e96d07490a3251683045a1f4929a1df5eca692fb411c87fe527d71b2a0d9c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Data.Nat.Prime.Basic

namespace GRWTSK.NumberTheory

-- Prepared user-supplied fixture only; not an accepted or freshly replayed artifact.
theorem two_is_first_prime :
    Nat.Prime 2 ∧
    ∀ p : ℕ, Nat.Prime p → 2 ≤ p := by
  exact ⟨Nat.prime_two, fun _ hp => hp.two_le⟩

end GRWTSK.NumberTheory
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=76cafa50d274eedb0f3a70275333d113d536d1cb1114a9c7fc5dfde9784b035d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/FirstPrime.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
