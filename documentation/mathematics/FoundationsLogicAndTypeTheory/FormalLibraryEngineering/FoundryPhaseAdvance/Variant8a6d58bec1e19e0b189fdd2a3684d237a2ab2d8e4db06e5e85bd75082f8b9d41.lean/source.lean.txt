import AnalyticNumber.ExpressibleNumbers
import AnalyticNumber.FoundryPhilosophy
import AnalyticNumber.FoundryReducerHierarchy
import AnalyticNumber.PipelineHaltingClosure
import Presentation.AstLabeling
import Presentation.ClosureNetwork
import Presentation.Expressiveness
import Presentation.SelfAnneal

/-!
# End-to-end foundry phase advance

The phase gate is a finite certificate projection.  It is advanceable only when
every named theorem surface, reducer witness, cache witness, self-annealing
report, AST labeling report, hierarchy audit, and authority firewall has been
recorded.
-/

namespace AnalyticNumber
namespace FoundryPhaseAdvance

structure FoundryPhaseAdvanceCertificate where
  leanTheoremsBuild : Prop
  leanProof : leanTheoremsBuild
  closureNetworkSound : Prop
  closureProof : closureNetworkSound
  expressivenessSound : Prop
  expressivenessProof : expressivenessSound
  haltingRevivalSound : Prop
  haltingProof : haltingRevivalSound
  selfAnnealingSound : Prop
  selfAnnealProof : selfAnnealingSound
  astLabelingSound : Prop
  astLabelingProof : astLabelingSound
  foundryHierarchySound : Prop
  hierarchyProof : foundryHierarchySound
  noAuthorityOverclaim : Prop
  noOverclaimProof : noAuthorityOverclaim

theorem foundry_phase_advance_sound
    (C : FoundryPhaseAdvanceCertificate) :
    C.leanTheoremsBuild ∧
    C.closureNetworkSound ∧
    C.expressivenessSound ∧
    C.haltingRevivalSound ∧
    C.selfAnnealingSound ∧
    C.astLabelingSound ∧
    C.foundryHierarchySound ∧
    C.noAuthorityOverclaim :=
  by
    exact
      ⟨C.leanProof,
       C.closureProof,
       C.expressivenessProof,
       C.haltingProof,
       C.selfAnnealProof,
       C.astLabelingProof,
       C.hierarchyProof,
       C.noOverclaimProof⟩

end FoundryPhaseAdvance
end AnalyticNumber
