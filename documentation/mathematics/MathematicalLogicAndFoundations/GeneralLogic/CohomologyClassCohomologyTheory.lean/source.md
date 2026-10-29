# Cohomology Class Cohomology Theory — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fe5971ba16422603baab8aba1b604e5ee514bd16` · SHA-256 `7928851254e643bf270f775d8f468d0ed96c09312ba0ed039881cdee516041c8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Basic

/-!
# Folder.CrystallineIndex.CohomologyClass

Radiation role: research-boundary
BinaryMatrix spine: This module supplies cohomology-class placeholders, not BinaryMatrix carriers.
Ontology: crystalline_index.cohomology_class
Pivot role: spectral
Zero typology: none
Contract boundary: contract
Composite stack role: crystalline-index
-/

namespace Folder
namespace CrystallineIndex

/--
Typed target for index and characteristic classes.

This does not construct crystalline cohomology; it only names the ambient
cohomology theory in which boundary contracts may store classes.
-/
structure CohomologyTheory where
  Base : Type _
  Coefficients : Type _
  degree : Type _
  Class : degree → Type _
  label : String

structure CohomologyClass
    (H : CohomologyTheory) where
  degree : H.degree
  value : H.Class degree
  label : String

structure ClassEquality
    {H : CohomologyTheory}
    (a b : CohomologyClass H) where
  equal : a.degree = b.degree
  compatible : Prop
  compatible_certified : compatible

theorem class_equality_compatible
    {H : CohomologyTheory}
    {a b : CohomologyClass H}
    (E : ClassEquality a b) :
    E.compatible :=
  E.compatible_certified

end CrystallineIndex
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e5680a60d9ccddd6ea0a2ca3d19c0d6fac1ec82b793679bff5568cfc8c64ae0c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CohomologyClass/Variant7928851254e643bf270f775d8f468d0ed96c09312ba0ed039881cdee516041c8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
