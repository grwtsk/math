# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Mul.Varianteb6eb53e735fa2adbc78d4dbbd00382c4829579fe529594dc4afc638de9b0849

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c2d1e4b1bbef3a825b1e590a5290524174d4e08c` · SHA-256 `eb6eb53e735fa2adbc78d4dbbd00382c4829579fe529594dc4afc638de9b0849`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Julia M. Himmel
-/
module

prelude
public import Init.Data.Float.Model.Unpacked.Round

-- This file is part of the logical model for floats which authors of float libraries
-- need to rely on.
@[expose] public section

namespace Float.Model.UnpackedFloat

/--
Computes the product of two floating-point numbers and rounds the result according to
the given specification.
-/
def mul (spec : Format) : UnpackedFloat → UnpackedFloat → UnpackedFloat
  | .notANumber, _ => .notANumber
  | _, .notANumber => .notANumber
  | .infinity sign₁, .infinity sign₂ => .infinity (sign₁ * sign₂)
  | .infinity sign₁, .finite sign₂ .. => .infinity (sign₁ * sign₂)
  | .finite sign₁ .., .infinity sign₂ => .infinity (sign₁ * sign₂)
  | .infinity _, .zero _ => .notANumber
  | .zero _, .infinity _ => .notANumber
  | .finite sign₁ .., .zero sign₂ => .zero (sign₁ * sign₂)
  | .zero sign₁, .finite sign₂ .. => .zero (sign₁ * sign₂)
  | .zero sign₁, .zero sign₂ => .zero (sign₁ * sign₂)
  | .finite s₁ m₁ e₁ _, .finite s₂ m₂ e₂ _ =>
    roundWithAccuracy spec (s₁ * s₂) (m₁ * m₂) (e₁ + e₂) .exact

end Float.Model.UnpackedFloat
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0f71fcb87bf4cd13894b939a3a5d8ba24d6aa5921d76101cd8435e12fcb82194 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Mul/Varianteb6eb53e735fa2adbc78d4dbbd00382c4829579fe529594dc4afc638de9b0849.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
