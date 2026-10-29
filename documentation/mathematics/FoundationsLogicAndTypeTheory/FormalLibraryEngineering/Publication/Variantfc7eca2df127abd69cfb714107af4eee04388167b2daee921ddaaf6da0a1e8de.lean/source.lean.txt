-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PublicationFailure.Variant5dc5202854f5f8bbb72e3f21e7afd71d56eb7a74466c7fc44768ce7aa30c1b44","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5dc5202854f5f8bbb72e3f21e7afd71d56eb7a74466c7fc44768ce7aa30c1b44","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.PublicationFailure.Variant5dc5202854f5f8bbb72e3f21e7afd71d56eb7a74466c7fc44768ce7aa30c1b44","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"5dc5202854f5f8bbb72e3f21e7afd71d56eb7a74466c7fc44768ce7aa30c1b44","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Surface/Audit/Publication.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public import Surface.Core
public meta import Lean.Elab.Command
public meta import Surface.Core.Classification

/-!
# Publication classification audit

Only declarations explicitly tagged `surface_published` enter this audit.
Compiler-generated recursors and helper theorems therefore cannot create false
publication failures.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PublicationFailure.Variant5dc5202854f5f8bbb72e3f21e7afd71d56eb7a74466c7fc44768ce7aa30c1b44

public meta section

open Lean Elab Command

namespace Surface.Audit

def publicationFailure?
    (env : Environment)
    (info : ConstantInfo) : Option String :=
  let name := info.name
  if !Surface.Core.surfacePublishedAttr.hasTag env name then
    none
  else
    let adapter := Surface.Core.surfaceAdapterAttr.hasTag env name
    let novel := Surface.Core.surfaceNovelAttr.hasTag env name
    let candidate := Surface.Core.surfaceCandidateAttr.hasTag env name
    if adapter == novel then
      some <| name.toString ++
        ": published theorem must have exactly one of surface_adapter/surface_novel"
    else if candidate then
      some <| name.toString ++ ": published theorem is tagged surface_candidate"
    else
      none

def publicationFailures (env : Environment) : List String :=
  env.constants.toList.filterMap fun pair =>
    publicationFailure? env pair.snd

elab "surface_publication_audit" : command => do
  let failures := publicationFailures (← getEnv)
  unless failures.isEmpty do
    throwError "Surface publication audit failed:\n{String.intercalate "\n" failures}"

surface_publication_audit

end Surface.Audit
