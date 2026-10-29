-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CollectUsedDeclsState.Varianta940bfa697130609453846c9af49f426cb644a03f3fa4974f3ca947c3798436e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a940bfa697130609453846c9af49f426cb644a03f3fa4974f3ca947c3798436e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.CollectUsedDeclsState.Varianta940bfa697130609453846c9af49f426cb644a03f3fa4974f3ca947c3798436e","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"a940bfa697130609453846c9af49f426cb644a03f3fa4974f3ca947c3798436e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Compiler/LCNF/EmitUtil.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Henrik Böving
-/
module

prelude
public import Lean.Compiler.LCNF.CompilerM
import Lean.Compiler.LCNF.PhaseExt
import Lean.Compiler.InitAttr


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CollectUsedDeclsState.Varianta940bfa697130609453846c9af49f426cb644a03f3fa4974f3ca947c3798436e

namespace Lean.Compiler.LCNF

structure CollectUsedDeclsState where
  visited : NameSet := {}
  localDecls : Array (Decl .impure) := #[]
  extSigs : Array (Signature .impure) := #[]

/--
Find all declarations that the declarations in `decls` transitively depend on. They are returned
partitioned into the declarations from the current module and declarations from other modules.
-/
public partial def collectUsedDecls (decls : Array Name) :
    CoreM (Array (Decl .impure) × Array (Signature .impure)) := do
  let (_, state) ← go decls |>.run {}
  return (state.localDecls, state.extSigs)
where
  go (names : Array Name) : StateRefT CollectUsedDeclsState CoreM Unit :=
    names.forM fun name => do
      if (← get).visited.contains name then return
      modify fun s => { s with visited := s.visited.insert name }
      if let some decl ← getLocalImpureDecl? name then
        modify fun s => { s with localDecls := s.localDecls.push decl }
        decl.value.forCodeM (·.forM visitCode)
        let env ← getEnv
        if let some initializer := getBuiltinInitFnNameFor? env decl.name <|> getInitFnNameFor? env decl.name then
          go #[initializer]
      else if let some sig ← getImpureSignature? name then
        modify fun s => { s with extSigs := s.extSigs.push sig }
      else
        panic! s!"collectUsedDecls: could not find declaration or signature for '{name}'"

  visitCode (code : Code .impure) : StateRefT CollectUsedDeclsState CoreM Unit := do
    match code with
    | .let decl _ =>
      match decl.value with
      | .const declName .. | .fap declName .. | .pap declName .. =>
        go #[declName]
      | _ => return ()
    | _ => return ()

public def usesModuleFrom (env : Environment) (modulePrefix : Name) : Bool :=
  env.header.modules.any fun mod => mod.irPhases != .comptime && modulePrefix.isPrefixOf mod.module

end Lean.Compiler.LCNF
