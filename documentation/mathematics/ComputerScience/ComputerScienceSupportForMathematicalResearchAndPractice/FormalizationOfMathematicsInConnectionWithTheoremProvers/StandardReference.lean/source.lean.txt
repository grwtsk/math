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
