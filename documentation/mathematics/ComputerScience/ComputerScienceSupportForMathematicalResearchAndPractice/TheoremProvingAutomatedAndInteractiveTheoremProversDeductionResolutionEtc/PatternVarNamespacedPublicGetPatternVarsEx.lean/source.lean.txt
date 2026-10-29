-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GetPatternVarsEx.Variant288a2b05ec38d2c9b873abcd4e91c7c3b9048b1c7d42ee7cb11b37b8b340c256","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"288a2b05ec38d2c9b873abcd4e91c7c3b9048b1c7d42ee7cb11b37b8b340c256","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.GetPatternVarsEx.Variant288a2b05ec38d2c9b873abcd4e91c7c3b9048b1c7d42ee7cb11b37b8b340c256","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"288a2b05ec38d2c9b873abcd4e91c7c3b9048b1c7d42ee7cb11b37b8b340c256","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Elab/Do/PatternVar.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Lean FRO LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sebastian Graf
-/
module

prelude
public import Lean.Elab.Term
meta import Lean.Parser.Do
import Lean.Elab.PatternVar
import Lean.Elab.Quotation


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GetPatternVarsEx.Variant288a2b05ec38d2c9b873abcd4e91c7c3b9048b1c7d42ee7cb11b37b8b340c256

public section

namespace Lean.Elab.Do

open Lean Meta Parser.Term

-- support both regular and syntax match; try syntax-quotation first so simple
-- patterns (identifiers, holes, antiquotations) are handled without macro
-- expansion and fall back to the regular pattern-var collector for
-- everything else. When both fail, the regular collector's error wins and
-- usually points at the offending pattern with a meaningful message instead
-- of the catch-all "unsupported pattern in syntax match".
def getPatternVarsEx (pattern : Term) : TermElabM (Array Ident) :=
  open TSyntax.Compat in -- until PatternVar := Ident
  Term.Quotation.getPatternVars pattern <|>
  Term.getPatternVars pattern

def getPatternsVarsEx (patterns : Array Term) : TermElabM (Array Ident) :=
  open TSyntax.Compat in -- until PatternVar := Ident
  Term.Quotation.getPatternsVars patterns <|>
  Term.getPatternsVars patterns

private def getLetIdVars (letId : TSyntax ``letId) : TermElabM (Array Ident) := do
  match letId with
  | `(letId| _) => return #[]
  | `(letId| $id:ident) => return #[id]
  | `(letId| $s:hygieneInfo) => return #[HygieneInfo.mkIdent s `this (canonical := true)]
  | _ => throwError "Not a letId: {letId}"

def getLetIdDeclVars (letIdDecl : TSyntax ``letIdDecl) : TermElabM (Array Ident) := do
  -- def letIdDecl := leading_parser letIdLhs >> " := " >> termParser
  -- def letIdLhs : Parser := letId >> many (ppSpace >> letIdBinder) >> optType
  -- NB: `letIdLhs` does not introduce a new node
  getLetIdVars ⟨letIdDecl.raw[0]⟩

def getLetPatDeclVars (letPatDecl : TSyntax ``letPatDecl) : TermElabM (Array Ident) := do
  -- def letPatDecl := leading_parser termParser >> pushNone >> optType >> " := " >> termParser
  getPatternVarsEx ⟨letPatDecl.raw[0]⟩

private def getLetEqnsDeclVars (letEqnsDecl : TSyntax ``letEqnsDecl) : TermElabM (Array Ident) :=
  -- def letEqnsDecl := leading_parser letIdLhs >> matchAlts
  -- def letIdLhs : Parser := letId >> many (ppSpace >> letIdBinder) >> optType
  -- NB: `letIdLhs` does not introduce a new node
  getLetIdVars ⟨letEqnsDecl.raw[0]⟩

def getLetDeclVars (letDecl : TSyntax ``letDecl) : TermElabM (Array Ident) := do
  match letDecl with
  | `(letDecl| $letIdDecl:letIdDecl) => getLetIdDeclVars letIdDecl
  | `(letDecl| $letPatDecl:letPatDecl) => getLetPatDeclVars ⟨letPatDecl⟩
  | `(letDecl| $letEqnsDecl:letEqnsDecl) => getLetEqnsDeclVars letEqnsDecl
  | _ => throwError "Not a let declaration: {toString letDecl}"

private def getLetRecDeclVars (letRecDecl : TSyntax ``letRecDecl) : TermElabM (Array Ident) := do
  -- def letRecDecl := optional docComment >> optional «attributes» >> letDecl >> Termination.suffix
  getLetDeclVars ⟨letRecDecl.raw[2]⟩

def getLetRecDeclsVars (letRecDecls : TSyntax ``letRecDecls) : TermElabM (Array Ident) := do
  -- def letRecDecls := sepBy1 letRecDecl ", "
  let `(letRecDecls| $[$letRecDecls:letRecDecl],*) := letRecDecls | throwUnsupportedSyntax
  let mut allVars := #[]
  for letRecDecl in letRecDecls do
    let vars ← getLetRecDeclVars letRecDecl
    allVars := allVars ++ vars
  return allVars

def getExprPatternVarsEx (exprPattern : TSyntax ``matchExprPat) : TermElabM (Array Ident) := do
  let `(matchExprPat| $[$var? @]? $_funName:ident $pvars*) := exprPattern | throwUnsupportedSyntax
  match var? with
  | some var => return #[var] ++ pvars.filter (·.raw.isIdent) |>.map (⟨·⟩)
  | none => return pvars.filter (·.raw.isIdent) |>.map (⟨·⟩)
