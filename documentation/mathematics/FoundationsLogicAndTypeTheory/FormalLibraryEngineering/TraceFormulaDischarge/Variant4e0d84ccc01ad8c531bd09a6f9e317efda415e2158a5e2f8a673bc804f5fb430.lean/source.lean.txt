import Folder.RH.TraceFormulaDischarge

/-!
# Folder.Theorem.RH.TraceFormulaDischarge

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports trace-formula discharge checklist facts.
Ontology: proof.rh.trace_formula_discharge
Pivot role: spectral
Zero typology: zeta
Contract boundary: theorem-wrapper
Composite stack role: rh
-/

namespace Folder
namespace Theorem
namespace RH
namespace TraceFormulaDischarge

theorem trace_target_in_trace_formula_discharge_checklist :
    Folder.RH.TraceFormulaDischargeGate.traceTargetConstruction ∈
      Folder.RH.traceFormulaDischargeChecklist :=
  Folder.RH.trace_target_in_trace_formula_discharge_checklist

theorem spectral_trace_in_trace_formula_discharge_checklist :
    Folder.RH.TraceFormulaDischargeGate.spectralTraceConstruction ∈
      Folder.RH.traceFormulaDischargeChecklist :=
  Folder.RH.spectral_trace_in_trace_formula_discharge_checklist

theorem zero_distribution_trace_in_trace_formula_discharge_checklist :
    Folder.RH.TraceFormulaDischargeGate.zeroDistributionTraceConstruction ∈
      Folder.RH.traceFormulaDischargeChecklist :=
  Folder.RH.zero_distribution_trace_in_trace_formula_discharge_checklist

theorem regularization_in_trace_formula_discharge_checklist :
    Folder.RH.TraceFormulaDischargeGate.regularizationCompatibility ∈
      Folder.RH.traceFormulaDischargeChecklist :=
  Folder.RH.regularization_in_trace_formula_discharge_checklist

theorem explicit_formula_or_determinant_in_trace_formula_discharge_checklist :
    Folder.RH.TraceFormulaDischargeGate.explicitFormulaOrDeterminantComparison ∈
      Folder.RH.traceFormulaDischargeChecklist :=
  Folder.RH.explicit_formula_or_determinant_in_trace_formula_discharge_checklist

theorem trace_equality_in_trace_formula_discharge_checklist :
    Folder.RH.TraceFormulaDischargeGate.traceEqualityTheorem ∈
      Folder.RH.traceFormulaDischargeChecklist :=
  Folder.RH.trace_equality_in_trace_formula_discharge_checklist

end TraceFormulaDischarge
end RH
end Theorem
end Folder
