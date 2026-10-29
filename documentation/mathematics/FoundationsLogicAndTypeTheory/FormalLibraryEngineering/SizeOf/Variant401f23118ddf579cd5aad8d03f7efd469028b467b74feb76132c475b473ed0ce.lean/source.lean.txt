-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MkSizeOfHandler.Variantd2eab39deb106ad07d503185b9fe2c32bf6e4496c966dfab7b434c8f7032d529","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d2eab39deb106ad07d503185b9fe2c32bf6e4496c966dfab7b434c8f7032d529","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.MkSizeOfHandler.Variantd2eab39deb106ad07d503185b9fe2c32bf6e4496c966dfab7b434c8f7032d529","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"d2eab39deb106ad07d503185b9fe2c32bf6e4496c966dfab7b434c8f7032d529","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Elab/Deriving/SizeOf.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Meta.SizeOf
public import Lean.Elab.Deriving.Basic
import Lean.Elab.Deriving.Util


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MkSizeOfHandler.Variantd2eab39deb106ad07d503185b9fe2c32bf6e4496c966dfab7b434c8f7032d529

public section

/-!
Remark: `SizeOf` instances are automatically generated. We add support for `deriving instance` for `SizeOf`
just to be able to use them to define instances for types defined at `Prelude.lean`
-/

namespace Lean.Elab.Deriving.SizeOf

open Command

def mkSizeOfHandler (declNames : Array Name) : CommandElabM Bool := do
  if (← declNames.allM isInductive) then
    for declName in declNames do
      withoutExposeFromCtors declName <| liftTermElabM <| Meta.mkSizeOfInstances declName
    return true
  else
    return false

builtin_initialize
  registerDerivingHandler `SizeOf mkSizeOfHandler

end Lean.Elab.Deriving.SizeOf
