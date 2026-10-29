-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TracePairingHasSpectralDistribution.Variantc08db7a3c1e8f5167555307190a886f83315acfdeda7800fcb04889cea4714e7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c08db7a3c1e8f5167555307190a886f83315acfdeda7800fcb04889cea4714e7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.TracePairingHasSpectralDistribution.Variantc08db7a3c1e8f5167555307190a886f83315acfdeda7800fcb04889cea4714e7","mathematical_subject":"Foundations.Unclassified","original_sha256":"c08db7a3c1e8f5167555307190a886f83315acfdeda7800fcb04889cea4714e7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Theorem/RH/TraceFormula.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
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


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TracePairingHasSpectralDistribution.Variantc08db7a3c1e8f5167555307190a886f83315acfdeda7800fcb04889cea4714e7

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
