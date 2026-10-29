-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FunIndParamKind.Variant567476552801fdb270b72a7beb168a946053f3171eabe148aae75c9d7f1887c6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"567476552801fdb270b72a7beb168a946053f3171eabe148aae75c9d7f1887c6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.FunIndParamKind.Variant567476552801fdb270b72a7beb168a946053f3171eabe148aae75c9d7f1887c6","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"567476552801fdb270b72a7beb168a946053f3171eabe148aae75c9d7f1887c6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Tactic/FunIndInfo.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joachim Breitner
-/

module

prelude
public import Lean.Meta.Basic
public import Lean.ReservedNameAction


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FunIndParamKind.Variant567476552801fdb270b72a7beb168a946053f3171eabe148aae75c9d7f1887c6

public section

/-!
This module defines the data structure and environment extension to remember how to map the
function's arguments to the functional induction principle's arguments.
Also used for functional cases.
-/

namespace Lean.Meta

inductive FunIndParamKind where
  | dropped
  | param
  | target
deriving BEq, Repr, Inhabited

/--
A `FunIndInfo` indicates how a function's arguments map to the arguments of the functional induction
(resp. cases) theorem.

The size of `params` also indicates the arity of the function.
-/
structure FunIndInfo where
  funName : Name
  funIndName : Name
  /--
  `true` means that the corresponding level parameter of the function is also a level param
  of the induction principle.
  -/
  levelMask : Array Bool
  params : Array FunIndParamKind
deriving Inhabited, Repr

builtin_initialize funIndInfoExt : MapDeclarationExtension FunIndInfo ← mkMapDeclarationExtension

def getFunInductName (declName : Name) (unfolding : Bool := false) : Name :=
  if unfolding then
    declName ++ `induct_unfolding
  else
    declName ++ `induct

def getFunCasesName (declName : Name) (unfolding : Bool := false) : Name :=
  if unfolding then
    declName ++ `fun_cases_unfolding
  else
    declName ++ `fun_cases

def getMutualInductName (declName : Name) (unfolding : Bool := false) : Name :=
  if unfolding then
    declName ++ `mutual_induct_unfolding
  else
    declName ++ `mutual_induct

def getFunInduct? (unfolding : Bool) (cases : Bool) (declName : Name) : CoreM (Option Name) := do
  let .defnInfo _ ← getConstInfo declName | return none
  try
    let thmName := if cases then
      getFunCasesName (unfolding := unfolding) declName
    else
      getFunInductName (unfolding := unfolding) declName
    let result ← realizeGlobalConstNoOverloadCore thmName
    return some result
  catch _ =>
    return none

def setFunIndInfo (funIndInfo : FunIndInfo) : CoreM Unit := do
  assert! !(funIndInfoExt.contains (← getEnv) funIndInfo.funIndName)
  modifyEnv fun env => funIndInfoExt.insert env funIndInfo.funIndName funIndInfo

def getFunIndInfoForInduct?  (inductName : Name) : CoreM (Option FunIndInfo) := do
  return funIndInfoExt.find? (← getEnv) inductName

def getFunIndInfo? (cases : Bool) (unfolding : Bool) (funName : Name) : CoreM (Option FunIndInfo) := do
  let some inductName ← getFunInduct? (cases := cases) (unfolding := unfolding) funName | return none
  getFunIndInfoForInduct? inductName

end Lean.Meta
