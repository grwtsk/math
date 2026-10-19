import Folder.RH.TraceFormula

/-!
# Folder.Theorem.RH.TraceFormula

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports trace-interface facts.
Ontology: proof.rh.trace_formula
Pivot role: spectral
Zero typology: zeta
Contract boundary: theorem-wrapper
Composite stack role: rh
-/

namespace Folder
namespace Theorem
namespace RH
namespace TraceFormula

theorem trace_pairing_has_spectral_distribution
    (P : Folder.RH.TracePairing) :
    ∃ S : Folder.RH.RHSpectralDistribution, S = P.spectral :=
  Folder.RH.trace_pairing_has_spectral_distribution P

theorem trace_pairing_has_index_distribution
    (P : Folder.RH.TracePairing) :
    ∃ I : Folder.RH.RHIndexDistribution, I = P.index :=
  Folder.RH.trace_pairing_has_index_distribution P

theorem explicit_trace_formula
    (pairing : Folder.RH.TracePairing)
    (htrace : Folder.RH.ExplicitTraceFormulaStatement pairing)
    (φ : Folder.RH.RHTestFunction) :
    pairing.spectral.eval φ = pairing.index.eval φ :=
  Folder.RH.explicit_trace_formula pairing htrace φ

end TraceFormula
end RH
end Theorem
end Folder
