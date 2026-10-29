# Base Case Index Anchor — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bdfce345309136d66c14253128d1b51cbabe6b9e` · SHA-256 `8793d5169636cef5ffe5529f74d7b97a6f8bbcbd5697f5442ad493b3d03be06f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.DerivedSheaf.BaseCaseIndexAnchor

/-!
# Folder.Theorem.DerivedSheaf.BaseCaseIndexAnchor

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports base-case index-anchor facts, not BinaryMatrix data.
Ontology: base.index_anchor
Pivot role: spectral
Zero typology: nonzero-index
Contract boundary: theorem-wrapper
Composite stack role: derived-sheaf
-/

namespace Folder
namespace Theorem
namespace DerivedSheaf

theorem base_case_index_nonzero
    {M : Folder.DerivedSheaf.MellKTheory}
    (B : Folder.DerivedSheaf.BaseCaseIndexAnchor M) :
    B.kIndex.indexClass.Nonzero :=
  Folder.DerivedSheaf.base_case_index_nonzero B

theorem base_case_index_euler_realizes_kIndex
    {M : Folder.DerivedSheaf.MellKTheory}
    (B : Folder.DerivedSheaf.BaseCaseIndexAnchor M) :
    B.euler_realizes_kIndex :=
  Folder.DerivedSheaf.base_case_index_euler_realizes_kIndex B

theorem base_case_index_euler_realizes_kindex
    {M : Folder.DerivedSheaf.MellKTheory}
    (B : Folder.DerivedSheaf.BaseCaseIndexAnchor M) :
    B.euler_realizes_kIndex :=
  Folder.DerivedSheaf.base_case_index_euler_realizes_kindex B

theorem base_case_anchor_euler_nonzero
    {M : Folder.DerivedSheaf.MellKTheory}
    (B : Folder.DerivedSheaf.BaseCaseIndexAnchor M) :
    B.baseIndex.derivedIndex.euler.value ≠ 0 :=
  Folder.DerivedSheaf.base_case_anchor_euler_nonzero B

end DerivedSheaf
end Theorem
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5c592a2505881df7a81432c42abde9cecba0cdf7cb15eba7a5c73602125c4c8b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BaseCaseIndexAnchor/Variant8793d5169636cef5ffe5529f74d7b97a6f8bbcbd5697f5442ad493b3d03be06f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
