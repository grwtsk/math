-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ValidateExtAttr.Variantc734b3903e665a5291e7fbbccfc9e5030dcb8f96750d01ca89610ebad8fac724","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c734b3903e665a5291e7fbbccfc9e5030dcb8f96750d01ca89610ebad8fac724","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.ValidateExtAttr.Variantc734b3903e665a5291e7fbbccfc9e5030dcb8f96750d01ca89610ebad8fac724","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"c734b3903e665a5291e7fbbccfc9e5030dcb8f96750d01ca89610ebad8fac724","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Tactic/Grind/ExtAttr.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Meta.Tactic.Ext
public import Lean.Meta.Tactic.Grind.Extension

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ValidateExtAttr.Variantc734b3903e665a5291e7fbbccfc9e5030dcb8f96750d01ca89610ebad8fac724

public section
namespace Lean.Meta.Grind
/-! Grind extensionality attribute to mark which `[ext]` theorems should be used. -/

def validateExtAttr (declName : Name) : CoreM Unit := do
  if !(← Ext.isExtTheorem declName) then
  if !(isStructure (← getEnv) declName) then
    throwError "invalid `[grind ext]`, `{.ofConstName declName}` is neither tagged with `[ext]` nor is a structure"

def ExtTheorems.eraseDecl (s : ExtTheorems) (declName : Name) : CoreM ExtTheorems := do
  if s.contains declName then
    return s.erase declName
  else
    throwError "`{.ofConstName declName}` is not marked with the `[grind ext]` attribute"

end Lean.Meta.Grind
