# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CompatibilityObstructionMachine.Variant9b2bbb543754497404eeeb67d5c666d1cccdd90494e448a04d801693737f98a1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `393482a5d32cc494754d6bb5582b26d411f2f382` · SHA-256 `9b2bbb543754497404eeeb67d5c666d1cccdd90494e448a04d801693737f98a1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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

```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=80e2e8bffc5729cd7c764d99ea0efe736809fffb50fb6bfcb0ecb32e080c8079 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompatibilityObstructionMachine/Variant9b2bbb543754497404eeeb67d5c666d1cccdd90494e448a04d801693737f98a1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
