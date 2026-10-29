-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HeatQuantizedShellTorsionLoopEqScan.Variant182108dbec4724c76535a9a1358c9a744dd486086ffd3a41d4ff6045ec036877","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"182108dbec4724c76535a9a1358c9a744dd486086ffd3a41d4ff6045ec036877","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.HeatQuantizedShellTorsionLoopEqScan.Variant182108dbec4724c76535a9a1358c9a744dd486086ffd3a41d4ff6045ec036877","mathematical_subject":"Foundations.Unclassified","original_sha256":"182108dbec4724c76535a9a1358c9a744dd486086ffd3a41d4ff6045ec036877","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Theorem/Cellular/HeatQuantizedTorsion.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Cellular.HeatQuantizedTorsion

/-!
# Folder.Theorem.Cellular.HeatQuantizedTorsion

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports proved facts or contract exposures for the BinaryMatrix radiation program.
Ontology: proof.cellular.heat_quantized_torsion
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: infrastructure
-/



namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HeatQuantizedShellTorsionLoopEqScan.Variant182108dbec4724c76535a9a1358c9a744dd486086ffd3a41d4ff6045ec036877

namespace Folder
namespace Theorem
namespace Cellular
namespace HeatQuantizedTorsion

theorem heatQuantizedShellTorsion_loop_eq_scan
    (T : Folder.Cellular.HeatQuantizedShellTorsion d k m)
    (p : Folder.Cellular.EdgePath d k x x) :
    Folder.Cellular.pathIntegral T.connection p =
      Folder.Cellular.pathIntegral T.scan.value p :=
  Folder.Cellular.heatQuantizedShellTorsion_loop_eq_scan T p

end HeatQuantizedTorsion
end Cellular
end Theorem
end Folder
