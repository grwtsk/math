# Families Index Class Pointwise Global Index Nonzero If Supplied — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `32fbebe5e31e1d080d01647a921e7b2c09e7d033` · SHA-256 `85ee1c44291a4b220663f3111612dca2a90b0f436503e5917ca3db757412a356`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.CanonicalPath.GlobalIndexNonzeroBoundary

/-!
# Folder.Theorem.CanonicalPath.FamiliesIndexClass

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports families-index class facts.
Ontology: proof.canonical_path.families_index
Pivot role: spectral
Zero typology: k-zero
Contract boundary: theorem-wrapper
Composite stack role: canonical-path
-/

namespace Folder
namespace Theorem
namespace CanonicalPath

theorem families_index_nontrivial
    {M : Folder.DerivedSheaf.MellKTheory}
    {F : Folder.CanonicalPath.ArithmeticFamily}
    (I : Folder.CanonicalPath.FamiliesIndexClass M F) :
    I.nontrivialAsFamilyClass :=
  Folder.CanonicalPath.families_index_nontrivial I

theorem families_index_specializes
    {M : Folder.DerivedSheaf.MellKTheory}
    {F : Folder.CanonicalPath.ArithmeticFamily}
    (I : Folder.CanonicalPath.FamiliesIndexClass M F) :
    I.specializesToFibers :=
  Folder.CanonicalPath.families_index_specializes I

theorem pointwise_global_index_nonzero_if_supplied
    {M : Folder.DerivedSheaf.MellKTheory}
    {F : Folder.CanonicalPath.ArithmeticFamily}
    (T : Folder.CanonicalPath.PointwiseGlobalIndexNonzeroTarget M F)
    (h : T.pointwiseNonzero) :
    T.pointwiseNonzero :=
  Folder.CanonicalPath.pointwise_global_index_nonzero_if_supplied T h

end CanonicalPath
end Theorem
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f0876389e85c9d6f51d2ea336295b7b43936b1c87d905baf72e815b5368a3935 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FamiliesIndexClass/Variant85ee1c44291a4b220663f3111612dca2a90b0f436503e5917ca3db757412a356.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
