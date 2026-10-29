-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DeclSimp.Variant43e49a554da42a385a17a06dabaf64830762b6f3d2f50f9672d19b2ca796884e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"43e49a554da42a385a17a06dabaf64830762b6f3d2f50f9672d19b2ca796884e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.DeclSimp.Variant43e49a554da42a385a17a06dabaf64830762b6f3d2f50f9672d19b2ca796884e","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"43e49a554da42a385a17a06dabaf64830762b6f3d2f50f9672d19b2ca796884e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Compiler/LCNF/Simp.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Compiler.LCNF.ReduceJpArity
public import Lean.Compiler.LCNF.Simp.Basic
public import Lean.Compiler.LCNF.Simp.FunDeclInfo
public import Lean.Compiler.LCNF.Simp.JpCases
public import Lean.Compiler.LCNF.Simp.Config
public import Lean.Compiler.LCNF.Simp.InlineCandidate
public import Lean.Compiler.LCNF.Simp.SimpM
public import Lean.Compiler.LCNF.Simp.Main
public import Lean.Compiler.LCNF.Simp.InlineProj
public import Lean.Compiler.LCNF.Simp.DefaultAlt
public import Lean.Compiler.LCNF.Simp.SimpValue
public import Lean.Compiler.LCNF.Simp.Used


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DeclSimp.Variant43e49a554da42a385a17a06dabaf64830762b6f3d2f50f9672d19b2ca796884e

public section

namespace Lean.Compiler.LCNF
open Simp

def Decl.simp? (decl : Decl .pure) : SimpM (Option (Decl .pure)) := do
  let .code code := decl.value | return none
  updateFunDeclInfo code
  traceM `Compiler.simp.inline.info do return m!"{decl.name}:{Format.nest 2 (← (← get).funDeclInfoMap.format)}"
  traceM `Compiler.simp.step do ppDecl decl
  let code ← simp code
  let s ← get
  let code ← code.applyRenaming s.binderRenaming
  traceM `Compiler.simp.step.new do return m!"{decl.name} :=\n{← ppCode code}"
  trace[Compiler.simp.stat] "{decl.name}, size: {code.size}, # visited: {s.visited}, # inline: {s.inline}, # inline local: {s.inlineLocal}"
  if let some code ← simpJpCases? code then
    let decl := { decl with value := .code code }
    decl.reduceJpArity
  else if (← get).simplified then
    return some { decl with value := .code code }
  else
    return none

partial def Decl.simp (decl : Decl .pure) (config : Config) : CompilerM (Decl .pure) := do
  let mut config := config
  if (← isTemplateLike decl) then
    /-
    We do not eta-expand or inline partial applications in template like code.
    Recall we don't want to generate code for them.
    Remark: by eta-expanding partial applications in instances, we also make the simplifier
    work harder when inlining instance projections.
    -/
    config := { config with etaPoly := false, inlinePartial := false }
  go decl config
where
  go (decl : Decl .pure) (config : Config) : CompilerM (Decl .pure) := do
    if let some decl ← decl.simp? |>.run { config, declName := decl.name } |>.run' {} |>.run {} then
      -- TODO: bound number of steps?
      go decl config
    else
      return decl

def simp (config : Config := {}) (occurrence : Nat := 0) (phase := Phase.base) : Pass :=
  phase.withPurityCheck .pure fun h =>
    .mkPerDeclaration `simp phase (h ▸ (Decl.simp · config)) (occurrence := occurrence)

builtin_initialize
  registerTraceClass `Compiler.simp (inherited := true)
  registerTraceClass `Compiler.simp.stat
  registerTraceClass `Compiler.simp.step
  registerTraceClass `Compiler.simp.step.new
