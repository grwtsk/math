# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.DivisorMini.Variant0b9537d0227aeffe19073b2cb942cdc00e569644e3cea4307be9ea98ad9e1338

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `556f229cbec09d7c2f8c0668e0c107d77191d145` · SHA-256 `0b9537d0227aeffe19073b2cb942cdc00e569644e3cea4307be9ea98ad9e1338`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Data.Nat.Factorization.Divisors
namespace F
structure D (M : ℕ) where
  val : ℕ
  property : val ∣ M
instance (M : ℕ) : Coe (D M) ℕ := ⟨D.val⟩
instance (M : ℕ) : CoeOut (D M) ℕ := ⟨D.val⟩
#check (fun {M : ℕ} (d : D M) => (d : ℕ))
end F
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=55c84885a6993e2c63b789671d7bea26b2bd8b3813ab4db2b7b5957970f6834b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/DivisorMini/Variant0b9537d0227aeffe19073b2cb942cdc00e569644e3cea4307be9ea98ad9e1338.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
