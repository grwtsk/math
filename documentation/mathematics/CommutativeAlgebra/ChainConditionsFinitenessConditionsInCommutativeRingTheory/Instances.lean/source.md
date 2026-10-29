# Instances — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b75ae29ad5d63569cd6f24f23c544b6274fae85a` · SHA-256 `a7b51cf80d99c8ec3c6df00367d75f83b8e1b870b88138c0bbf57d4e088d61bc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Junyan Xu. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Junyan Xu
-/
import Mathlib.Algebra.Divisibility.Prod
import Mathlib.Algebra.Polynomial.FieldDivision
import Mathlib.RingTheory.Artinian.Module

/-!
# Instances related to Artinian rings

We show that every reduced Artinian ring and the polynomial ring over it
are decomposition monoids, and every reduced Artinian ring is semisimple.
-/

namespace IsArtinianRing

variable (R : Type*) [CommRing R] [IsArtinianRing R] [IsReduced R]

attribute [local instance] fieldOfSubtypeIsMaximal

instance : DecompositionMonoid R := MulEquiv.decompositionMonoid (equivPi R)

instance : DecompositionMonoid (Polynomial R) :=
  MulEquiv.decompositionMonoid <| (Polynomial.mapEquiv <| equivPi R).trans (Polynomial.piEquiv _)

end IsArtinianRing
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a38c2af92d45645b494b8e7c413d5c9f3fa04a3ac6f43d57bd583a625558ba7f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/Instances/Varianta7b51cf80d99c8ec3c6df00367d75f83b8e1b870b88138c0bbf57d4e088d61bc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
