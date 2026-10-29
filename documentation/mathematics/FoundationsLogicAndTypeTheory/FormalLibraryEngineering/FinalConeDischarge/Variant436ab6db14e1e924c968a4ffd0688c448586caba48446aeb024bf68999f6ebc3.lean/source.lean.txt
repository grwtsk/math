import Folder.RH.FinalConeDischarge

/-!
# Folder.Theorem.RH.FinalConeDischarge

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports final-cone discharge checklist facts.
Ontology: proof.rh.final_cone_discharge
Pivot role: verification
Zero typology: zeta
Contract boundary: theorem-wrapper
Composite stack role: rh
-/

namespace Folder
namespace Theorem
namespace RH
namespace FinalConeDischarge

theorem exact_zeta_target_in_final_cone_discharge_checklist :
    Folder.RH.FinalConeDischargeGate.exactZetaTarget ∈
      Folder.RH.finalConeDischargeChecklist :=
  Folder.RH.exact_zeta_target_in_final_cone_discharge_checklist

theorem xi_completed_zeta_formula_in_final_cone_discharge_checklist :
    Folder.RH.FinalConeDischargeGate.xiCompletedZetaFormula ∈
      Folder.RH.finalConeDischargeChecklist :=
  Folder.RH.xi_completed_zeta_formula_in_final_cone_discharge_checklist

theorem h0_definition_in_final_cone_discharge_checklist :
    Folder.RH.FinalConeDischargeGate.h0Definition ∈
      Folder.RH.finalConeDischargeChecklist :=
  Folder.RH.h0_definition_in_final_cone_discharge_checklist

theorem h0_equivalence_in_final_cone_discharge_checklist :
    Folder.RH.FinalConeDischargeGate.h0RhEquivalence ∈
      Folder.RH.finalConeDischargeChecklist :=
  Folder.RH.h0_equivalence_in_final_cone_discharge_checklist

theorem zero_spectrum_realization_in_final_cone_discharge_checklist :
    Folder.RH.FinalConeDischargeGate.zeroSpectrumRealization ∈
      Folder.RH.finalConeDischargeChecklist :=
  Folder.RH.zero_spectrum_realization_in_final_cone_discharge_checklist

theorem trace_comparison_in_final_cone_discharge_checklist :
    Folder.RH.FinalConeDischargeGate.traceComparison ∈
      Folder.RH.finalConeDischargeChecklist :=
  Folder.RH.trace_comparison_in_final_cone_discharge_checklist

theorem positivity_in_final_cone_discharge_checklist :
    Folder.RH.FinalConeDischargeGate.positivitySelfAdjointness ∈
      Folder.RH.finalConeDischargeChecklist :=
  Folder.RH.positivity_in_final_cone_discharge_checklist

theorem boundary_criterion_in_final_cone_discharge_checklist :
    Folder.RH.FinalConeDischargeGate.boundaryCriterion ∈
      Folder.RH.finalConeDischargeChecklist :=
  Folder.RH.boundary_criterion_in_final_cone_discharge_checklist

theorem final_audit_in_final_cone_discharge_checklist :
    Folder.RH.FinalConeDischargeGate.finalConeAudit ∈
      Folder.RH.finalConeDischargeChecklist :=
  Folder.RH.final_audit_in_final_cone_discharge_checklist

end FinalConeDischarge
end RH
end Theorem
end Folder
