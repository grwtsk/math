# Complete source: GRWTSK.Algebra.Noetherian.Variant288257784b10921cc606a1e42d874e528e4ea56535201399aff00a508369d7c2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2f2f268de19984933ea55afaf838bac58f5626fd` · SHA-256 `288257784b10921cc606a1e42d874e528e4ea56535201399aff00a508369d7c2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 Anne Baanen. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Anne Baanen
-/
import Mathlib.RingTheory.Ideal.Quotient.Operations
import Mathlib.RingTheory.Noetherian.Basic

/-!
# Noetherian quotient rings and quotient modules
-/

instance Ideal.Quotient.isNoetherianRing {R : Type*} [CommRing R] [IsNoetherianRing R]
    (I : Ideal R) : IsNoetherianRing (R ⧸ I) :=
  isNoetherianRing_iff.mpr <| isNoetherian_of_tower R <| inferInstance
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1adc21666c05d95861897d0b2249dbca9c6b7a8a2c401790d00c9b2425c18aac -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Noetherian/Variant288257784b10921cc606a1e42d874e528e4ea56535201399aff00a508369d7c2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
