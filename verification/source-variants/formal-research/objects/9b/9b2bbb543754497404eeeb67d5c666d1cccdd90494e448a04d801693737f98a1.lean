import Folder.CanonicalPath.CompatibilityObstructionMachine

/-!
# Folder.Theorem.CanonicalPath.CompatibilityObstructionMachine

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports compatibility-obstruction scaffold facts.
Ontology: proof.compatibility_obstruction_machine
Pivot role: theorem-ladder
Zero typology: obstruction
Contract boundary: theorem-wrapper
Composite stack role: canonical-path
-/

namespace Folder
namespace Theorem
namespace CanonicalPath

theorem compatibility_machine_has_static_invariant
    (M : Folder.CanonicalPath.CompatibilityObstructionMachine) :
    ∃ I : Folder.CanonicalPath.StaticInvariant, M.staticInvariant = I :=
  Folder.CanonicalPath.compatibility_machine_has_static_invariant M

theorem compatibility_machine_has_forbidden_configuration
    (M : Folder.CanonicalPath.CompatibilityObstructionMachine) :
    ∃ F : Folder.CanonicalPath.ForbiddenConfiguration, M.forbidden = F :=
  Folder.CanonicalPath.compatibility_machine_has_forbidden_configuration M

theorem compatibility_machine_has_obstruction
    (M : Folder.CanonicalPath.CompatibilityObstructionMachine) :
    ∃ O : Folder.CanonicalPath.GlobalObstructionClass, M.obstruction = O :=
  Folder.CanonicalPath.compatibility_machine_has_obstruction M

theorem compatible_implies_allowed_if_supplied
    (M : Folder.CanonicalPath.CompatibilityObstructionMachine)
    (h : Folder.CanonicalPath.GloballyCompatible M.site) :
    M.compatibleImpliesAllowed h :=
  Folder.CanonicalPath.compatible_implies_allowed_if_supplied M h

theorem forbidden_forces_obstruction_if_supplied
    (M : Folder.CanonicalPath.CompatibilityObstructionMachine)
    (F : Folder.CanonicalPath.ForbiddenConfiguration) :
    M.forbiddenForcesObstruction F :=
  Folder.CanonicalPath.forbidden_forces_obstruction_if_supplied M F

theorem riemann_profile_is_theorem_target :
    Folder.CanonicalPath.riemannHypothesisCompatibilityProfile.status =
      Folder.CanonicalPath.CompatibilityProblemStatus.theoremTarget :=
  Folder.CanonicalPath.riemann_profile_is_theorem_target

theorem p_vs_np_profile_is_speculative :
    Folder.CanonicalPath.pVersusNPCompatibilityProfile.status =
      Folder.CanonicalPath.CompatibilityProblemStatus.speculativeTheoremTarget :=
  Folder.CanonicalPath.p_vs_np_profile_is_speculative

end CanonicalPath
end Theorem
end Folder

