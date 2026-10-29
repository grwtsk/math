-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HasUnboxAttr.Variant980931c69e6cb07aead773b5c5143960ad6cff6cc4765c050e12062954e01a0a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"980931c69e6cb07aead773b5c5143960ad6cff6cc4765c050e12062954e01a0a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.HasUnboxAttr.Variant980931c69e6cb07aead773b5c5143960ad6cff6cc4765c050e12062954e01a0a","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"980931c69e6cb07aead773b5c5143960ad6cff6cc4765c050e12062954e01a0a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Compiler/IR/UnboxResult.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2019 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Compiler.IR.Basic


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HasUnboxAttr.Variant980931c69e6cb07aead773b5c5143960ad6cff6cc4765c050e12062954e01a0a

public section

namespace Lean.IR.UnboxResult

/--
Tags types that the compiler should unbox if they occur in result values.

This attribute currently has no effect.
-/
@[builtin_doc]
builtin_initialize unboxAttr : TagAttribute ←
  registerTagAttribute `unbox "compiler tries to unbox result values if their types are tagged with `[unbox]`" fun declName => do
    let cinfo ← getConstInfo declName;
    match cinfo with
    | ConstantInfo.inductInfo v =>
      if v.isRec then throwError "Cannot add attribute `[unbox]` to `{.ofConstName declName}`: Recursive inductive datatypes are not supported"
      else pure ()
    | _ => throwError "Cannot add attribute `[unbox]` to `{.ofConstName declName}`: `[unbox]` can only be added to inductive types"

def hasUnboxAttr (env : Environment) (n : Name) : Bool :=
  unboxAttr.hasTag env n

end Lean.IR.UnboxResult
