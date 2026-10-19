import Folder.RH.BoundaryCriterion

/-!
# Folder.RH.BoundaryCriterionDischarge

Radiation role: proof-governance
BinaryMatrix spine: This module records boundary-criterion discharge gates as data.
Ontology: rh.boundary_criterion_discharge
Pivot role: verification
Zero typology: zeta
Contract boundary: audit-checklist
Composite stack role: rh
-/

namespace Folder
namespace RH

/--
Boundary-criterion gates required before the conditional real-zero theorem can
be treated as constructed from upstream spectral and analytic facts.

These gates are checklist entries. This module does not prove the real-spectrum
input, H0 real-zero theorem, or RH.
-/
inductive BoundaryCriterionDischargeGate where
  | realSpectrumInputConstruction
  | zeroSpectrumCompatibility
  | statusGateAllowed
  | noPreBoundaryLeakAudit
  | h0RealZerosTheorem
  | rhCompositionUsesOnlyDischargedInputs
deriving DecidableEq, Repr

def BoundaryCriterionDischargeGate.currentStatus :
    BoundaryCriterionDischargeGate → String
  | .realSpectrumInputConstruction => "theorem target"
  | .zeroSpectrumCompatibility => "theorem target"
  | .statusGateAllowed => "theorem target"
  | .noPreBoundaryLeakAudit => "tooling/policy"
  | .h0RealZerosTheorem => "theorem target"
  | .rhCompositionUsesOnlyDischargedInputs => "theorem target"

def BoundaryCriterionDischargeGate.requiredDischarge :
    BoundaryCriterionDischargeGate → String
  | .realSpectrumInputConstruction =>
      "Construct the real-spectrum input from discharged spectral, trace, and positivity data."
  | .zeroSpectrumCompatibility =>
      "Prove compatibility between the zero-spectrum realization and real-spectrum input."
  | .statusGateAllowed =>
      "Show the real-spectrum proof status is allowed in a future final cone."
  | .noPreBoundaryLeakAudit =>
      "Audit that real-zero conclusions appear first at the boundary stage."
  | .h0RealZerosTheorem =>
      "Derive H0RealZeros from constructed boundary-stage data."
  | .rhCompositionUsesOnlyDischargedInputs =>
      "Compose to RH only after H0 translation and boundary data are discharged."

def boundaryCriterionDischargeChecklist :
    List BoundaryCriterionDischargeGate :=
  [
    .realSpectrumInputConstruction,
    .zeroSpectrumCompatibility,
    .statusGateAllowed,
    .noPreBoundaryLeakAudit,
    .h0RealZerosTheorem,
    .rhCompositionUsesOnlyDischargedInputs
  ]

theorem real_spectrum_input_in_boundary_criterion_discharge_checklist :
    BoundaryCriterionDischargeGate.realSpectrumInputConstruction ∈
      boundaryCriterionDischargeChecklist := by
  simp [boundaryCriterionDischargeChecklist]

theorem zero_spectrum_compatibility_in_boundary_criterion_discharge_checklist :
    BoundaryCriterionDischargeGate.zeroSpectrumCompatibility ∈
      boundaryCriterionDischargeChecklist := by
  simp [boundaryCriterionDischargeChecklist]

theorem status_gate_in_boundary_criterion_discharge_checklist :
    BoundaryCriterionDischargeGate.statusGateAllowed ∈
      boundaryCriterionDischargeChecklist := by
  simp [boundaryCriterionDischargeChecklist]

theorem no_pre_boundary_leak_in_boundary_criterion_discharge_checklist :
    BoundaryCriterionDischargeGate.noPreBoundaryLeakAudit ∈
      boundaryCriterionDischargeChecklist := by
  simp [boundaryCriterionDischargeChecklist]

theorem h0_real_zeros_in_boundary_criterion_discharge_checklist :
    BoundaryCriterionDischargeGate.h0RealZerosTheorem ∈
      boundaryCriterionDischargeChecklist := by
  simp [boundaryCriterionDischargeChecklist]

theorem rh_composition_in_boundary_criterion_discharge_checklist :
    BoundaryCriterionDischargeGate.rhCompositionUsesOnlyDischargedInputs ∈
      boundaryCriterionDischargeChecklist := by
  simp [boundaryCriterionDischargeChecklist]

end RH
end Folder
