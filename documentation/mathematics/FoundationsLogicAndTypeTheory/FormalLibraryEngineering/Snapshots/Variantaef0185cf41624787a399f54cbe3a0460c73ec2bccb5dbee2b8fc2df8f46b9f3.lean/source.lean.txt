-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Snapshot.Variantacccb9b2d3da683d5881c353641451ee9b42e34d5a1012a5a3573bd4268f112c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"acccb9b2d3da683d5881c353641451ee9b42e34d5a1012a5a3573bd4268f112c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Snapshot.Variantacccb9b2d3da683d5881c353641451ee9b42e34d5a1012a5a3573bd4268f112c","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"acccb9b2d3da683d5881c353641451ee9b42e34d5a1012a5a3573bd4268f112c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Server/Snapshots.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Wojciech Nawrocki. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.

Authors: Wojciech Nawrocki
-/
module

prelude

public import Lean.Elab.Import
public import Lean.Elab.Command

public import Lean.Widget.InteractiveDiagnostic


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Snapshot.Variantacccb9b2d3da683d5881c353641451ee9b42e34d5a1012a5a3573bd4268f112c

public section

/-! One can think of this module as being a partial reimplementation
of Lean.Elab.Frontend which also stores a snapshot of the world after
each command. Importantly, we allow (re)starting compilation from any
snapshot/position in the file for interactive editing purposes. -/

namespace Lean.Server.Snapshots

open Elab

/-- What Lean knows about the world after the header and each command. -/
structure Snapshot where
  stx : Syntax
  mpState : Parser.ModuleParserState
  cmdState : Command.State

namespace Snapshot

def endPos (s : Snapshot) : String.Pos.Raw :=
  s.mpState.pos

def env (s : Snapshot) : Environment :=
  s.cmdState.env

def msgLog (s : Snapshot) : MessageLog :=
  s.cmdState.messages

def infoTree (s : Snapshot) : InfoTree :=
  -- TODO: we should not block here!
  let infoState := s.cmdState.infoState.substituteLazy.get
  -- the parser returns exactly one command per snapshot, and the elaborator creates exactly one node per command
  assert! infoState.trees.size == 1
  infoState.trees[0]!

def isAtEnd (s : Snapshot) : Bool :=
  Parser.isTerminalCommand s.stx

open Command in
/-- Use the command state in the given snapshot to run a `CommandElabM`.-/
def runCommandElabM (snap : Snapshot) (doc : DocumentMeta) (c : CommandElabM α) : EIO Exception α := do
  let ctx : Command.Context := {
    cmdPos := snap.stx.getPos? |>.getD 0,
    fileName := doc.uri,
    fileMap := doc.text,
    snap? := none
    cancelTk? := none
  }
  c.run ctx |>.run' snap.cmdState

/-- Run a `CoreM` computation using the data in the given snapshot.-/
def runCoreM (snap : Snapshot) (doc : DocumentMeta) (c : CoreM α) : EIO Exception α :=
  snap.runCommandElabM doc <| Command.liftCoreM c

/-- Run a `TermElabM` computation using the data in the given snapshot.-/
def runTermElabM (snap : Snapshot) (doc : DocumentMeta) (c : TermElabM α) : EIO Exception α :=
  snap.runCommandElabM doc <| Command.liftTermElabM c

end Snapshot

end Lean.Server.Snapshots
