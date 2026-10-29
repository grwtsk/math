# NNRat Order — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `efcdd24ca24bc3b2a1d0a2efa0e3333aff322dc5` · SHA-256 `8c9dc39970a77d936745340238017b8cf5727c11e25fd7b1639c89ce2c2966fd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Yaël Dillies, Bhavik Mehta. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies, Bhavik Mehta
-/
import Mathlib.Data.NNRat.Defs
import Mathlib.Algebra.Order.Ring.Rat
import Mathlib.Algebra.Order.Nonneg.Ring

/-!
# Bundled ordered algebra structures on `ℚ≥0`

-/

instance : IsStrictOrderedRing ℚ≥0 := Nonneg.isStrictOrderedRing

-- TODO: `deriving instance OrderedSub for NNRat` doesn't work yet, so we add the instance manually
instance NNRat.instOrderedSub : OrderedSub ℚ≥0 := Nonneg.orderedSub
instance NNRat.instCanonicallyOrderedAdd : CanonicallyOrderedAdd ℚ≥0 := Nonneg.canonicallyOrderedAdd
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=55163284f6c462c89f14b83d8e0aeed41fb15efb575405f073a10c832ddbe409 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/Order/Variant8c9dc39970a77d936745340238017b8cf5727c11e25fd7b1639c89ce2c2966fd.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
