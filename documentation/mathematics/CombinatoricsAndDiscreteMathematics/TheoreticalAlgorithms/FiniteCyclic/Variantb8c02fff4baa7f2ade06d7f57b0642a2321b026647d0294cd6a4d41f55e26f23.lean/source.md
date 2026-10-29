# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.FiniteCyclic.Variantb8c02fff4baa7f2ade06d7f57b0642a2321b026647d0294cd6a4d41f55e26f23

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7ebaee2e46a5abf52e156cfa18001d68262087bf` · SHA-256 `b8c02fff4baa7f2ade06d7f57b0642a2321b026647d0294cd6a4d41f55e26f23`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Orbit.Phase
import Mathlib.Data.ZMod.Basic

/-! # Exact finite cyclic orbits -/

namespace Mathematics.Orbit

structure FiniteCyclic where
  modulus : Nat
  modulusPositive : 0 < modulus
  start : ZMod modulus
  turn : ZMod modulus

def FiniteCyclic.point (orbit : FiniteCyclic) (step : Nat) :
    ZMod orbit.modulus :=
  orbit.start + step * orbit.turn

end Mathematics.Orbit
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e6e1e13a4ce9abf816684effef04c2585d84f07915e4f1a8891b5c3e7885487b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FiniteCyclic/Variantb8c02fff4baa7f2ade06d7f57b0642a2321b026647d0294cd6a4d41f55e26f23.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
