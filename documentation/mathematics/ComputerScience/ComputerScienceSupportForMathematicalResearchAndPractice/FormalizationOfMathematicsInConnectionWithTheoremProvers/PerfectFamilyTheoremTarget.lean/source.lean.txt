import Folder.CanonicalPath.PerfectFamilyTheoremTarget

/-!
# Folder.Theorem.CanonicalPath.PerfectFamilyTheoremTarget

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports perfect-family target facts.
Ontology: proof.canonical_path.perfect_family
Pivot role: spectral
Zero typology: k-zero
Contract boundary: theorem-wrapper
Composite stack role: canonical-path
-/

namespace Folder
namespace Theorem
namespace CanonicalPath

theorem perfect_family_base_change_if_supplied
    (F : Folder.CanonicalPath.PerfectSectionComplexFamily) :
    F.baseChangeCompatible :=
  Folder.CanonicalPath.perfect_family_base_change_if_supplied F

theorem perfect_family_perfect_if_supplied
    (F : Folder.CanonicalPath.PerfectSectionComplexFamily) :
    F.perfectOverBase :=
  Folder.CanonicalPath.perfect_family_perfect_if_supplied F

end CanonicalPath
end Theorem
end Folder
