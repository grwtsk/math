import Folder.ResearchTopos.TMFFraming

/-!
# Folder.Theorem.ResearchTopos.TMFFraming

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports TMF framing contract exposures.
Ontology: proof.research_topos.tmf_framing
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: research-topos
-/

namespace Folder
namespace Theorem
namespace ResearchTopos
namespace TMFFraming

theorem tmf_has_witten_genus
    (T : Folder.ResearchTopos.TMFContract) :
    T.hasWittenGenus :=
  Folder.ResearchTopos.tmf_has_witten_genus T

theorem tmf_framing_trivialized
    (F : Folder.ResearchTopos.TMFTorsionFraming) :
    F.trivialized :=
  Folder.ResearchTopos.tmf_framing_trivialized F

end TMFFraming
end ResearchTopos
end Theorem
end Folder
