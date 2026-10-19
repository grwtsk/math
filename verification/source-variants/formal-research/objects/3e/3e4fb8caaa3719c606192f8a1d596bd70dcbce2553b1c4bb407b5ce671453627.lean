import Folder.CanonicalPath.CanonicalPathComposition

/-!
# Folder.Theorem.CanonicalPath.CanonicalPathComposition

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports canonical-path contract composition.
Ontology: proof.canonical_path.contract_composition
Pivot role: dual
Zero typology: l-function
Contract boundary: theorem-wrapper
Composite stack role: canonical-path
-/

namespace Folder
namespace Theorem
namespace CanonicalPath

theorem canonical_path_contract_composes
    (C : Folder.CanonicalPath.CanonicalPathContract) :
    C.finalAlignment :=
  Folder.CanonicalPath.canonical_path_contract_composes C

end CanonicalPath
end Theorem
end Folder
