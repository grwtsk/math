# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Sigma.Variant9c4e96fc6c166b03bcd83f0122f0e93107b9ea471fbca688ac514cb9a5a7cbac

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `28484c8578ce2de9e25e7ec635ddaf2c2f15c5ef` · SHA-256 `9c4e96fc6c166b03bcd83f0122f0e93107b9ea471fbca688ac514cb9a5a7cbac`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 Tian Chen. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Tian Chen
-/
module

public import Mathlib.Data.Set.Sigma

/-!
# Equivalences and sigma types
-/

@[expose] public section

namespace Equiv

namespace Set

/-- The indexed sum of sets is equivalent to the sigma-type of their coercions to types. -/
protected def sigma {α} {β : α → Type*} (s : Set α) (t : (i : α) → Set (β i)) :
    ↥(s.sigma t) ≃ Σ i : s, t i :=
  subtypeSigmaEquivSigma

end Set

end Equiv
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b4789e8dc5740a5e13052f33216ec4c1cd896a23748f31dff4a207f633becdd2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Sigma/Variant9c4e96fc6c166b03bcd83f0122f0e93107b9ea471fbca688ac514cb9a5a7cbac.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
