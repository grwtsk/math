import Folder.ResearchTopos.GrothendieckTopology

/-!
# Folder.Theorem.ResearchTopos.GrothendieckTopology

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports Grothendieck-topology interface fields.
Ontology: proof.research_topos.grothendieck_topology
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: research-topos
-/

namespace Folder
namespace Theorem
namespace ResearchTopos
namespace GrothendieckTopology

theorem grothendieck_identity_cover
    {C : Folder.ResearchTopos.SiteCategory}
    (J : Folder.ResearchTopos.GrothendieckTopology C) :
    J.identityCover :=
  Folder.ResearchTopos.grothendieck_identity_cover J

end GrothendieckTopology
end ResearchTopos
end Theorem
end Folder
