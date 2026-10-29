-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.Integral.Variantff3b0e8fc3c73246d898dc33610471b60219636ce924c8380d86372fe7786ce2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ff3b0e8fc3c73246d898dc33610471b60219636ce924c8380d86372fe7786ce2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.Integral.Variantff3b0e8fc3c73246d898dc33610471b60219636ce924c8380d86372fe7786ce2","mathematical_subject":"Analysis.Integration","original_sha256":"ff3b0e8fc3c73246d898dc33610471b60219636ce924c8380d86372fe7786ce2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Analysis/CubicIntegration.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Analysis.Cubic

/-!
# Folder.Analysis.CubicIntegration

Radiation role: boolean-linear-analysis
BinaryMatrix spine: This module contains auxiliary Boolean, linear, or analytic mathematics adjacent to the BinaryMatrix spine.
Ontology: analysis.cubic_integration
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: infrastructure
-/



namespace GRWTSK.Analysis.RealAnalysis.Integration.Integral.Variantff3b0e8fc3c73246d898dc33610471b60219636ce924c8380d86372fe7786ce2

namespace Folder
namespace Analysis

namespace Cubic

noncomputable def integral (p : Cubic) (lo hi : ℝ) : ℝ :=
  p.antiderivativeEval hi - p.antiderivativeEval lo

@[simp]
theorem integral_same (p : Cubic) (x : ℝ) :
    p.integral x x = 0 := by
  simp [integral]

theorem integral_add_interval
    (p : Cubic) (a b c : ℝ) :
    p.integral a b + p.integral b c = p.integral a c := by
  unfold integral
  ring

end Cubic

end Analysis
end Folder
