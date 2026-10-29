-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.EverySelectedTwistHasPreimage.Variante7dadde62f2f861d1a881463f4c787dbd94b9c18550351bcc501ec3257e58d8b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e7dadde62f2f861d1a881463f4c787dbd94b9c18550351bcc501ec3257e58d8b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.EverySelectedTwistHasPreimage.Variante7dadde62f2f861d1a881463f4c787dbd94b9c18550351bcc501ec3257e58d8b","mathematical_subject":"Foundations.Unclassified","original_sha256":"e7dadde62f2f861d1a881463f4c787dbd94b9c18550351bcc501ec3257e58d8b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Theorem/Research/RepresentationFaithfulness.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Research.RepresentationFaithfulness

/-!
# Folder.Theorem.Research.RepresentationFaithfulness

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports proved facts or contract exposures for the BinaryMatrix radiation program.
Ontology: proof.research.representation_faithfulness
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: infrastructure
-/



namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.EverySelectedTwistHasPreimage.Variante7dadde62f2f861d1a881463f4c787dbd94b9c18550351bcc501ec3257e58d8b

namespace Folder
namespace Theorem
namespace Research
namespace RepresentationFaithfulness

theorem every_selected_twist_has_preimage
    {Γ α : Type _}
    {one : Γ}
    {mul : Γ → Γ → Γ}
    {R : Monodromy.MonodromyRepresentation Γ mul one α}
    {T : Folder.Research.RepresentationFaithfulness.SelectedTwistGroup α}
    (C : Folder.Research.RepresentationFaithfulness.ClassifiesSelectedTwists R T)
    {φ : α ≃ α}
    (hφ : φ ∈ T.Twist) :
    ∃ g, R.ρ g = φ :=
  Folder.Research.RepresentationFaithfulness.every_selected_twist_has_preimage
    C hφ

theorem selected_twist_preimage_unique_of_faithful
    {Γ α : Type _}
    {one : Γ}
    {mul : Γ → Γ → Γ}
    {R : Monodromy.MonodromyRepresentation Γ mul one α}
    {T : Folder.Research.RepresentationFaithfulness.SelectedTwistGroup α}
    (C : Folder.Research.RepresentationFaithfulness.ClassifiesSelectedTwists R T)
    {φ : α ≃ α}
    {g h : Γ}
    (hg : R.ρ g = φ)
    (hh : R.ρ h = φ) :
    g = h :=
  Folder.Research.RepresentationFaithfulness.selected_twist_preimage_unique_of_faithful
    C hg hh

end RepresentationFaithfulness
end Research
end Theorem
end Folder
