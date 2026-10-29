-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PrunedWitness.Variant494267e9f9e9359e1a5181d85391dc3f988e9dcf1d9092eb708bffd295955d23","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"494267e9f9e9359e1a5181d85391dc3f988e9dcf1d9092eb708bffd295955d23","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.PrunedWitness.Variant494267e9f9e9359e1a5181d85391dc3f988e9dcf1d9092eb708bffd295955d23","mathematical_subject":"Foundations.Unclassified","original_sha256":"494267e9f9e9359e1a5181d85391dc3f988e9dcf1d9092eb708bffd295955d23","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Quarantine/SourceOverlap/formal/Think/SourceTree/Legacy/RadoProjectedModularHeatflow/Witness.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.SourceTree.Legacy.RadoProjectedModularHeatflow.ModularWeight


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PrunedWitness.Variant494267e9f9e9359e1a5181d85391dc3f988e9dcf1d9092eb708bffd295955d23

set_option autoImplicit false

namespace Think.RadoProjectedModularHeatflow

structure PrunedWitness where
  oldPath : String
  newPath : String
  oldWeight : Nat
  newWeight : Nat
  sameWeight : oldWeight = newWeight
  residueClass : String
  reason : String

def phase37Witness : PrunedWitness :=
  { oldPath := "formal/Think/Pipeline/Phases/Phase37_WeightScoring.lean"
    newPath := "formal/Think/Pipeline/Phases/PhaseTable.lean"
    oldWeight := phaseWeight 37
    newWeight := phaseWeight 23
    sameWeight := by rfl
    residueClass := "Classifier.WeightScore"
    reason := "phase-table contraction preserving mirror Phase23" }

def classifierWeightScoreWitness : PrunedWitness :=
  { oldPath := "formal/Think/Poles/ClassifierPole/WeightScore.lean"
    newPath := "formal/Think/Poles/Classifier.lean"
    oldWeight := phaseWeight 37
    newWeight := phaseWeight 23
    sameWeight := by rfl
    residueClass := "Classifier.WeightScore"
    reason := "pole-family contraction preserving classifier scoring residue" }

theorem phase37Witness_preservesWeight :
    phase37Witness.oldWeight = phase37Witness.newWeight :=
  phase37Witness.sameWeight

end Think.RadoProjectedModularHeatflow
