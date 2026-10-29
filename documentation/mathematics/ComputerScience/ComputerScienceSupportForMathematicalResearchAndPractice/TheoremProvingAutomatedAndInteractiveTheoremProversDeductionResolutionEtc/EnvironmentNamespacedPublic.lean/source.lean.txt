-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.EnvironmentGetModuleFor.Variant487d996a12f9e3ee0aa04ef9cce7858c9beef9450bf8acd912c586402f6e74b2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"487d996a12f9e3ee0aa04ef9cce7858c9beef9450bf8acd912c586402f6e74b2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.EnvironmentGetModuleFor.Variant487d996a12f9e3ee0aa04ef9cce7858c9beef9450bf8acd912c586402f6e74b2","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"487d996a12f9e3ee0aa04ef9cce7858c9beef9450bf8acd912c586402f6e74b2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/importGraph/ImportGraph/Lean/Environment.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
module

public import Lean.Environment


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.EnvironmentGetModuleFor.Variant487d996a12f9e3ee0aa04ef9cce7858c9beef9450bf8acd912c586402f6e74b2

namespace Lean

/-- Return the name of the module in which a declaration was defined. -/
public def Environment.getModuleFor? (env : Environment) (declName : Name) : Option Name :=
  match env.getModuleIdxFor? declName with
  | none =>
    if env.constants.map₂.contains declName then
      env.header.mainModule
    else
      none
  | some idx => env.header.moduleNames[idx.toNat]!

end Lean
