# Nat Cast Instance — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c02ac23ca4ad7d57c72b024466a60335fbdd496c` · SHA-256 `592f8e4651fb381117ce7535b764e7f0a77b57673383e3eb3c710b567fa433b7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Data.ENat.Monoid

example : (Lean.Grind.Semiring.natCast : NatCast ℕ∞) = ENat.instNatCast := by
  with_reducible_and_instances rfl
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5aa7a06d3d1cba3b31c8feaa58257a21498361130ecc7af11f6cab9ad8ccdcfe -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/NatCastInstance/Variant592f8e4651fb381117ce7535b764e7f0a77b57673383e3eb3c710b567fa433b7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
