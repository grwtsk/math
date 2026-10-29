import Folder.RH.IndexSpectralBridge

/-!
# Folder.Theorem.RH.IndexSpectralBridge

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports RH index/spectral bridge facts.
Ontology: proof.rh.index_spectral_bridge
Pivot role: spectral
Zero typology: zeta
Contract boundary: theorem-wrapper
Composite stack role: rh
-/

namespace Folder
namespace Theorem
namespace RH
namespace IndexSpectralBridge

theorem index_spectral_bridge_from_trace_formula
    (data : Folder.RH.IndexSpectralComparisonData)
    (htrace : Folder.RH.ExplicitTraceFormulaStatement data.pairing) :
    Folder.RH.IndexSpectralBridgeCondition data :=
  Folder.RH.index_spectral_bridge_from_trace_formula data htrace

theorem index_spectral_bridge_has_operator
    (data : Folder.RH.IndexSpectralComparisonData) :
    ∃ O : Folder.RH.RHOperatorData, O = data.operator :=
  Folder.RH.index_spectral_bridge_has_operator data

theorem index_spectral_bridge_has_pairing
    (data : Folder.RH.IndexSpectralComparisonData) :
    ∃ pairing : Folder.RH.TracePairing, pairing = data.pairing :=
  Folder.RH.index_spectral_bridge_has_pairing data

end IndexSpectralBridge
end RH
end Theorem
end Folder
