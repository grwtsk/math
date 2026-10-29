# Section Complex Section Complex — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b144075dd72eea5db923d87d768568a2bda00de7` · SHA-256 `063d5b20fba4f603132fb58d54a52f9673ff354e5890511bacfb1f73daa690db`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.DerivedSheaf.Degree

/-!
# Folder.DerivedSheaf.SectionComplex

Radiation role: research-boundary
BinaryMatrix spine: This module names section complexes, not BinaryMatrix entries.
Ontology: derived.section_complex
Pivot role: none
Zero typology: d_squared_zero-contract
Contract boundary: contract
Composite stack role: derived-sheaf
-/

namespace Folder
namespace DerivedSheaf

structure SectionComplex where
  Section : Degree → Type _
  differential : ∀ n : Degree, Section n → Section (n + 1)
  d_comp_d_zero : Prop
  d_comp_d_zero_certified : d_comp_d_zero
  bounded : Prop
  bounded_certified : bounded
  label : String

theorem section_complex_d_squared_zero
    (C : SectionComplex) :
    C.d_comp_d_zero :=
  C.d_comp_d_zero_certified

theorem section_complex_bounded
    (C : SectionComplex) :
    C.bounded :=
  C.bounded_certified

end DerivedSheaf
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=db9983b183beb1bf504ca909b69a7af61e768e927bf9c1e569ccaf07e309a952 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SectionComplex/Variant063d5b20fba4f603132fb58d54a52f9673ff354e5890511bacfb1f73daa690db.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
