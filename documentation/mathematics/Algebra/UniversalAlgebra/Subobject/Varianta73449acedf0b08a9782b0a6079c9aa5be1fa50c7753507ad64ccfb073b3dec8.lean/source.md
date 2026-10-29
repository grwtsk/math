# Complete source: GRWTSK.Algebra.UniversalAlgebra.Subobject.Varianta73449acedf0b08a9782b0a6079c9aa5be1fa50c7753507ad64ccfb073b3dec8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `16a507fc5fad41e8ab8157b4af32c46d70938ab0` · SHA-256 `a73449acedf0b08a9782b0a6079c9aa5be1fa50c7753507ad64ccfb073b3dec8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 Markus Himmel. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Markus Himmel
-/
import Mathlib.Algebra.Category.Grp.ZModuleEquivalence
import Mathlib.Algebra.Category.ModuleCat.Subobject

/-!
# The category of abelian groups is well-powered
-/


open CategoryTheory

universe u

namespace AddCommGrp

instance wellPowered_addCommGrp : WellPowered.{u} AddCommGrp.{u} :=
  wellPowered_of_equiv (forget₂ (ModuleCat.{u} ℤ) AddCommGrp.{u}).asEquivalence

end AddCommGrp
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d916abb229c17356088d4b42ebd3066e64d12860cf30bfccff0a0cee29deef4e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/Subobject/Varianta73449acedf0b08a9782b0a6079c9aa5be1fa50c7753507ad64ccfb073b3dec8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
