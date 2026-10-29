-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ElabSimprocGround.Variant2afe8d9c0415370ceece701dd363aa38316c87da31fc7adb48d7b6261b5a7e06","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2afe8d9c0415370ceece701dd363aa38316c87da31fc7adb48d7b6261b5a7e06","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.ElabSimprocGround.Variant2afe8d9c0415370ceece701dd363aa38316c87da31fc7adb48d7b6261b5a7e06","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"2afe8d9c0415370ceece701dd363aa38316c87da31fc7adb48d7b6261b5a7e06","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Elab/Tactic/Grind/SimprocDSLBuiltin.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Lean FRO, LLC. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
import Lean.Elab.Tactic.Grind.SimprocDSL
import Init.Sym.Simp.SimprocDSL
import Lean.Meta.Sym.Simp.EvalGround
import Lean.Meta.Sym.Simp.Telescope
import Lean.Meta.Sym.Simp.ControlFlow
import Lean.Meta.Sym.Simp.Forall
import Lean.Meta.Sym.Simp.Rewrite

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ElabSimprocGround.Variant2afe8d9c0415370ceece701dd363aa38316c87da31fc7adb48d7b6261b5a7e06

namespace Lean.Elab.Tactic.Grind
open Meta Sym.Simp

-- Simproc elaborators

@[builtin_sym_simproc ground]
def elabSimprocGround : SymSimprocElab := fun _ =>
  return evalGround

@[builtin_sym_simproc telescope]
def elabSimprocTelescope : SymSimprocElab := fun _ =>
  return simpTelescope

@[builtin_sym_simproc Lean.Parser.Sym.Simp.control]
def elabSimprocControl : SymSimprocElab := fun _ =>
  return simpControl

@[builtin_sym_simproc Lean.Parser.Sym.Simp.arrowTelescope]
def elabSimprocArrowTelescope : SymSimprocElab := fun _ =>
  return simpArrowTelescope

@[builtin_sym_simproc self]
def elabSimprocSelf : SymSimprocElab := fun _ =>
  return simp

@[builtin_sym_simproc none]
def elabSimprocNone : SymSimprocElab := fun _ =>
  return fun _ => return .rfl

def elabOptDischarger (discharger? : Option (TSyntax `sym_discharger)) : GrindTacticM Discharger := do
  let some discharger := discharger? | return dischargeNone
  elabSymDischarger discharger

@[builtin_sym_simproc rewriteSet]
def elabSimprocRewriteSet : SymSimprocElab := fun stx => do
  let `(sym_simproc| rewrite $setName:ident $[with $d?]?) := stx | throwUnsupportedSyntax
  let some ext ← getSymSimpExtension? setName.getId
    | throwErrorAt setName "unknown Sym.simp theorem set `{setName}`"
  let thms ← ext.getTheorems
  return thms.rewrite (← elabOptDischarger d?)

@[builtin_sym_simproc rewriteInline]
def elabSimprocRewriteInline : SymSimprocElab := fun stx => do
  let `(sym_simproc| rewrite [ $[$names:ident],* ] $[with $d?]?) := stx | throwUnsupportedSyntax
  let mut thms : Theorems := {}
  for name in names do
    let declName ← realizeGlobalConstNoOverload name
    thms := thms.insert (← mkTheoremFromDecl declName)
  return thms.rewrite (← elabOptDischarger d?)

@[builtin_sym_simproc andThen]
def elabSimprocAndThen : SymSimprocElab := fun stx => do
  let `(sym_simproc| $left >> $right) := stx | throwUnsupportedSyntax
  let left ← elabSymSimproc left
  let right ← elabSymSimproc right
  return left >> right

@[builtin_sym_simproc Lean.Parser.Sym.Simp.orElse]
def elabSimprocOrElse : SymSimprocElab := fun stx => do
  let `(sym_simproc| $left <|> $right) := stx | throwUnsupportedSyntax
  let left ← elabSymSimproc left
  let right ← elabSymSimproc right
  return left <|> right

@[builtin_sym_simproc simprocParen]
def elabSimprocParen : SymSimprocElab := fun stx => do
  let `(sym_simproc| ( $proc) ) := stx | throwUnsupportedSyntax
  elabSymSimproc proc

-- Discharger elaborators

@[builtin_sym_discharger dischSelf]
def elabDischSelf : SymDischargerElab := fun _ =>
  return dischargeSimpSelf

@[builtin_sym_discharger dischNone]
def elabDischNone : SymDischargerElab := fun _ =>
  return dischargeNone

@[builtin_sym_discharger dischParen]
def elabDischParen : SymDischargerElab := fun stx => do
  let `(sym_discharger| ( $d ) ) := stx | throwUnsupportedSyntax
  elabSymDischarger d

end Lean.Elab.Tactic.Grind
