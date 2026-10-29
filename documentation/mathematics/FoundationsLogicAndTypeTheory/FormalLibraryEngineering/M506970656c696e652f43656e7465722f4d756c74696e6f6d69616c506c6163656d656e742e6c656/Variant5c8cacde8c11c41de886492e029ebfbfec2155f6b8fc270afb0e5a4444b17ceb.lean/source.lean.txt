-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BraidWeight.Variant385d3684ad7115b788f2115b2383f0fd7ca2ec75a0ab7cbea4e7e701f66ea89c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"385d3684ad7115b788f2115b2383f0fd7ca2ec75a0ab7cbea4e7e701f66ea89c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.BraidWeight.Variant385d3684ad7115b788f2115b2383f0fd7ca2ec75a0ab7cbea4e7e701f66ea89c","mathematical_subject":"Foundations.Unclassified","original_sha256":"385d3684ad7115b788f2115b2383f0fd7ca2ec75a0ab7cbea4e7e701f66ea89c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Think/Bit1/Bit1/Bit1/Bit0/Bit0/Bit0/Bit0/Bit0/M506970656c696e652f43656e7465722f4d756c74696e6f6d69616c506c6163656d656e742e6c65616e.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.Bit1.Bit0.Bit1.Bit0.Bit0.Bit1.M506970656c696e652f43656e7465722f576569676874656443656e7465722e6c65616e


/- source-tree-label: STL1|L|addr=11100000|role=proof_code_atom|slug=pipeline-center-multinomialplacement|owner=canonical_owner|core=Pipeline/Center/MultinomialPlacement.lean|leaf=M506970656c696e652f43656e7465722f4d756c74696e6f6d69616c506c6163656d656e742e6c65616e.lean -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BraidWeight.Variant385d3684ad7115b788f2115b2383f0fd7ca2ec75a0ab7cbea4e7e701f66ea89c

set_option autoImplicit false

namespace Think.Pipeline.Center

abbrev BraidWeight := FWR.Pipeline.CenterWeighted.BraidWeight

def braidWeight (p : Think.PhaseId) : BraidWeight :=
  p.braidWeight

def multinomialWeight (p : Think.PhaseId) : Nat :=
  (braidWeight p).multinomial

theorem multinomial_denominator_pos (w : BraidWeight) :
    0 <
      FWR.Pipeline.CenterWeighted.BraidWeight.factorial w.left *
      FWR.Pipeline.CenterWeighted.BraidWeight.factorial w.center *
      FWR.Pipeline.CenterWeighted.BraidWeight.factorial w.right := by
  exact FWR.Pipeline.CenterWeighted.multinomial_denominator_pos w

end Think.Pipeline.Center
