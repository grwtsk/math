# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CrystallineIndexBridge.Variant2973b11e811ea40c4bb7efda6df950619c179fa7de955cab004a691b4cf8c477

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `404c3ff11c4bc5b491181d9b0b1b0ee2504568dd` · SHA-256 `2973b11e811ea40c4bb7efda6df950619c179fa7de955cab004a691b4cf8c477`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.DerivedSheaf.WittRealization
import Folder.CrystallineIndex.WittValuedIndex

/-!
# Folder.DerivedSheaf.CrystallineIndexBridge

Radiation role: research-boundary
BinaryMatrix spine: This module bridges K-theory indices to crystalline/Witt realizations, not BinaryMatrix data.
Ontology: derived.k_index_to_crystalline_index
Pivot role: spectral
Zero typology: none
Contract boundary: contract
Composite stack role: derived-sheaf
-/

namespace Folder
namespace DerivedSheaf

structure KIndexToCrystallineIndexBridge
    {M : MellKTheory}
    {W : CrystallineIndex.WittComplex}
    (R : WittRealization M W)
    (I : KTheoryIndex M) where
  wittImage : KTheoryIndexWittImage R I
  crystallineIndexSourceLabel : String
  compatibleWithCrystallineIndexBoundary : Prop
  compatibleWithCrystallineIndexBoundary_certified : compatibleWithCrystallineIndexBoundary

theorem k_index_to_crystalline_index_compatible
    {M : MellKTheory}
    {W : CrystallineIndex.WittComplex}
    {R : WittRealization M W}
    {I : KTheoryIndex M}
    (B : KIndexToCrystallineIndexBridge R I) :
    B.compatibleWithCrystallineIndexBoundary :=
  B.compatibleWithCrystallineIndexBoundary_certified

end DerivedSheaf
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=755f868c7f31eadfa9b0fd684e83c09adfa00e4888fe76a9a66df2550204964a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CrystallineIndexBridge/Variant2973b11e811ea40c4bb7efda6df950619c179fa7de955cab004a691b4cf8c477.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
