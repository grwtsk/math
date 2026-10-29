# Complete source: GRWTSK.Algebra.UniversalAlgebra.Ring.Variantdc4f212bf46352e3b9f6f2cd229a7c5b989ad1b92ee600e50cabd6865f19b099

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `af5984341c2a331e16260af698607f5744eb5354` · SHA-256 `dc4f212bf46352e3b9f6f2cd229a7c5b989ad1b92ee600e50cabd6865f19b099`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
module

public import Mathlib.Algebra.Order.Floor.Ring

/-!
# Floor and fractional-part estimates

Small floor-ring lemmas used by summation and Abel-continuation arguments.
-/

@[expose] public section

namespace Int

variable {R : Type*} [Ring R] [LinearOrder R] [IsOrderedRing R] [FloorRing R]

theorem fract_abs_le_one (a : R) : |fract a| ≤ 1 := by
  rw [abs_fract]
  exact (fract_lt_one a).le

end Int
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6946f5d9235ba1237730722320923e4e6122d30e9e7139a13dde2be6a0a69f08 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/Ring/Variantdc4f212bf46352e3b9f6f2cd229a7c5b989ad1b92ee600e50cabd6865f19b099.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
