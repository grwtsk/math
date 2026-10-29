# De Rham Witt Boundary — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c733b8704f663d7363e28eec5b57aac74fa6240d` · SHA-256 `4d7d70951eb6215b4e588d4002e548adf4352577a4db14921a798108951d0077`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.CrystallineIndex.WittComplex

/-!
# Folder.CrystallineIndex.DeRhamWittBoundary

Radiation role: research-boundary
BinaryMatrix spine: This module records de Rham-Witt boundary contracts, not BinaryMatrix dynamics.
Ontology: crystalline_index.de_rham_witt
Pivot role: spectral
Zero typology: none
Contract boundary: contract
Composite stack role: crystalline-index
-/

namespace Folder
namespace CrystallineIndex

/--
Contract-level de Rham-Witt complex slot.

No de Rham-Witt complex or crystalline cohomology computation is constructed
in this module.
-/
structure DeRhamWittComplexContract where
  Base : Type _
  witt : WittComplex
  identifiesWithCrystallineTarget : Prop
  identifiesWithCrystallineTarget_certified :
    identifiesWithCrystallineTarget
  sourceLabel : String

theorem deRhamWitt_is_complex
    (W : DeRhamWittComplexContract) :
    W.witt.isComplex :=
  W.witt.isComplex_certified

theorem deRhamWitt_identifies_with_crystalline_target
    (W : DeRhamWittComplexContract) :
    W.identifiesWithCrystallineTarget :=
  W.identifiesWithCrystallineTarget_certified

end CrystallineIndex
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c0a2905f97e457aa47cc3194a317b799e7ca597ea3a658a4e80d822c118c49f9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeRhamWittBoundary/Variant4d7d70951eb6215b4e588d4002e548adf4352577a4db14921a798108951d0077.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
