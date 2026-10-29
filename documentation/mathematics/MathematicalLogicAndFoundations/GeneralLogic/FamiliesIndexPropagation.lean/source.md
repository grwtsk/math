# Families Index Propagation — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `edf6493e26d26c7073360aa958d3dd8b8c25706d` · SHA-256 `019d68169c3228c1fda177e5de0b26824fcf1d7881d3fffc538da9bc1249fcf8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.CanonicalPath.PerfectFamilyTheoremTarget
import Folder.CanonicalPath.DeterminantLinePropagation
import Folder.DerivedSheaf.KTheoryIndex

/-!
# Folder.CanonicalPath.FamiliesIndexPropagation

Radiation role: research-boundary
BinaryMatrix spine: This module records families K-index propagation targets.
Ontology: canonical.families_index
Pivot role: spectral
Zero typology: k-zero
Contract boundary: theorem-target
Composite stack role: canonical-path
-/

namespace Folder
namespace CanonicalPath

structure FamiliesKIndexPropagation
    (F : PerfectSectionComplexFamily)
    (M : DerivedSheaf.MellKTheory) where
  familyIndexClass : DerivedSheaf.KTheoryClass M.K
  specializesToFiberIndex : Prop
  specializesToFiberIndex_certified : specializesToFiberIndex
  nontrivialOnComponent : Prop
  nontrivialOnComponent_certified : nontrivialOnComponent
  determinantEvidence? : Option (DeterminantLineFamily F)
  sourceLabel : String

theorem families_k_index_nontrivial_if_supplied
    {F : PerfectSectionComplexFamily}
    {M : DerivedSheaf.MellKTheory}
    (I : FamiliesKIndexPropagation F M) :
    I.nontrivialOnComponent :=
  I.nontrivialOnComponent_certified

theorem families_k_index_specializes_if_supplied
    {F : PerfectSectionComplexFamily}
    {M : DerivedSheaf.MellKTheory}
    (I : FamiliesKIndexPropagation F M) :
    I.specializesToFiberIndex :=
  I.specializesToFiberIndex_certified

end CanonicalPath
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7ec1748fd71d2e6ad8d4ed11e9085a8441dde76fe9d3409c9060cfea7aa45931 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/FamiliesIndexPropagation/Variant019d68169c3228c1fda177e5de0b26824fcf1d7881d3fffc538da9bc1249fcf8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
