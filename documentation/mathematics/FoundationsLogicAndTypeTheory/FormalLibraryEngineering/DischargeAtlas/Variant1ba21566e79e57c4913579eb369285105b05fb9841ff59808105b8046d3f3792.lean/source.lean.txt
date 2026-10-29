import Folder.RH.DischargeAtlas

/-!
# Folder.Theorem.RH.DischargeAtlas

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports RH discharge atlas membership facts.
Ontology: proof.rh.discharge_atlas
Pivot role: verification
Zero typology: zeta
Contract boundary: theorem-wrapper
Composite stack role: rh
-/

namespace Folder
namespace Theorem
namespace RH
namespace DischargeAtlas

theorem h0_translation_in_rh_discharge_atlas :
    Folder.RH.RHDischargeChecklistFamily.h0Translation ∈
      Folder.RH.rhDischargeAtlas :=
  Folder.RH.h0_translation_in_rh_discharge_atlas

theorem spectral_realization_in_rh_discharge_atlas :
    Folder.RH.RHDischargeChecklistFamily.spectralRealization ∈
      Folder.RH.rhDischargeAtlas :=
  Folder.RH.spectral_realization_in_rh_discharge_atlas

theorem trace_formula_in_rh_discharge_atlas :
    Folder.RH.RHDischargeChecklistFamily.traceFormula ∈
      Folder.RH.rhDischargeAtlas :=
  Folder.RH.trace_formula_in_rh_discharge_atlas

theorem positivity_in_rh_discharge_atlas :
    Folder.RH.RHDischargeChecklistFamily.positivity ∈
      Folder.RH.rhDischargeAtlas :=
  Folder.RH.positivity_in_rh_discharge_atlas

theorem boundary_criterion_in_rh_discharge_atlas :
    Folder.RH.RHDischargeChecklistFamily.boundaryCriterion ∈
      Folder.RH.rhDischargeAtlas :=
  Folder.RH.boundary_criterion_in_rh_discharge_atlas

theorem final_cone_in_rh_discharge_atlas :
    Folder.RH.RHDischargeChecklistFamily.finalCone ∈
      Folder.RH.rhDischargeAtlas :=
  Folder.RH.final_cone_in_rh_discharge_atlas

theorem rh_discharge_atlas_length :
    Folder.RH.rhDischargeAtlas.length = 6 :=
  Folder.RH.rh_discharge_atlas_length

theorem rh_discharge_atlas_nodup :
    Folder.RH.rhDischargeAtlas.Nodup :=
  Folder.RH.rh_discharge_atlas_nodup

end DischargeAtlas
end RH
end Theorem
end Folder
