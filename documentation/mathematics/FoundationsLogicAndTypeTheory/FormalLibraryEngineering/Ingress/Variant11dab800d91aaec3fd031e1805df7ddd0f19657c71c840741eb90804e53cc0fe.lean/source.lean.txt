-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IngressKind.Variantf4aa02084566d3dab9e927330299f44ed90128ece16eb2d2839a097bafe19e85","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f4aa02084566d3dab9e927330299f44ed90128ece16eb2d2839a097bafe19e85","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.IngressKind.Variantf4aa02084566d3dab9e927330299f44ed90128ece16eb2d2839a097bafe19e85","mathematical_subject":"Foundations.Unclassified","original_sha256":"f4aa02084566d3dab9e927330299f44ed90128ece16eb2d2839a097bafe19e85","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Resolution/Ingress.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Resolution.Context

/-!
# Canonical browser and native invocation ingress
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IngressKind.Variantf4aa02084566d3dab9e927330299f44ed90128ece16eb2d2839a097bafe19e85

namespace Mathematics.Resolution

inductive IngressKind
  | browser
  | native
  deriving DecidableEq, Repr

structure InvocationIntent where
  cutDigest : String
  contextDigest : String
  authorityDigest : String
  deriving DecidableEq, Repr

structure CanonicalResolutionCommand where
  intent : InvocationIntent
  deriving DecidableEq, Repr

def canonicalizeIngress
    (_kind : IngressKind)
    (intent : InvocationIntent) :
    CanonicalResolutionCommand :=
  ⟨intent⟩

theorem browser_native_canonicalize_equally
    (intent : InvocationIntent) :
    canonicalizeIngress .browser intent =
      canonicalizeIngress .native intent :=
  rfl

end Mathematics.Resolution
