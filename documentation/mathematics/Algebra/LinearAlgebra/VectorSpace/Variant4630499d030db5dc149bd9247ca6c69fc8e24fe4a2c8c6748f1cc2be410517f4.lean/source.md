# Complete source: GRWTSK.Algebra.LinearAlgebra.VectorSpace.Variant4630499d030db5dc149bd9247ca6c69fc8e24fe4a2c8c6748f1cc2be410517f4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3b1ba113d4f009fc28af2f49e089a0a235a13503` · SHA-256 `4630499d030db5dc149bd9247ca6c69fc8e24fe4a2c8c6748f1cc2be410517f4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Damiano Testa. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Damiano Testa
-/
import Mathlib.Algebra.Group.UniqueProds.Basic
import Mathlib.LinearAlgebra.Basis.VectorSpace

/-!
# A `ℚ`-vector space has `TwoUniqueSums`.
-/

variable {G : Type*}

/-- Any `ℚ`-vector space has `TwoUniqueSums`, because it is isomorphic to some
  `(Basis.ofVectorSpaceIndex ℚ G) →₀ ℚ` by choosing a basis, and `ℚ` already has
  `TwoUniqueSums` because it's ordered. -/
instance [AddCommGroup G] [Module ℚ G] : TwoUniqueSums G :=
  TwoUniqueSums.of_injective_addHom _ (Basis.ofVectorSpace ℚ G).repr.injective inferInstance
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=601cbdba1f7726e65db6b49a2d59a250a5c94c8827b375cd1aef35a5734a8255 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/VectorSpace/Variant4630499d030db5dc149bd9247ca6c69fc8e24fe4a2c8c6748f1cc2be410517f4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
