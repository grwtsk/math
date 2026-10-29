-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.InvalidatedExactlyWhenInvalidTimePresent.Variant111585f5593eb308056af3e64cd8d60d4293116abbc339338d941577ca90a9c9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"111585f5593eb308056af3e64cd8d60d4293116abbc339338d941577ca90a9c9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.InvalidatedExactlyWhenInvalidTimePresent.Variant111585f5593eb308056af3e64cd8d60d4293116abbc339338d941577ca90a9c9","mathematical_subject":"Foundations.Unclassified","original_sha256":"111585f5593eb308056af3e64cd8d60d4293116abbc339338d941577ca90a9c9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Quarantine/SourceOverlap/formal/Think/Validation/TemporalInvalidationCorrect.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.SourceTree.Legacy.RadoProjectedModularHeatflow.MemoryCore.TemporalKG


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.InvalidatedExactlyWhenInvalidTimePresent.Variant111585f5593eb308056af3e64cd8d60d4293116abbc339338d941577ca90a9c9

set_option autoImplicit false

namespace Think.Validation.TemporalInvalidationCorrect

theorem invalidated_exactly_when_invalid_time_present
    (e : Think.RadoProjectedModularHeatflow.MemoryCore.TemporalEdge) :
    e.invalidated = true ↔ e.invalidAt?.isSome = true :=
  Think.RadoProjectedModularHeatflow.MemoryCore.invalidated_iff_has_invalid_time e

end Think.Validation.TemporalInvalidationCorrect
