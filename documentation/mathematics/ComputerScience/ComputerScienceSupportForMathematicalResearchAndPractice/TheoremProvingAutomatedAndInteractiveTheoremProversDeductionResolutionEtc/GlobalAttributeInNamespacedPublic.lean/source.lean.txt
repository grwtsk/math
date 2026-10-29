-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TopDownSkipQuot.Variantb8d80b24ff94f24100984d3bae9ae0e582c87e90a62519f6d725982051282401","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b8d80b24ff94f24100984d3bae9ae0e582c87e90a62519f6d725982051282401","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.TopDownSkipQuot.Variantb8d80b24ff94f24100984d3bae9ae0e582c87e90a62519f6d725982051282401","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"b8d80b24ff94f24100984d3bae9ae0e582c87e90a62519f6d725982051282401","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Linter/GlobalAttributeIn.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Wojciech Różowski
-/
module

prelude
public import Lean.Elab.Command
public import Lean.Linter.Basic



namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TopDownSkipQuot.Variantb8d80b24ff94f24100984d3bae9ae0e582c87e90a62519f6d725982051282401

namespace Lean.Linter
open Elab.Command

private structure TopDownSkipQuot where
  stx : Syntax

def topDownSkipQuot (stx : Syntax) : TopDownSkipQuot := ⟨stx⟩

partial instance [Monad m] : ForIn m TopDownSkipQuot Syntax where
  forIn := fun ⟨stx⟩ init f => do
    let rec @[specialize] loop stx b [Inhabited (type_of% b)] := do
      if stx.isQuot then return ForInStep.yield b
      match (← f stx b) with
      | ForInStep.yield b' =>
        let mut b := b'
        if let Syntax.node _ _ args := stx then
          for arg in args do
            match (← loop arg b) with
            | ForInStep.yield b' => b := b'
            | ForInStep.done b'  => return ForInStep.done b'
        return ForInStep.yield b
      | ForInStep.done b => return ForInStep.done b
    match (← @loop stx init ⟨init⟩) with
    | ForInStep.yield b => return b
    | ForInStep.done b  => return b

def getGlobalAttributesIn? : Syntax → Option (Ident × Array (TSyntax `attr))
  | `(attribute [$x,*] $id in $_) =>
    let xs := x.getElems.filterMap fun a => match a.raw with
      | `(Parser.Command.eraseAttr| -$_) => none
      | `(Parser.Term.attrInstance| local $_attr:attr) => none
      | `(Parser.Term.attrInstance| scoped $_attr:attr) => none
      | `(attr| $a) => some a
    (id, xs)
  | _ => default

def globalAttributeIn : Linter where run := withSetOptionIn fun stx => do
  for s in topDownSkipQuot stx do
    if let some (id, nonScopedNorLocal) := getGlobalAttributesIn? s then
      for attr in nonScopedNorLocal do
        logErrorAt attr
          m!"Despite the `in`, the attribute {attr} is added globally to {id}\n\
          please remove the `in` or make this a `local {attr}`"

builtin_initialize addLinter globalAttributeIn

end Lean.Linter
