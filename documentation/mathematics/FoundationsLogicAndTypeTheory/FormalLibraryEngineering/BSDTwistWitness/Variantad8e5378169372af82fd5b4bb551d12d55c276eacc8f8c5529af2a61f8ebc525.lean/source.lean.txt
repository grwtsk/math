-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CertifiedTwistFamilyAllCertified.Variantf21259414440a57141c79c5e2112dd8d4415703d41636685ff409b4bde7127ad","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f21259414440a57141c79c5e2112dd8d4415703d41636685ff409b4bde7127ad","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.CertifiedTwistFamilyAllCertified.Variantf21259414440a57141c79c5e2112dd8d4415703d41636685ff409b4bde7127ad","mathematical_subject":"Foundations.Unclassified","original_sha256":"f21259414440a57141c79c5e2112dd8d4415703d41636685ff409b4bde7127ad","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Theorem/Arithmetic/BSDTwistWitness.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Arithmetic.BSDTwistWitness

/-!
# Folder.Theorem.Arithmetic.BSDTwistWitness

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports proved facts or contract exposures for the BinaryMatrix radiation program.
Ontology: proof.arithmetic.bsdtwist_witness
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: infrastructure
-/



namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CertifiedTwistFamilyAllCertified.Variantf21259414440a57141c79c5e2112dd8d4415703d41636685ff409b4bde7127ad

namespace Folder
namespace Theorem
namespace Arithmetic

theorem certified_twist_family_all_certified
    (W : Folder.Arithmetic.CertifiedQuadraticTwistFamily) :
    Folder.Arithmetic.AllTwistsCertified W.witness :=
  Folder.Arithmetic.certified_twist_family_all_certified W

theorem certified_twist_family_infinite
    (W : Folder.Arithmetic.CertifiedQuadraticTwistFamily) :
    W.witness.isInfiniteFamily :=
  Folder.Arithmetic.certified_twist_family_infinite W

end Arithmetic
end Theorem
end Folder
