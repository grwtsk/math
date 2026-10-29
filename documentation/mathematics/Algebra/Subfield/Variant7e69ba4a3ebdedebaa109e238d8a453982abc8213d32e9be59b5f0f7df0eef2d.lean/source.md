# Complete source: GRWTSK.Algebra.Subfield.Variant7e69ba4a3ebdedebaa109e238d8a453982abc8213d32e9be59b5f0f7df0eef2d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `282b0538a1d1df38baf59eec6c4b4a416953cf53` · SHA-256 `7e69ba4a3ebdedebaa109e238d8a453982abc8213d32e9be59b5f0f7df0eef2d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 Damiano Testa. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Damiano Testa
-/

import Mathlib.Algebra.Field.Subfield.Defs
import Mathlib.Algebra.Order.Ring.InjSurj

/-!
# Ordered instances on subfields
-/

namespace Subfield
variable {K : Type*}

/-- A subfield of an ordered field is a ordered field. -/
instance toIsStrictOrderedRing [Field K] [LinearOrder K] [IsStrictOrderedRing K] (s : Subfield K) :
    IsStrictOrderedRing s :=
  Subtype.coe_injective.isStrictOrderedRing Subtype.val rfl rfl (fun _ _ => rfl) (fun _ _ => rfl)
    (fun _ _ => rfl) (fun _ _ => rfl) fun _ => rfl

end Subfield
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c2b8a24d4be667ea77891128625aa2f8ad7247029450111efe3b1cb54b349d10 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Subfield/Variant7e69ba4a3ebdedebaa109e238d8a453982abc8213d32e9be59b5f0f7df0eef2d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
