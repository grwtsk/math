# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PerfectFamilyTheoremTarget.Variant0c95069234bccef64083c33d339458b6265e855d95db4a5e558787ecbd2b8285

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f4b9860332abcd6efd33ef1ada77fc6edf71c2af` · SHA-256 `0c95069234bccef64083c33d339458b6265e855d95db4a5e558787ecbd2b8285`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.DerivedSheaf.PerfectComplex
import Folder.DerivedSheaf.KTheoryIndex
import Folder.CanonicalPath.Milestone

/-!
# Folder.CanonicalPath.PerfectFamilyTheoremTarget

Radiation role: research-boundary
BinaryMatrix spine: This module records perfect-family theorem targets.
Ontology: canonical.perfect_family
Pivot role: spectral
Zero typology: k-zero
Contract boundary: theorem-target
Composite stack role: canonical-path
-/

namespace Folder
namespace CanonicalPath

structure ArithmeticModuliStage where
  ParameterSpace : Type
  relevantPoint : ParameterSpace → Prop
  connectedComponent : ParameterSpace → Type
  sourceLabel : String

structure PerfectSectionComplexFamily where
  base : ArithmeticModuliStage
  complexAt :
    ∀ x : base.ParameterSpace, base.relevantPoint x → DerivedSheaf.PerfectComplex
  baseChangeCompatible : Prop
  baseChangeCompatible_certified : baseChangeCompatible
  perfectOverBase : Prop
  perfectOverBase_certified : perfectOverBase
  sourceLabel : String

theorem perfect_family_base_change_if_supplied
    (F : PerfectSectionComplexFamily) :
    F.baseChangeCompatible :=
  F.baseChangeCompatible_certified

theorem perfect_family_perfect_if_supplied
    (F : PerfectSectionComplexFamily) :
    F.perfectOverBase :=
  F.perfectOverBase_certified

end CanonicalPath
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b940ebfdd92a63a7a2c889676077dc7008bee9d3fac1e1779314d84053680c11 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PerfectFamilyTheoremTarget/Variant0c95069234bccef64083c33d339458b6265e855d95db4a5e558787ecbd2b8285.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
