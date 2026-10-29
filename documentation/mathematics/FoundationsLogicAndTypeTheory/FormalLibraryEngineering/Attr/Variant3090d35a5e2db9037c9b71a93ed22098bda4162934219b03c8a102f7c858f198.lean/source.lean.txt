-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SymIntToBitVecName.Variant0eb109d94e0930fd1ae9f0e0e7815df4065ccb3eb4a48947463d78eaa129e3b0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0eb109d94e0930fd1ae9f0e0e7815df4065ccb3eb4a48947463d78eaa129e3b0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.SymIntToBitVecName.Variant0eb109d94e0930fd1ae9f0e0e7815df4065ccb3eb4a48947463d78eaa129e3b0","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"0eb109d94e0930fd1ae9f0e0e7815df4065ccb3eb4a48947463d78eaa129e3b0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Tactic/BVDecide/Attr.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison, Henrik Böving
-/
module

prelude
public import Lean.Elab.Tactic.Basic
public import Lean.Meta.Tactic.Simp
public import Std.Tactic.BVDecide.Syntax
public import Lean.Meta.Sym.Simp.Theorems
import Lean.Elab.ConfigEval
import Lean.Meta.Sym.Simp.Attr


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SymIntToBitVecName.Variant0eb109d94e0930fd1ae9f0e0e7815df4065ccb3eb4a48947463d78eaa129e3b0

public section

/-!
Provides environment extensions around the `bv_decide` tactic frontends.
-/

namespace Lean.Meta.Tactic.BVDecide

open Simp

builtin_initialize registerTraceClass `Meta.Tactic.sat
builtin_initialize registerTraceClass `Meta.Tactic.bv

register_builtin_option sat.solver : String := {
  defValue := ""
  descr :=
    "Name of the SAT solver used by Lean.Elab.Tactic.BVDecide tactics.\n
     1. If this is set to something besides the empty string they will use that binary.\n
     2. If this is set to the empty string they will check if there is a cadical binary next to the\
        executing program. Usually that program is going to be `lean` itself and we do ship a\
        `cadical` next to it.\n
     3. If that does not succeed try to call `cadical` from PATH. The empty string default indicates\
        to use the one that ships with Lean."
}

declare_config_elab elabBVDecideConfig Lean.Elab.Tactic.BVDecide.BVDecideConfig

builtin_initialize bvNormalizeExt : Meta.SimpExtension ←
  Meta.registerSimpAttr `bv_normalize "simp theorems used by bv_normalize"

def symIntToBitVecName : Name := `int_toBitVec_sym
def metaIntToBitVecName : Name := `int_toBitVec_meta

builtin_initialize symIntToBitVecExt : Sym.Simp.SymSimpExtension ←
  Sym.Simp.registerSymSimpAttr symIntToBitVecName "sym simp theorems used to convert UIntX/IntX statements into BitVec ones"

builtin_initialize metaIntToBitVecExt : Meta.SimpExtension ←
  Meta.registerSimpAttr metaIntToBitVecName "meta simp theorems used to convert UIntX/IntX statements into BitVec ones"

builtin_initialize
  registerBuiltinAttribute {
    name := `int_toBitVec
    descr := "simp theorems used to convert UIntX/IntX statements into BitVec ones"
    add := fun declName stx attrKind => do
      let env ← getEnv
      let metaImpl ← IO.ofExcept <| getAttributeImpl env metaIntToBitVecName
      metaImpl.add declName stx attrKind
      let symImpl ← IO.ofExcept <| getAttributeImpl env symIntToBitVecName
      symImpl.add declName stx attrKind
  }

/-- Builtin `bv_normalize` simprocs. -/
builtin_initialize builtinBVNormalizeSimprocsRef : IO.Ref Meta.Simp.Simprocs ← IO.mkRef {}

builtin_initialize bvNormalizeSimprocExt : Meta.Simp.SimprocExtension ←
  Meta.Simp.registerSimprocAttr `bv_normalize_proc "simprocs used by bv_normalize" (some builtinBVNormalizeSimprocsRef)

private def addBuiltin (declName : Name) (stx : Syntax) (addDeclName : Name) : AttrM Unit := do
  let post := if stx[1].isNone then true else stx[1][0].getKind == ``Lean.Parser.Tactic.simpPost
  let procExpr ← match (← getConstInfo declName).type with
    | .const ``Simproc _  => pure <| mkApp3 (mkConst ``Sum.inl [0, 0]) (mkConst ``Simproc) (mkConst ``DSimproc) (mkConst declName)
    | _ => throwError "unexpected type at bv_normalize simproc"
  let val := mkAppN (mkConst addDeclName) #[toExpr declName, toExpr post, procExpr]
  let initDeclName ← mkFreshUserName (declName ++ `declare)
  declareBuiltin initDeclName val

def _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SymIntToBitVecName.Variant0eb109d94e0930fd1ae9f0e0e7815df4065ccb3eb4a48947463d78eaa129e3b0.Lean.Elab.Tactic.BVDecide.Frontend.addBVNormalizeProcBuiltinAttr (declName : Name)
    (post : Bool) (proc : Sum Simproc DSimproc) : IO Unit :=
  addSimprocBuiltinAttrCore builtinBVNormalizeSimprocsRef declName post proc



builtin_initialize
  registerBuiltinAttribute {
    ref             := by exact decl_name%
    name            := `bvNormalizeProcBuiltinAttr
    descr           := "Builtin bv_normalize simproc"
    applicationTime := AttributeApplicationTime.afterCompilation
    erase           := fun _ => throwError "Not implemented yet, [-builtin_bv_normalize_proc]"
    add             := fun declName stx _ =>
      addBuiltin declName stx ``Lean.Elab.Tactic.BVDecide.Frontend.addBVNormalizeProcBuiltinAttr
  }

end Lean.Meta.Tactic.BVDecide
