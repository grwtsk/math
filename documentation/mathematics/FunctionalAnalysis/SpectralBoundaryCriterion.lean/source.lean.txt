import Folder.CanonicalPath.SpectralBoundaryCriterion

/-!
# Folder.Theorem.CanonicalPath.SpectralBoundaryCriterion

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports spectral-boundary criterion facts.
Ontology: proof.canonical_path.spectral_boundary_criterion
Pivot role: spectral
Zero typology: l-function
Contract boundary: theorem-wrapper
Composite stack role: canonical-path
-/

namespace Folder
namespace Theorem
namespace CanonicalPath

theorem positivity_rules_out_offcritical_resonances
    (P : Folder.CanonicalPath.PositivitySelfAdjointnessData) :
    P.noOffCriticalResonances :=
  Folder.CanonicalPath.positivity_rules_out_offcritical_resonances P

theorem spectral_boundary_alignment_if_supplied
    (B : Folder.CanonicalPath.SpectralBoundaryCriterion) :
    B.boundaryAlignment :=
  Folder.CanonicalPath.spectral_boundary_alignment_if_supplied B

end CanonicalPath
end Theorem
end Folder
