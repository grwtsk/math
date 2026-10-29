-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.ClassicalSelectedWitness.Variantaef4fd2046351b89c2fee459e7f837eba65534fbcef76b627593a3b7845401e6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"aef4fd2046351b89c2fee459e7f837eba65534fbcef76b627593a3b7845401e6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.ClassicalSelectedWitness.Variantaef4fd2046351b89c2fee459e7f837eba65534fbcef76b627593a3b7845401e6","mathematical_subject":"Logic.Foundations","original_sha256":"aef4fd2046351b89c2fee459e7f837eba65534fbcef76b627593a3b7845401e6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/22/Reflexive/formal/lean/fcrs/FCRS/Transport/ClassicalSelection.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FCRS.Transport.Witness


namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.ClassicalSelectedWitness.Variantaef4fd2046351b89c2fee459e7f837eba65534fbcef76b627593a3b7845401e6

universe uInput uWitness

namespace FCRS.Transport.Mathematical

/-!
This module is the isolated mathematical choice boundary.  Materialized
transport theorem modules do not import it, and its result is indexed by
`ClassicalChoice`, so it cannot masquerade as verified search or another
materializable selection method.
-/

/-- Explicitly noncomputable selection from existential evidence. -/
noncomputable def classicalSelectedWitness
    {Input : Type uInput} {Witness : Type uWitness}
    {profile : IntervalProfile Input Witness}
    {certified : CertifiedIntervalTheorem profile}
    {input : Input}
    {application : TheoremApplication certified input}
    {existence : ExistenceEvidence application}
    {method : SelectionMethod .ClassicalChoice Input Witness}
    (eventArtifact : ArtifactRef .selectionEvent)
    (methodEvidence :
      method.certifies input (Classical.choose existence.witnessExists)) :
    Σ selection : WitnessSelectionEvent existence method,
      SelectedWitness selection :=
  let candidate : IntervalWitness profile input := {
    value := Classical.choose existence.witnessExists
    evidence := Classical.choose_spec existence.witnessExists
  }
  let selection : WitnessSelectionEvent existence method := {
    eventArtifact := eventArtifact
    result := candidate
    methodEvidence := methodEvidence
  }
  ⟨selection, {
    intervalWitness := candidate
    eventResultExact := rfl
  }⟩

end FCRS.Transport.Mathematical
