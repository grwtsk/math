# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OfScientific.Variantaf525ede55820b2abc0667f3edb75e736d0481cad6b03b6fd9ed3f2eeee0fdda

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0f7fb195d3e02ac9b9882ec99fb9689d4f6a07f0` · SHA-256 `af525ede55820b2abc0667f3edb75e736d0481cad6b03b6fd9ed3f2eeee0fdda`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Julia M. Himmel
-/
module

prelude
public import Init.Data.Float.Model.Unpacked.Operations.Mul
public import Init.Data.Float.Model.Unpacked.Operations.Div
public import Init.Data.Nat.Bitwise.Lemmas

-- This file is part of the logical model for floats which authors of float libraries
-- need to rely on.
@[expose] public section

namespace Float.Model.UnpackedFloat

/-- Computes `m * 10 ^ e`. -/
def ofScientific (spec : Format) (m : Nat) (e : Int) : UnpackedFloat :=
  if hm : m = 0 then
    .zero .positive
  -- Safety check to avoid computing huge powers of ten
  else if e > 2 ^ spec.exponentBits then
    .infinity .positive
  -- Safety check to avoid computing huge powers of ten
  else if e < -((2 ^ spec.exponentBits : Int) + m.log2) then
    .zero .positive
  else if 0 ≤ e then
    mul spec (.finite .positive (m <<< spec.mantissaBits) (-spec.mantissaBits) (by simpa [Nat.pos_iff_ne_zero]))
      (.finite .positive (10 ^ e.toNat) 0 (Nat.pow_pos (by decide)))
  else
    div spec (.finite .positive m 0 (Nat.pos_iff_ne_zero.2 hm))
      (.finite .positive (10 ^ (-e).toNat) 0 (Nat.pow_pos (by decide)))

end Float.Model.UnpackedFloat
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=49dde6b82945f2b33f807191ab95514a1da835221178f171c0856d6b499100aa -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OfScientific/Variantaf525ede55820b2abc0667f3edb75e736d0481cad6b03b6fd9ed3f2eeee0fdda.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
