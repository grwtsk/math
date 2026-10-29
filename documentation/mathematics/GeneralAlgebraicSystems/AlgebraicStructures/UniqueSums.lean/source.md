# Unique Sums — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `16dc924d3468904b39d05c7672f9fd3e3bb1937e` · SHA-256 `537eea4bf0b1b7116f1a358e7d805b7e810368479ef06139f3f183e05e2ac1b9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Yaël Dillies, Paul Lezeau. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies, Paul Lezeau
-/
import Mathlib.Algebra.FreeAbelianGroup.Finsupp
import Mathlib.Algebra.Group.UniqueProds.Basic

/-!
# Free abelian groups have unique sums
-/

assert_not_exists StarModule

instance {σ : Type*} : TwoUniqueSums (FreeAbelianGroup σ) :=
  (FreeAbelianGroup.equivFinsupp σ).twoUniqueSums_iff.mpr inferInstance
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ed679bfad89f6ceeb8a4f20942dc7c44c131da5815cc9681f5cb2e6c97a4f482 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/UniqueSums/Variant537eea4bf0b1b7116f1a358e7d805b7e810368479ef06139f3f183e05e2ac1b9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
