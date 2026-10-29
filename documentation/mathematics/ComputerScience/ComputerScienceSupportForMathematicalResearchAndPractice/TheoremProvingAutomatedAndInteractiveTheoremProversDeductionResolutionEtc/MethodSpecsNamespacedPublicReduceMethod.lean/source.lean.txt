-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ReduceMethod.Variantc10f38e39504fe90820358422a764980f854e7822eac496c966b0a7ff1231ce1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c10f38e39504fe90820358422a764980f854e7822eac496c966b0a7ff1231ce1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.ReduceMethod.Variantc10f38e39504fe90820358422a764980f854e7822eac496c966b0a7ff1231ce1","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"c10f38e39504fe90820358422a764980f854e7822eac496c966b0a7ff1231ce1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Tactic/Simp/BuiltinSimprocs/MethodSpecs.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joachim Breitner
-/

module

prelude
import Init.Simproc
public import Lean.Meta.Tactic.Simp.Simproc
import Lean.Meta.MethodSpecs
import Lean.Meta.Tactic.Simp.Main


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ReduceMethod.Variantc10f38e39504fe90820358422a764980f854e7822eac496c966b0a7ff1231ce1

open Lean Meta Simp

private def reduceMethod (opName : String) (e : Expr) : SimpM Simp.Step := do
  let xs := e.getAppArgsN 3
  let inst := xs[0]!
  let lhs := xs[1]!
  let rhs := xs[2]!
  unless inst.getAppFn.isConst do return .continue
  let some _ ← isConstructorApp? lhs | return .continue
  let some _ ← isConstructorApp? rhs | return .continue
  let some thms ← getMethodSpecTheorems inst.getAppFn.constName! opName | return .continue
  for thm in thms do
    let simpThms ← mkSimpTheoremFromConst thm
    assert! simpThms.size = 1
    if let some r ← Simp.tryTheorem? e simpThms[0]! then
      return .visit r
  return .continue

public section

/--
This simproc reduces `_ == _` when both arguments are constructor applications and the `BEq` instance
in question has been annotated with `@[method_specs]`.
-/
builtin_simproc_decl reduceBEq (_ == _) := fun e => do
  unless e.isAppOfArity ``BEq.beq 4 do return .continue
  reduceMethod "beq" e

/--
This simproc reduces `Ord.compare _ _` when both arguments are constructor applications and the
`Ord` instance in question has been annotated with `@[method_specs]`.
-/
builtin_simproc_decl reduceOrd (Ord.compare _ _) := fun e => do
  unless e.isAppOfArity ``Ord.compare 4 do return .continue
  reduceMethod "compare" e

end
