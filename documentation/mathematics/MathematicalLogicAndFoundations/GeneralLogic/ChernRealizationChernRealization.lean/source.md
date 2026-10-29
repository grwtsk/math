# Chern Realization Chern Realization — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `99babcf396dfd30f38c6b95850931aa9887e5de0` · SHA-256 `3a59640b00f6ea24eb9adac3146ebaa95e80cd61215558aa16f1c045d219d995`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.CrystallineIndex.CohomologyClass
import Folder.DerivedSheaf.KTheoryIndex

/-!
# Folder.DerivedSheaf.ChernRealization

Radiation role: research-boundary
BinaryMatrix spine: This module records Chern realization contracts, not BinaryMatrix data.
Ontology: derived.chern_realization
Pivot role: spectral
Zero typology: none
Contract boundary: contract
Composite stack role: derived-sheaf
-/

namespace Folder
namespace DerivedSheaf

structure ChernRealization
    (M : MellKTheory)
    (H : CrystallineIndex.CohomologyTheory) where
  ch : KTheoryClass M.K → CrystallineIndex.CohomologyClass H
  additive : Prop
  additive_certified : additive
  compatibleWithPerfectComplexes : Prop
  compatibleWithPerfectComplexes_certified : compatibleWithPerfectComplexes
  sourceLabel : String

theorem chern_realization_additive
    {M : MellKTheory}
    {H : CrystallineIndex.CohomologyTheory}
    (ch : ChernRealization M H) :
    ch.additive :=
  ch.additive_certified

theorem chern_realization_compatible
    {M : MellKTheory}
    {H : CrystallineIndex.CohomologyTheory}
    (ch : ChernRealization M H) :
    ch.compatibleWithPerfectComplexes :=
  ch.compatibleWithPerfectComplexes_certified

end DerivedSheaf
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d45554d1c2d1fd241d16669d6b4b60b50488d57b7abe71bda8a048afbfd9a956 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ChernRealization/Variant3a59640b00f6ea24eb9adac3146ebaa95e80cd61215558aa16f1c045d219d995.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
