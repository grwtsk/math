-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GetOtherDeclBaseType.Variant6af00c9e8a91b0297016753e0a7820ae3d0981c4f4a7f6e145bd3035ff6d0276","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6af00c9e8a91b0297016753e0a7820ae3d0981c4f4a7f6e145bd3035ff6d0276","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.GetOtherDeclBaseType.Variant6af00c9e8a91b0297016753e0a7820ae3d0981c4f4a7f6e145bd3035ff6d0276","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"6af00c9e8a91b0297016753e0a7820ae3d0981c4f4a7f6e145bd3035ff6d0276","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Compiler/LCNF/BaseTypes.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Compiler.LCNF.CompilerM


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GetOtherDeclBaseType.Variant6af00c9e8a91b0297016753e0a7820ae3d0981c4f4a7f6e145bd3035ff6d0276

public section

namespace Lean.Compiler.LCNF

/--
State for the environment extension used to save the LCNF base phase type for declarations
that do not have code associated with them.
Example: constructors, inductive types, foreign functions.
-/
builtin_initialize baseTypeExt : CacheExtension Name Expr ← CacheExtension.register

def getOtherDeclBaseType (declName : Name) (us : List Level) : CoreM Expr := do
  let info ← getConstInfo declName
  let type ← match (← baseTypeExt.find? declName) with
    | some type => pure type
    | none =>
      let type ← Meta.MetaM.run' <| toLCNFType info.type
      baseTypeExt.insert declName type
      pure type
  return type.instantiateLevelParamsNoCache info.levelParams us

end Lean.Compiler.LCNF
