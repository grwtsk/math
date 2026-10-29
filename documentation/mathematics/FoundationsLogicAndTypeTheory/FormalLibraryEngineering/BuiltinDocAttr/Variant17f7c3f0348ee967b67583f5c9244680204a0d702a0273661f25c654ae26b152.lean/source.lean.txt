-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DeclareBuiltinDocStringAndRanges.Variant249850f00fcc34865dd5e22cfdc9dcf133e73c5ea0aa25b836070d59f83cd7a4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"249850f00fcc34865dd5e22cfdc9dcf133e73c5ea0aa25b836070d59f83cd7a4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.DeclareBuiltinDocStringAndRanges.Variant249850f00fcc34865dd5e22cfdc9dcf133e73c5ea0aa25b836070d59f83cd7a4","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"249850f00fcc34865dd5e22cfdc9dcf133e73c5ea0aa25b836070d59f83cd7a4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/BuiltinDocAttr.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/
module

prelude
public import Lean.Compiler.InitAttr
import Lean.DocString.Markdown


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DeclareBuiltinDocStringAndRanges.Variant249850f00fcc34865dd5e22cfdc9dcf133e73c5ea0aa25b836070d59f83cd7a4

public section

namespace Lean

def declareBuiltinDocStringAndRanges (declName : Name) : AttrM Unit := do
  if let some doc ← findSimpleDocString? (← getEnv) declName (includeBuiltin := false) then
    declareBuiltin (declName ++ `docString) (mkAppN (mkConst ``addBuiltinDocString) #[toExpr declName, toExpr doc])
  if let some declRanges ← findDeclarationRanges? declName then
    declareBuiltin (declName ++ `declRange) (mkAppN (mkConst ``addBuiltinDeclarationRanges) #[toExpr declName, toExpr declRanges])

/--
Makes the documentation and location of a declaration available as a builtin.

This allows the documentation of core Lean features to be visible without importing the file they
are defined in. This is only useful during bootstrapping and should not be used outside of
the Lean source code.
-/
@[builtin_doc]
builtin_initialize
  registerBuiltinAttribute {
    name  := `builtin_doc
    descr := "make the docs and location of this declaration available as a builtin"
    add   := fun decl stx _ => do
      Attribute.Builtin.ensureNoArgs stx
      declareBuiltinDocStringAndRanges decl
    applicationTime := AttributeApplicationTime.afterCompilation
  }

end Lean
