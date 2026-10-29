# Whiskering — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3a9e1fd7ff89baedcea3aa99e46e3a9784e0fdf8` · SHA-256 `adaec1c2364def908c37775ce6caa117b99e8468404c46246d6e3f9a829832a0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Algebra.Category.ModuleCat.Colimits
import Mathlib.Algebra.Category.ModuleCat.Limits
import Mathlib.Algebra.Category.ModuleCat.FilteredColimits
import Mathlib.CategoryTheory.Sites.Equivalence

universe u

open CategoryTheory GrothendieckTopology

section Small

variable {C : Type u} [SmallCategory C] (J : GrothendieckTopology C) (R : Type u) [Ring R]

example : HasSheafCompose J (forget (ModuleCat.{u} R)) := inferInstance

end Small

section Large

variable {C : Type (u + 1)} [LargeCategory C] (J : GrothendieckTopology C)

example (R : Type (u + 1)) [Ring R] : HasSheafCompose J (forget (ModuleCat.{u+1} R)) := inferInstance

variable [EssentiallySmall.{u} C]

example (R : Type u) [Ring R] : HasSheafCompose J (forget (ModuleCat.{u} R)) := inferInstance

end Large
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=57ec10bb6f006ce35d35b74d93b5d9b81b27c4d070f704a3972a911a2d86e4e7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/Whiskering/Variantadaec1c2364def908c37775ce6caa117b99e8468404c46246d6e3f9a829832a0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
