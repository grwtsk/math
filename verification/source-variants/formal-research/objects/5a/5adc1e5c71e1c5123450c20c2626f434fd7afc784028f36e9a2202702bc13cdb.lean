import Folder.ResearchTopos.SpectralTripleBridge

/-!
# Folder.Theorem.ResearchTopos.SpectralTripleBridge

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports spectral-triple bridge contract exposures.
Ontology: proof.research_topos.spectral_triple_bridge
Pivot role: spectral
Zero typology: l-function
Contract boundary: theorem-wrapper
Composite stack role: research-topos
-/

namespace Folder
namespace Theorem
namespace ResearchTopos
namespace SpectralTripleBridge

theorem spectral_triple_metric
    (S : Folder.ResearchTopos.SpectralTripleContract) :
    S.metricSpectralTriple :=
  Folder.ResearchTopos.spectral_triple_metric S

theorem zero_spectrum_bridge_matches
    {F : Folder.ResearchTopos.RodgersTaoHeatFamily}
    {T : Folder.ResearchTopos.TimeDependentSpectralTriple}
    (B : Folder.ResearchTopos.ZeroSpectrumBridge F T) :
    B.spectrumMatchesZeroPositions :=
  Folder.ResearchTopos.zero_spectrum_bridge_matches B

end SpectralTripleBridge
end ResearchTopos
end Theorem
end Folder
