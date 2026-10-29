# Submodule Quotient — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `759f561db89aa04a31baaf574a383389d85fecfb` · SHA-256 `96cc1b8d6866daa8510ab4b1e7b3735f7f68684d9e6fcc75681625d01768da73`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
import Mathlib.LinearAlgebra.Quotient.Defs
import Mathlib.MeasureTheory.MeasurableSpace.Constructions

/-!
# Measurability on the quotient of a module by a submodule
-/

namespace Submodule.Quotient
variable {R M : Type*} [Ring R] [AddCommGroup M] [Module R M] {p : Submodule R M}

instance [MeasurableSpace M] : MeasurableSpace (M ⧸ p) := Quotient.instMeasurableSpace
instance [MeasurableSpace M] [DiscreteMeasurableSpace M] : DiscreteMeasurableSpace (M ⧸ p) :=
  Quotient.instDiscreteMeasurableSpace

end Submodule.Quotient
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=dd9f4141a53a76927dd80763df555e09ffb5423852814e31acc60d9d7ecdad18 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/SubmoduleQuotient/Variant96cc1b8d6866daa8510ab4b1e7b3735f7f68684d9e6fcc75681625d01768da73.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
