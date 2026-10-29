# Complete source: GRWTSK.Algebra.RingFiniteness.Variantbe03900f767fddf0b60d13259efdec5d489c5181809bf010a8a8f8b8d7424d60

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `89e9e0a99e86001300e47cfeaf6c7107d57e8fe4` · SHA-256 `be03900f767fddf0b60d13259efdec5d489c5181809bf010a8a8f8b8d7424d60`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib

-- https://github.com/leanprover-community/mathlib4/pull/17557#issuecomment-2426920648

variable (R : Type*) [Ring R] [IsSemisimpleRing R]

example : IsNoetherianRing R := inferInstance
example : IsArtinianRing R := inferInstance
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c650bf8dd721f853ad3747389c5022e75d5f76de395cf624d5fdb2acdc44658f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/RingFiniteness/Variantbe03900f767fddf0b60d13259efdec5d489c5181809bf010a8a8f8b8d7424d60.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
