-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.CubicIntegralSame.Variantee94b82523f7ea568fe92e22616d8060bb4f25e5daeed1fe9c87fd9ea6da72d9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ee94b82523f7ea568fe92e22616d8060bb4f25e5daeed1fe9c87fd9ea6da72d9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.CubicIntegralSame.Variantee94b82523f7ea568fe92e22616d8060bb4f25e5daeed1fe9c87fd9ea6da72d9","mathematical_subject":"Analysis.Integration","original_sha256":"ee94b82523f7ea568fe92e22616d8060bb4f25e5daeed1fe9c87fd9ea6da72d9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Theorem/Analysis/CubicIntegration.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Analysis.CubicSemantics

/-!
# Folder.Theorem.Analysis.CubicIntegration

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports proved facts or contract exposures for the BinaryMatrix radiation program.
Ontology: proof.analysis.cubic_integration
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: infrastructure
-/



namespace GRWTSK.Analysis.RealAnalysis.Integration.CubicIntegralSame.Variantee94b82523f7ea568fe92e22616d8060bb4f25e5daeed1fe9c87fd9ea6da72d9

namespace Folder
namespace Analysis

theorem cubic_integral_same
    (p : Cubic)
    (x : ℝ) :
    p.integral x x = 0 :=
  Cubic.integral_same p x

theorem cubic_integral_add_interval
    (p : Cubic)
    (a b c : ℝ) :
    p.integral a b + p.integral b c = p.integral a c :=
  Cubic.integral_add_interval p a b c

theorem cubic_cell_semantics_sound
    (S : CubicCellSemantics) :
    S.value = S.cubic.integral S.lo S.hi :=
  S.correct

end Analysis
end Folder
