-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DefaultStackPivots.Variant8867b9c5b596895d7715ae03c6bb05cd6aeeb1e22ed9eb8e6dd6700985296e96","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8867b9c5b596895d7715ae03c6bb05cd6aeeb1e22ed9eb8e6dd6700985296e96","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.DefaultStackPivots.Variant8867b9c5b596895d7715ae03c6bb05cd6aeeb1e22ed9eb8e6dd6700985296e96","mathematical_subject":"Foundations.Unclassified","original_sha256":"8867b9c5b596895d7715ae03c6bb05cd6aeeb1e22ed9eb8e6dd6700985296e96","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Theorem/Core/CompositeStack.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Core.CompositeStack

/-!
# Folder.Theorem.Core.CompositeStack

Radiation role: theorem-wrapper
BinaryMatrix spine: This theorem wrapper exposes composite-stack pivot facts for downstream finite carriers.
Ontology: proof.core.composite_stack
Pivot role: dual
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: infrastructure
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DefaultStackPivots.Variant8867b9c5b596895d7715ae03c6bb05cd6aeeb1e22ed9eb8e6dd6700985296e96

namespace Folder
namespace Theorem
namespace Core

theorem default_stack_pivots
    (S : Folder.Core.CompositeStack)
    (h : S.pivots = Folder.Core.defaultDualPivot) :
    S.hasArithmeticPivot ∧ S.hasSpectralPivot :=
  Folder.Core.default_stack_pivots S h

end Core
end Theorem
end Folder
