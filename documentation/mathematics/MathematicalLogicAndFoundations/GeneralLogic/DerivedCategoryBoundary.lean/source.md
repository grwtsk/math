# Derived Category Boundary — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7ebda85244f83d99d10ae7075dbe6643b9a333ad` · SHA-256 `83c43d5d8a460d513d784e6f928c035b0aecfc98a853f61f4eafc2b43043c26a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.DerivedSheaf.DerivedObject
import Folder.DerivedSheaf.PerfectComplex

/-!
# Folder.DerivedSheaf.DerivedCategoryBoundary

Radiation role: research-boundary
BinaryMatrix spine: This module marks derived-category boundaries, not BinaryMatrix data.
Ontology: derived.category_boundary
Pivot role: none
Zero typology: none
Contract boundary: boundary
Composite stack role: derived-sheaf
-/

namespace Folder
namespace DerivedSheaf

/--
Boundary record for the derived-category layer.

The full derived category is not constructed here; this record only states that
complex representatives and quasi-isomorphism localization are supplied as
contract data.
-/
structure DerivedCategoryBoundary where
  complexesRepresentObjects : Prop
  complexesRepresentObjects_certified : complexesRepresentObjects
  quasiIsomorphismsLocalized : Prop
  quasiIsomorphismsLocalized_certified : quasiIsomorphismsLocalized
  fullDerivedCategoryConstructed : Prop := False
  sourceLabel : String

theorem derived_category_boundary_has_complex_representatives
    (B : DerivedCategoryBoundary) :
    B.complexesRepresentObjects :=
  B.complexesRepresentObjects_certified

theorem derived_category_boundary_localizes_quasi_isos
    (B : DerivedCategoryBoundary) :
    B.quasiIsomorphismsLocalized :=
  B.quasiIsomorphismsLocalized_certified

end DerivedSheaf
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=026348c97f3da1e128126647d0c712d65db40bf43658b66bff1c014a61c7992b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DerivedCategoryBoundary/Variant83c43d5d8a460d513d784e6f928c035b0aecfc98a853f61f4eafc2b43043c26a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
