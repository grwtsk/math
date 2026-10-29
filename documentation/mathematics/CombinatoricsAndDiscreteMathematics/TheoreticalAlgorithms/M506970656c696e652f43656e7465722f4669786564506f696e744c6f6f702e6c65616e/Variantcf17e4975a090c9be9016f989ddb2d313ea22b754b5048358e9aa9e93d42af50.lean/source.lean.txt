-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.FixedPointPhases.Variant417c2e6486f0aa334f839ca98a633c81238f34d057b5634cea00d2d655d29047","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"417c2e6486f0aa334f839ca98a633c81238f34d057b5634cea00d2d655d29047","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.FixedPointPhases.Variant417c2e6486f0aa334f839ca98a633c81238f34d057b5634cea00d2d655d29047","mathematical_subject":"Computation.DataStructures","original_sha256":"417c2e6486f0aa334f839ca98a633c81238f34d057b5634cea00d2d655d29047","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Think/Bit0/Bit1/Bit1/Bit0/Bit1/Bit0/Bit1/Bit1/M506970656c696e652f43656e7465722f4669786564506f696e744c6f6f702e6c65616e.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.Bit0.Bit0.Bit1.Bit1.Bit1.Bit0.Bit0.Bit0.M506970656c696e652f43656e7465722f42726169642e6c65616e


/- source-tree-label: STL1|L|addr=01101011|role=proof_code_atom|slug=pipeline-center-fixedpointloop|owner=canonical_owner|core=Pipeline/Center/FixedPointLoop.lean|leaf=M506970656c696e652f43656e7465722f4669786564506f696e744c6f6f702e6c65616e.lean -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.FixedPointPhases.Variant417c2e6486f0aa334f839ca98a633c81238f34d057b5634cea00d2d655d29047

set_option autoImplicit false

namespace Think.Pipeline.Center

def fixedPointPhases : List Think.PhaseId := [
  FWR.Pipeline.CenterWeighted.Phase.residueExtraction,
  FWR.Pipeline.CenterWeighted.Phase.residueContainment,
  FWR.Pipeline.CenterWeighted.Phase.cleanProjection,
  FWR.Pipeline.CenterWeighted.Phase.reverseSectionReplay,
  FWR.Pipeline.CenterWeighted.Phase.forwardReplay,
  FWR.Pipeline.CenterWeighted.Phase.fixedPointComparison,
  FWR.Pipeline.CenterWeighted.Phase.boundaryReport
]

theorem fixedPointPhases_count :
    fixedPointPhases.length = 7 := by
  rfl

theorem fixedPointPhase_centerControlled :
    ∀ p ∈ fixedPointPhases, p ∈ spine := by
  intro p _hp
  exact spine_complete p

end Think.Pipeline.Center
