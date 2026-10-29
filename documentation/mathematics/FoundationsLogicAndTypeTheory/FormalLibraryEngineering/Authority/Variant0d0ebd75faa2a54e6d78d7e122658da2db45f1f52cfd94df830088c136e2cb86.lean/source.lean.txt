-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AuthorityClass.Variant295338e6ec5e156cb94bba57e396b2fdd82efaaa9ee18351b356e19856e14c18","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"295338e6ec5e156cb94bba57e396b2fdd82efaaa9ee18351b356e19856e14c18","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.AuthorityClass.Variant295338e6ec5e156cb94bba57e396b2fdd82efaaa9ee18351b356e19856e14c18","mathematical_subject":"Foundations.Unclassified","original_sha256":"295338e6ec5e156cb94bba57e396b2fdd82efaaa9ee18351b356e19856e14c18","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/SemanticTokenization/Authority.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemanticTokenization.Basic

/-!
# Interpretation authority
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AuthorityClass.Variant295338e6ec5e156cb94bba57e396b2fdd82efaaa9ee18351b356e19856e14c18

namespace Mathematics.SemanticTokenization

inductive AuthorityClass
  | humanAccepted
  | lexicallyCertified
  | corpusSupported
  | parserSupported
  | modelSuggested
  | taskAssumed
deriving DecidableEq, Repr

inductive AssertionUse
  | structural
  | lexical
  | syntactic
  | semantic
  | pragmatic
  | theoremPremise
  | candidateOnly
deriving DecidableEq, Repr

structure AuthorityPolicy where
  permits : AuthorityClass → AssertionUse → Bool
  modelCannotProve :
    permits .modelSuggested .theoremPremise = false
  parserCannotProveSemantics :
    permits .parserSupported .semantic = false
  parserCannotProveTheorems :
    permits .parserSupported .theoremPremise = false

def conservativeAuthorityPolicy : AuthorityPolicy where
  permits
    | .humanAccepted, _ => true
    | .lexicallyCertified, .lexical => true
    | .corpusSupported, .lexical => true
    | .corpusSupported, .pragmatic => true
    | .parserSupported, .structural => true
    | .parserSupported, .syntactic => true
    | .modelSuggested, .candidateOnly => true
    | .taskAssumed, .candidateOnly => true
    | _, _ => false
  modelCannotProve := rfl
  parserCannotProveSemantics := rfl
  parserCannotProveTheorems := rfl

theorem model_suggestion_not_theorem_authority
    (policy : AuthorityPolicy) :
    policy.permits .modelSuggested .theoremPremise = false :=
  policy.modelCannotProve

end Mathematics.SemanticTokenization
