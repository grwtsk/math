-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.FunctionalAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.FunctionalAnalysis.PositiveEnergyFromChannelContrast.Variant747594e064c2229e44dbdf1b93b8e284861648698ae15f1ffe3050cb37d9743a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"747594e064c2229e44dbdf1b93b8e284861648698ae15f1ffe3050cb37d9743a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.PositiveEnergyFromChannelContrast.Variant747594e064c2229e44dbdf1b93b8e284861648698ae15f1ffe3050cb37d9743a","mathematical_subject":"Foundations.Unclassified","original_sha256":"747594e064c2229e44dbdf1b93b8e284861648698ae15f1ffe3050cb37d9743a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Theorem/Spectral/EnergyContrast.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Spectral.Energy

/-!
# Folder.Theorem.Spectral.EnergyContrast

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports proved facts or contract exposures for the BinaryMatrix radiation program.
Ontology: proof.spectral.energy_contrast
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: infrastructure
-/



namespace GRWTSK.Analysis.FunctionalAnalysis.PositiveEnergyFromChannelContrast.Variant747594e064c2229e44dbdf1b93b8e284861648698ae15f1ffe3050cb37d9743a

namespace Folder
namespace Spectral

open Carrier

theorem positive_energy_from_channel_contrast {s : GridShape} {k : Nat}
    (G : CellGraph s)
    (ε : ℝ)
    (X : SpectralTensor s k)
    (hε : 0 < ε)
    (h : HasChannelContrast G ε X)
    (hedge : ∃ c d, G.Adj c d) :
    0 < energy G X :=
  energy_positive_of_contrast G ε X hε h hedge

end Spectral
end Folder
