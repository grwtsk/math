import Folder.CanonicalPath.Literature.Roadmap

/-!
# Folder.Theorem.CanonicalPath.Literature.Roadmap

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports literature roadmap facts.
Ontology: proof.canonical_path.literature
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: canonical-path
-/

namespace Folder
namespace Theorem
namespace CanonicalPath
namespace Literature

theorem literature_roadmap_has_phaseI :
    Folder.CanonicalPath.Literature.phaseICluster.recommendedOrder ≠ [] :=
  Folder.CanonicalPath.Literature.literature_roadmap_has_phaseI

end Literature
end CanonicalPath
end Theorem
end Folder
