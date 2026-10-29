# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.StandardReference.Variant5b054f19cd46a9ea14cbd7a509bb5ce2138094b1903d77a06c8772c254003238

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `215c675025bce4c70d4c16224e208670714eae0b` · SHA-256 `5b054f19cd46a9ea14cbd7a509bb5ce2138094b1903d77a06c8772c254003238`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Presentation.ReferenceRank

/-!
# Folder.Presentation.StandardReference

Radiation role: presentation-standard-reference
BinaryMatrix spine: This module gives a tiny reference-ranked graph used to validate presentation ordering.
Ontology: presentation.standard_reference
Pivot role: none
Zero typology: none
Contract boundary: proved
Composite stack role: presentation
-/

namespace Folder
namespace Presentation

def standardModuleA : ModuleId := ⟨"A"⟩
def standardModuleB : ModuleId := ⟨"B"⟩
def standardModuleC : ModuleId := ⟨"C"⟩

def standardReferenceGraph : ReferenceGraph where
  modules := [standardModuleA, standardModuleB, standardModuleC]
  edges := [
    { source := standardModuleA,
      target := standardModuleB,
      kind := ReferenceKind.import,
      weight := 100 },
    { source := standardModuleA,
      target := standardModuleC,
      kind := ReferenceKind.import,
      weight := 100 },
    { source := standardModuleB,
      target := standardModuleC,
      kind := ReferenceKind.import,
      weight := 100 }
  ]

theorem standardReference_inbound_C :
    inboundWeight standardReferenceGraph standardModuleC = 200 := by
  native_decide

theorem standardReference_inbound_B :
    inboundWeight standardReferenceGraph standardModuleB = 100 := by
  native_decide

theorem standardReference_inbound_A :
    inboundWeight standardReferenceGraph standardModuleA = 0 := by
  native_decide

end Presentation
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ad2da5271c092e825ead0a95f8e9a62061cf6a47ce855bf43d63cdd30586a0f7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StandardReference/Variant5b054f19cd46a9ea14cbd7a509bb5ce2138094b1903d77a06c8772c254003238.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
