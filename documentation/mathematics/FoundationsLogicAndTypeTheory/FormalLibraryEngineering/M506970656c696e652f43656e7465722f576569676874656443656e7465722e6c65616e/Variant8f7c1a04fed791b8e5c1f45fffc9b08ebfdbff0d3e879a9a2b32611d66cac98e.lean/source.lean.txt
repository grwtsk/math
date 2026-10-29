-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CenterIndex.Variant9785256fdce9f93715c60ae65a10af646852a28c971bd469bb59f2a14f78f265","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9785256fdce9f93715c60ae65a10af646852a28c971bd469bb59f2a14f78f265","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.CenterIndex.Variant9785256fdce9f93715c60ae65a10af646852a28c971bd469bb59f2a14f78f265","mathematical_subject":"Foundations.Unclassified","original_sha256":"9785256fdce9f93715c60ae65a10af646852a28c971bd469bb59f2a14f78f265","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Think/Bit1/Bit0/Bit1/Bit0/Bit0/Bit1/M506970656c696e652f43656e7465722f576569676874656443656e7465722e6c65616e.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.Bit0.Bit0.Bit1.Bit1.Bit1.Bit1.Bit0.Bit1.Bit0.M506970656c696e652f43656e7465722f436865636b706f696e74732e6c65616e


/- source-tree-label: STL1|L|addr=101001|role=proof_code_atom|slug=pipeline-center-weightedcenter|owner=canonical_owner|core=Pipeline/Center/WeightedCenter.lean|leaf=M506970656c696e652f43656e7465722f576569676874656443656e7465722e6c65616e.lean -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CenterIndex.Variant9785256fdce9f93715c60ae65a10af646852a28c971bd469bb59f2a14f78f265

set_option autoImplicit false

namespace Think.Pipeline.Center

def centerIndex : Nat :=
  FWR.Pipeline.CenterWeighted.Phase.centerIndex

def phaseCount : Nat :=
  FWR.Pipeline.CenterWeighted.Phase.phaseCount

def centerWeight (p : Think.PhaseId) : Nat :=
  p.centerWeight

theorem centerWeight_positive (p : Think.PhaseId) :
    0 < centerWeight p := by
  exact FWR.Pipeline.CenterWeighted.centerWeight_positive p

end Think.Pipeline.Center
