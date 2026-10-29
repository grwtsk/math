# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CrystallineAhatGenus.Variant8d1f84c8e70f969bf46ebfd8a07195ea1774eccb333ed12f37f323e0305f99b7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cbc43ff347de4c96df8c56eb02dc1472c0f270e8` · SHA-256 `8d1f84c8e70f969bf46ebfd8a07195ea1774eccb333ed12f37f323e0305f99b7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.CrystallineIndex.CohomologyClass

/-!
# Folder.CrystallineIndex.CrystallineAhatGenus

Radiation role: research-boundary
BinaryMatrix spine: This module records A-hat genus contracts, not BinaryMatrix genera.
Ontology: crystalline_index.ahat_genus
Pivot role: spectral
Zero typology: none
Contract boundary: contract
Composite stack role: crystalline-index
-/

namespace Folder
namespace CrystallineIndex

structure CrystallineAhatGenus
    (H : CohomologyTheory) where
  TangentLike : Type _
  ahat : TangentLike → CohomologyClass H
  multiplicative : Prop
  multiplicative_certified : multiplicative
  sourceLabel : String

theorem ahat_genus_multiplicative
    {H : CohomologyTheory}
    (A : CrystallineAhatGenus H) :
    A.multiplicative :=
  A.multiplicative_certified

end CrystallineIndex
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=25b2d19b6525fb9b4c55fbcd5930def013093badd808535c5d413867edc206da -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CrystallineAhatGenus/Variant8d1f84c8e70f969bf46ebfd8a07195ea1774eccb333ed12f37f323e0305f99b7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
