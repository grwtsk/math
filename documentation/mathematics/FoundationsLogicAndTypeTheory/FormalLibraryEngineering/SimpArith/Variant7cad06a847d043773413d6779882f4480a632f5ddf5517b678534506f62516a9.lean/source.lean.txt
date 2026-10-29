-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AddConfigItem.Variant79933621349494e1c5b68322a4c3f14a1f27f6edd09f0333f2c67821b283f2b6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"79933621349494e1c5b68322a4c3f14a1f27f6edd09f0333f2c67821b283f2b6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.AddConfigItem.Variant79933621349494e1c5b68322a4c3f14a1f27f6edd09f0333f2c67821b283f2b6","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"79933621349494e1c5b68322a4c3f14a1f27f6edd09f0333f2c67821b283f2b6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Elab/Tactic/SimpArith.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Elab.Tactic.Simp
public import Lean.Meta.Tactic.TryThis


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AddConfigItem.Variant79933621349494e1c5b68322a4c3f14a1f27f6edd09f0333f2c67821b283f2b6

public section

namespace Lean.Elab.Tactic

private def addConfigItem (stx : Syntax) (item : Syntax) : Syntax :=
  let optConfig := stx[1]
  let optConfig := optConfig.modifyArg 0 fun arg => mkNullNode (#[item] ++ arg.getArgs)
  stx.setArg 1 optConfig

set_option hygiene false in
private def addArith (stx : Syntax) : CoreM Syntax :=
  return addConfigItem stx (← `(Lean.Parser.Tactic.configItem| +arith))

set_option hygiene false in
private def addDecide (stx : Syntax) : CoreM Syntax :=
  return addConfigItem stx (← `(Lean.Parser.Tactic.configItem| +decide))

private def setKind (stx : Syntax) (str : String) (kind : SyntaxNodeKind) : Syntax :=
  let stx := stx.setKind kind
  stx.setArg 0 (mkAtom str)

private def addSuggestions (stx : Syntax) (tokenNew : String) (kindNew : SyntaxNodeKind) : MetaM Unit := do
  let stx' := setKind stx tokenNew kindNew
  let stx' := stx'.unsetTrailing
  let s₁ : TSyntax `tactic := ⟨← addArith stx'⟩
  let s₂ : TSyntax `tactic := ⟨← addArith (← addDecide stx')⟩
  Meta.Tactic.TryThis.addSuggestions stx[0] #[s₁, s₂] (origSpan? := (← getRef))

@[builtin_tactic Lean.Parser.Tactic.simpArith] def evalSimpArith : Tactic := fun stx => do
  addSuggestions stx "simp" ``Parser.Tactic.simp
  throwError "`simp_arith` has been deprecated. It was a shorthand for `simp +arith +decide`, but most of the time, `+decide` was redundant since simprocs have been implemented."

@[builtin_tactic Lean.Parser.Tactic.simpArithBang] def evalSimpArithBang : Tactic := fun stx => do
  addSuggestions stx "simp!" ``Parser.Tactic.simpAutoUnfold
  throwError "`simp_arith!` has been deprecated. It was a shorthand for `simp! +arith +decide`, but most of the time, `+decide` was redundant since simprocs have been implemented."

@[builtin_tactic Lean.Parser.Tactic.simpAllArith] def evalSimpAllArith : Tactic := fun stx => do
  addSuggestions stx "simp_all" ``Parser.Tactic.simpAll
  throwError "`simp_all_arith` has been deprecated. It was a shorthand for `simp_all +arith +decide`, but most of the time, `+decide` was redundant since simprocs have been implemented."

@[builtin_tactic Lean.Parser.Tactic.simpAllArithBang] def evalSimpAllArithBang : Tactic := fun stx => do
  addSuggestions stx "simp_all!" ``Parser.Tactic.simpAllAutoUnfold
  throwError "`simp_all_arith!` has been deprecated. It was a shorthand for `simp_all! +arith +decide`, but most of the time, `+decide` was redundant since simprocs have been implemented."


end Lean.Elab.Tactic
