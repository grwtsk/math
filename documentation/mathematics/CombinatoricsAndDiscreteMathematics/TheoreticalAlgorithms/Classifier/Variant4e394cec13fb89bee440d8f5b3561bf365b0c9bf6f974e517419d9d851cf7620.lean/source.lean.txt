-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Placements.Variant9c9756770ca6e59d4626029ba3222dd02aa680c575e9f8e40d10fc02d55ce906","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9c9756770ca6e59d4626029ba3222dd02aa680c575e9f8e40d10fc02d55ce906","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.Placements.Variant9c9756770ca6e59d4626029ba3222dd02aa680c575e9f8e40d10fc02d55ce906","mathematical_subject":"Computation.DataStructures","original_sha256":"9c9756770ca6e59d4626029ba3222dd02aa680c575e9f8e40d10fc02d55ce906","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Quarantine/SourceOverlap/formal/Think/SourceTree/Legacy/Poles/Classifier.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.SourceTree.PoleAssignment


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Placements.Variant9c9756770ca6e59d4626029ba3222dd02aa680c575e9f8e40d10fc02d55ce906

set_option autoImplicit false

namespace Think.Poles.Classifier

def placements : List Think.SourceTree.PhasePlacement :=
  Think.SourceTree.placementsForPole Think.SourceTree.Pole.classifier

theorem placements_count :
    placements.length = 7 :=
  Think.SourceTree.classifierPole_count

theorem placements_centerControlled :
    ∀ q ∈ placements, q.phase ∈ Think.centerSpine := by
  intro q _hq
  exact Think.SourceTree.center_spine_controls_all_poles q

end Think.Poles.Classifier
