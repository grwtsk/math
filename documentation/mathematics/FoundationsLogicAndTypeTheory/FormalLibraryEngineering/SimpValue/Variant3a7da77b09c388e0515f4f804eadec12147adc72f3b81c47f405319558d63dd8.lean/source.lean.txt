-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SimpProj.Varianted5dd54b58f6340d4916962d3cbf2dd3aa184ff61eae5029518f8e67863de138","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ed5dd54b58f6340d4916962d3cbf2dd3aa184ff61eae5029518f8e67863de138","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.SimpProj.Varianted5dd54b58f6340d4916962d3cbf2dd3aa184ff61eae5029518f8e67863de138","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"ed5dd54b58f6340d4916962d3cbf2dd3aa184ff61eae5029518f8e67863de138","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Compiler/LCNF/Simp/SimpValue.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Compiler.LCNF.Simp.SimpM


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SimpProj.Varianted5dd54b58f6340d4916962d3cbf2dd3aa184ff61eae5029518f8e67863de138

public section

namespace Lean.Compiler.LCNF
namespace Simp

/--
Try to simplify projections `.proj _ i s` where `s` is constructor.
-/
def simpProj? (e : LetValue .pure) : OptionT SimpM (LetValue .pure) := do
  let .proj _ i s := e | failure
  let some ctorInfo ← findCtor? s | failure
  match ctorInfo with
  | .ctor ctorVal args => return args[ctorVal.numParams + i]!.toLetValue
  | .natVal .. => failure

/--
Application over application.
```
let g := f a
g b
```
is simplified to `f a b`.
-/
def simpAppApp? (e : LetValue .pure) : OptionT SimpM (LetValue .pure) := do
  let .fvar g args := e | failure
  let some decl ← findLetDecl? g | failure
  match decl.value with
  | .fvar f args' =>
    /- If `args` is empty then `g` is an alias that is going to be eliminated by `elimVar?` -/
    guard (!args.isEmpty)
    return .fvar f (args' ++ args)
  | .const declName us args' =>
    /- If `args` is empty then `g` is an alias that is going to be eliminated by `elimVar?` -/
    guard (!args.isEmpty)
    return .const declName us (args' ++ args)
  | .erased => return .erased
  | .proj .. | .lit .. => failure

def simpCtorDiscr? (e : LetValue .pure) : OptionT SimpM (LetValue .pure) := do
  let .const declName _ _ := e | failure
  let some (.ctorInfo _) := (← getEnv).find? declName | failure
  let some fvarId ← simpCtorDiscrCore? e.toExpr | failure
  return .fvar fvarId #[]

def applyImplementedBy? (e : LetValue .pure) : OptionT SimpM (LetValue .pure) := do
  guard <| (← read).config.implementedBy
  let .const declName us args := e | failure
  let some declNameNew := getImplementedBy? (← getEnv) declName | failure
  return .const declNameNew us args

/-- Try to apply simple simplifications. -/
def simpValue? (e : LetValue .pure) : SimpM (Option (LetValue .pure)) :=
  -- TODO: more simplifications
  simpProj? e <|> simpAppApp? e <|> simpCtorDiscr? e <|> applyImplementedBy? e
